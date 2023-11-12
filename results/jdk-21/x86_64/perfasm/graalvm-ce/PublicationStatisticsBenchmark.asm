# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 66.942 ms/op
# Warmup Iteration   2: 57.575 ms/op
# Warmup Iteration   3: 57.576 ms/op
# Warmup Iteration   4: 57.680 ms/op
# Warmup Iteration   5: 57.416 ms/op
Iteration   1: 57.606 ms/op
Iteration   2: 57.280 ms/op
Iteration   3: 57.270 ms/op
Iteration   4: 57.742 ms/op
Iteration   5: 57.301 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.author_with_the_most_publications":
  57.440 ±(99.9%) 0.845 ms/op [Average]
  (min, avg, max) = (57.270, 57.440, 57.742), stdev = 0.219
  CI (99.9%): [56.595, 58.284] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.author_with_the_most_publications:asm":
PrintAssembly processed: 295450 total address lines.
Perf output processed (skipped 62.093 seconds):
 Column 1: cycles (51050 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.HashMap::computeIfAbsent, version 5, compile id 1261 

                 # parm1:    rcx:rcx   = &apos;java/util/function/Function&apos;
                 #           [sp+0x60]  (sp of caller)
                 0x00007f92e7267800:   mov    0x8(%rsi),%r10d
                 0x00007f92e7267804:   movabs $0x7f926b000000,%r12
                 0x00007f92e726780e:   add    %r12,%r10
                 0x00007f92e7267811:   xor    %r12,%r12
                 0x00007f92e7267814:   cmp    %r10,%rax
                 0x00007f92e7267817:   jne    0x00007f92e6c2f080           ;   {runtime_call ic_miss_stub}
                 0x00007f92e726781d:   data16 xchg %ax,%ax
               [Verified Entry Point]
   0.22%         0x00007f92e7267820:   mov    %eax,-0x14000(%rsp)
   0.10%         0x00007f92e7267827:   sub    $0x58,%rsp
   0.08%         0x00007f92e726782b:   nop
   0.14%         0x00007f92e726782c:   cmpl   $0x1,0x20(%r15)
   0.12%         0x00007f92e7267834:   jne    0x00007f92e7268145
   0.01%         0x00007f92e726783a:   mov    %rbp,0x50(%rsp)
   0.07%         0x00007f92e726783f:   mov    %rsi,0x30(%rsp)
   0.13%         0x00007f92e7267844:   mov    %rdx,0x28(%rsp)              ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop [40]=Oop [48]=Oop }
                                                                           ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.HashMap::computeIfAbsent@0 (line 1197)
   0.12%         0x00007f92e7267849:   test   %eax,(%rcx)                  ; implicit exception: dispatches to 0x00007f92e726817d
                                                                           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop [40]=Oop [48]=Oop }
                                                                           ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.HashMap::computeIfAbsent@0 (line 1197)
   0.01%         0x00007f92e726784b:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f92e72681a0
   0.31%         0x00007f92e726784f:   movabs $0x7f926b000000,%rbx
   0.12%         0x00007f92e7267859:   lea    (%rbx,%r10,1),%rax           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.13%         0x00007f92e726785d:   mov    0x1e0(%rax),%rbx
   0.09%         0x00007f92e7267864:   mov    0x40(%rbx),%rax
   0.34%         0x00007f92e7267868:   mov    %rdx,%rsi                    ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap::hash@9 (line 338)
                                                                           ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.11%         0x00007f92e726786b:   mov    %rcx,0x20(%rsp)
   0.05%         0x00007f92e7267870:   mov    %r10d,0x44(%rsp)
   0.00%         0x00007f92e7267875:   call   *%rax                        ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
                                                                           ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap::hash@9 (line 338)
                                                                           ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.44%         0x00007f92e7267877:   nopl   0x0(%rax,%rax,1)
   0.11%         0x00007f92e726787f:   mov    0x30(%rsp),%rsi
   1.19%         0x00007f92e7267884:   mov    0x1c(%rsi),%edx              ;*getfield threshold {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap::computeIfAbsent@31 (line 1204)
   1.04%         0x00007f92e7267887:   mov    %eax,%ecx
   0.00%         0x00007f92e7267889:   shr    $0x10,%ecx                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap::hash@17 (line 338)
                                                                           ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
                 0x00007f92e726788c:   xor    %ecx,%eax                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap::hash@18 (line 338)
                                                                           ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.00%         0x00007f92e726788e:   cmp    0x14(%rsi),%edx
                 0x00007f92e7267891:   jl     0x00007f92e7267e9e           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap::computeIfAbsent@34 (line 1204)
   0.29%         0x00007f92e7267897:   mov    0x24(%rsi),%edx              ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
   0.26%         0x00007f92e726789a:   nopw   0x0(%rax,%rax,1)
                 0x00007f92e72678a0:   test   %edx,%edx
                 0x00007f92e72678a2:   je     0x00007f92e7267e9e           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap::computeIfAbsent@44 (line 1204)
   0.28%         0x00007f92e72678a8:   mov    0xc(,%rdx,8),%ecx            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap::computeIfAbsent@49 (line 1204)
   1.16%         0x00007f92e72678af:   test   %ecx,%ecx
                 0x00007f92e72678b1:   je     0x00007f92e7267e9e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap::computeIfAbsent@53 (line 1204)
   0.29%         0x00007f92e72678b7:   shl    $0x3,%rdx                    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
                 0x00007f92e72678bb:   mov    %ecx,%r8d
                 0x00007f92e72678be:   dec    %r8d                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap::computeIfAbsent@71 (line 1207)
   0.07%         0x00007f92e72678c1:   and    %eax,%r8d                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap::computeIfAbsent@73 (line 1207)
   0.24%         0x00007f92e72678c4:   cmp    0xc(%rdx),%r8d
                 0x00007f92e72678c8:   jae    0x00007f92e7267f5b
   0.27%         0x00007f92e72678ce:   mov    0x10(%rdx,%r8,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   2.54%         0x00007f92e72678d3:   mov    0x8(%rsi),%ebx               ;*invokevirtual afterNodeAccess {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap::computeIfAbsent@188 (line 1223)
   0.06%         0x00007f92e72678d6:   mov    %r11d,%ebp
                 0x00007f92e72678d9:   shl    $0x3,%rbp
   0.30%         0x00007f92e72678dd:   mov    %rbp,0x18(%rsp)
   0.61%         0x00007f92e72678e2:   test   %r11d,%r11d
                 0x00007f92e72678e5:   je     0x00007f92e7267daf
   0.04%         0x00007f92e72678eb:   cmpl   $0x1a7c50,0x8(,%r11,8)       ;   {metadata(&apos;java/util/HashMap$TreeNode&apos;)}
   7.56%         0x00007f92e72678f7:   je     0x00007f92e7267f92           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   0.29%         0x00007f92e72678fd:   data16 xchg %ax,%ax
   0.01%         0x00007f92e7267900:   cmp    0xc(,%r11,8),%eax
          ╭      0x00007f92e7267908:   jne    0x00007f92e7267a57           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.HashMap::computeIfAbsent@120 (line 1213)
   1.15%  │      0x00007f92e726790e:   mov    0x10(,%r11,8),%r9d
   0.33%  │      0x00007f92e7267916:   mov    %r9d,%r10d
   0.02%  │      0x00007f92e7267919:   shl    $0x3,%r10                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
   0.05%  │      0x00007f92e726791d:   data16 xchg %ax,%ax
   0.16%  │      0x00007f92e7267920:   cmp    0x28(%rsp),%r10
          │      0x00007f92e7267925:   je     0x00007f92e72680aa
   0.06%  │      0x00007f92e726792b:   cmpl   $0x102b2b0,0x44(%rsp)        ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
   0.01%  │      0x00007f92e7267933:   jne    0x00007f92e7268121           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.02%  │      0x00007f92e7267939:   nopl   0x0(%rax)                    ; ImmutableOopMap {rdx=Oop rbp=Oop rsi=Oop r9=NarrowOop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          │                                                                ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │                                                                ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.13%  │      0x00007f92e7267940:   cmpl   $0x102b2b0,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f92e72681c3
          │                                                                ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
   3.98%  │      0x00007f92e726794c:   jne    0x00007f92e7268018           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
          │                                                                ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.20%  │      0x00007f92e7267952:   mov    0x28(%rsp),%r13
   0.01%  │      0x00007f92e7267957:   mov    0xc(%r13),%r10d              ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@30 (line 48)
          │                                                                ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
          │      0x00007f92e726795b:   mov    0xc(,%r9,8),%r9d             ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@34 (line 48)
          │                                                                ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.45%  │      0x00007f92e7267963:   cmp    %r10d,%r9d
          │      0x00007f92e7267966:   je     0x00007f92e7267bc5           ; ImmutableOopMap {rdx=Oop rbp=Oop rsi=Oop r9=NarrowOop r10=NarrowOop r13=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          │                                                                ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │                                                                ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.21%  │      0x00007f92e726796c:   movsbl 0x10(,%r10,8),%edi           ; implicit exception: dispatches to 0x00007f92e72681e6
   0.01%  │      0x00007f92e7267975:   mov    0x14(,%r10,8),%r11d          ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.lang.String::equals@0 (line 1858)
          │                                                                ; - java.util.Objects::equals@11 (line 64)
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
          │                                                                ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
          │      0x00007f92e726797d:   data16 xchg %ax,%ax
   0.01%  │      0x00007f92e7267980:   cmp    %r10d,%r9d
          │╭     0x00007f92e7267983:   je     0x00007f92e7267b8f           ; ImmutableOopMap {rdx=Oop rbp=Oop rsi=Oop r9=NarrowOop r11=NarrowOop r13=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          ││                                                               ;*aload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                               ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.22%  ││     0x00007f92e7267989:   movsbl 0x10(,%r9,8),%r10d           ; implicit exception: dispatches to 0x00007f92e726820d
   1.56%  ││     0x00007f92e7267992:   mov    0x14(,%r9,8),%r9d            ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - java.lang.String::equals@0 (line 1858)
          ││                                                               ; - java.util.Objects::equals@11 (line 64)
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
          ││                                                               ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.43%  ││     0x00007f92e726799a:   nopw   0x0(%rax,%rax,1)
   0.01%  ││     0x00007f92e72679a0:   cmp    %dil,%r10b
          ││     0x00007f92e72679a3:   jne    0x00007f92e7268086           ; ImmutableOopMap {rdx=Oop rbp=Oop rsi=Oop r9=NarrowOop r11=NarrowOop r13=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          ││                                                               ;*aload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                               ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.13%  ││     0x00007f92e72679a9:   mov    0xc(,%r9,8),%r10d            ; implicit exception: dispatches to 0x00007f92e7268230
          ││                                                               ; ImmutableOopMap {rdx=Oop rbp=Oop rsi=Oop r9=NarrowOop r11=NarrowOop r13=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          ││                                                               ;*aload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                               ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   1.39%  ││     0x00007f92e72679b1:   mov    0xc(,%r11,8),%edi            ; implicit exception: dispatches to 0x00007f92e7268253
   0.01%  ││     0x00007f92e72679b9:   nopl   0x0(%rax)
   0.01%  ││     0x00007f92e72679c0:   cmp    %r10d,%edi
          ││     0x00007f92e72679c3:   jne    0x00007f92e726805e
   0.25%  ││     0x00007f92e72679c9:   test   %r10d,%r10d
          ││     0x00007f92e72679cc:   je     0x00007f92e7267ba9
   0.17%  ││     0x00007f92e72679d2:   mov    %r8d,0x38(%rsp)
          ││     0x00007f92e72679d7:   mov    %rdx,0x10(%rsp)
          ││     0x00007f92e72679dc:   shl    $0x3,%r9
   0.01%  ││     0x00007f92e72679e0:   shl    $0x3,%r11
   0.19%  ││     0x00007f92e72679e4:   mov    %r9,%rsi
          ││     0x00007f92e72679e7:   mov    $0x10,%rdx
   0.01%  ││     0x00007f92e72679ee:   mov    %r11,%rcx
   0.02%  ││     0x00007f92e72679f1:   mov    $0x10,%r8
   0.18%  ││     0x00007f92e72679f8:   mov    %edi,%r9d                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - java.lang.String::equals@0 (line 1858)
          ││                                                               ; - java.util.Objects::equals@11 (line 64)
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
          ││                                                               ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
          ││     0x00007f92e72679fb:   mov    %eax,%r14d
   0.00%  ││     0x00007f92e72679fe:   xchg   %ax,%ax
   0.02%  ││     0x00007f92e7267a00:   call   0x00007f92e6dbde80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.24%  ││     0x00007f92e7267a05:   nop
          ││     0x00007f92e7267a06:   test   %eax,%eax
          ││     0x00007f92e7267a08:   je     0x00007f92e7267fe1           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - java.util.HashMap::computeIfAbsent@145 (line 1214)
   0.00%  ││     0x00007f92e7267a0e:   mov    %rbp,%r11
          ││     0x00007f92e7267a11:   mov    $0x0,%eax                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - java.util.HashMap::computeIfAbsent@148 (line 1215)
   0.22%  ││  ↗  0x00007f92e7267a16:   test   %r11,%r11
          ││  │  0x00007f92e7267a19:   je     0x00007f92e7267beb           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - java.util.HashMap::computeIfAbsent@171 (line 1222)
          ││  │  0x00007f92e7267a1f:   mov    0x14(%r11),%esi              ;*aload {reexecute=1 rethrow=0 return_oop=0}
          ││  │                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@169 (line 1222)
   0.01%  ││  │  0x00007f92e7267a23:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
          ││  │                                                            ; ImmutableOopMap {rsi=NarrowOop r11=Oop r13=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
   0.45%  ││  │  0x00007f92e7267a2a:   cmp    $0x8da40,%ebx                ;   {metadata(&apos;java/util/HashMap&apos;)}
          ││  │  0x00007f92e7267a30:   jne    0x00007f92e7267fa5           ;*invokevirtual afterNodeAccess {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - java.util.HashMap::computeIfAbsent@188 (line 1223)
          ││  │  0x00007f92e7267a36:   shl    $0x3,%rsi                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - java.util.HashMap::computeIfAbsent@176 (line 1222)
          ││  │  0x00007f92e7267a3a:   mov    %rsi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - java.util.HashMap::computeIfAbsent@193 (line 1224)
   0.10%  ││  │  0x00007f92e7267a3d:   mov    0x50(%rsp),%rbp
   0.18%  ││  │  0x00007f92e7267a42:   add    $0x58,%rsp
          ││  │  0x00007f92e7267a46:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007f92e7267a4d:   ja     0x00007f92e7268155
   0.11%  ││  │  0x00007f92e7267a53:   vzeroupper 
   0.39%  ││  │  0x00007f92e7267a56:   ret                                 ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   1.63%  ↘│  │  0x00007f92e7267a57:   mov    %r8d,0x38(%rsp)
   1.13%   │  │  0x00007f92e7267a5c:   mov    %rdx,0x10(%rsp)
   0.41%   │  │  0x00007f92e7267a61:   mov    %eax,%r14d
           │  │  0x00007f92e7267a64:   mov    0x28(%rsp),%r13
   0.01%   │  │  0x00007f92e7267a69:   mov    0x18(,%r11,8),%esi           ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.13%   │  │  0x00007f92e7267a71:   test   %esi,%esi
           │  │  0x00007f92e7267a73:   je     0x00007f92e7267d9e           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
   0.10%   │  │  0x00007f92e7267a79:   nopl   0x0(%rax)
           │  │  0x00007f92e7267a80:   cmpl   $0x102b2b0,0x44(%rsp)        ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
   0.02%   │  │  0x00007f92e7267a88:   jne    0x00007f92e72680c0           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.01%   │  │  0x00007f92e7267a8e:   mov    0xc(%r13),%edx               ; ImmutableOopMap {rdx=NarrowOop rsi=NarrowOop r13=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           │  │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │  │                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.11%   │  │  0x00007f92e7267a92:   mov    0x14(,%rdx,8),%r9d           ; implicit exception: dispatches to 0x00007f92e7268276
   0.27%   │  │  0x00007f92e7267a9a:   movsbl 0x10(,%rdx,8),%r10d          ; ImmutableOopMap {rdx=NarrowOop rsi=NarrowOop r9=NarrowOop r13=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           │  │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │  │                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.02%   │  │  0x00007f92e7267aa3:   mov    0xc(,%r9,8),%edi             ; implicit exception: dispatches to 0x00007f92e7268299
   0.45%   │  │  0x00007f92e7267aab:   shl    $0x3,%rsi                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.00%   │  │  0x00007f92e7267aaf:   mov    $0x1,%eax
           │╭ │  0x00007f92e7267ab4:   jmp    0x00007f92e7267ae0           ;*aload {reexecute=0 rethrow=0 return_oop=0}
           ││ │                                                            ; - java.util.HashMap::computeIfAbsent@114 (line 1213)
           ││ │  0x00007f92e7267ab9:   nopl   0x0(%rax)                    ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
           ││ │                                                            ; - java.util.HashMap::computeIfAbsent@116 (line 1213)
   0.11%   ││↗│  0x00007f92e7267ac0:   mov    0x18(%r11),%esi              ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.21%   ││││  0x00007f92e7267ac4:   mov    %eax,%ecx
           ││││  0x00007f92e7267ac6:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.HashMap::computeIfAbsent@155 (line 1218)
           ││││  0x00007f92e7267ac8:   test   %esi,%esi
           ││││  0x00007f92e7267aca:   je     0x00007f92e7267e2a           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
   0.02%   ││││  0x00007f92e7267ad0:   mov    0x458(%r15),%rbp             ; ImmutableOopMap {rdx=NarrowOop rsi=NarrowOop r9=NarrowOop r11=Oop r13=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           ││││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           ││││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
           ││││  0x00007f92e7267ad7:   test   %eax,0x0(%rbp)               ;   {poll}
   0.11%   ││││  0x00007f92e7267ada:   shl    $0x3,%rsi                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
           ││││  0x00007f92e7267ade:   mov    %ecx,%eax                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.01%   │↘││  0x00007f92e7267ae0:   mov    %rsi,%r11                    ; ImmutableOopMap {rdx=NarrowOop r9=NarrowOop r11=Oop r13=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           │ ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │ ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.08%   │ ││  0x00007f92e7267ae3:   mov    0xc(%r11),%esi               ; implicit exception: dispatches to 0x00007f92e72682bc
   2.43%   │ ││  0x00007f92e7267ae7:   mov    0x10(%r11),%ecx              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
   0.62%   │ ││  0x00007f92e7267aeb:   cmp    %r14d,%esi
           │ ╰│  0x00007f92e7267aee:   jne    0x00007f92e7267ac0           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.HashMap::computeIfAbsent@120 (line 1213)
   0.01%   │  │  0x00007f92e7267af0:   mov    %ecx,%esi
   0.00%   │  │  0x00007f92e7267af2:   shl    $0x3,%rsi                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
   0.13%   │  │  0x00007f92e7267af6:   cmp    %r13,%rsi
           │  │  0x00007f92e7267af9:   je     0x00007f92e726809c           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.HashMap::computeIfAbsent@132 (line 1213)
   0.11%   │  │  0x00007f92e7267aff:   nop                                 ; ImmutableOopMap {rcx=NarrowOop rdx=NarrowOop r9=NarrowOop r11=Oop r13=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           │  │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │  │                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.01%   │  │  0x00007f92e7267b00:   cmpl   $0x102b2b0,0x8(,%rcx,8)      ; implicit exception: dispatches to 0x00007f92e72682df
           │  │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
   2.56%   │  │  0x00007f92e7267b0b:   jne    0x00007f92e7267f87           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
           │  │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.13%   │  │  0x00007f92e7267b11:   mov    0xc(,%rcx,8),%esi            ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@34 (line 48)
           │  │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.29%   │  │  0x00007f92e7267b18:   cmp    %edx,%esi
           │  │  0x00007f92e7267b1a:   je     0x00007f92e7267be7           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.Objects::equals@2 (line 64)
           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
           │  │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.09%   │  │  0x00007f92e7267b20:   cmp    %edx,%esi
           │  │  0x00007f92e7267b22:   je     0x00007f92e7267bdf           ; ImmutableOopMap {rsi=NarrowOop r9=NarrowOop r11=Oop r13=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           │  │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │  │                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.09%   │  │  0x00007f92e7267b28:   movsbl 0x10(,%rsi,8),%edx           ; implicit exception: dispatches to 0x00007f92e7268302
   0.78%   │  │  0x00007f92e7267b30:   mov    0x14(,%rsi,8),%esi           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.lang.String::equals@0 (line 1858)
           │  │                                                            ; - java.util.Objects::equals@11 (line 64)
           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
           │  │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.13%   │  │  0x00007f92e7267b37:   cmp    %r10b,%dl
           │  │  0x00007f92e7267b3a:   jne    0x00007f92e7268137           ; ImmutableOopMap {rsi=NarrowOop r9=NarrowOop r11=Oop r13=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           │  │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │  │                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.06%   │  │  0x00007f92e7267b40:   mov    0xc(,%rsi,8),%edx            ; implicit exception: dispatches to 0x00007f92e7268325
   0.74%   │  │  0x00007f92e7267b47:   cmp    %edi,%edx
           │  │  0x00007f92e7267b49:   jne    0x00007f92e7267f0b
   0.11%   │  │  0x00007f92e7267b4f:   test   %edx,%edx
           │  │  0x00007f92e7267b51:   je     0x00007f92e7267be3
   0.11%   │  │  0x00007f92e7267b57:   mov    %eax,%ebp
           │  │  0x00007f92e7267b59:   shl    $0x3,%rsi
   0.00%   │  │  0x00007f92e7267b5d:   shl    $0x3,%r9
           │  │  0x00007f92e7267b61:   mov    $0x10,%rdx
   0.10%   │  │  0x00007f92e7267b68:   mov    %r9,%rcx
           │  │  0x00007f92e7267b6b:   mov    $0x10,%r8                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.lang.String::equals@0 (line 1858)
           │  │                                                            ; - java.util.Objects::equals@11 (line 64)
           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
           │  │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
           │  │  0x00007f92e7267b72:   mov    %edi,%r9d
           │  │  0x00007f92e7267b75:   call   0x00007f92e6dbde80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.12%   │  │  0x00007f92e7267b7a:   nop
           │  │  0x00007f92e7267b7b:   nopl   0x0(%rax,%rax,1)
           │  │  0x00007f92e7267b80:   test   %eax,%eax
           │  │  0x00007f92e7267b82:   je     0x00007f92e7267f52           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.HashMap::computeIfAbsent@145 (line 1214)
           │  │  0x00007f92e7267b88:   mov    %ebp,%eax
   0.09%   │  ╰  0x00007f92e7267b8a:   jmp    0x00007f92e7267a16           ;*aload {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - java.util.HashMap::computeIfAbsent@169 (line 1222)
           ↘     0x00007f92e7267b8f:   mov    %rbp,%r11
                 0x00007f92e7267b92:   mov    %r8d,0x38(%rsp)
                 0x00007f92e7267b97:   mov    %rdx,0x10(%rsp)
                 0x00007f92e7267b9c:   mov    %eax,%r14d
                 0x00007f92e7267b9f:   mov    $0x0,%eax
                 0x00007f92e7267ba4:   jmp    0x00007f92e7267a16           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Objects::equals@22 (line 64)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                           ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
....................................................................................................
  45.83%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1272 

                     0x00007f92e726ea6d:   ret                                 ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
                     0x00007f92e726ea6e:   mov    0x64(%rsp),%r11d
                     0x00007f92e726ea73:   cmp    $0x226050,%r11d              ;   {metadata(&apos;java/util/stream/ReferencePipeline$7$1&apos;)}
                     0x00007f92e726ea7a:   jne    0x00007f92e726f173           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                     0x00007f92e726ea80:   mov    %r9d,%r11d
                     0x00007f92e726ea83:   nopw   0x0(%rax,%rax,1)
                     0x00007f92e726ea8c:   data16 data16 xchg %ax,%ax          ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.01%    ↗    ↗   0x00007f92e726ea90:   mov    %rsi,%r10
   0.01%    │    │   0x00007f92e726ea93:   movabs $0x7f926c02b6f8,%r14         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
   0.04%    │    │   0x00007f92e726ea9d:   mov    0x40(%rsp),%rbx
   0.16%    │    │   0x00007f92e726eaa2:   mov    0x5c(%rsp),%edi
   0.03%    │    │   0x00007f92e726eaa6:   mov    0x48(%rsp),%rdx
   0.02%    │    │   0x00007f92e726eaab:   test   %r10,%r10
          ╭ │    │   0x00007f92e726eaae:   jne    0x00007f92e726eaec           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │ │    │                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@124 (line 1712)
   0.03%  │ │    │   0x00007f92e726eab4:   cmp    %r11d,%edi
          │ │    │   0x00007f92e726eab7:   jbe    0x00007f92e726f1fd
   0.09%  │ │    │   0x00007f92e726eabd:   mov    0x10(%rbx,%r11,4),%esi
   0.52%  │ │    │   0x00007f92e726eac2:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │    │                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@133 (line 1713)
   0.11%  │ │    │   0x00007f92e726eac6:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │    │                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@130 (line 1713)
   0.06%  │ │   ↗│   0x00007f92e726eac9:   test   %rsi,%rsi
          │╭│   ││   0x00007f92e726eacc:   jne    0x00007f92e726ec9e           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.27%  │││   ││   0x00007f92e726ead2:   mov    0x60(%rsp),%r8d
   0.17%  │││   ││   0x00007f92e726ead7:   cmp    %r11d,%r8d
          │││   ││   0x00007f92e726eada:   jle    0x00007f92e726ea3f           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.03%  │││   ││   0x00007f92e726eae0:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rsi=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
          │││   ││                                                             ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││   ││                                                             ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.04%  │││   ││   0x00007f92e726eae7:   test   %eax,(%r10)                  ;   {poll}
   0.25%  ││╰   ││   0x00007f92e726eaea:   jmp    0x00007f92e726ea90           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.01%  ↘│    ││   0x00007f92e726eaec:   mov    0x14(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rbx=Oop r10=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
           │    ││                                                             ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │    ││                                                             ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.11%   │    ││   0x00007f92e726eaef:   mov    0x34(,%rsi,8),%esi           ; implicit exception: dispatches to 0x00007f92e726f3a7
   0.27%   │    ││   0x00007f92e726eaf6:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {rdx=Oop rbx=Oop r10=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
           │    ││                                                             ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │    ││                                                             ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
           │    ││   0x00007f92e726eb00:   cmpl   $0x102bd18,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007f92e726f3cd
           │    ││                                                             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007f926c02bd18&apos;)}
   0.39%   │    ││   0x00007f92e726eb0b:   jne    0x00007f92e726f2ad           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
           │    ││                                                             ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
           │    ││                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.06%   │    ││   0x00007f92e726eb11:   mov    0x10(%r10),%esi              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           │    ││                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
   5.10%   │    ││   0x00007f92e726eb15:   test   %esi,%esi
           │ ╭  ││   0x00007f92e726eb17:   je     0x00007f92e726ecb2
   0.04%   │ │  ││   0x00007f92e726eb1d:   mov    0x8(,%rsi,8),%r9d
   1.32%   │ │  ││   0x00007f92e726eb25:   movabs $0x7f926b000000,%rcx
   0.01%   │ │  ││   0x00007f92e726eb2f:   lea    (%rcx,%r9,1),%r9
   0.04%   │ │  ││↗  0x00007f92e726eb33:   test   %esi,%esi
           │ │╭ │││  0x00007f92e726eb35:   je     0x00007f92e726eb49
   0.00%   │ ││ │││  0x00007f92e726eb3b:   nopl   0x0(%rax,%rax,1)
   0.00%   │ ││ │││  0x00007f92e726eb40:   cmp    %r9,%r14
           │ ││ │││  0x00007f92e726eb43:   jne    0x00007f92e726f274           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f926c02bd18::apply@1
           │ ││ │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
           │ ││ │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.09%   │ │↘ │││  0x00007f92e726eb49:   mov    %r11d,0x64(%rsp)
           │ │  │││  0x00007f92e726eb4e:   mov    %r10,0x10(%rsp)              ; ImmutableOopMap {rsi=NarrowOop [16]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
           │ │  │││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
           │ │  │││  0x00007f92e726eb53:   mov    0x18(,%rsi,8),%r9d           ; implicit exception: dispatches to 0x00007f92e726f3f0
           │ │  │││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.76%   │ │  │││  0x00007f92e726eb5b:   test   %eax,0x0(,%r9,8)             ; implicit exception: deoptimizes
           │ │  │││                                                            ; ImmutableOopMap {rsi=NarrowOop r9=NarrowOop [16]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
   4.08%   │ │  │││  0x00007f92e726eb63:   shl    $0x3,%r9                     ;*getfield authors {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication::getAuthors@1 (line 51)
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$authorWithTheMostPublications$5@1 (line 108)
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f926c02bd18::apply@4
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%   │ │  │││  0x00007f92e726eb67:   shl    $0x3,%rsi                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
   0.00%   │ │  │││  0x00007f92e726eb6b:   mov    %rsi,0x8(%rsp)
           │ │  │││  0x00007f92e726eb70:   mov    %r9,%rsi                     ;*invokeinterface stream {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$authorWithTheMostPublications$5@4 (line 108)
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f926c02bd18::apply@4
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.07%   │ │  │││  0x00007f92e726eb73:   xchg   %ax,%ax
           │ │  │││  0x00007f92e726eb75:   nop
           │ │  │││  0x00007f92e726eb76:   data16 xchg %ax,%ax
   0.00%   │ │  │││  0x00007f92e726eb79:   movabs $0xffffffffffffffff,%rax
   0.07%   │ │  │││  0x00007f92e726eb83:   call   0x00007f92e6c2f680           ; ImmutableOopMap {[8]=Oop [16]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
           │ │  │││                                                            ;*invokeinterface stream {reexecute=0 rethrow=0 return_oop=1}
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$authorWithTheMostPublications$5@4 (line 108)
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f926c02bd18::apply@4
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ │  │││                                                            ;   {virtual_call}
   0.06%   │ │  │││  0x00007f92e726eb88:   nopl   0x8000478(%rax,%rax,1)       ;   {other}
   0.01%   │ │  │││  0x00007f92e726eb90:   mov    0x48(%rsp),%rdx
   0.01%   │ │  │││  0x00007f92e726eb95:   cmpb   $0x0,0x10(%rdx)
   0.08%   │ │  │││  0x00007f92e726eb99:   jne    0x00007f92e726f1eb           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@25 (line 275)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%   │ │  │││  0x00007f92e726eb9f:   nop                                 ; ImmutableOopMap {rax=Oop rdx=Oop [8]=Oop [16]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
           │ │  │││                                                            ;*areturn {reexecute=1 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$authorWithTheMostPublications$5@9 (line 108)
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f926c02bd18::apply@4
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ │  │││  0x00007f92e726eba0:   cmpl   $0xe58d8,0x8(%rax)           ; implicit exception: dispatches to 0x00007f92e726f413
           │ │  │││                                                            ;   {metadata(&apos;java/util/stream/ReferencePipeline$Head&apos;)}
   0.00%   │ │  │││  0x00007f92e726eba7:   jne    0x00007f92e726f1d9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@13 (line 273)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.03%   │ │  │││  0x00007f92e726ebad:   mov    0x1c(%rax),%r10d
   0.01%   │ │  │││  0x00007f92e726ebb1:   mov    %r10d,%esi
           │ │  │││  0x00007f92e726ebb4:   shl    $0x3,%rsi                    ;*getfield sourceStage {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.AbstractPipeline::sequential@1 (line 304)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@29 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%   │ │  │││  0x00007f92e726ebb8:   nopl   0x0(%rax,%rax,1)
   0.06%   │ │  │││  0x00007f92e726ebc0:   cmp    %rax,%rsi
           │ │  │││  0x00007f92e726ebc3:   jne    0x00007f92e726f137           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.AbstractPipeline::sourceStageSpliterator@5 (line 275)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$Head::forEach@8 (line 762)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%   │ │  │││  0x00007f92e726ebc9:   cmpb   $0x0,0x18(%rax)
           │ │  │││  0x00007f92e726ebcd:   jne    0x00007f92e726f283           ; ImmutableOopMap {rax=Oop rdx=Oop r10=NarrowOop [8]=Oop [16]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
           │ │  │││                                                            ;*areturn {reexecute=1 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$authorWithTheMostPublications$5@9 (line 108)
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f926c02bd18::apply@4
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%   │ │  │││  0x00007f92e726ebd3:   mov    0x28(,%r10,8),%r11d          ; implicit exception: dispatches to 0x00007f92e726f436
   0.05%   │ │  │││  0x00007f92e726ebdb:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop rdx=Oop r10=NarrowOop r11=NarrowOop [8]=Oop [16]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
           │ │  │││                                                            ;*areturn {reexecute=1 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$authorWithTheMostPublications$5@9 (line 108)
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f926c02bd18::apply@4
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%   │ │  │││  0x00007f92e726ebe0:   cmpl   $0x1896a8,0x8(,%r11,8)       ; implicit exception: dispatches to 0x00007f92e726f459
           │ │  │││                                                            ;   {metadata(&apos;java/util/ArrayList$ArrayListSpliterator&apos;)}
   0.01%   │ │  │││  0x00007f92e726ebec:   jne    0x00007f92e726f2e5           ;*invokeinterface forEachRemaining {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.04%   │ │  │││  0x00007f92e726ebf2:   movb   $0x0,0x1a(,%r10,8)           ;*putfield parallel {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.AbstractPipeline::sequential@5 (line 304)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@29 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%   │ │  │││  0x00007f92e726ebfb:   movb   $0x1,0x18(%rax)              ;*putfield linkedOrConsumed {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.AbstractPipeline::sourceStageSpliterator@35 (line 280)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$Head::forEach@8 (line 762)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ │  │││  0x00007f92e726ebff:   nop
   0.01%   │ │  │││  0x00007f92e726ec00:   cmpb   $0x0,0x40(%r15)
   0.04%   │ │  │││  0x00007f92e726ec05:   jne    0x00007f92e726ed20
   0.01%   │ │  │││  0x00007f92e726ec0b:   mov    %rax,(%rsp)
           │ │  │││  0x00007f92e726ec0f:   movl   $0x0,0x28(,%r10,8)           ;*putfield sourceSpliterator {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.AbstractPipeline::sourceStageSpliterator@61 (line 285)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$Head::forEach@8 (line 762)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%   │ │  │││  0x00007f92e726ec1b:   mov    0xc(%rdx),%esi               ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@38 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.05%   │ │  │││  0x00007f92e726ec1e:   shl    $0x3,%r11                    ;*getfield sourceSpliterator {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.AbstractPipeline::sourceStageSpliterator@42 (line 282)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$Head::forEach@8 (line 762)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%   │ │  │││  0x00007f92e726ec22:   mov    %esi,%r10d
           │ │  │││  0x00007f92e726ec25:   shl    $0x3,%r10                    ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@38 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%   │ │  │││  0x00007f92e726ec29:   mov    %r11,%rsi                    ;*invokeinterface forEachRemaining {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.04%   │ │  │││  0x00007f92e726ec2c:   mov    %r10,%rdx
   0.00%   │ │  │││  0x00007f92e726ec2f:   call   0x00007f92e6c2f380           ; ImmutableOopMap {[0]=Oop [16]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
           │ │  │││                                                            ;*invokeinterface forEachRemaining {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ │  │││                                                            ;   {optimized virtual_call}
   0.02%   │ │  │││  0x00007f92e726ec34:   nopl   0xc000524(%rax,%rax,1)       ;   {other}
           │ │  │││  0x00007f92e726ec3c:   mov    (%rsp),%rax
   0.16%   │ │  │││  0x00007f92e726ec40:   mov    0x1c(%rax),%esi              ; ImmutableOopMap {rax=Oop [16]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
           │ │  │││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - (reexecute) java.util.stream.ReferencePipeline$Head::forEach@17 (line 762)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.17%   │ │  │││  0x00007f92e726ec43:   mov    0x30(,%rsi,8),%esi           ; implicit exception: dispatches to 0x00007f92e726f47c
   0.17%   │ │  │││  0x00007f92e726ec4a:   test   %esi,%esi
           │ │  │││  0x00007f92e726ec4c:   jne    0x00007f92e726f236           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.AbstractPipeline::close@22 (line 320)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@94 (line 283)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.02%   │ │  │││  0x00007f92e726ec52:   movb   $0x1,0x18(%rax)              ;*putfield linkedOrConsumed {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.AbstractPipeline::close@2 (line 317)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@94 (line 283)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%   │ │  │││  0x00007f92e726ec56:   data16 nopw 0x0(%rax,%rax,1)
   0.02%   │ │  │││  0x00007f92e726ec60:   cmpb   $0x0,0x40(%r15)
           │ │ ╭│││  0x00007f92e726ec65:   jne    0x00007f92e726ecbe
   0.04%   │ │ ││││  0x00007f92e726ec6b:   movl   $0x0,0x2c(%rax)              ;*putfield sourceSupplier {reexecute=0 rethrow=0 return_oop=0}
           │ │ ││││                                                            ; - java.util.stream.AbstractPipeline::close@7 (line 318)
           │ │ ││││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@94 (line 283)
           │ │ ││││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%   │ │ ││││  0x00007f92e726ec72:   cmpb   $0x0,0x40(%r15)
   0.01%   │ │ ││││  0x00007f92e726ec77:   jne    0x00007f92e726ecef
           │ │ ││││  0x00007f92e726ec7d:   mov    0x10(%rsp),%r10
   0.05%   │ │ ││││  0x00007f92e726ec82:   movl   $0x0,0x28(%rax)              ;*putfield sourceSpliterator {reexecute=0 rethrow=0 return_oop=0}
           │ │ ││││                                                            ; - java.util.stream.AbstractPipeline::close@12 (line 319)
           │ │ ││││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@94 (line 283)
           │ │ ││││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%   │ │ ││││  0x00007f92e726ec89:   mov    0x18(%r10),%r10d
   0.02%   │ │ ││││  0x00007f92e726ec8d:   shl    $0x3,%r10                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           │ │ ││││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@152 (line 1716)
   0.01%   │ │ ││││  0x00007f92e726ec91:   mov    %r10,%rsi
   0.03%   │ │ ││││  0x00007f92e726ec94:   mov    0x64(%rsp),%r11d
   0.00%   │ │ │╰││  0x00007f92e726ec99:   jmp    0x00007f92e726eac9           ;*aload {reexecute=0 rethrow=0 return_oop=0}
           │ │ │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.52%   ↘ │ │ ││  0x00007f92e726ec9e:   mov    0x60(%rsp),%r8d
   0.49%     │ │ ││  0x00007f92e726eca3:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rsi=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │ │ ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
             │ │ ││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.00%     │ │ ││  0x00007f92e726ecaa:   test   %eax,(%r10)                  ;   {poll}
   0.24%     │ │ ╰│  0x00007f92e726ecad:   jmp    0x00007f92e726ea90           ;*aload {reexecute=0 rethrow=0 return_oop=0}
             │ │  │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
             ↘ │  │  0x00007f92e726ecb2:   mov    $0x0,%r9
               │  ╰  0x00007f92e726ecb9:   jmp    0x00007f92e726eb33           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
               │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f926c02bd18::apply@1
               │                                                               ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
               │                                                               ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
               ↘     0x00007f92e726ecbe:   lea    0x2c(%rax),%rsi
                     0x00007f92e726ecc2:   mov    (%rsi),%esi
                     0x00007f92e726ecc4:   test   %esi,%esi
                     0x00007f92e726ecc6:   je     0x00007f92e726ec6b
....................................................................................................
  16.81%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.stream.Collectors$$Lambda.0x00007f926c03c7f0::accept, version 3, compile id 1223 

              [Disassembly]
              --------------------------------------------------------------------------------
              [Constant Pool (empty)]
              --------------------------------------------------------------------------------
              [Entry Point]
                # {method} {0x00007f9267316680} &apos;accept&apos; &apos;(Ljava/lang/Object;Ljava/lang/Object;)V&apos; in &apos;java/util/stream/Collectors$$Lambda+0x00007f926c03c7f0&apos;
                # this:     rsi:rsi   = &apos;java/util/stream/Collectors$$Lambda+0x00007f926c03c7f0&apos;
                # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                # parm1:    rcx:rcx   = &apos;java/lang/Object&apos;
                #           [sp+0x30]  (sp of caller)
   0.03%        0x00007f92e7263e40:   mov    0x8(%rsi),%r10d
   0.17%        0x00007f92e7263e44:   movabs $0x7f926b000000,%r12
   0.17%        0x00007f92e7263e4e:   add    %r12,%r10
   0.02%        0x00007f92e7263e51:   xor    %r12,%r12
   0.01%        0x00007f92e7263e54:   cmp    %r10,%rax
                0x00007f92e7263e57:   jne    0x00007f92e6c2f080           ;   {runtime_call ic_miss_stub}
   0.13%        0x00007f92e7263e5d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.15%        0x00007f92e7263e60:   mov    %eax,-0x14000(%rsp)
   0.04%        0x00007f92e7263e67:   sub    $0x28,%rsp
   0.14%        0x00007f92e7263e6b:   nop
   0.11%        0x00007f92e7263e6c:   cmpl   $0x1,0x20(%r15)
   0.01%        0x00007f92e7263e74:   jne    0x00007f92e7264077
   0.00%        0x00007f92e7263e7a:   mov    %rbp,0x20(%rsp)
   0.16%        0x00007f92e7263e7f:   mov    %rsi,%r10                    ; ImmutableOopMap {rcx=Oop rdx=Oop r10=Oop }
                                                                          ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@0
   0.17%        0x00007f92e7263e82:   test   %eax,(%rcx)                  ; implicit exception: dispatches to 0x00007f92e726409b
                                                                          ; ImmutableOopMap {rcx=Oop rdx=Oop r10=Oop }
                                                                          ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@0
   6.83%        0x00007f92e7263e84:   cmpl   $0x8da40,0x8(%rdx)           ; implicit exception: dispatches to 0x00007f92e72640be
                                                                          ;   {metadata(&apos;java/util/HashMap&apos;)}
   0.01%        0x00007f92e7263e8b:   jne    0x00007f92e7264065           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@13
   0.10%        0x00007f92e7263e91:   mov    0xc(%r10),%esi               ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@1
   0.13%        0x00007f92e7263e95:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rcx=Oop rdx=Oop r10=Oop }
                                                                          ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@0
   0.11%        0x00007f92e7263ea0:   cmpl   $0x103b8c8,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007f92e72640e1
                                                                          ;   {metadata(&apos;java/util/function/Function$$Lambda+0x00007f926c03b8c8&apos;)}
   0.09%        0x00007f92e7263eab:   jne    0x00007f92e726406e           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                          ; - java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@17
   0.12%        0x00007f92e7263eb1:   mov    0x14(%r10),%r11d             ;*getfield arg$3 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@9
   0.11%        0x00007f92e7263eb5:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rcx=Oop rdx=Oop r10=Oop r11=NarrowOop }
                                                                          ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@0
   0.00%        0x00007f92e7263ec0:   cmpl   $0x103bf30,0x8(,%r11,8)      ; implicit exception: dispatches to 0x00007f92e7264104
                                                                          ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f926c03bf30&apos;)}
   0.23%        0x00007f92e7263ecc:   jne    0x00007f92e726402f           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                          ; - java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@17
   0.10%        0x00007f92e7263ed2:   mov    0x1b8(%r15),%rsi
   0.01%        0x00007f92e7263ed9:   lea    0x10(%rsi),%r8
   0.08%        0x00007f92e7263edd:   data16 xchg %ax,%ax
   0.13%        0x00007f92e7263ee0:   cmp    0x1c8(%r15),%r8
          ╭     0x00007f92e7263ee7:   ja     0x00007f92e7263fda
   0.12%  │     0x00007f92e7263eed:   mov    %r8,0x1b8(%r15)
   0.01%  │     0x00007f92e7263ef4:   prefetchw 0xd0(%rsi)
   0.08%  │     0x00007f92e7263efb:   movq   $0x1,(%rsi)
   0.16%  │     0x00007f92e7263f02:   movl   $0x103d378,0x8(%rsi)         ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f926c03d378&apos;)}
   0.11%  │     0x00007f92e7263f09:   movl   $0x0,0xc(%rsi)
   0.01%  │     0x00007f92e7263f10:   mov    %rsi,%r8                     ;* unwind (locked if synchronized)
          │                                                               ; - jdk.internal.misc.Unsafe::allocateInstance@-3
          │                                                               ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
          │                                                               ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@1
          │                                                               ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
          │                                                               ; - java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@17
   0.08%  │     0x00007f92e7263f13:   mov    0x10(%r10),%esi              ;*getfield arg$2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@5
   0.13%  │     0x00007f92e7263f17:   mov    %esi,0xc(%r8)                ;* unwind (locked if synchronized)
          │                                                               ; - jdk.internal.misc.Unsafe::allocateInstance@-3
          │                                                               ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
          │                                                               ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@1
          │                                                               ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
          │                                                               ; - java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@17
   0.08%  │     0x00007f92e7263f1b:   mov    %r11d,%r10d
   0.01%  │     0x00007f92e7263f1e:   shl    $0x3,%r10                    ;*getfield arg$3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@9
   0.08%  │     0x00007f92e7263f22:   mov    %rdx,%rsi
   0.13%  │     0x00007f92e7263f25:   mov    %rcx,%rdx
   0.08%  │     0x00007f92e7263f28:   mov    %rcx,0x10(%rsp)
   0.00%  │     0x00007f92e7263f2d:   mov    %r8,%rcx                     ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
          │                                                               ; - java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@17
   0.09%  │     0x00007f92e7263f30:   mov    %r10,0x8(%rsp)
   0.11%  │     0x00007f92e7263f35:   mov    %r11d,0x4(%rsp)
   0.11%  │     0x00007f92e7263f3a:   nop
   0.01%  │     0x00007f92e7263f3b:   call   0x00007f92e7261420           ; ImmutableOopMap {[4]=NarrowOop [8]=Oop [16]=Oop }
          │                                                               ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=1}
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
          │                                                               ; - java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@17
          │                                                               ;   {optimized virtual_call}
   0.20%  │     0x00007f92e7263f40:   nopl   0x40002b0(%rax,%rax,1)       ;   {other}
          │     0x00007f92e7263f48:   test   %rax,%rax
          │╭    0x00007f92e7263f4b:   je     0x00007f92e7263fd1
          ││    0x00007f92e7263f51:   mov    0x8(%rax),%esi
   0.13%  ││    0x00007f92e7263f54:   movabs $0x7f926b000000,%r10
   0.23%  ││    0x00007f92e7263f5e:   lea    (%r10,%rsi,1),%rsi
   0.01%  ││ ↗  0x00007f92e7263f62:   test   %rax,%rax
          ││╭│  0x00007f92e7263f65:   je     0x00007f92e7263f7e
          ││││  0x00007f92e7263f6b:   movabs $0x7f926b002a80,%r10         ;   {metadata({type array long})}
   0.14%  ││││  0x00007f92e7263f75:   cmp    %rsi,%r10
          ││││  0x00007f92e7263f78:   jne    0x00007f92e7264005           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f926c03bf30::accept@5
          ││││                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
          ││││                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@17
   0.21%  ││↘│  0x00007f92e7263f7e:   mov    0x4(%rsp),%r11d              ; ImmutableOopMap {rax=Oop r11=NarrowOop [8]=Oop [16]=Oop }
          ││ │                                                            ;*astore {reexecute=1 rethrow=0 return_oop=0}
          ││ │                                                            ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
          ││ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@17
   0.01%  ││ │  0x00007f92e7263f83:   mov    0xc(%rax),%esi               ; implicit exception: dispatches to 0x00007f92e7264127
   0.09%  ││ │  0x00007f92e7263f86:   mov    0xc(,%r11,8),%r10d           ; ImmutableOopMap {rax=Oop [8]=Oop [16]=Oop }
          ││ │                                                            ;*astore {reexecute=1 rethrow=0 return_oop=0}
          ││ │                                                            ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
          ││ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@17
   0.25%  ││ │  0x00007f92e7263f8e:   cmpl   $0x103bb00,0x8(,%r10,8)      ; implicit exception: dispatches to 0x00007f92e726414d
          ││ │                                                            ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f926c03bb00&apos;)}
   0.12%  ││ │  0x00007f92e7263f9a:   jne    0x00007f92e726405d           ;*invokeinterface applyAsLong {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.stream.Collectors::lambda$summingLong$23@6 (line 662)
          ││ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f926c03bf30::accept@9
          ││ │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
          ││ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@17
   0.13%  ││ │  0x00007f92e7263fa0:   test   %esi,%esi
          ││ │  0x00007f92e7263fa2:   je     0x00007f92e7264055
   0.23%  ││ │  0x00007f92e7263fa8:   incq   0x10(%rax)                   ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.stream.Collectors::lambda$summingLong$23@12 (line 662)
          ││ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f926c03bf30::accept@9
          ││ │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
          ││ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@17
   0.15%  ││ │  0x00007f92e7263fac:   mov    0x20(%rsp),%rbp
   0.19%  ││ │  0x00007f92e7263fb1:   add    $0x28,%rsp
          ││ │  0x00007f92e7263fb5:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││ │  0x00007f92e7263fc0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ │  0x00007f92e7263fc7:   ja     0x00007f92e7264087
   0.13%  ││ │  0x00007f92e7263fcd:   vzeroupper 
   0.36%  ││ │  0x00007f92e7263fd0:   ret    
          │↘ │  0x00007f92e7263fd1:   mov    $0x0,%rsi
          │  ╰  0x00007f92e7263fd8:   jmp    0x00007f92e7263f62           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.stream.Collectors$$Lambda/0x00007f926c03bf30::accept@5
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
          │                                                               ; - java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@17
          ↘     0x00007f92e7263fda:   mov    %rcx,0x10(%rsp)
                0x00007f92e7263fdf:   movabs $0x7f926c03d378,%rsi         ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f926c03d378&apos;)}
                0x00007f92e7263fe9:   call   0x00007f92e6dbb800           ; ImmutableOopMap {rdx=Oop r10=Oop r11=NarrowOop [16]=Oop }
                                                                          ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f926c03c7f0::accept@0
....................................................................................................
  13.35%  <total for region 3>

....[Hottest Regions]...............................................................................
  45.83%      jvmci, level 4  java.util.HashMap::computeIfAbsent, version 5, compile id 1261 
  16.81%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1272 
  13.35%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f926c03c7f0::accept, version 3, compile id 1223 
   9.17%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 3, compile id 1234 
   5.07%      jvmci, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 3, compile id 1237 
   2.07%                      <unknown> 
   1.28%                      <unknown> 
   1.15%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 3, compile id 1234 
   0.70%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 3, compile id 1234 
   0.68%      jvmci, level 4  java.util.Collection::stream, version 3, compile id 1239 
   0.61%              kernel  [unknown] 
   0.60%      jvmci, level 4  java.util.Collection::stream, version 3, compile id 1239 
   0.34%      jvmci, level 4  java.util.Collection::stream, version 3, compile id 1239 
   0.30%                      <unknown> 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   1.64%  <...other 451 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  45.87%      jvmci, level 4  java.util.HashMap::computeIfAbsent, version 5, compile id 1261 
  16.81%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1272 
  13.35%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f926c03c7f0::accept, version 3, compile id 1223 
  11.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 3, compile id 1234 
   5.07%      jvmci, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 3, compile id 1237 
   3.78%                      <unknown> 
   1.87%              kernel  [unknown] 
   1.62%      jvmci, level 4  java.util.Collection::stream, version 3, compile id 1239 
   0.04%      jvmci, level 4  java.util.HashMap::resize, version 2, compile id 723 
   0.03%      jvmci, level 4  java.util.HashMap::replaceAll, version 5, compile id 1301 
   0.03%      jvmci, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 4, compile id 1300 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  G1CardSet::reset_table_scanner 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%      jvmci, level 4  java.util.HashMap::newNode, version 2, compile id 1038 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.40%  <...other 126 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.86%      jvmci, level 4
   3.78%                    
   1.87%              kernel
   0.30%           libjvm.so
   0.11%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.01%         c1, level 3
   0.01%    perf-2126664.map
   0.00%         interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.authors_with_no_duplicate_collaborations

# Run progress: 7.14% complete, ETA 00:25:15
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 91.145 ms/op
# Warmup Iteration   2: 74.964 ms/op
# Warmup Iteration   3: 74.221 ms/op
# Warmup Iteration   4: 74.715 ms/op
# Warmup Iteration   5: 73.907 ms/op
Iteration   1: 74.154 ms/op
Iteration   2: 74.434 ms/op
Iteration   3: 74.226 ms/op
Iteration   4: 74.262 ms/op
Iteration   5: 73.953 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.authors_with_no_duplicate_collaborations":
  74.206 ±(99.9%) 0.673 ms/op [Average]
  (min, avg, max) = (73.953, 74.206, 74.434), stdev = 0.175
  CI (99.9%): [73.533, 74.879] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.authors_with_no_duplicate_collaborations:asm":
PrintAssembly processed: 303382 total address lines.
Perf output processed (skipped 62.087 seconds):
 Column 1: cycles (50850 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.HashMap::computeIfAbsent, version 5, compile id 1295 

             # parm1:    rcx:rcx   = &apos;java/util/function/Function&apos;
             #           [sp+0x60]  (sp of caller)
             0x00007f145326b300:   mov    0x8(%rsi),%r10d
             0x00007f145326b304:   movabs $0x7f13d7000000,%r12
             0x00007f145326b30e:   add    %r12,%r10
             0x00007f145326b311:   xor    %r12,%r12
             0x00007f145326b314:   cmp    %r10,%rax
             0x00007f145326b317:   jne    0x00007f1452c2f080           ;   {runtime_call ic_miss_stub}
             0x00007f145326b31d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.01%     0x00007f145326b320:   mov    %eax,-0x14000(%rsp)
   0.26%     0x00007f145326b327:   sub    $0x58,%rsp
   0.01%     0x00007f145326b32b:   nop
   0.01%     0x00007f145326b32c:   cmpl   $0x1,0x20(%r15)
   0.11%     0x00007f145326b334:   jne    0x00007f145326bd27
   0.13%     0x00007f145326b33a:   mov    %rbp,0x50(%rsp)
   0.01%     0x00007f145326b33f:   mov    %rsi,0x30(%rsp)
   0.00%     0x00007f145326b344:   mov    %rdx,0x28(%rsp)              ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop [40]=Oop [48]=Oop }
                                                                       ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.HashMap::computeIfAbsent@0 (line 1197)
   0.08%     0x00007f145326b349:   test   %eax,(%rcx)                  ; implicit exception: dispatches to 0x00007f145326bd5f
                                                                       ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop [40]=Oop [48]=Oop }
                                                                       ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.HashMap::computeIfAbsent@0 (line 1197)
   0.14%     0x00007f145326b34b:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f145326bd82
   0.09%     0x00007f145326b34f:   movabs $0x7f13d7000000,%rbx         ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.00%     0x00007f145326b359:   lea    (%rbx,%r10,1),%rax
   0.11%     0x00007f145326b35d:   movabs $0x7f13d700e8d8,%rbx         ;   {metadata(&apos;java/lang/String&apos;)}
   0.16%     0x00007f145326b367:   cmp    %rax,%rbx
          ╭  0x00007f145326b36a:   jne    0x00007f145326b531
   0.00%  │  0x00007f145326b370:   mov    0xc(%rdx),%r11d              ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.String::hashCode@1 (line 2363)
          │                                                            ; - java.util.HashMap::hash@9 (line 338)
          │                                                            ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.03%  │  0x00007f145326b374:   test   %r11d,%r11d
          │  0x00007f145326b377:   je     0x00007f145326b690           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.String::hashCode@6 (line 2364)
          │                                                            ; - java.util.HashMap::hash@9 (line 338)
          │                                                            ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.09%  │  0x00007f145326b37d:   mov    %r10d,0x44(%rsp)
   0.13%  │  0x00007f145326b382:   mov    %rcx,0x20(%rsp)
   0.00%  │  0x00007f145326b387:   mov    %rdx,%rbp
   0.00%  │  0x00007f145326b38a:   mov    0x1c(%rsi),%edx              ;*getfield threshold {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@31 (line 1204)
   0.10%  │  0x00007f145326b38d:   mov    %r11d,%ecx
   0.17%  │  0x00007f145326b390:   shr    $0x10,%ecx                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::hash@17 (line 338)
          │                                                            ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.01%  │  0x00007f145326b393:   xor    %r11d,%ecx                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::hash@18 (line 338)
          │                                                            ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.00%  │  0x00007f145326b396:   cmp    0x14(%rsi),%edx
          │  0x00007f145326b399:   jl     0x00007f145326b9fa           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@34 (line 1204)
   0.09%  │  0x00007f145326b39f:   mov    0x24(%rsi),%edx              ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
   0.14%  │  0x00007f145326b3a2:   test   %edx,%edx
          │  0x00007f145326b3a4:   je     0x00007f145326b9fa           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@44 (line 1204)
   0.00%  │  0x00007f145326b3aa:   mov    0xc(,%rdx,8),%r8d            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@49 (line 1204)
   0.01%  │  0x00007f145326b3b2:   test   %r8d,%r8d
          │  0x00007f145326b3b5:   je     0x00007f145326b9fa           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@53 (line 1204)
   0.07%  │  0x00007f145326b3bb:   shl    $0x3,%rdx                    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
   0.14%  │  0x00007f145326b3bf:   mov    %r8d,%r9d
   0.00%  │  0x00007f145326b3c2:   dec    %r9d                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@71 (line 1207)
   0.00%  │  0x00007f145326b3c5:   and    %ecx,%r9d                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@73 (line 1207)
   0.10%  │  0x00007f145326b3c8:   cmp    0xc(%rdx),%r9d
          │  0x00007f145326b3cc:   jae    0x00007f145326bcc9
   0.15%  │  0x00007f145326b3d2:   mov    0x10(%rdx,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   0.82%  │  0x00007f145326b3d7:   mov    0x8(%rsi),%ebx               ;*invokevirtual afterNodeAccess {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@188 (line 1223)
          │  0x00007f145326b3da:   mov    %r11d,%r13d
   0.08%  │  0x00007f145326b3dd:   shl    $0x3,%r13
   0.20%  │  0x00007f145326b3e1:   test   %r11d,%r11d
          │  0x00007f145326b3e4:   je     0x00007f145326b905
   0.01%  │  0x00007f145326b3ea:   cmpl   $0x1a7c50,0x8(,%r11,8)       ;   {metadata(&apos;java/util/HashMap$TreeNode&apos;)}
   7.08%  │  0x00007f145326b3f6:   je     0x00007f145326bc64           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   0.22%  │  0x00007f145326b3fc:   nopl   0x0(%rax)
   0.00%  │  0x00007f145326b400:   cmp    0xc(,%r11,8),%ecx
          │  0x00007f145326b408:   jne    0x00007f145326b565           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@120 (line 1213)
   0.73%  │  0x00007f145326b40e:   mov    0x10(,%r11,8),%r10d
   0.26%  │  0x00007f145326b416:   mov    %r10d,%edi
          │  0x00007f145326b419:   shl    $0x3,%rdi                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
   0.05%  │  0x00007f145326b41d:   data16 xchg %ax,%ax
   0.14%  │  0x00007f145326b420:   cmp    %rbp,%rdi
          │  0x00007f145326b423:   je     0x00007f145326bbe5
   0.05%  │  0x00007f145326b429:   cmpl   $0xe8d8,0x44(%rsp)           ;   {metadata(&apos;java/lang/String&apos;)}
   0.00%  │  0x00007f145326b431:   jne    0x00007f145326bd15           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.03%  │  0x00007f145326b437:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdx=Oop rbp=Oop rsi=Oop r10=NarrowOop r13=Oop [32]=Oop [40]=Oop [48]=Oop }
          │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.14%  │  0x00007f145326b440:   cmpl   $0xe8d8,0x8(,%r10,8)         ; implicit exception: dispatches to 0x00007f145326bda5
          │                                                            ;   {metadata(&apos;java/lang/String&apos;)}
   3.69%  │  0x00007f145326b44c:   jne    0x00007f145326bc85
   0.18%  │  0x00007f145326b452:   movsbl 0x10(%rbp),%edi
   0.01%  │  0x00007f145326b456:   data16 nopw 0x0(%rax,%rax,1)
          │  0x00007f145326b460:   cmp    0x10(,%r10,8),%dil
          │  0x00007f145326b468:   jne    0x00007f145326bad5           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.String::equals@0 (line 1858)
          │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.39%  │  0x00007f145326b46e:   mov    0x14(,%r10,8),%r10d          ; ImmutableOopMap {rdx=Oop rbp=Oop rsi=Oop r10=NarrowOop r13=Oop [32]=Oop [40]=Oop [48]=Oop }
          │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.17%  │  0x00007f145326b476:   mov    0xc(,%r10,8),%edi            ; implicit exception: dispatches to 0x00007f145326bdc8
   1.15%  │  0x00007f145326b47e:   mov    0x14(%rbp),%eax              ; ImmutableOopMap {rax=NarrowOop rdx=Oop rbp=Oop rsi=Oop r10=NarrowOop r13=Oop [32]=Oop [40]=Oop [48]=Oop }
          │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
          │  0x00007f145326b481:   mov    0xc(,%rax,8),%r11d           ; implicit exception: dispatches to 0x00007f145326bded
   0.04%  │  0x00007f145326b489:   cmp    %edi,%r11d
          │  0x00007f145326b48c:   jne    0x00007f145326bd03
   0.15%  │  0x00007f145326b492:   test   %edi,%edi
          │  0x00007f145326b494:   je     0x00007f145326b705
   0.07%  │  0x00007f145326b49a:   mov    %r9d,0x38(%rsp)
          │  0x00007f145326b49f:   mov    %rdx,0x18(%rsp)
   0.02%  │  0x00007f145326b4a4:   shl    $0x3,%r10
   0.05%  │  0x00007f145326b4a8:   shl    $0x3,%rax
   0.10%  │  0x00007f145326b4ac:   mov    %rsi,%r14
          │  0x00007f145326b4af:   mov    %r10,%rsi
   0.01%  │  0x00007f145326b4b2:   mov    $0x10,%rdx
   0.05%  │  0x00007f145326b4b9:   mov    %ecx,%edi
   0.09%  │  0x00007f145326b4bb:   mov    %rax,%rcx
          │  0x00007f145326b4be:   mov    $0x10,%r8
   0.01%  │  0x00007f145326b4c5:   mov    %r11d,%r9d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.String::equals@0 (line 1858)
          │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.05%  │  0x00007f145326b4c8:   mov    %edi,%r11d
   0.09%  │  0x00007f145326b4cb:   call   0x00007f1452dbef00           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.15%  │  0x00007f145326b4d0:   nop
          │  0x00007f145326b4d1:   test   %eax,%eax
          │  0x00007f145326b4d3:   je     0x00007f145326bb8a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@145 (line 1214)
   0.00%  │  0x00007f145326b4d9:   mov    $0x0,%r10d
          │  0x00007f145326b4df:   mov    %r11d,0x40(%rsp)
   0.14%  │  0x00007f145326b4e4:   mov    %r13,%r11                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@148 (line 1215)
          │  0x00007f145326b4e7:   test   %r11,%r11
          │  0x00007f145326b4ea:   je     0x00007f145326b73e           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@171 (line 1222)
          │  0x00007f145326b4f0:   mov    0x14(%r11),%eax              ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@169 (line 1222)
   0.15%  │  0x00007f145326b4f4:   test   %eax,0x0(,%rax,8)            ; implicit exception: deoptimizes
          │                                                            ; ImmutableOopMap {rax=NarrowOop r11=Oop r13=Oop r14=Oop [24]=Oop [32]=Oop [40]=Oop }
   0.51%  │  0x00007f145326b4fb:   nopl   0x0(%rax,%rax,1)
          │  0x00007f145326b500:   cmp    $0x8da40,%ebx                ;   {metadata(&apos;java/util/HashMap&apos;)}
          │  0x00007f145326b506:   jne    0x00007f145326bcb7           ;*invokevirtual afterNodeAccess {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@188 (line 1223)
   0.16%  │  0x00007f145326b50c:   shl    $0x3,%rax                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@176 (line 1222)
   0.07%  │  0x00007f145326b510:   mov    0x50(%rsp),%rbp
   0.03%  │  0x00007f145326b515:   add    $0x58,%rsp
          │  0x00007f145326b519:   nopl   0x0(%rax)
   0.24%  │  0x00007f145326b520:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f145326b527:   ja     0x00007f145326bd37
   0.02%  │  0x00007f145326b52d:   vzeroupper 
   0.26%  │  0x00007f145326b530:   ret    
          ↘  0x00007f145326b531:   mov    %r10d,0x44(%rsp)
             0x00007f145326b536:   mov    %rcx,0x20(%rsp)
             0x00007f145326b53b:   mov    0x1e0(%rax),%rbx
             0x00007f145326b542:   mov    0x40(%rbx),%rax              ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::hash@9 (line 338)
                                                                       ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
             0x00007f145326b546:   mov    %rdx,%rsi
             0x00007f145326b549:   call   *%rax                        ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
                                                                       ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::hash@9 (line 338)
....................................................................................................
  20.20%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.stream.Collectors$$Lambda.0x00007f13d803bae0::accept, version 3, compile id 1227 

           [Disassembly]
           --------------------------------------------------------------------------------
           [Constant Pool (empty)]
           --------------------------------------------------------------------------------
           [Entry Point]
             # {method} {0x00007f13d33173c8} &apos;accept&apos; &apos;(Ljava/lang/Object;Ljava/lang/Object;)V&apos; in &apos;java/util/stream/Collectors$$Lambda+0x00007f13d803bae0&apos;
             # this:     rsi:rsi   = &apos;java/util/stream/Collectors$$Lambda+0x00007f13d803bae0&apos;
             # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
             # parm1:    rcx:rcx   = &apos;java/lang/Object&apos;
             #           [sp+0x50]  (sp of caller)
   0.05%     0x00007f1453261b60:   mov    0x8(%rsi),%r10d
   0.21%     0x00007f1453261b64:   movabs $0x7f13d7000000,%r12
   0.01%     0x00007f1453261b6e:   add    %r12,%r10
   0.05%     0x00007f1453261b71:   xor    %r12,%r12
   0.00%     0x00007f1453261b74:   cmp    %r10,%rax
             0x00007f1453261b77:   jne    0x00007f1452c2f080           ;   {runtime_call ic_miss_stub}
   0.15%     0x00007f1453261b7d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.00%     0x00007f1453261b80:   mov    %eax,-0x14000(%rsp)
   0.07%     0x00007f1453261b87:   sub    $0x48,%rsp
   0.20%     0x00007f1453261b8b:   nop
   0.01%     0x00007f1453261b8c:   cmpl   $0x1,0x20(%r15)
   0.04%     0x00007f1453261b94:   jne    0x00007f1453261f19
   0.01%     0x00007f1453261b9a:   mov    %rbp,0x40(%rsp)
   0.21%     0x00007f1453261b9f:   mov    %rsi,%r10
             0x00007f1453261ba2:   mov    %rcx,0x28(%rsp)              ; ImmutableOopMap {rcx=Oop rdx=Oop r10=Oop [40]=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@0
   0.03%     0x00007f1453261ba7:   cmpl   $0x8da40,0x8(%rdx)           ; implicit exception: dispatches to 0x00007f1453261f3d
                                                                       ;   {metadata(&apos;java/util/HashMap&apos;)}
   0.01%     0x00007f1453261bae:   jne    0x00007f1453261ea8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@13
   0.22%     0x00007f1453261bb4:   mov    0xc(%r10),%esi               ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@1
   0.01%     0x00007f1453261bb8:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rcx=Oop rdx=Oop r10=Oop [40]=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@0
   0.04%     0x00007f1453261bc0:   cmpl   $0x1084000,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007f1453261f60
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007f13d8084000&apos;)}
   0.25%     0x00007f1453261bcb:   jne    0x00007f1453261e99           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@17
   0.01%     0x00007f1453261bd1:   test   %rcx,%rcx
             0x00007f1453261bd4:   je     0x00007f1453261d91
   0.02%     0x00007f1453261bda:   mov    0x8(%rcx),%esi
   6.63%     0x00007f1453261bdd:   movabs $0x7f13d7000000,%r11
   0.13%     0x00007f1453261be7:   lea    (%r11,%rsi,1),%rsi           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f13d8084000::apply@1
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@17
   0.08%     0x00007f1453261beb:   test   %rcx,%rcx
          ╭  0x00007f1453261bee:   je     0x00007f1453261c09
   0.02%  │  0x00007f1453261bf4:   movabs $0x7f13d802b2b0,%r11         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
          │  0x00007f1453261bfe:   xchg   %ax,%ax
   0.13%  │  0x00007f1453261c00:   cmp    %rsi,%r11
          │  0x00007f1453261c03:   jne    0x00007f1453261f07           ; ImmutableOopMap {rcx=Oop rdx=Oop r10=Oop [40]=Oop }
          │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@0
   0.20%  ↘  0x00007f1453261c09:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007f1453261f83
   0.24%     0x00007f1453261c0d:   mov    0x8(%rcx),%r8d               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@0
   0.00%     0x00007f1453261c11:   test   %eax,0x0(,%r11,8)            ; implicit exception: deoptimizes
                                                                       ; ImmutableOopMap {rcx=Oop rdx=Oop r10=Oop r11=NarrowOop [40]=Oop }
   1.22%     0x00007f1453261c19:   mov    0x14(%r10),%r9d              ;*getfield arg$3 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@9
   0.01%     0x00007f1453261c1d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdx=Oop r9=NarrowOop r10=Oop r11=NarrowOop [40]=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@0
             0x00007f1453261c20:   cmpl   $0x3a58d8,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f1453261fa6
                                                                       ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x800000044&apos;)}
   0.27%     0x00007f1453261c2c:   jne    0x00007f1453261e49           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@17
   0.00%     0x00007f1453261c32:   mov    0x1b8(%r15),%rsi
   0.00%     0x00007f1453261c39:   lea    0x10(%rsi),%rbx
   0.10%     0x00007f1453261c3d:   data16 xchg %ax,%ax
   0.15%     0x00007f1453261c40:   cmp    0x1c8(%r15),%rbx
             0x00007f1453261c47:   ja     0x00007f1453261e05
   0.01%     0x00007f1453261c4d:   mov    %rbx,0x1b8(%r15)
   0.00%     0x00007f1453261c54:   prefetchw 0xd0(%rsi)
   0.09%     0x00007f1453261c5b:   movq   $0x1,(%rsi)
   0.15%     0x00007f1453261c62:   movl   $0x103bf58,0x8(%rsi)         ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f13d803bf58&apos;)}
   0.01%     0x00007f1453261c69:   movl   $0x0,0xc(%rsi)
             0x00007f1453261c70:   mov    %r8d,0x34(%rsp)
   0.08%     0x00007f1453261c75:   mov    %rsi,%rcx                    ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::allocateInstance@-3
                                                                       ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
                                                                       ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@1
                                                                       ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@17
   0.16%     0x00007f1453261c78:   mov    0x10(%r10),%esi              ;*getfield arg$2 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@5
   0.02%     0x00007f1453261c7c:   mov    %esi,0xc(%rcx)               ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::allocateInstance@-3
                                                                       ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
                                                                       ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@1
                                                                       ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@17
   0.01%     0x00007f1453261c7f:   shl    $0x3,%r11                    ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::getName@1 (line 40)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$authorsWithNoDuplicateCollaborations$7@1 (line 118)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f13d8084000::apply@4
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@17
   0.08%     0x00007f1453261c83:   shl    $0x3,%r9                     ;*getfield arg$3 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@9
   0.19%     0x00007f1453261c87:   mov    %rdx,%rsi
   0.02%     0x00007f1453261c8a:   mov    %r11,%rdx                    ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@17
   0.01%     0x00007f1453261c8d:   mov    %r9,0x20(%rsp)
   0.10%     0x00007f1453261c92:   nop
   0.17%     0x00007f1453261c93:   call   0x00007f145325e880           ; ImmutableOopMap {[32]=Oop [40]=Oop }
                                                                       ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=1}
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@17
                                                                       ;   {optimized virtual_call}
   0.01%     0x00007f1453261c98:   nopl   0x5000308(%rax,%rax,1)       ; ImmutableOopMap {rax=Oop [32]=Oop [40]=Oop }
                                                                       ;*astore {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@17
                                                                       ;   {other}
             0x00007f1453261ca0:   cmpl   $0xdef28,0x8(%rax)           ; implicit exception: dispatches to 0x00007f1453261fcd
                                                                       ;   {metadata(&apos;java/util/HashSet&apos;)}
   0.28%     0x00007f1453261ca7:   jne    0x00007f1453261ef8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$$Lambda/0x800000044::accept@1
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@17
   0.03%     0x00007f1453261cad:   mov    0x34(%rsp),%r8d
   0.01%     0x00007f1453261cb2:   mov    0xc(%rax),%esi               ;*astore {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f13d803bae0::accept@17
   0.20%     0x00007f1453261cb5:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
                                                                       ; ImmutableOopMap {rax=Oop rsi=NarrowOop [32]=Oop [40]=Oop }
   0.24%     0x00007f1453261cbc:   shl    $0x3,%rsi
             0x00007f1453261cc0:   movabs $0x7ffc0ed30,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007ffc0ed30})}
   0.19%     0x00007f1453261cca:   movabs $0x7f13d7000000,%rbx
   0.01%     0x00007f1453261cd4:   lea    (%rbx,%r8,1),%r8
   0.05%     0x00007f1453261cd8:   movabs $0x7f13d700e8d8,%rbx         ;   {metadata(&apos;java/lang/String&apos;)}
             0x00007f1453261ce2:   cmp    %r8,%rbx
             0x00007f1453261ce5:   jne    0x00007f1453261d5a
             0x00007f1453261ceb:   mov    0x28(%rsp),%rcx
             0x00007f1453261cf0:   mov    0xc(%rcx),%r11d              ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::hashCode@1 (line 2363)
                                                                       ; - java.util.HashMap::hash@9 (line 338)
                                                                       ; - java.util.HashMap::put@2 (line 618)
                                                                       ; - java.util.HashSet::add@8 (line 229)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x800000044::accept@8
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
....................................................................................................
  12.88%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.HashMap::computeIfAbsent, version 5, compile id 1295 

              0x00007f145326b549:   call   *%rax                        ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
                                                                        ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::hash@9 (line 338)
                                                                        ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
              0x00007f145326b54b:   nopl   0x0(%rax,%rax,1)
              0x00007f145326b553:   mov    %eax,%r11d
              0x00007f145326b556:   mov    0x28(%rsp),%rbp
              0x00007f145326b55b:   mov    0x30(%rsp),%rsi
              0x00007f145326b560:   jmp    0x00007f145326b38a           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   1.19%      0x00007f145326b565:   mov    %r9d,0x38(%rsp)
   0.87%      0x00007f145326b56a:   mov    %rdx,0x18(%rsp)
   0.30%      0x00007f145326b56f:   mov    %rsi,%r14
              0x00007f145326b572:   mov    0x18(,%r11,8),%esi           ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.12%      0x00007f145326b57a:   nopw   0x0(%rax,%rax,1)
              0x00007f145326b580:   test   %esi,%esi
              0x00007f145326b582:   je     0x00007f145326b8ed
   0.08%      0x00007f145326b588:   cmpl   $0xe8d8,0x44(%rsp)           ;   {metadata(&apos;java/lang/String&apos;)}
              0x00007f145326b590:   jne    0x00007f145326bc10           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.01%      0x00007f145326b596:   mov    0x14(%rbp),%edx              ; ImmutableOopMap {rdx=NarrowOop rbp=Oop rsi=NarrowOop r13=Oop r14=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
                                                                        ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.00%      0x00007f145326b599:   mov    0xc(,%rdx,8),%r9d            ; implicit exception: dispatches to 0x00007f145326be10
   0.15%      0x00007f145326b5a1:   shl    $0x3,%rsi                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
              0x00007f145326b5a5:   mov    $0x1,%r10d
   0.00%  ╭   0x00007f145326b5ab:   jmp    0x00007f145326b5e2           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap::computeIfAbsent@114 (line 1213)
          │   0x00007f145326b5b0:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f145326b5bb:   data16 data16 xchg %ax,%ax
          │   0x00007f145326b5bf:   nop                                 ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap::computeIfAbsent@116 (line 1213)
   0.11%  │↗  0x00007f145326b5c0:   mov    0x18(%r11),%esi              ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.17%  ││  0x00007f145326b5c4:   mov    %r10d,%r8d
          ││  0x00007f145326b5c7:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@155 (line 1218)
          ││  0x00007f145326b5ca:   test   %esi,%esi
          ││  0x00007f145326b5cc:   je     0x00007f145326b96a           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
   0.02%  ││  0x00007f145326b5d2:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rdx=NarrowOop rbp=Oop rsi=NarrowOop r11=Oop r13=Oop r14=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
          ││  0x00007f145326b5d9:   test   %eax,(%rdi)                  ;   {poll}
   0.09%  ││  0x00007f145326b5db:   shl    $0x3,%rsi                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.00%  ││  0x00007f145326b5df:   mov    %r8d,%r10d                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@114 (line 1213)
          ↘│  0x00007f145326b5e2:   mov    %rsi,%r11                    ; ImmutableOopMap {rdx=NarrowOop rbp=Oop r11=Oop r13=Oop r14=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.09%   │  0x00007f145326b5e5:   mov    0xc(%r11),%esi               ; implicit exception: dispatches to 0x00007f145326be33
   3.14%   │  0x00007f145326b5e9:   mov    0x10(%r11),%r8d              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
   0.49%   │  0x00007f145326b5ed:   cmp    %ecx,%esi
           ╰  0x00007f145326b5ef:   jne    0x00007f145326b5c0           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@120 (line 1213)
   0.02%      0x00007f145326b5f1:   mov    %r8d,%esi
   0.00%      0x00007f145326b5f4:   shl    $0x3,%rsi                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
   0.07%      0x00007f145326b5f8:   nopl   0x0(%rax,%rax,1)
              0x00007f145326b600:   cmp    %rbp,%rsi
              0x00007f145326b603:   je     0x00007f145326bbc4           ; ImmutableOopMap {rdx=NarrowOop rbp=Oop r8=NarrowOop r11=Oop r13=Oop r14=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
                                                                        ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.11%      0x00007f145326b609:   cmpl   $0xe8d8,0x8(,%r8,8)          ; implicit exception: dispatches to 0x00007f145326be56
                                                                        ;   {metadata(&apos;java/lang/String&apos;)}
   2.27%      0x00007f145326b615:   jne    0x00007f145326bc97
   0.09%      0x00007f145326b61b:   movsbl 0x10(%rbp),%esi
   0.00%      0x00007f145326b61f:   nop
              0x00007f145326b620:   cmp    0x10(,%r8,8),%sil
              0x00007f145326b628:   jne    0x00007f145326bb6d           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@0 (line 1858)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.20%      0x00007f145326b62e:   mov    0x14(,%r8,8),%esi            ; ImmutableOopMap {rdx=NarrowOop rbp=Oop rsi=NarrowOop r11=Oop r13=Oop r14=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
                                                                        ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.14%      0x00007f145326b636:   mov    0xc(,%rsi,8),%r8d            ; implicit exception: dispatches to 0x00007f145326be79
   0.60%      0x00007f145326b63e:   xchg   %ax,%ax
              0x00007f145326b640:   cmp    %r9d,%r8d
              0x00007f145326b643:   jne    0x00007f145326bb2f
   0.14%      0x00007f145326b649:   test   %r8d,%r8d
              0x00007f145326b64c:   je     0x00007f145326b732
   0.07%      0x00007f145326b652:   mov    %ecx,0x40(%rsp)
              0x00007f145326b656:   shl    $0x3,%rsi
              0x00007f145326b65a:   mov    %edx,%r8d
   0.01%      0x00007f145326b65d:   shl    $0x3,%r8
   0.06%      0x00007f145326b661:   mov    $0x10,%rdx
              0x00007f145326b668:   mov    %r8,%rcx
              0x00007f145326b66b:   mov    $0x10,%r8                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@0 (line 1858)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.03%      0x00007f145326b672:   mov    %r10d,%ebp
   0.06%      0x00007f145326b675:   call   0x00007f1452dbef00           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.09%      0x00007f145326b67a:   nop
              0x00007f145326b67b:   nopl   0x0(%rax,%rax,1)
              0x00007f145326b680:   test   %eax,%eax
              0x00007f145326b682:   je     0x00007f145326bbf7           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@145 (line 1214)
              0x00007f145326b688:   mov    %ebp,%r10d
   0.09%      0x00007f145326b68b:   jmp    0x00007f145326b4e7           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@169 (line 1222)
              0x00007f145326b690:   mov    %r10d,0x44(%rsp)
              0x00007f145326b695:   mov    %rcx,0x20(%rsp)
              0x00007f145326b69a:   nopw   0x0(%rax,%rax,1)
              0x00007f145326b6a0:   cmpb   $0x0,0x11(%rdx)
              0x00007f145326b6a4:   jne    0x00007f145326b725           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::hashCode@13 (line 2364)
                                                                        ; - java.util.HashMap::hash@9 (line 338)
                                                                        ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
              0x00007f145326b6aa:   cmpb   $0x0,0x10(%rdx)
....................................................................................................
  10.95%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, java.util.HashMap::putVal, version 5, compile id 1219 

            # parm4:    rdi       = boolean
            #           [sp+0x90]  (sp of caller)
            0x00007f145325ab20:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
            0x00007f145325ab24:   movabs $0x7f13d7000000,%r12
            0x00007f145325ab2e:   add    %r12,%r10
            0x00007f145325ab31:   xor    %r12,%r12
            0x00007f145325ab34:   cmp    %r10,%rax
            0x00007f145325ab37:   jne    0x00007f1452c2f080           ;   {runtime_call ic_miss_stub}
            0x00007f145325ab3d:   data16 xchg %ax,%ax
          [Verified Entry Point]
   0.17%    0x00007f145325ab40:   mov    %eax,-0x14000(%rsp)
   0.55%    0x00007f145325ab47:   sub    $0x88,%rsp
            0x00007f145325ab4e:   xchg   %ax,%ax
            0x00007f145325ab50:   cmpl   $0x1,0x20(%r15)
   0.17%    0x00007f145325ab58:   jne    0x00007f145325b865
   0.09%    0x00007f145325ab5e:   mov    %rbp,0x80(%rsp)
   0.04%    0x00007f145325ab66:   mov    %rsi,0x48(%rsp)
   0.28%    0x00007f145325ab6b:   mov    %edx,0x74(%rsp)
   0.19%    0x00007f145325ab6f:   mov    %rcx,0x40(%rsp)
   0.05%    0x00007f145325ab74:   mov    0x24(%rsi),%r10d             ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap::putVal@1 (line 634)
   0.01%    0x00007f145325ab78:   nopl   0x0(%rax,%rax,1)
   0.04%    0x00007f145325ab80:   test   %r10d,%r10d
            0x00007f145325ab83:   je     0x00007f145325b1fa           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap::putVal@7 (line 634)
   0.17%    0x00007f145325ab89:   mov    0xc(,%r10,8),%eax            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap::putVal@12 (line 634)
   1.33%    0x00007f145325ab91:   test   %eax,%eax
            0x00007f145325ab93:   je     0x00007f145325b75b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap::putVal@16 (line 634)
   0.11%    0x00007f145325ab99:   shl    $0x3,%r10                    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap::putVal@1 (line 634)
   0.01%    0x00007f145325ab9d:   mov    %eax,%r11d                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap::putVal@29 (line 636)
   0.12%    0x00007f145325aba0:   mov    %r10,0x30(%rsp)
   0.00%    0x00007f145325aba5:   mov    %r11d,%eax
   0.12%    0x00007f145325aba8:   dec    %eax                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap::putVal@34 (line 636)
   0.00%    0x00007f145325abaa:   mov    %edx,%ebx
   0.13%    0x00007f145325abac:   and    %eax,%ebx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap::putVal@36 (line 636)
   0.01%    0x00007f145325abae:   cmp    0xc(%r10),%ebx
            0x00007f145325abb2:   jae    0x00007f145325b6ff
   0.22%    0x00007f145325abb8:   mov    %r11d,0x68(%rsp)
   0.00%    0x00007f145325abbd:   mov    0x10(%r10,%rbx,4),%ebp       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap::putVal@40 (line 636)
   1.79%    0x00007f145325abc2:   mov    0x8(%rsi),%r13d
   0.00%    0x00007f145325abc6:   movabs $0x7f13d7000000,%rax
            0x00007f145325abd0:   lea    (%rax,%r13,1),%r14
   0.00%    0x00007f145325abd4:   mov    %r14,0x60(%rsp)
   0.28%    0x00007f145325abd9:   movabs $0x7f1465cbb000,%rax         ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap::putVal@59 (line 637)
            0x00007f145325abe3:   mov    %rax,0x58(%rsp)
            0x00007f145325abe8:   mov    %r8,%r11
            0x00007f145325abeb:   shr    $0x3,%r11                    ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap::putVal@247 (line 662)
   0.24%    0x00007f145325abef:   mov    %r11d,0x2c(%rsp)
            0x00007f145325abf4:   test   %ebp,%ebp
            0x00007f145325abf6:   je     0x00007f145325ae34           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap::putVal@44 (line 636)
            0x00007f145325abfc:   mov    %ebp,0x1c(%rsp)
   0.00%    0x00007f145325ac00:   mov    %r13d,0x54(%rsp)
   0.27%    0x00007f145325ac05:   mov    %ebp,%ebx
            0x00007f145325ac07:   shl    $0x3,%rbx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap::putVal@40 (line 636)
            0x00007f145325ac0b:   cmp    0xc(,%rbp,8),%edx
            0x00007f145325ac12:   jne    0x00007f145325afce           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap::putVal@69 (line 640)
   2.22%    0x00007f145325ac18:   mov    0x10(,%rbp,8),%r13d
   0.83%    0x00007f145325ac20:   mov    %r13d,%ebp
            0x00007f145325ac23:   shl    $0x3,%rbp                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap::putVal@74 (line 640)
   0.13%    0x00007f145325ac27:   mov    %rbp,0x20(%rsp)
   0.49%    0x00007f145325ac2c:   cmp    %rcx,%rbp
            0x00007f145325ac2f:   je     0x00007f145325b626           ; ImmutableOopMap {rcx=Oop rbx=Oop rsi=Oop r8=Oop r10=Oop r13=NarrowOop [28]=NarrowOop [32]=Oop [44]=NarrowOop [48]=Oop [64]=Oop [72]=Oop }
                                                                      ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) java.util.HashMap::putVal@29 (line 636)
            0x00007f145325ac35:   mov    0x8(%rcx),%ebp               ; implicit exception: dispatches to 0x00007f145325b8a0
                                                                      ;   {no_reloc}
            0x00007f145325ac38:   movabs $0x7f13d7000000,%r11
            0x00007f145325ac42:   lea    (%r11,%rbp,1),%rbp
   0.28%    0x00007f145325ac46:   cmp    -0x14d(%rip),%rbp        # 0x00007f145325ab00
                                                                      ;   {section_word}
            0x00007f145325ac4d:   je     0x00007f145325ac65
            0x00007f145325ac53:   cmp    -0x152(%rip),%rbp        # 0x00007f145325ab08
                                                                      ;   {section_word}
            0x00007f145325ac5a:   je     0x00007f145325b4b0
            0x00007f145325ac60:   jmp    0x00007f145325b848           ; ImmutableOopMap {rcx=Oop rbx=Oop rsi=Oop r8=Oop r10=Oop r13=NarrowOop [28]=NarrowOop [44]=NarrowOop [48]=Oop [64]=Oop [72]=Oop }
                                                                      ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) java.util.HashMap::putVal@29 (line 636)
            0x00007f145325ac65:   cmpl   $0x102b2b0,0x8(,%r13,8)      ; implicit exception: dispatches to 0x00007f145325b8c3
                                                                      ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
....................................................................................................
  10.34%  <total for region 4>

....[Hottest Regions]...............................................................................
  20.20%      jvmci, level 4  java.util.HashMap::computeIfAbsent, version 5, compile id 1295 
  12.88%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f13d803bae0::accept, version 3, compile id 1227 
  10.95%      jvmci, level 4  java.util.HashMap::computeIfAbsent, version 5, compile id 1295 
  10.34%      jvmci, level 4  java.util.HashMap::putVal, version 5, compile id 1219 
   7.97%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1296 
   7.36%      jvmci, level 4  java.util.HashMap::putVal, version 5, compile id 1219 
   5.88%      jvmci, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 3, compile id 1234 
   4.63%      jvmci, level 4  java.util.stream.ReferencePipeline$7$1::accept, version 4, compile id 1333 
   3.68%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 3, compile id 1230 
   3.02%                      <unknown> 
   2.85%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f13d803bae0::accept, version 3, compile id 1227 
   1.86%      jvmci, level 4  java.util.stream.ReferencePipeline$7$1::accept, version 4, compile id 1333 
   1.52%                      <unknown> 
   1.30%      jvmci, level 4  java.util.stream.ReferencePipeline$7$1::accept, version 4, compile id 1333 
   0.76%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 3, compile id 1230 
   0.61%                      <unknown> 
   0.59%                      <unknown> 
   0.51%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 3, compile id 1230 
   0.38%    perf-2126738.map  [unknown] 
   0.17%              kernel  [unknown] 
   2.53%  <...other 483 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  31.20%      jvmci, level 4  java.util.HashMap::computeIfAbsent, version 5, compile id 1295 
  17.76%      jvmci, level 4  java.util.HashMap::putVal, version 5, compile id 1219 
  15.74%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f13d803bae0::accept, version 3, compile id 1227 
   8.05%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1296 
   7.80%      jvmci, level 4  java.util.stream.ReferencePipeline$7$1::accept, version 4, compile id 1333 
   5.88%      jvmci, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 3, compile id 1234 
   5.88%                      <unknown> 
   4.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 3, compile id 1230 
   1.49%              kernel  [unknown] 
   0.38%    perf-2126738.map  [unknown] 
   0.12%      jvmci, level 4  java.util.HashMap::resize, version 2, compile id 1311 
   0.06%      jvmci, level 4  java.util.stream.ReduceOps$ReduceOp::evaluateSequential, version 2, compile id 1137 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda.0x00007f13d8084238::test, version 3, compile id 1351 
   0.03%      jvmci, level 4  java.util.stream.ReferencePipeline$3$1::accept, version 6, compile id 1392 
   0.03%      jvmci, level 4  java.util.HashMap$ValueSpliterator::forEachRemaining, version 4, compile id 1360 
   0.03%      jvmci, level 4  java.util.stream.AbstractPipeline::copyInto, version 6, compile id 1395 
   0.03%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x800000044::accept, version 3, compile id 1226 
   0.03%      jvmci, level 4  java.util.stream.DistinctOps$1$2::begin, version 3, compile id 1391 
   0.02%      jvmci, level 4  java.util.stream.ReduceOps$3ReducingSink::accept, version 4, compile id 1217 
   0.02%           libjvm.so  G1CardSet::occupied 
   0.46%  <...other 112 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.84%      jvmci, level 4
   5.88%                    
   1.49%              kernel
   0.38%    perf-2126738.map
   0.26%           libjvm.so
   0.10%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.first_publication_year

# Run progress: 14.29% complete, ETA 00:23:17
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.620 ms/op
# Warmup Iteration   2: 6.787 ms/op
# Warmup Iteration   3: 6.528 ms/op
# Warmup Iteration   4: 6.650 ms/op
# Warmup Iteration   5: 6.553 ms/op
Iteration   1: 6.357 ms/op
Iteration   2: 7.958 ms/op
Iteration   3: 8.074 ms/op
Iteration   4: 8.025 ms/op
Iteration   5: 8.021 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.first_publication_year":
  7.687 ±(99.9%) 2.866 ms/op [Average]
  (min, avg, max) = (6.357, 7.687, 8.074), stdev = 0.744
  CI (99.9%): [4.821, 10.553] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.first_publication_year:asm":
PrintAssembly processed: 276931 total address lines.
Perf output processed (skipped 62.035 seconds):
 Column 1: cycles (51011 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1214 

                 0x00007fad07258ae7:   ja     0x00007fad07258d69
                 0x00007fad07258aed:   ret    
                 0x00007fad07258aee:   mov    %rsi,%r10
                 0x00007fad07258af1:   mov    0x28(%rsp),%rcx
                 0x00007fad07258af6:   mov    0x40(%rsp),%ebx
                 0x00007fad07258afa:   mov    0x30(%rsp),%rdx
                 0x00007fad07258aff:   mov    %r8d,%r11d
                 0x00007fad07258b02:   data16 nopw 0x0(%rax,%rax,1)
                 0x00007fad07258b0c:   data16 data16 xchg %ax,%ax          ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.36%    ↗ ↗  0x00007fad07258b10:   test   %r10,%r10
          ╭ │ │  0x00007fad07258b13:   jne    0x00007fad07258b69           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@124 (line 1712)
   0.15%  │ │ │  0x00007fad07258b19:   nopl   0x0(%rax)
   0.08%  │ │ │  0x00007fad07258b20:   cmp    %r11d,%ebx
          │ │ │  0x00007fad07258b23:   jbe    0x00007fad07258ceb
   0.79%  │ │ │  0x00007fad07258b29:   mov    0x10(%rcx,%r11,4),%esi
   0.65%  │ │ │  0x00007fad07258b2e:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@133 (line 1713)
   0.19%  │ │ │  0x00007fad07258b32:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@130 (line 1713)
   0.18%  │ │↗│  0x00007fad07258b35:   test   %rsi,%rsi
          │╭│││  0x00007fad07258b38:   jne    0x00007fad07258bb3           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   1.13%  │││││  0x00007fad07258b3e:   mov    0x44(%rsp),%r10d
   0.71%  │││││  0x00007fad07258b43:   cmp    %r11d,%r10d
          │││││  0x00007fad07258b46:   jle    0x00007fad07258abb           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.17%  │││││  0x00007fad07258b4c:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rsi=Oop [28]=NarrowOop [32]=Oop [40]=Oop [48]=Oop }
          │││││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.09%  │││││  0x00007fad07258b53:   test   %eax,(%r8)                   ;   {poll}
   1.12%  │││││  0x00007fad07258b56:   mov    0x28(%rsp),%rcx
   0.29%  │││││  0x00007fad07258b5b:   mov    0x40(%rsp),%ebx
   0.15%  │││││  0x00007fad07258b5f:   mov    0x30(%rsp),%rdx
   0.07%  │││││  0x00007fad07258b64:   mov    %rsi,%r10
   0.80%  ││╰││  0x00007fad07258b67:   jmp    0x00007fad07258b10           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.45%  ↘│ ││  0x00007fad07258b69:   mov    %r11d,0x38(%rsp)
   0.01%   │ ││  0x00007fad07258b6e:   mov    0x10(%r10),%esi
  28.46%   │ ││  0x00007fad07258b72:   mov    %esi,%r9d
   0.00%   │ ││  0x00007fad07258b75:   shl    $0x3,%r9                     ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
   0.48%   │ ││  0x00007fad07258b79:   mov    %rdx,%rsi
           │ ││  0x00007fad07258b7c:   mov    %r9,%rdx                     ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.03%   │ ││  0x00007fad07258b7f:   mov    %r10,0x10(%rsp)
   0.00%   │ ││  0x00007fad07258b84:   nop
   0.45%   │ ││  0x00007fad07258b85:   movabs $0xffffffffffffffff,%rax
           │ ││  0x00007fad07258b8f:   call   0x00007fad06c2f680           ; ImmutableOopMap {[16]=Oop [28]=NarrowOop [32]=Oop [40]=Oop [48]=Oop }
           │ ││                                                            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ ││                                                            ;   {virtual_call}
   0.53%   │ ││  0x00007fad07258b94:   nopl   0x4000384(%rax,%rax,1)       ;   {other}
   0.02%   │ ││  0x00007fad07258b9c:   mov    0x10(%rsp),%r10
   2.58%   │ ││  0x00007fad07258ba1:   mov    0x18(%r10),%r10d
   1.36%   │ ││  0x00007fad07258ba5:   shl    $0x3,%r10                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@152 (line 1716)
   0.29%   │ ││  0x00007fad07258ba9:   mov    %r10,%rsi
   0.12%   │ ││  0x00007fad07258bac:   mov    0x38(%rsp),%r11d
   0.04%   │ ╰│  0x00007fad07258bb1:   jmp    0x00007fad07258b35           ;*aload {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   3.36%   ↘  │  0x00007fad07258bb3:   mov    0x44(%rsp),%r10d
   3.34%      │  0x00007fad07258bb8:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rsi=Oop [28]=NarrowOop [32]=Oop [40]=Oop [48]=Oop }
              │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
              │                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.02%      │  0x00007fad07258bbf:   test   %eax,(%r8)                   ;   {poll}
   1.81%      │  0x00007fad07258bc2:   mov    0x28(%rsp),%rcx
   0.04%      │  0x00007fad07258bc7:   mov    0x40(%rsp),%ebx
   0.08%      │  0x00007fad07258bcb:   mov    0x30(%rsp),%rdx
   0.02%      │  0x00007fad07258bd0:   mov    %rsi,%r10
   0.34%      ╰  0x00007fad07258bd3:   jmp    0x00007fad07258b10           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
                 0x00007fad07258bd8:   mov    %rbp,0x20(%rsp)
                 0x00007fad07258bdd:   mov    %rax,0x10(%rsp)
                 0x00007fad07258be2:   mov    %r10d,0x3c(%rsp)
                 0x00007fad07258be7:   mov    %r9d,0x1c(%rsp)
                 0x00007fad07258bec:   mov    %r8d,0x38(%rsp)
                 0x00007fad07258bf1:   mov    0x10(,%rdi,8),%esi
                 0x00007fad07258bf8:   mov    %esi,%r13d
                 0x00007fad07258bfb:   shl    $0x3,%r13                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
....................................................................................................
  50.79%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 1204 

            0x00007fad0725a990:   0x8c02b4c0      0x00007fac8c02b4c0      
            0x00007fad0725a994:   0x00007fac                              
            0x00007fad0725a998:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
            0x00007fad0725a99c:   0xf4f4f4f4                              
          --------------------------------------------------------------------------------
          [Entry Point]
            # {method} {0x00007fac8b227558} &apos;accept&apos; &apos;(Ljava/lang/Object;)V&apos; in &apos;java/util/stream/ReferencePipeline$2$1&apos;
            # this:     rsi:rsi   = &apos;java/util/stream/ReferencePipeline$2$1&apos;
            # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
            #           [sp+0x40]  (sp of caller)
   0.03%    0x00007fad0725a9a0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
   0.42%    0x00007fad0725a9a4:   movabs $0x7fac8b000000,%r12
            0x00007fad0725a9ae:   add    %r12,%r10
   0.05%    0x00007fad0725a9b1:   xor    %r12,%r12
            0x00007fad0725a9b4:   cmp    %r10,%rax
            0x00007fad0725a9b7:   jne    0x00007fad06c2f080           ;   {runtime_call ic_miss_stub}
   0.47%    0x00007fad0725a9bd:   data16 xchg %ax,%ax
          [Verified Entry Point]
            0x00007fad0725a9c0:   mov    %eax,-0x14000(%rsp)
   0.03%    0x00007fad0725a9c7:   sub    $0x38,%rsp
   0.46%    0x00007fad0725a9cb:   nop
            0x00007fad0725a9cc:   cmpl   $0x1,0x20(%r15)
   0.03%    0x00007fad0725a9d4:   jne    0x00007fad0725b58b
            0x00007fad0725a9da:   mov    %rbp,0x30(%rsp)
   0.46%    0x00007fad0725a9df:   mov    %rdx,0x18(%rsp)
   0.00%    0x00007fad0725a9e4:   mov    0x10(%rsi),%r10d             ; ImmutableOopMap {rdx=Oop rsi=Oop [24]=Oop }
                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@0 (line 178)
   0.04%    0x00007fad0725a9e8:   mov    0x34(,%r10,8),%r10d          ; implicit exception: dispatches to 0x00007fad0725b5af
                                                                      ; ImmutableOopMap {rdx=Oop rsi=Oop r10=NarrowOop [24]=Oop }
                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@0 (line 178)
   0.00%    0x00007fad0725a9f0:   mov    0x8(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007fad0725b5d2
   0.46%    0x00007fad0725a9f8:   nopl   0x0(%rax,%rax,1)
            0x00007fad0725aa00:   test   %rdx,%rdx
            0x00007fad0725aa03:   je     0x00007fad0725acc5
   0.03%    0x00007fad0725aa09:   mov    0x8(%rdx),%r8d
  14.70%    0x00007fad0725aa0d:   movabs $0x7fac8b000000,%r9          ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationGenerator$$Lambda/0x00007fac8c02b4c0::apply@1
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.29%    0x00007fad0725aa17:   lea    (%r9,%r8,1),%r8
   0.18%    0x00007fad0725aa1b:   movabs $0x7fac8c02b6f8,%r9          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
   0.03%    0x00007fad0725aa25:   movabs $0x7fac8b000000,%rcx
            0x00007fad0725aa2f:   lea    (%rcx,%r11,1),%r11
   0.29%    0x00007fad0725aa33:   cmp    -0xfa(%rip),%r11        # 0x00007fad0725a940
                                                                      ;   {section_word}
   0.18%    0x00007fad0725aa3a:   je     0x00007fad0725aa8b
            0x00007fad0725aa40:   cmp    -0xff(%rip),%r11        # 0x00007fad0725a948
                                                                      ;   {section_word}
            0x00007fad0725aa47:   je     0x00007fad0725ad1d
            0x00007fad0725aa4d:   cmp    -0x104(%rip),%r11        # 0x00007fad0725a950
                                                                      ;   {section_word}
            0x00007fad0725aa54:   je     0x00007fad0725ad7c
            0x00007fad0725aa5a:   cmp    -0x109(%rip),%r11        # 0x00007fad0725a958
                                                                      ;   {section_word}
            0x00007fad0725aa61:   je     0x00007fad0725add8
....................................................................................................
  18.16%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.stream.Collectors$$Lambda.0x00007fac8c03c3d8::accept, version 6, compile id 1297 

           [Disassembly]
           --------------------------------------------------------------------------------
           [Constant Pool (empty)]
           --------------------------------------------------------------------------------
           [Entry Point]
             # {method} {0x00007fac87315280} &apos;accept&apos; &apos;(Ljava/lang/Object;Ljava/lang/Object;)V&apos; in &apos;java/util/stream/Collectors$$Lambda+0x00007fac8c03c3d8&apos;
             # this:     rsi:rsi   = &apos;java/util/stream/Collectors$$Lambda+0x00007fac8c03c3d8&apos;
             # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
             # parm1:    rcx:rcx   = &apos;java/lang/Object&apos;
             #           [sp+0x20]  (sp of caller)
   0.13%     0x00007fad072748a0:   mov    0x8(%rsi),%r10d
   0.00%     0x00007fad072748a4:   movabs $0x7fac8b000000,%r12
   0.00%     0x00007fad072748ae:   add    %r12,%r10
   0.04%     0x00007fad072748b1:   xor    %r12,%r12
   0.05%     0x00007fad072748b4:   cmp    %r10,%rax
             0x00007fad072748b7:   jne    0x00007fad06c2f080           ;   {runtime_call ic_miss_stub}
   0.00%     0x00007fad072748bd:   data16 xchg %ax,%ax
           [Verified Entry Point]
   1.27%     0x00007fad072748c0:   mov    %eax,-0x14000(%rsp)
   2.34%     0x00007fad072748c7:   sub    $0x18,%rsp
   0.01%     0x00007fad072748cb:   nop
   0.16%     0x00007fad072748cc:   cmpl   $0x1,0x20(%r15)
   0.04%     0x00007fad072748d4:   jne    0x00007fad07274bec
   0.28%     0x00007fad072748da:   mov    %rbp,0x10(%rsp)
   0.01%     0x00007fad072748df:   nop
   0.16%     0x00007fad072748e0:   test   %rdx,%rdx
             0x00007fad072748e3:   je     0x00007fad07274a21
   0.04%     0x00007fad072748e9:   mov    0x8(%rdx),%esi
   0.32%     0x00007fad072748ec:   movabs $0x7fac8b000000,%r10
   0.01%     0x00007fad072748f6:   lea    (%r10,%rsi,1),%rsi           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fac8c03c3d8::accept@1
   0.17%     0x00007fad072748fa:   nopw   0x0(%rax,%rax,1)
   0.03%     0x00007fad07274900:   test   %rdx,%rdx
          ╭  0x00007fad07274903:   je     0x00007fad0727491c
   0.28%  │  0x00007fad07274909:   movabs $0x7fac8b0de7b0,%r10         ;   {metadata(&apos;java/util/stream/Collectors$1OptionalBox&apos;)}
   0.00%  │  0x00007fad07274913:   cmp    %rsi,%r10
          │  0x00007fad07274916:   jne    0x00007fad07274bb7           ; ImmutableOopMap {rcx=Oop rdx=Oop }
          │                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007fac8c03c3d8::accept@0
   0.15%  ↘  0x00007fad0727491c:   movsbl 0xc(%rdx),%esi               ; implicit exception: dispatches to 0x00007fad07274c10
   0.04%     0x00007fad07274920:   mov    0x14(%rdx),%r10d             ;*getfield val$op {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@9 (line 896)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fac8c03c3d8::accept@5
   0.27%     0x00007fad07274924:   mov    0x10(%rdx),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@13 (line 896)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fac8c03c3d8::accept@5
   0.01%     0x00007fad07274928:   test   %sil,%sil
             0x00007fad0727492b:   je     0x00007fad07274aad           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@4 (line 895)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fac8c03c3d8::accept@5
   0.19%     0x00007fad07274931:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.04%     0x00007fad0727493c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rcx=Oop rdx=Oop r10=NarrowOop r11=NarrowOop }
                                                                       ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007fac8c03c3d8::accept@0
   0.32%     0x00007fad07274940:   cmpl   $0x103bf70,0x8(,%r10,8)      ; implicit exception: dispatches to 0x00007fad07274c33
                                                                       ;   {metadata(&apos;java/util/function/BinaryOperator$$Lambda+0x00007fac8c03bf70&apos;)}
   0.52%     0x00007fad0727494c:   jne    0x00007fad07274bdd           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fac8c03c3d8::accept@5
   0.24%     0x00007fad07274952:   mov    0xc(,%r10,8),%esi            ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.function.BinaryOperator$$Lambda/0x00007fac8c03bf70::apply@1
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fac8c03c3d8::accept@5
   0.08%     0x00007fad0727495a:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rcx=Oop rdx=Oop r11=NarrowOop }
                                                                       ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007fac8c03c3d8::accept@0
   0.01%     0x00007fad07274960:   cmpl   $0x103b8c8,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007fad07274c56
                                                                       ;   {metadata(&apos;java/util/Comparators$NaturalOrderComparator&apos;)}
   1.02%     0x00007fad0727496b:   jne    0x00007fad07274ba8           ;*invokeinterface compare {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.function.BinaryOperator::lambda$minBy$0@3 (line 59)
                                                                       ; - java.util.function.BinaryOperator$$Lambda/0x00007fac8c03bf70::apply@6
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fac8c03c3d8::accept@5
   0.26%     0x00007fad07274971:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.01%     0x00007fad0727497c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rcx=Oop rdx=Oop r11=NarrowOop }
                                                                       ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007fac8c03c3d8::accept@0
   0.19%     0x00007fad07274980:   cmpl   $0x25c88,0x8(,%r11,8)        ; implicit exception: dispatches to 0x00007fad07274c79
                                                                       ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.34%     0x00007fad0727498c:   jne    0x00007fad07274b80           ; ImmutableOopMap {rcx=Oop rdx=Oop r11=NarrowOop }
                                                                       ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007fac8c03c3d8::accept@0
   0.01%     0x00007fad07274992:   cmpl   $0x25c88,0x8(%rcx)           ; implicit exception: dispatches to 0x00007fad07274c9c
                                                                       ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.14%     0x00007fad07274999:   jne    0x00007fad07274bc6           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Comparators$NaturalOrderComparator::compare@6 (line 47)
                                                                       ; - java.util.function.BinaryOperator::lambda$minBy$0@3 (line 59)
                                                                       ; - java.util.function.BinaryOperator$$Lambda/0x00007fac8c03bf70::apply@6
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fac8c03c3d8::accept@5
   0.06%     0x00007fad0727499f:   mov    0xc(%rcx),%esi               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.Integer::compareTo@5 (line 1466)
                                                                       ; - java.lang.Integer::compareTo@5 (line 72)
                                                                       ; - java.util.Comparators$NaturalOrderComparator::compare@2 (line 52)
                                                                       ; - java.util.Comparators$NaturalOrderComparator::compare@9 (line 47)
                                                                       ; - java.util.function.BinaryOperator::lambda$minBy$0@3 (line 59)
                                                                       ; - java.util.function.BinaryOperator$$Lambda/0x00007fac8c03bf70::apply@6
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fac8c03c3d8::accept@5
   0.25%     0x00007fad072749a2:   cmp    0xc(,%r11,8),%esi
             0x00007fad072749aa:   jl     0x00007fad07274bd5           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.function.BinaryOperator::lambda$minBy$0@8 (line 59)
                                                                       ; - java.util.function.BinaryOperator$$Lambda/0x00007fac8c03bf70::apply@6
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fac8c03c3d8::accept@5
   0.19%     0x00007fad072749b0:   shl    $0x3,%r11                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@13 (line 896)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fac8c03c3d8::accept@5
   0.04%     0x00007fad072749b4:   cmpb   $0x0,0x40(%r15)
   0.26%     0x00007fad072749b9:   jne    0x00007fad07274a2d
   0.02%     0x00007fad072749bf:   mov    %r11,%rsi
   0.18%     0x00007fad072749c2:   shr    $0x3,%rsi
   0.05%     0x00007fad072749c6:   mov    %esi,0x10(%rdx)
   0.29%     0x00007fad072749c9:   mov    %rdx,%rsi
   0.01%     0x00007fad072749cc:   xor    %r11,%rsi
   0.16%     0x00007fad072749cf:   test   $0xffffffffffe00000,%rsi
             0x00007fad072749d6:   je     0x00007fad07274a0a
             0x00007fad072749dc:   nopl   0x0(%rax)
             0x00007fad072749e0:   test   %r11,%r11
             0x00007fad072749e3:   je     0x00007fad07274a0a
             0x00007fad072749e9:   movabs $0x7fad1895b000,%rsi
             0x00007fad072749f3:   shr    $0x9,%rdx
             0x00007fad072749f7:   nopw   0x0(%rax,%rax,1)
             0x00007fad07274a00:   cmpb   $0x2,(%rdx,%rsi,1)
             0x00007fad07274a04:   jne    0x00007fad07274a5f           ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@22 (line 896)
....................................................................................................
  10.67%  <total for region 3>

....[Hottest Regions]...............................................................................
  50.79%       jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1214 
  18.16%       jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 1204 
  10.67%       jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007fac8c03c3d8::accept, version 6, compile id 1297 
   7.90%       jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 1204 
   5.29%       jvmci, level 4  java.util.stream.ReduceOps$3ReducingSink::accept, version 10, compile id 1289 
   2.15%       jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 1204 
   1.27%                       <unknown> 
   0.50%       jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007fac8c03c3d8::accept, version 6, compile id 1297 
   0.37%               kernel  [unknown] 
   0.30%               kernel  [unknown] 
   0.30%                       <unknown> 
   0.11%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   1.75%  <...other 431 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.79%       jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1214 
  28.21%       jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 1204 
  11.18%       jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007fac8c03c3d8::accept, version 6, compile id 1297 
   5.29%       jvmci, level 4  java.util.stream.ReduceOps$3ReducingSink::accept, version 10, compile id 1289 
   2.44%               kernel  [unknown] 
   1.63%                       <unknown> 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%       hsdis-amd64.so  print_insn 
   0.02%            libjvm.so  defaultStream::write 
   0.02%            libjvm.so  G1CardSet::occupied 
   0.02%            libjvm.so  fileStream::write 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  HighResTimeSampler::take_sample 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%   libpthread-2.31.so  __libc_write 
   0.27%  <...other 101 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.47%       jvmci, level 4
   2.44%               kernel
   1.63%                     
   0.24%            libjvm.so
   0.09%         libc-2.31.so
   0.04%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.02%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.01%     perf-2126802.map
   0.00%          c1, level 3
   0.00%     Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.last_publication_year

# Run progress: 21.43% complete, ETA 00:21:17
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.295 ms/op
# Warmup Iteration   2: 6.727 ms/op
# Warmup Iteration   3: 6.761 ms/op
# Warmup Iteration   4: 6.894 ms/op
# Warmup Iteration   5: 6.739 ms/op
Iteration   1: 6.764 ms/op
Iteration   2: 8.070 ms/op
Iteration   3: 8.091 ms/op
Iteration   4: 8.101 ms/op
Iteration   5: 8.087 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.last_publication_year":
  7.823 ±(99.9%) 2.278 ms/op [Average]
  (min, avg, max) = (6.764, 7.823, 8.101), stdev = 0.592
  CI (99.9%): [5.544, 10.101] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.last_publication_year:asm":
PrintAssembly processed: 273095 total address lines.
Perf output processed (skipped 61.981 seconds):
 Column 1: cycles (50950 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1188 

              0x00007f55df2607c7:   ja     0x00007f55df26144f
              0x00007f55df2607cd:   ret    
              0x00007f55df2607ce:   cmpl   $0x2270b0,0x54(%rsp)         ;   {metadata(&apos;java/util/stream/ReferencePipeline$2$1&apos;)}
              0x00007f55df2607d6:   jne    0x00007f55df261373           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
              0x00007f55df2607dc:   mov    %r9d,%r11d
              0x00007f55df2607df:   mov    %rax,%r10
              0x00007f55df2607e2:   data16 nopw 0x0(%rax,%rax,1)
              0x00007f55df2607ec:   data16 data16 xchg %ax,%ax          ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.19%   ↗  0x00007f55df2607f0:   mov    0x28(%rsp),%rbx
   0.26%   │  0x00007f55df2607f5:   mov    0x48(%rsp),%edi
   0.42%   │  0x00007f55df2607f9:   mov    0x38(%rsp),%rdx
   0.82%   │  0x00007f55df2607fe:   movabs $0x7f556402b6f8,%r8          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
   0.24%   │  0x00007f55df260808:   mov    %r10,0x8(%rsp)
   0.26%   │  0x00007f55df26080d:   test   %r10,%r10
          ╭│  0x00007f55df260810:   jne    0x00007f55df260854           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@124 (line 1712)
   0.37%  ││  0x00007f55df260816:   cmp    %r11d,%edi
          ││  0x00007f55df260819:   jbe    0x00007f55df261212
   0.45%  ││  0x00007f55df26081f:   mov    0x10(%rbx,%r11,4),%r10d
   0.64%  ││  0x00007f55df260824:   shl    $0x3,%r10                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@133 (line 1713)
   0.49%  ││  0x00007f55df260828:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@130 (line 1713)
   0.42%  ││  0x00007f55df26082b:   test   %r10,%r10
          ││  0x00007f55df26082e:   jne    0x00007f55df260972           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   1.02%  ││  0x00007f55df260834:   mov    0x50(%rsp),%r8d
   0.55%  ││  0x00007f55df260839:   nopl   0x0(%rax)
   0.19%  ││  0x00007f55df260840:   cmp    %r11d,%r8d
          ││  0x00007f55df260843:   jle    0x00007f55df260797           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.30%  ││  0x00007f55df260849:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r10=Oop [32]=Oop [40]=Oop [52]=NarrowOop [56]=Oop }
          ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.59%  ││  0x00007f55df260850:   test   %eax,(%rsi)                  ;   {poll}
   0.78%  │╰  0x00007f55df260852:   jmp    0x00007f55df2607f0           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.05%  ↘   0x00007f55df260854:   mov    0x10(%rdx),%ebp              ; ImmutableOopMap {rdx=Oop rbx=Oop r10=Oop [8]=Oop [32]=Oop [40]=Oop [52]=NarrowOop [56]=Oop }
                                                                        ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.36%      0x00007f55df260857:   mov    0x34(,%rbp,8),%ebp           ; implicit exception: dispatches to 0x00007f55df2614d3
                                                                        ; ImmutableOopMap {rdx=Oop rbx=Oop rbp=NarrowOop r10=Oop [8]=Oop [32]=Oop [40]=Oop [52]=NarrowOop [56]=Oop }
                                                                        ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   1.48%      0x00007f55df26085e:   mov    0x8(,%rbp,8),%r13d           ; implicit exception: dispatches to 0x00007f55df2614f6
   1.76%      0x00007f55df260866:   mov    %ebp,0x18(%rsp)
   0.02%      0x00007f55df26086a:   mov    0x10(%r10),%ebp              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
  26.84%      0x00007f55df26086e:   test   %ebp,%ebp
              0x00007f55df260870:   je     0x00007f55df260985
   0.47%      0x00007f55df260876:   mov    0x8(,%rbp,8),%edx
  17.08%      0x00007f55df26087d:   movabs $0x7f5563000000,%r10
   0.01%      0x00007f55df260887:   lea    (%r10,%rdx,1),%rdx           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.module.DefaultRoots$$Lambda/0x800000005::test@5
                                                                        ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.41%      0x00007f55df26088b:   mov    %ebp,%r10d
   0.00%      0x00007f55df26088e:   shl    $0x3,%r10                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
              0x00007f55df260892:   mov    %r10,0x10(%rsp)
              0x00007f55df260897:   movabs $0x7f5563000000,%r10
   0.52%      0x00007f55df2608a1:   lea    (%r10,%r13,1),%r13
   0.01%      0x00007f55df2608a5:   cmp    -0x2ac(%rip),%r13        # 0x00007f55df260600
                                                                        ;   {section_word}
   0.00%      0x00007f55df2608ac:   je     0x00007f55df2608f8
              0x00007f55df2608b2:   cmp    -0x2b1(%rip),%r13        # 0x00007f55df260608
                                                                        ;   {section_word}
              0x00007f55df2608b9:   je     0x00007f55df260991
              0x00007f55df2608bf:   cmp    -0x2b6(%rip),%r13        # 0x00007f55df260610
                                                                        ;   {section_word}
              0x00007f55df2608c6:   je     0x00007f55df2609ef
              0x00007f55df2608cc:   cmp    -0x2bb(%rip),%r13        # 0x00007f55df260618
                                                                        ;   {section_word}
              0x00007f55df2608d3:   je     0x00007f55df260a42
....................................................................................................
  57.00%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1188 

             0x00007f55df2608cc:   cmp    -0x2bb(%rip),%r13        # 0x00007f55df260618
                                                                       ;   {section_word}
             0x00007f55df2608d3:   je     0x00007f55df260a42
             0x00007f55df2608d9:   cmp    -0x2c0(%rip),%r13        # 0x00007f55df260620
                                                                       ;   {section_word}
             0x00007f55df2608e0:   je     0x00007f55df260aa9
             0x00007f55df2608e6:   cmp    -0x2c5(%rip),%r13        # 0x00007f55df260628
                                                                       ;   {section_word}
             0x00007f55df2608ed:   je     0x00007f55df260ba4
             0x00007f55df2608f3:   jmp    0x00007f55df2612f1
   0.01%     0x00007f55df2608f8:   test   %ebp,%ebp
          ╭  0x00007f55df2608fa:   je     0x00007f55df260909           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f556402bd18::test@1
          │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
          │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.54%  │  0x00007f55df260900:   cmp    %rdx,%r8
          │  0x00007f55df260903:   jne    0x00007f55df2612ba           ; ImmutableOopMap {rbx=Oop [8]=Oop [16]=Oop [32]=Oop [40]=Oop [52]=NarrowOop [56]=Oop }
          │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.01%  ↘  0x00007f55df260909:   cmpl   $0x76c,0xc(,%rbp,8)          ; implicit exception: dispatches to 0x00007f55df261519
   0.20%     0x00007f55df260914:   jl     0x00007f55df261359           ;*getfield val$predicate {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.ReferencePipeline$2$1::accept@4 (line 178)
                                                                       ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.53%     0x00007f55df26091a:   mov    $0x1,%ebp
   0.03%     0x00007f55df26091f:   mov    %r11d,0x54(%rsp)             ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Class::isInstance@-3
                                                                       ; - sun.management.spi.PlatformMBeanProvider$PlatformComponent$$Lambda/0x00007f5564068300::test@5
                                                                       ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
                                                                       ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%     0x00007f55df260924:   mov    0x38(%rsp),%rdx
   0.00%     0x00007f55df260929:   mov    0xc(%rdx),%r13d              ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
                                                                       ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.48%     0x00007f55df26092d:   test   %eax,0x0(,%r13,8)            ; implicit exception: deoptimizes
                                                                       ; ImmutableOopMap {rdx=Oop r13=NarrowOop [8]=Oop [16]=Oop [32]=Oop [40]=Oop [52]=NarrowOop [56]=Oop }
   0.02%     0x00007f55df260935:   shl    $0x3,%r13                    ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.ReferencePipeline$2$1::accept@17 (line 179)
                                                                       ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
             0x00007f55df260939:   mov    %r13,%rsi                    ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                       ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.43%     0x00007f55df26093c:   mov    0x10(%rsp),%rdx
   0.03%     0x00007f55df260941:   movabs $0xffffffffffffffff,%rax
             0x00007f55df26094b:   call   0x00007f55dec2f680           ; ImmutableOopMap {[8]=Oop [32]=Oop [40]=Oop [52]=NarrowOop [56]=Oop }
                                                                       ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                       ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                       ;   {virtual_call}
   0.38%     0x00007f55df260950:   nopl   0x8000640(%rax,%rax,1)       ;*return {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.ReferencePipeline$2$1::accept@26 (line 180)
                                                                       ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                       ;   {other}
             0x00007f55df260958:   mov    0x8(%rsp),%r10
   1.84%     0x00007f55df26095d:   mov    0x18(%r10),%esi
   1.22%     0x00007f55df260961:   shl    $0x3,%rsi                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap$KeySpliterator::forEachRemaining@152 (line 1716)
   0.29%     0x00007f55df260965:   mov    %rsi,%r10
   0.09%     0x00007f55df260968:   mov    0x54(%rsp),%r11d
   0.01%     0x00007f55df26096d:   jmp    0x00007f55df26082b           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   3.08%     0x00007f55df260972:   mov    0x50(%rsp),%r8d
   3.04%     0x00007f55df260977:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r10=Oop [32]=Oop [40]=Oop [52]=NarrowOop [56]=Oop }
                                                                       ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.06%     0x00007f55df26097e:   test   %eax,(%rsi)                  ;   {poll}
   1.58%     0x00007f55df260980:   jmp    0x00007f55df2607f0           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
             0x00007f55df260985:   mov    $0x0,%rdx
             0x00007f55df26098c:   jmp    0x00007f55df26088b           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.module.DefaultRoots$$Lambda/0x800000005::test@5
                                                                       ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
                                                                       ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
             0x00007f55df260991:   mov    %r11d,0x54(%rsp)
             0x00007f55df260996:   mov    0x8(%rsp),%r10
             0x00007f55df26099b:   mov    0x50(%rsp),%r8d
             0x00007f55df2609a0:   test   %ebp,%ebp
....................................................................................................
  13.87%  <total for region 2>

....[Hottest Regions]...............................................................................
  57.00%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1188 
  13.87%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1188 
   9.77%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f556403c3d8::accept, version 3, compile id 1181 
   6.31%      jvmci, level 4  java.util.stream.ReferencePipeline$3$1::accept, version 8, compile id 1248 
   5.13%      jvmci, level 4  java.util.stream.ReduceOps$3ReducingSink::accept, version 4, compile id 1249 
   3.42%      jvmci, level 4  java.util.stream.ReferencePipeline$3$1::accept, version 8, compile id 1248 
   1.14%                      <unknown> 
   0.49%              kernel  [unknown] 
   0.48%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f556403c3d8::accept, version 3, compile id 1181 
   0.39%    perf-2126868.map  [unknown] 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%           libjvm.so  G1CardSet::occupied 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.36%  <...other 386 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.87%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1188 
  10.26%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f556403c3d8::accept, version 3, compile id 1181 
   9.73%      jvmci, level 4  java.util.stream.ReferencePipeline$3$1::accept, version 8, compile id 1248 
   5.13%      jvmci, level 4  java.util.stream.ReduceOps$3ReducingSink::accept, version 4, compile id 1249 
   1.81%              kernel  [unknown] 
   1.28%                      <unknown> 
   0.39%    perf-2126868.map  [unknown] 
   0.04%           libjvm.so  G1CardSet::occupied 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%           libjvm.so  fileStream::write 
   0.02%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  G1ConcurrentRefine::RemSetSamplingClosure::do_heap_region 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.33%  <...other 119 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.99%      jvmci, level 4
   1.81%              kernel
   1.28%                    
   0.39%    perf-2126868.map
   0.30%           libjvm.so
   0.12%        libc-2.31.so
   0.04%         interpreter
   0.03%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.most_prolific_pair_of_authors

# Run progress: 28.57% complete, ETA 00:19:19
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6977.287 ms/op
# Warmup Iteration   2: 5031.026 ms/op
# Warmup Iteration   3: 5171.884 ms/op
# Warmup Iteration   4: 5092.253 ms/op
# Warmup Iteration   5: 6252.532 ms/op
Iteration   1: 5844.854 ms/op
Iteration   2: 5792.180 ms/op
Iteration   3: 5784.511 ms/op
Iteration   4: 5702.161 ms/op
Iteration   5: 5950.210 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.most_prolific_pair_of_authors":
  5814.783 ±(99.9%) 351.632 ms/op [Average]
  (min, avg, max) = (5702.161, 5814.783, 5950.210), stdev = 91.318
  CI (99.9%): [5463.151, 6166.415] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.most_prolific_pair_of_authors:asm":
PrintAssembly processed: 350212 total address lines.
Perf output processed (skipped 69.084 seconds):
 Column 1: cycles (61543 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.HashMap$TreeNode::find, version 3, compile id 1383 

                          # parm2:    r8:r8     = &apos;java/lang/Class&apos;
                          #           [sp+0x70]  (sp of caller)
                          0x00007fbe9f27e1a0:   mov    0x8(%rsi),%r10d
                          0x00007fbe9f27e1a4:   movabs $0x7fbe1f000000,%r12
                          0x00007fbe9f27e1ae:   add    %r12,%r10
                          0x00007fbe9f27e1b1:   xor    %r12,%r12
                          0x00007fbe9f27e1b4:   cmp    %r10,%rax
                          0x00007fbe9f27e1b7:   jne    0x00007fbe9ec2f080           ;   {runtime_call ic_miss_stub}
                          0x00007fbe9f27e1bd:   data16 xchg %ax,%ax
                        [Verified Entry Point]
   0.11%            ↗     0x00007fbe9f27e1c0:   mov    %eax,-0x14000(%rsp)
   0.19%            │     0x00007fbe9f27e1c7:   sub    $0x68,%rsp
   0.05%            │     0x00007fbe9f27e1cb:   nop
   0.03%            │     0x00007fbe9f27e1cc:   cmpl   $0x1,0x20(%r15)
   0.03%            │     0x00007fbe9f27e1d4:   jne    0x00007fbe9f27ea15
   0.06%            │     0x00007fbe9f27e1da:   mov    %rbp,0x60(%rsp)
   0.06%            │     0x00007fbe9f27e1df:   mov    %edx,0x54(%rsp)
   0.15%            │     0x00007fbe9f27e1e3:   mov    %rcx,0x48(%rsp)
   0.06%            │     0x00007fbe9f27e1e8:   mov    0x2c(%rsi),%r11d             ;*getfield left {reexecute=0 rethrow=0 return_oop=0}
                    │                                                               ; - java.util.HashMap$TreeNode::find@5 (line 2021)
   2.62%            │     0x00007fbe9f27e1ec:   mov    0xc(%rsi),%r9d               ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                    │                                                               ; - java.util.HashMap$TreeNode::find@19 (line 2022)
   0.43%            │     0x00007fbe9f27e1f0:   mov    %r11d,%ebx
   0.06%            │     0x00007fbe9f27e1f3:   shl    $0x3,%rbx                    ;*getfield left {reexecute=0 rethrow=0 return_oop=0}
                    │                                                               ; - java.util.HashMap$TreeNode::find@5 (line 2021)
   0.05%            │     0x00007fbe9f27e1f7:   cmp    %edx,%r9d
                    │     0x00007fbe9f27e1fa:   jg     0x00007fbe9f27e885           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                    │                                                               ; - java.util.HashMap$TreeNode::find@26 (line 2022)
   0.05%            │     0x00007fbe9f27e200:   mov    0x30(%rsi),%ebp
   0.12%            │     0x00007fbe9f27e203:   mov    %ebp,%r13d
   0.06%            │     0x00007fbe9f27e206:   shl    $0x3,%r13                    ;*getfield right {reexecute=0 rethrow=0 return_oop=0}
                    │                                                               ; - java.util.HashMap$TreeNode::find@12 (line 2021)
   0.06%            │     0x00007fbe9f27e20a:   cmp    %r9d,%edx
          ╭         │     0x00007fbe9f27e20d:   jg     0x00007fbe9f27e35b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                               ; - java.util.HashMap$TreeNode::find@39 (line 2024)
   0.04%  │         │     0x00007fbe9f27e213:   mov    0x10(%rsi),%r14d
   0.04%  │         │     0x00007fbe9f27e217:   mov    %r14d,%r10d
   0.06%  │         │     0x00007fbe9f27e21a:   shl    $0x3,%r10                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                               ; - java.util.HashMap$TreeNode::find@51 (line 2026)
   0.06%  │         │     0x00007fbe9f27e21e:   xchg   %ax,%ax
   0.04%  │         │     0x00007fbe9f27e220:   cmp    %rcx,%r10
          │         │     0x00007fbe9f27e223:   je     0x00007fbe9f27e9f4           ; ImmutableOopMap {rcx=Oop rbx=Oop rbp=NarrowOop rsi=Oop r8=Oop r10=Oop r11=NarrowOop r13=Oop r14=NarrowOop [72]=Oop }
          │         │                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │         │                                                               ; - (reexecute) java.util.HashMap$TreeNode::find@0 (line 2018)
   0.05%  │         │     0x00007fbe9f27e229:   cmpl   $0x17f6a8,0x8(%rcx)          ; implicit exception: dispatches to 0x00007fbe9f27ea66
          │         │                                                               ;   {metadata(&apos;java/util/AbstractMap$SimpleImmutableEntry&apos;)}
   0.08%  │         │     0x00007fbe9f27e230:   jne    0x00007fbe9f27e9e5           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.05%  │         │     0x00007fbe9f27e236:   mov    0xc(%rcx),%r9d               ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@13 (line 849)
          │         │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.03%  │         │     0x00007fbe9f27e23a:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rcx=Oop rbx=Oop rbp=NarrowOop rsi=Oop r8=Oop r9=NarrowOop r10=Oop r11=NarrowOop r13=Oop r14=NarrowOop [72]=Oop }
          │         │                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │         │                                                               ; - (reexecute) java.util.HashMap$TreeNode::find@0 (line 2018)
   0.03%  │         │     0x00007fbe9f27e240:   cmpl   $0x102b2c0,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007fbe9f27ea8d
          │         │                                                               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
   0.20%  │         │     0x00007fbe9f27e24c:   jne    0x00007fbe9f27e98d           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                               ; - java.util.AbstractMap::eq@18 (line 584)
          │         │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
          │         │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.06%  │         │     0x00007fbe9f27e252:   data16 nopw 0x0(%rax,%rax,1)
   0.03%  │         │     0x00007fbe9f27e25c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rcx=Oop rbx=Oop rbp=NarrowOop rsi=Oop r8=Oop r9=NarrowOop r10=Oop r11=NarrowOop r13=Oop r14=NarrowOop [72]=Oop }
          │         │                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │         │                                                               ; - (reexecute) java.util.HashMap$TreeNode::find@0 (line 2018)
   0.03%  │         │     0x00007fbe9f27e260:   cmpl   $0x17f6a8,0x8(,%r14,8)       ; implicit exception: dispatches to 0x00007fbe9f27eab0
          │         │                                                               ;   {metadata(&apos;java/util/AbstractMap$SimpleImmutableEntry&apos;)}
   6.75%  │         │     0x00007fbe9f27e26c:   jne    0x00007fbe9f27e9c7           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@1 (line 851)
          │         │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.08%  │         │     0x00007fbe9f27e272:   mov    0xc(,%r14,8),%edi            ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::getKey@1 (line 798)
          │         │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@17 (line 850)
          │         │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.10%  │         │     0x00007fbe9f27e27a:   nopw   0x0(%rax,%rax,1)
   0.01%  │         │     0x00007fbe9f27e280:   cmp    %r9d,%edi
   0.00%  │         │     0x00007fbe9f27e283:   je     0x00007fbe9f27e843           ; ImmutableOopMap {rcx=Oop rbx=Oop rbp=NarrowOop rsi=Oop rdi=NarrowOop r8=Oop r9=NarrowOop r10=Oop r11=NarrowOop r13=Oop r14=NarrowOop [72]=Oop }
          │         │                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │         │                                                               ; - (reexecute) java.util.HashMap$TreeNode::find@0 (line 2018)
   0.08%  │         │     0x00007fbe9f27e289:   cmpl   $0x102b2c0,0x8(,%rdi,8)      ; implicit exception: dispatches to 0x00007fbe9f27ead3
          │         │                                                               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
  12.91%  │         │     0x00007fbe9f27e294:   jne    0x00007fbe9f27e9d6           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
          │         │                                                               ; - java.util.AbstractMap::eq@18 (line 584)
          │         │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
          │         │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.13%  │         │     0x00007fbe9f27e29a:   mov    0xc(,%r9,8),%r9d             ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@30 (line 48)
          │         │                                                               ; - java.util.AbstractMap::eq@18 (line 584)
          │         │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
          │         │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
          │         │     0x00007fbe9f27e2a2:   mov    0xc(,%rdi,8),%edi            ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@34 (line 48)
          │         │                                                               ; - java.util.AbstractMap::eq@18 (line 584)
          │         │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
          │         │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.11%  │         │     0x00007fbe9f27e2a9:   cmp    %r9d,%edi
          │         │     0x00007fbe9f27e2ac:   je     0x00007fbe9f27e65a           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                               ; - java.util.Objects::equals@2 (line 64)
          │         │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
          │         │                                                               ; - java.util.AbstractMap::eq@18 (line 584)
          │         │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
          │         │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.13%  │         │     0x00007fbe9f27e2b2:   mov    %r14d,0x1c(%rsp)             ; ImmutableOopMap {rcx=Oop rbx=Oop rbp=NarrowOop rsi=Oop rdi=NarrowOop r8=Oop r9=NarrowOop r10=Oop r11=NarrowOop r13=Oop [28]=NarrowOop [72]=Oop }
          │         │                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │         │                                                               ; - (reexecute) java.util.HashMap$TreeNode::find@0 (line 2018)
   0.01%  │         │     0x00007fbe9f27e2b7:   movsbl 0x10(,%r9,8),%eax            ; implicit exception: dispatches to 0x00007fbe9f27eaf6
   0.01%  │         │     0x00007fbe9f27e2c0:   mov    0x14(,%r9,8),%r14d
   0.02%  │         │     0x00007fbe9f27e2c8:   cmp    %r9d,%edi
          │         │     0x00007fbe9f27e2cb:   je     0x00007fbe9f27e765
   0.14%  │         │     0x00007fbe9f27e2d1:   test   %edi,%edi
          │         │     0x00007fbe9f27e2d3:   je     0x00007fbe9f27e788
   0.12%  │         │     0x00007fbe9f27e2d9:   nopl   0x0(%rax)
   0.00%  │         │     0x00007fbe9f27e2e0:   cmp    0x10(,%rdi,8),%al
   0.00%  │         │     0x00007fbe9f27e2e7:   jne    0x00007fbe9f27e79a           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                               ; - java.lang.String::equals@0 (line 1858)
          │         │                                                               ; - java.util.Objects::equals@11 (line 64)
          │         │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
          │         │                                                               ; - java.util.AbstractMap::eq@18 (line 584)
          │         │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
          │         │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   3.37%  │         │     0x00007fbe9f27e2ed:   mov    0x14(,%rdi,8),%r9d           ; ImmutableOopMap {rcx=Oop rbx=Oop rbp=NarrowOop rsi=Oop r8=Oop r9=NarrowOop r10=Oop r11=NarrowOop r13=Oop r14=NarrowOop [28]=NarrowOop [72]=Oop }
          │         │                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │         │                                                               ; - (reexecute) java.util.HashMap$TreeNode::find@0 (line 2018)
   0.10%  │         │     0x00007fbe9f27e2f5:   mov    0xc(,%r9,8),%edi             ; implicit exception: dispatches to 0x00007fbe9f27eb19
          │         │                                                               ; ImmutableOopMap {rcx=Oop rbx=Oop rbp=NarrowOop rsi=Oop r8=Oop r9=NarrowOop r10=Oop r11=NarrowOop r13=Oop r14=NarrowOop [28]=NarrowOop [72]=Oop }
          │         │                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │         │                                                               ; - (reexecute) java.util.HashMap$TreeNode::find@0 (line 2018)
   2.33%  │         │     0x00007fbe9f27e2fd:   mov    0xc(,%r14,8),%eax            ; implicit exception: dispatches to 0x00007fbe9f27eb3c
   0.00%  │         │     0x00007fbe9f27e305:   cmp    %edi,%eax
          │         │     0x00007fbe9f27e307:   jne    0x00007fbe9f27e7ac
   0.19%  │         │     0x00007fbe9f27e30d:   test   %edi,%edi
          │         │     0x00007fbe9f27e30f:   je     0x00007fbe9f27e7be
   0.11%  │         │     0x00007fbe9f27e315:   mov    %r10,0x40(%rsp)
   0.00%  │         │     0x00007fbe9f27e31a:   mov    %rsi,0x20(%rsp)
   0.01%  │         │     0x00007fbe9f27e31f:   shl    $0x3,%r9
   0.04%  │         │     0x00007fbe9f27e323:   shl    $0x3,%r14
   0.12%  │         │     0x00007fbe9f27e327:   mov    %r9,%rsi
   0.00%  │         │     0x00007fbe9f27e32a:   mov    $0x10,%rdx
   0.01%  │         │     0x00007fbe9f27e331:   mov    %r14,%rcx
   0.03%  │         │     0x00007fbe9f27e334:   mov    %r8,%r14
   0.13%  │         │     0x00007fbe9f27e337:   mov    $0x10,%r8                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                               ; - java.lang.String::equals@0 (line 1858)
          │         │                                                               ; - java.util.Objects::equals@11 (line 64)
          │         │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
          │         │                                                               ; - java.util.AbstractMap::eq@18 (line 584)
          │         │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
          │         │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.00%  │         │     0x00007fbe9f27e33e:   mov    %eax,%r9d
   0.01%  │         │     0x00007fbe9f27e341:   call   0x00007fbe9edb6900           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.23%  │         │     0x00007fbe9f27e346:   nop
   0.02%  │         │     0x00007fbe9f27e347:   test   %eax,%eax
          │         │     0x00007fbe9f27e349:   jne    0x00007fbe9f27e731           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@25 (line 850)
          │         │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.17%  │         │     0x00007fbe9f27e34f:   test   %r11d,%r11d
          │         │     0x00007fbe9f27e352:   jne    0x00007fbe9f27e5ff           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                               ; - java.util.HashMap$TreeNode::find@79 (line 2028)
   0.17%  │         │     0x00007fbe9f27e358:   mov    %r14,%r8                     ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                               ; - java.util.HashMap$TreeNode::find@165 (line 2040)
   0.07%  ↘         │     0x00007fbe9f27e35b:   nopl   0x0(%rax,%rax,1)
   0.01%            │     0x00007fbe9f27e360:   test   %r13,%r13
           ╭        │     0x00007fbe9f27e363:   jne    0x00007fbe9f27e391           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
           │        │                                                               ; - java.util.HashMap$TreeNode::find@167 (line 2040)
   0.16%   │    ↗   │     0x00007fbe9f27e369:   mov    $0x0,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
           │    │   │                                                               ; - java.util.HashMap$TreeNode::find@171 (line 2041)
   0.15%   │    │   │     0x00007fbe9f27e370:   mov    0x60(%rsp),%rbp
   0.39%   │    │   │     0x00007fbe9f27e375:   add    $0x68,%rsp
   0.03%   │    │   │     0x00007fbe9f27e379:   nopl   0x0(%rax)
   0.04%   │    │   │     0x00007fbe9f27e380:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │    │   │     0x00007fbe9f27e387:   ja     0x00007fbe9f27ea26
   0.02%   │    │   │     0x00007fbe9f27e38d:   vzeroupper 
   0.13%   │    │   │     0x00007fbe9f27e390:   ret                                 ;*aconst_null {reexecute=0 rethrow=0 return_oop=0}
           │    │   │                                                               ; - java.util.HashMap$TreeNode::find@170 (line 2041)
   0.16%   ↘    │   │     0x00007fbe9f27e391:   mov    0x48(%rsp),%rcx
   0.10%        │   │     0x00007fbe9f27e396:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {rcx=Oop r8=Oop r13=Oop [72]=Oop }
                │   │                                                               ;*aload {reexecute=1 rethrow=0 return_oop=0}
                │   │                                                               ; - (reexecute) java.util.HashMap$TreeNode::find@165 (line 2040)
   0.00%        │   │     0x00007fbe9f27e3a0:   cmpl   $0x17f6a8,0x8(%rcx)          ; implicit exception: dispatches to 0x00007fbe9f27eb5f
                │   │                                                               ;   {metadata(&apos;java/util/AbstractMap$SimpleImmutableEntry&apos;)}
   0.19%    ╭   │   │     0x00007fbe9f27e3a7:   je     0x00007fbe9f27e52a
            │   │   │     0x00007fbe9f27e3ad:   jmp    0x00007fbe9f27e88d
            │   │   │     0x00007fbe9f27e3b2:   data16 nopw 0x0(%rax,%rax,1)
            │   │   │     0x00007fbe9f27e3bc:   data16 data16 xchg %ax,%ax          ;*aload {reexecute=0 rethrow=0 return_oop=0}
            │   │   │                                                               ; - java.util.HashMap$TreeNode::find@165 (line 2040)
   0.04%    │   │↗  │     0x00007fbe9f27e3c0:   mov    %ebp,%r10d
   0.04%    │   ││  │     0x00007fbe9f27e3c3:   shl    $0x3,%r10                    ;*getfield left {reexecute=0 rethrow=0 return_oop=0}
            │   ││  │                                                               ; - java.util.HashMap$TreeNode::find@5 (line 2021)
   0.04%    │   ││  │     0x00007fbe9f27e3c7:   cmp    %edx,%esi
            │   ││  │     0x00007fbe9f27e3c9:   jg     0x00007fbe9f27e5f7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
            │   ││  │                                                               ; - java.util.HashMap$TreeNode::find@26 (line 2022)
   0.08%    │   ││  │     0x00007fbe9f27e3cf:   mov    %r11d,%edi
   0.05%    │   ││  │     0x00007fbe9f27e3d2:   shl    $0x3,%rdi                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
            │   ││  │                                                               ; - java.util.HashMap$TreeNode::find@51 (line 2026)
   0.02%    │   ││  │     0x00007fbe9f27e3d6:   cmp    %rcx,%rdi
            │   ││  │     0x00007fbe9f27e3d9:   je     0x00007fbe9f27ea03           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
            │   ││  │                                                               ; - java.util.HashMap$TreeNode::find@58 (line 2026)
   0.08%    │   ││  │     0x00007fbe9f27e3df:   mov    0xc(%rcx),%esi               ; ImmutableOopMap {rcx=Oop rbx=NarrowOop rbp=NarrowOop rsi=NarrowOop rdi=Oop r8=Oop r10=Oop r11=NarrowOop r13=Oop r14=Oop [72]=Oop }
            │   ││  │                                                               ;*aload {reexecute=1 rethrow=0 return_oop=0}
            │   ││  │                                                               ; - (reexecute) java.util.HashMap$TreeNode::find@3 (line 2021)
   0.10%    │   ││  │     0x00007fbe9f27e3e2:   cmpl   $0x102b2c0,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007fbe9f27eb82
            │   ││  │                                                               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
   0.23%    │   ││  │     0x00007fbe9f27e3ed:   jne    0x00007fbe9f27e9b5           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
            │   ││  │                                                               ; - java.util.AbstractMap::eq@18 (line 584)
            │   ││  │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
            │   ││  │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.11%    │   ││  │     0x00007fbe9f27e3f3:   nopw   0x0(%rax,%rax,1)
   0.06%    │   ││  │     0x00007fbe9f27e3fc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rcx=Oop rbx=NarrowOop rbp=NarrowOop rsi=NarrowOop rdi=Oop r8=Oop r10=Oop r11=NarrowOop r13=Oop r14=Oop [72]=Oop }
            │   ││  │                                                               ;*aload {reexecute=1 rethrow=0 return_oop=0}
            │   ││  │                                                               ; - (reexecute) java.util.HashMap$TreeNode::find@3 (line 2021)
   0.05%    │   ││  │     0x00007fbe9f27e400:   cmpl   $0x17f6a8,0x8(,%r11,8)       ; implicit exception: dispatches to 0x00007fbe9f27eba5
            │   ││  │                                                               ;   {metadata(&apos;java/util/AbstractMap$SimpleImmutableEntry&apos;)}
   6.06%    │   ││  │     0x00007fbe9f27e40c:   jne    0x00007fbe9f27e900           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
            │   ││  │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@1 (line 851)
            │   ││  │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.09%    │   ││  │     0x00007fbe9f27e412:   mov    0xc(,%r11,8),%r9d            ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
            │   ││  │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::getKey@1 (line 798)
            │   ││  │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@17 (line 850)
            │   ││  │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.14%    │   ││  │     0x00007fbe9f27e41a:   nopw   0x0(%rax,%rax,1)
   0.02%    │   ││  │     0x00007fbe9f27e420:   cmp    %esi,%r9d
            │   ││  │     0x00007fbe9f27e423:   je     0x00007fbe9f27e865           ; ImmutableOopMap {rcx=Oop rbx=NarrowOop rbp=NarrowOop rsi=NarrowOop rdi=Oop r8=Oop r9=NarrowOop r10=Oop r11=NarrowOop r13=Oop r14=Oop [72]=Oop }
            │   ││  │                                                               ;*aload {reexecute=1 rethrow=0 return_oop=0}
            │   ││  │                                                               ; - (reexecute) java.util.HashMap$TreeNode::find@3 (line 2021)
   0.11%    │   ││  │     0x00007fbe9f27e429:   cmpl   $0x102b2c0,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007fbe9f27ebc8
            │   ││  │                                                               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
  13.22%    │   ││  │     0x00007fbe9f27e435:   jne    0x00007fbe9f27e95a           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
            │   ││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
            │   ││  │                                                               ; - java.util.AbstractMap::eq@18 (line 584)
            │   ││  │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
            │   ││  │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.15%    │   ││  │     0x00007fbe9f27e43b:   mov    0xc(,%rsi,8),%esi            ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
            │   ││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@30 (line 48)
            │   ││  │                                                               ; - java.util.AbstractMap::eq@18 (line 584)
            │   ││  │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
            │   ││  │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.03%    │   ││  │     0x00007fbe9f27e442:   mov    0xc(,%r9,8),%r9d             ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
            │   ││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@34 (line 48)
            │   ││  │                                                               ; - java.util.AbstractMap::eq@18 (line 584)
            │   ││  │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
            │   ││  │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.13%    │   ││  │     0x00007fbe9f27e44a:   cmp    %esi,%r9d
            │   ││  │     0x00007fbe9f27e44d:   je     0x00007fbe9f27e6dc           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
            │   ││  │                                                               ; - java.util.Objects::equals@2 (line 64)
            │   ││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
            │   ││  │                                                               ; - java.util.AbstractMap::eq@18 (line 584)
            │   ││  │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
            │   ││  │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.15%    │   ││  │     0x00007fbe9f27e453:   mov    %r11d,0x1c(%rsp)             ; ImmutableOopMap {rcx=Oop rbx=NarrowOop rbp=NarrowOop rsi=NarrowOop rdi=Oop r8=Oop r9=NarrowOop r10=Oop r13=Oop r14=Oop [28]=NarrowOop [72]=Oop }
            │   ││  │                                                               ;*aload {reexecute=1 rethrow=0 return_oop=0}
            │   ││  │                                                               ; - (reexecute) java.util.HashMap$TreeNode::find@3 (line 2021)
   0.01%    │   ││  │     0x00007fbe9f27e458:   movsbl 0x10(,%rsi,8),%eax           ; implicit exception: dispatches to 0x00007fbe9f27ebed
   0.02%    │   ││  │     0x00007fbe9f27e460:   mov    0x14(,%rsi,8),%r11d
   0.02%    │   ││  │     0x00007fbe9f27e468:   cmp    %esi,%r9d
            │   ││  │     0x00007fbe9f27e46b:   je     0x00007fbe9f27e7e5
   0.17%    │   ││  │     0x00007fbe9f27e471:   test   %r9d,%r9d
            │╭  ││  │     0x00007fbe9f27e474:   je     0x00007fbe9f27e5ab
   0.12%    ││  ││  │     0x00007fbe9f27e47a:   nopw   0x0(%rax,%rax,1)
   0.02%    ││  ││  │     0x00007fbe9f27e480:   cmp    0x10(,%r9,8),%al
   0.00%    ││╭ ││  │     0x00007fbe9f27e488:   jne    0x00007fbe9f27e5c5           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            │││ ││  │                                                               ; - java.lang.String::equals@0 (line 1858)
            │││ ││  │                                                               ; - java.util.Objects::equals@11 (line 64)
            │││ ││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
            │││ ││  │                                                               ; - java.util.AbstractMap::eq@18 (line 584)
            │││ ││  │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
            │││ ││  │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   3.47%    │││ ││  │     0x00007fbe9f27e48e:   mov    0x14(,%r9,8),%esi            ; ImmutableOopMap {rcx=Oop rbx=NarrowOop rbp=NarrowOop rsi=NarrowOop rdi=Oop r8=Oop r10=Oop r11=NarrowOop r13=Oop r14=Oop [28]=NarrowOop [72]=Oop }
            │││ ││  │                                                               ;*aload {reexecute=1 rethrow=0 return_oop=0}
            │││ ││  │                                                               ; - (reexecute) java.util.HashMap$TreeNode::find@3 (line 2021)
   0.14%    │││ ││  │     0x00007fbe9f27e496:   mov    0xc(,%rsi,8),%r9d            ; implicit exception: dispatches to 0x00007fbe9f27ec10
            │││ ││  │                                                               ; ImmutableOopMap {rcx=Oop rbx=NarrowOop rbp=NarrowOop rsi=NarrowOop rdi=Oop r8=Oop r10=Oop r11=NarrowOop r13=Oop r14=Oop [28]=NarrowOop [72]=Oop }
            │││ ││  │                                                               ;*aload {reexecute=1 rethrow=0 return_oop=0}
            │││ ││  │                                                               ; - (reexecute) java.util.HashMap$TreeNode::find@3 (line 2021)
   2.53%    │││ ││  │     0x00007fbe9f27e49e:   mov    0xc(,%r11,8),%eax            ; implicit exception: dispatches to 0x00007fbe9f27ec33
   0.01%    │││ ││  │     0x00007fbe9f27e4a6:   cmp    %r9d,%eax
            │││ ││  │     0x00007fbe9f27e4a9:   jne    0x00007fbe9f27e5de
   0.21%    │││ ││  │     0x00007fbe9f27e4af:   test   %r9d,%r9d
            │││ ││  │     0x00007fbe9f27e4b2:   je     0x00007fbe9f27e807
   0.14%    │││ ││  │     0x00007fbe9f27e4b8:   mov    %rdi,0x30(%rsp)
   0.01%    │││ ││  │     0x00007fbe9f27e4bd:   mov    %r10,0x38(%rsp)
   0.01%    │││ ││  │     0x00007fbe9f27e4c2:   mov    %r13,(%rsp)
   0.05%    │││ ││  │     0x00007fbe9f27e4c6:   shl    $0x3,%rsi
   0.13%    │││ ││  │     0x00007fbe9f27e4ca:   shl    $0x3,%r11
   0.00%    │││ ││  │     0x00007fbe9f27e4ce:   mov    %edx,%r9d
   0.00%    │││ ││  │     0x00007fbe9f27e4d1:   mov    $0x10,%rdx
   0.06%    │││ ││  │     0x00007fbe9f27e4d8:   mov    %r11,%rcx
   0.14%    │││ ││  │     0x00007fbe9f27e4db:   mov    %r8,%r11
   0.01%    │││ ││  │     0x00007fbe9f27e4de:   mov    $0x10,%r8                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            │││ ││  │                                                               ; - java.lang.String::equals@0 (line 1858)
            │││ ││  │                                                               ; - java.util.Objects::equals@11 (line 64)
            │││ ││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
            │││ ││  │                                                               ; - java.util.AbstractMap::eq@18 (line 584)
            │││ ││  │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
            │││ ││  │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.01%    │││ ││  │     0x00007fbe9f27e4e5:   mov    %r9d,%r13d
   0.06%    │││ ││  │     0x00007fbe9f27e4e8:   mov    %eax,%r9d
   0.10%    │││ ││  │     0x00007fbe9f27e4eb:   call   0x00007fbe9edb6900           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.33%    │││ ││  │     0x00007fbe9f27e4f0:   nop
   0.01%    │││ ││  │     0x00007fbe9f27e4f1:   test   %eax,%eax
            │││ ││  │     0x00007fbe9f27e4f3:   jne    0x00007fbe9f27e74f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │││ ││  │                                                               ; - java.util.AbstractMap$SimpleImmutableEntry::equals@25 (line 850)
            │││ ││  │                                                               ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.11%    │││ ││  │  ↗  0x00007fbe9f27e4f9:   nopl   0x0(%rax)
   0.04%    │││ ││  │  │  0x00007fbe9f27e500:   test   %ebp,%ebp
            │││╭││  │  │  0x00007fbe9f27e502:   jne    0x00007fbe9f27e54f           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
            ││││││  │  │                                                            ; - java.util.HashMap$TreeNode::find@79 (line 2028)
   0.20%    ││││││  │  │  0x00007fbe9f27e508:   mov    %r11,%r8
   0.02%    ││││││  │  │  0x00007fbe9f27e50b:   nopl   0x0(%rax,%rax,1)             ;*aload {reexecute=0 rethrow=0 return_oop=0}
            ││││││  │  │                                                            ; - java.util.HashMap$TreeNode::find@165 (line 2040)
   0.03%    ││││││↗ │↗↗│  0x00007fbe9f27e510:   test   %r14,%r14
            ││││╰││ ││││  0x00007fbe9f27e513:   je     0x00007fbe9f27e369           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
            ││││ ││ ││││                                                            ; - java.util.HashMap$TreeNode::find@167 (line 2040)
   0.10%    ││││ ││ ││││  0x00007fbe9f27e519:   mov    0x458(%r15),%rax             ; ImmutableOopMap {r8=Oop r14=Oop [72]=Oop }
            ││││ ││ ││││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
            ││││ ││ ││││                                                            ; - (reexecute) java.util.HashMap$TreeNode::find@165 (line 2040)
   0.08%    ││││ ││ ││││  0x00007fbe9f27e520:   test   %eax,(%rax)                  ;   {poll}
   0.14%    ││││ ││ ││││  0x00007fbe9f27e522:   mov    %r14,%r13
   0.02%    ││││ ││ ││││  0x00007fbe9f27e525:   mov    0x48(%rsp),%rcx              ;*aload {reexecute=0 rethrow=0 return_oop=0}
            ││││ ││ ││││                                                            ; - java.util.HashMap$TreeNode::find@3 (line 2021)
   0.09%    ↘│││ ││ ││││  0x00007fbe9f27e52a:   mov    0x54(%rsp),%edx              ; ImmutableOopMap {rcx=Oop r8=Oop r13=Oop [72]=Oop }
             │││ ││ ││││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
             │││ ││ ││││                                                            ; - (reexecute) java.util.HashMap$TreeNode::find@3 (line 2021)
   0.01%     │││ ││ ││││  0x00007fbe9f27e52e:   mov    0xc(%r13),%esi               ; implicit exception: dispatches to 0x00007fbe9f27ec56
   3.19%     │││ ││ ││││  0x00007fbe9f27e532:   mov    0x10(%r13),%r11d             ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
             │││ ││ ││││                                                            ; - java.util.HashMap$TreeNode::find@51 (line 2026)
   0.24%     │││ ││ ││││  0x00007fbe9f27e536:   mov    0x30(%r13),%ebx              ;*getfield right {reexecute=0 rethrow=0 return_oop=0}
             │││ ││ ││││                                                            ; - java.util.HashMap$TreeNode::find@12 (line 2021)
   0.48%     │││ ││ ││││  0x00007fbe9f27e53a:   mov    0x2c(%r13),%ebp              ;*getfield left {reexecute=0 rethrow=0 return_oop=0}
             │││ ││ ││││                                                            ; - java.util.HashMap$TreeNode::find@5 (line 2021)
   0.09%     │││ ││ ││││  0x00007fbe9f27e53e:   mov    %ebx,%r14d
   0.04%     │││ ││ ││││  0x00007fbe9f27e541:   shl    $0x3,%r14                    ;*getfield right {reexecute=0 rethrow=0 return_oop=0}
             │││ ││ ││││                                                            ; - java.util.HashMap$TreeNode::find@12 (line 2021)
   0.08%     │││ ││ ││││  0x00007fbe9f27e545:   cmp    %esi,%edx
             │││ ╰│ ││││  0x00007fbe9f27e547:   jle    0x00007fbe9f27e3c0
             │││  ╰ ││││  0x00007fbe9f27e54d:   jmp    0x00007fbe9f27e510           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │││    ││││                                                            ; - java.util.HashMap$TreeNode::find@39 (line 2024)
   0.16%     ││↘    ││││  0x00007fbe9f27e54f:   test   %ebx,%ebx
             ││    ╭││││  0x00007fbe9f27e551:   je     0x00007fbe9f27e59e           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
             ││    │││││                                                            ; - java.util.HashMap$TreeNode::find@91 (line 2030)
   0.04%     ││    │││││  0x00007fbe9f27e557:   test   %r11,%r11
             ││    │││││  0x00007fbe9f27e55a:   jne    0x00007fbe9f27e928           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
             ││    │││││                                                            ; - java.util.HashMap$TreeNode::find@102 (line 2032)
   0.03%     ││    │││││  0x00007fbe9f27e560:   mov    0x48(%rsp),%r10
   0.19%     ││    │││││  0x00007fbe9f27e565:   mov    %r14,%rsi
   0.01%     ││    │││││  0x00007fbe9f27e568:   mov    %r13d,%edx
   0.00%     ││    │││││  0x00007fbe9f27e56b:   mov    %r10,%rcx
   0.01%     ││    │││││  0x00007fbe9f27e56e:   mov    $0x0,%r8                     ;*invokevirtual find {reexecute=0 rethrow=0 return_oop=0}
             ││    │││││                                                            ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.05%     ││    │││││  0x00007fbe9f27e575:   xchg   %ax,%ax
             ││    │╰│││  0x00007fbe9f27e577:   call   0x00007fbe9f27e1c0           ; ImmutableOopMap {[56]=Oop [72]=Oop }
             ││    │ │││                                                            ;*invokevirtual find {reexecute=0 rethrow=0 return_oop=1}
             ││    │ │││                                                            ; - java.util.HashMap$TreeNode::find@149 (line 2036)
             ││    │ │││                                                            ;   {optimized virtual_call}
   0.03%     ││    │ │││  0x00007fbe9f27e57c:   nopl   0x100005ec(%rax,%rax,1)      ;   {other}
   0.02%     ││    │ │││  0x00007fbe9f27e584:   test   %rax,%rax
             ││    │ │││  0x00007fbe9f27e587:   jne    0x00007fbe9f27e829           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
             ││    │ │││                                                            ; - java.util.HashMap$TreeNode::find@155 (line 2036)
   0.09%     ││    │ │││  0x00007fbe9f27e58d:   mov    $0x0,%r8
   0.04%     ││    │ │││  0x00007fbe9f27e594:   mov    0x38(%rsp),%r14
   0.17%     ││    │ ╰││  0x00007fbe9f27e599:   jmp    0x00007fbe9f27e510
   0.04%     ││    ↘  ││  0x00007fbe9f27e59e:   mov    %r11,%r8
   0.00%     ││       ││  0x00007fbe9f27e5a1:   mov    0x38(%rsp),%r14
   0.04%     ││       ╰│  0x00007fbe9f27e5a6:   jmp    0x00007fbe9f27e510           ;*aload {reexecute=0 rethrow=0 return_oop=0}
             ││        │                                                            ; - java.util.HashMap$TreeNode::find@165 (line 2040)
             ↘│        │  0x00007fbe9f27e5ab:   mov    %rdi,0x30(%rsp)
              │        │  0x00007fbe9f27e5b0:   mov    %r10,0x38(%rsp)
              │        │  0x00007fbe9f27e5b5:   mov    %r8,%r11
              │        │  0x00007fbe9f27e5b8:   mov    %r13,(%rsp)
              │        │  0x00007fbe9f27e5bc:   mov    %edx,%r13d
              │        │  0x00007fbe9f27e5bf:   nop
              │        ╰  0x00007fbe9f27e5c0:   jmp    0x00007fbe9f27e4f9
              ↘           0x00007fbe9f27e5c5:   mov    %rdi,0x30(%rsp)
                          0x00007fbe9f27e5ca:   mov    %r10,0x38(%rsp)
....................................................................................................
  68.80%  <total for region 1>

....[Hottest Regions]...............................................................................
  68.80%      jvmci, level 4  java.util.HashMap$TreeNode::find, version 3, compile id 1383 
   5.33%                      <unknown> 
   3.06%      jvmci, level 4  java.util.HashMap::computeIfAbsent, version 5, compile id 1489 
   1.21%      jvmci, level 4  java.util.HashMap$TreeNode::find, version 3, compile id 1383 
   1.19%                      <unknown> 
   1.12%                      <unknown> 
   1.11%      jvmci, level 4  java.util.HashMap$TreeNode::putTreeVal, version 3, compile id 1400 
   1.05%      jvmci, level 4  java.util.AbstractMap::eq, version 3, compile id 1404 
   0.91%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.80%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.80%              kernel  [unknown] 
   0.74%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.65%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.58%      jvmci, level 4  java.util.HashMap$TreeNode::split, version 4, compile id 1413 
   0.53%      jvmci, level 4  java.util.HashMap::computeIfAbsent, version 5, compile id 1489 
   0.51%      jvmci, level 4  java.util.HashMap::replaceAll, version 5, compile id 1548 
   0.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator::lambda$ordered$0, version 3, compile id 1348 
   0.44%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.44%      jvmci, level 4  java.util.stream.ReduceOps$2ReducingSink::accept, version 6, compile id 1505 
   0.32%      jvmci, level 4  java.util.ArrayList::add, version 3, compile id 1245 
   9.92%  <...other 679 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.37%      jvmci, level 4  java.util.HashMap$TreeNode::find, version 3, compile id 1383 
   8.35%                      <unknown> 
   4.18%      jvmci, level 4  java.util.HashMap::computeIfAbsent, version 5, compile id 1489 
   2.86%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   1.81%      jvmci, level 4  java.util.HashMap$TreeNode::putTreeVal, version 3, compile id 1400 
   1.80%              kernel  [unknown] 
   1.23%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   1.05%      jvmci, level 4  java.util.AbstractMap::eq, version 3, compile id 1404 
   0.81%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator::lambda$ordered$0, version 3, compile id 1348 
   0.73%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator::tryAdvance, version 3, compile id 1357 
   0.64%      jvmci, level 4  java.util.HashMap$TreeNode::split, version 4, compile id 1413 
   0.57%      jvmci, level 4  java.util.HashMap::replaceAll, version 5, compile id 1548 
   0.52%      jvmci, level 4  java.util.AbstractMap$SimpleImmutableEntry::hashCode, version 3, compile id 1385 
   0.51%      jvmci, level 4  java.util.stream.ReduceOps$2ReducingSink::accept, version 6, compile id 1505 
   0.37%      jvmci, level 4  java.util.ArrayList::add, version 3, compile id 1245 
   0.37%      jvmci, level 4  java.util.stream.AbstractPipeline::evaluate, version 4, compile id 1497 
   0.34%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007fbe20069340::accept, version 2, compile id 1082 
   0.32%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator::fillBuilder, version 3, compile id 1399 
   0.26%      jvmci, level 4  java.util.stream.SpinedBuffer$1Splitr::forEachRemaining, version 2, compile id 1492 
   0.26%           libjvm.so  G1ScanCardClosure::do_oop_work<narrowOop> 
   2.65%  <...other 148 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  84.35%      jvmci, level 4
   8.35%                    
   5.06%           libjvm.so
   1.80%              kernel
   0.18%          ld-2.31.so
   0.10%        libc-2.31.so
   0.06%    perf-2126931.map
   0.06%  libpthread-2.31.so
   0.02%              [vdso]
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%         c1, level 1
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.most_prolific_pair_of_authors_per_year

# Run progress: 35.71% complete, ETA 00:17:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1756.184 ms/op
# Warmup Iteration   2: 1007.585 ms/op
# Warmup Iteration   3: 980.395 ms/op
# Warmup Iteration   4: 984.896 ms/op
# Warmup Iteration   5: 1004.445 ms/op
Iteration   1: 1000.116 ms/op
Iteration   2: 987.724 ms/op
Iteration   3: 982.477 ms/op
Iteration   4: 980.972 ms/op
Iteration   5: 981.917 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.most_prolific_pair_of_authors_per_year":
  986.641 ±(99.9%) 30.716 ms/op [Average]
  (min, avg, max) = (980.972, 986.641, 1000.116), stdev = 7.977
  CI (99.9%): [955.925, 1017.358] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.most_prolific_pair_of_authors_per_year:asm":
PrintAssembly processed: 373734 total address lines.
Perf output processed (skipped 64.454 seconds):
 Column 1: cycles (56929 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.AbstractMap$SimpleImmutableEntry::equals, version 3, compile id 1409 

                         # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                         #           [sp+0x20]  (sp of caller)
                         0x00007f8da3282ac0:   mov    0x8(%rsi),%r10d
                         0x00007f8da3282ac4:   movabs $0x7f8d27000000,%r12
                         0x00007f8da3282ace:   add    %r12,%r10
                         0x00007f8da3282ad1:   xor    %r12,%r12
                         0x00007f8da3282ad4:   cmp    %r10,%rax
                         0x00007f8da3282ad7:   jne    0x00007f8da2c2f080           ;   {runtime_call ic_miss_stub}
                         0x00007f8da3282add:   data16 xchg %ax,%ax
                       [Verified Entry Point]
   0.13%                 0x00007f8da3282ae0:   mov    %eax,-0x14000(%rsp)
   0.21%                 0x00007f8da3282ae7:   sub    $0x18,%rsp
   0.01%                 0x00007f8da3282aeb:   nop
   0.00%                 0x00007f8da3282aec:   cmpl   $0x1,0x20(%r15)
   0.02%                 0x00007f8da3282af4:   jne    0x00007f8da3282cc5
   0.02%                 0x00007f8da3282afa:   mov    %rbp,0x10(%rsp)
   0.00%                 0x00007f8da3282aff:   mov    %rsi,%r11
   0.00%                 0x00007f8da3282b02:   mov    %rdx,%rbx
   0.02%                 0x00007f8da3282b05:   mov    0xc(%r11),%esi               ; ImmutableOopMap {rbx=Oop rsi=NarrowOop r11=Oop }
                                                                                   ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                                   ; - (reexecute) java.util.AbstractMap$SimpleImmutableEntry::equals@0 (line 851)
   0.02%                 0x00007f8da3282b09:   cmpl   $0x102b2b0,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007f8da3282ce9
                                                                                   ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
   0.06%  ╭              0x00007f8da3282b14:   jne    0x00007f8da3282c5c           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
          │                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   0.03%  │              0x00007f8da3282b1a:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rsi=NarrowOop r11=Oop }
          │                                                                        ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                        ; - (reexecute) java.util.AbstractMap$SimpleImmutableEntry::equals@0 (line 851)
   0.01%  │              0x00007f8da3282b20:   cmpl   $0x17f6a8,0x8(%rbx)          ; implicit exception: dispatches to 0x00007f8da3282d0d
          │                                                                        ;   {metadata(&apos;java/util/AbstractMap$SimpleImmutableEntry&apos;)}
   4.79%  │              0x00007f8da3282b27:   jne    0x00007f8da3282ca7           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@1 (line 851)
   0.01%  │              0x00007f8da3282b2d:   mov    0xc(%rbx),%edx               ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
          │                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::getKey@1 (line 798)
          │                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@17 (line 850)
   0.04%  │              0x00007f8da3282b30:   cmp    %esi,%edx
          │╭             0x00007f8da3282b32:   je     0x00007f8da3282c11           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@2 (line 45)
          ││                                                                       ; - java.util.AbstractMap::eq@18 (line 584)
          ││                                                                       ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   0.04%  ││             0x00007f8da3282b38:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdx=NarrowOop rbx=Oop rsi=NarrowOop r11=Oop }
          ││                                                                       ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                       ; - (reexecute) java.util.AbstractMap$SimpleImmutableEntry::equals@0 (line 851)
   0.01%  ││             0x00007f8da3282b40:   cmpl   $0x102b2b0,0x8(,%rdx,8)      ; implicit exception: dispatches to 0x00007f8da3282d30
          ││                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
   8.25%  ││             0x00007f8da3282b4b:   jne    0x00007f8da3282cb6           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
          ││                                                                       ; - java.util.AbstractMap::eq@18 (line 584)
          ││                                                                       ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   0.05%  ││             0x00007f8da3282b51:   mov    0xc(,%rsi,8),%esi            ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@30 (line 48)
          ││                                                                       ; - java.util.AbstractMap::eq@18 (line 584)
          ││                                                                       ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
          ││             0x00007f8da3282b58:   mov    0xc(,%rdx,8),%edx            ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@34 (line 48)
          ││                                                                       ; - java.util.AbstractMap::eq@18 (line 584)
          ││                                                                       ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   0.06%  ││             0x00007f8da3282b5f:   nop
   0.00%  ││             0x00007f8da3282b60:   cmp    %esi,%edx
          ││╭            0x00007f8da3282b62:   je     0x00007f8da3282c11           ; ImmutableOopMap {rdx=NarrowOop rbx=Oop rsi=NarrowOop r11=Oop }
          │││                                                                      ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │││                                                                      ; - (reexecute) java.util.AbstractMap$SimpleImmutableEntry::equals@0 (line 851)
   0.04%  │││            0x00007f8da3282b68:   movsbl 0x10(,%rsi,8),%ecx           ; implicit exception: dispatches to 0x00007f8da3282d53
   0.01%  │││            0x00007f8da3282b70:   mov    0x14(,%rsi,8),%r8d
          │││            0x00007f8da3282b78:   cmp    %esi,%edx
          │││╭           0x00007f8da3282b7a:   je     0x00007f8da3282c11
   0.03%  ││││           0x00007f8da3282b80:   test   %edx,%edx
          ││││╭          0x00007f8da3282b82:   je     0x00007f8da3282c47
   0.03%  │││││          0x00007f8da3282b88:   cmp    0x10(,%rdx,8),%cl
          │││││╭         0x00007f8da3282b8f:   jne    0x00007f8da3282c4e           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                                   ; - java.lang.String::equals@0 (line 1858)
          ││││││                                                                   ; - java.util.Objects::equals@11 (line 64)
          ││││││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
          ││││││                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
          ││││││                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   1.62%  ││││││         0x00007f8da3282b95:   mov    0x14(,%rdx,8),%esi           ; ImmutableOopMap {rbx=Oop rsi=NarrowOop r8=NarrowOop r11=Oop }
          ││││││                                                                   ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││││││                                                                   ; - (reexecute) java.util.AbstractMap$SimpleImmutableEntry::equals@0 (line 851)
   0.04%  ││││││         0x00007f8da3282b9c:   mov    0xc(,%rsi,8),%edx            ; implicit exception: dispatches to 0x00007f8da3282d76
          ││││││                                                                   ; ImmutableOopMap {rbx=Oop rsi=NarrowOop r8=NarrowOop r11=Oop }
          ││││││                                                                   ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││││││                                                                   ; - (reexecute) java.util.AbstractMap$SimpleImmutableEntry::equals@0 (line 851)
   1.15%  ││││││         0x00007f8da3282ba3:   mov    0xc(,%r8,8),%r9d             ; implicit exception: dispatches to 0x00007f8da3282d99
          ││││││         0x00007f8da3282bab:   cmp    %edx,%r9d
          ││││││╭        0x00007f8da3282bae:   jne    0x00007f8da3282c55
   0.05%  │││││││        0x00007f8da3282bb4:   test   %edx,%edx
          │││││││╭       0x00007f8da3282bb6:   je     0x00007f8da3282c11
   0.04%  ││││││││       0x00007f8da3282bbc:   shl    $0x3,%rsi
   0.00%  ││││││││       0x00007f8da3282bc0:   shl    $0x3,%r8
          ││││││││       0x00007f8da3282bc4:   mov    $0x10,%rdx
          ││││││││       0x00007f8da3282bcb:   mov    %r8,%rcx                     ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                                 ; - java.lang.String::equals@0 (line 1858)
          ││││││││                                                                 ; - java.util.Objects::equals@11 (line 64)
          ││││││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
          ││││││││                                                                 ; - java.util.AbstractMap::eq@18 (line 584)
          ││││││││                                                                 ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   0.05%  ││││││││       0x00007f8da3282bce:   mov    $0x10,%r8
          ││││││││       0x00007f8da3282bd5:   call   0x00007f8da2dbe000           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.07%  ││││││││       0x00007f8da3282bda:   nop
   0.01%  ││││││││       0x00007f8da3282bdb:   nopl   0x0(%rax,%rax,1)
   0.00%  ││││││││       0x00007f8da3282be0:   test   %eax,%eax
          ││││││││╭      0x00007f8da3282be2:   jne    0x00007f8da3282c11           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                                ; - java.util.AbstractMap$SimpleImmutableEntry::equals@25 (line 850)
   0.04%  │││││││││      0x00007f8da3282be8:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                                ; - java.util.AbstractMap$SimpleImmutableEntry::equals@49 (line 849)
   0.03%  │││││││││↗↗↗↗  0x00007f8da3282bed:   mov    0x10(%rsp),%rbp
   0.18%  │││││││││││││  0x00007f8da3282bf2:   add    $0x18,%rsp
   0.02%  │││││││││││││  0x00007f8da3282bf6:   data16 nopw 0x0(%rax,%rax,1)
   0.01%  │││││││││││││  0x00007f8da3282c00:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││││││││││││  0x00007f8da3282c07:   ja     0x00007f8da3282cd5
   0.01%  │││││││││││││  0x00007f8da3282c0d:   vzeroupper 
   0.05%  │││││││││││││  0x00007f8da3282c10:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││                                                            ; - java.util.AbstractMap$SimpleImmutableEntry::equals@25 (line 850)
          │↘↘↘│││↘↘││││  0x00007f8da3282c11:   mov    0x10(%rbx),%esi              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │   │││  ││││                                                            ; - java.util.AbstractMap$SimpleImmutableEntry::getValue@1 (line 807)
          │   │││  ││││                                                            ; - java.util.AbstractMap$SimpleImmutableEntry::equals@33 (line 851)
   0.02%  │   │││  ││││  0x00007f8da3282c14:   mov    0x10(%r11),%edx
          │   │││  ││││  0x00007f8da3282c18:   shl    $0x3,%rdx                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │   │││  ││││                                                            ; - java.util.AbstractMap$SimpleImmutableEntry::equals@29 (line 850)
          │   │││  ││││  0x00007f8da3282c1c:   mov    %esi,%r10d
          │   │││  ││││  0x00007f8da3282c1f:   shl    $0x3,%r10                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │   │││  ││││                                                            ; - java.util.AbstractMap$SimpleImmutableEntry::getValue@1 (line 807)
          │   │││  ││││                                                            ; - java.util.AbstractMap$SimpleImmutableEntry::equals@33 (line 851)
          │   │││  ││││  0x00007f8da3282c23:   mov    %rdx,%rsi
          │   │││  ││││  0x00007f8da3282c26:   mov    %r10,%rdx                    ;*invokestatic eq {reexecute=0 rethrow=0 return_oop=0}
          │   │││  ││││                                                            ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
          │   │││  ││││  0x00007f8da3282c29:   xchg   %ax,%ax
   0.00%  │   │││  ││││  0x00007f8da3282c2b:   call   0x00007f8d9b91d320           ; ImmutableOopMap {}
          │   │││  ││││                                                            ;*invokestatic eq {reexecute=0 rethrow=0 return_oop=0}
          │   │││  ││││                                                            ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
          │   │││  ││││                                                            ;   {static_call}
          │   │││  ││││  0x00007f8da3282c30:   nopl   0x6000320(%rax,%rax,1)       ;   {other}
          │   │││  ││││  0x00007f8da3282c38:   test   %eax,%eax
          │   │││  ││││  0x00007f8da3282c3a:   je     0x00007f8da3282c84           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │   │││  ││││                                                            ; - java.util.AbstractMap$SimpleImmutableEntry::equals@41 (line 851)
   0.00%  │   │││  ││││  0x00007f8da3282c40:   mov    $0x1,%eax
          │   │││  ╰│││  0x00007f8da3282c45:   jmp    0x00007f8da3282bed           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │   │││   │││                                                            ; - java.util.AbstractMap$SimpleImmutableEntry::equals@49 (line 849)
          │   ↘││   │││  0x00007f8da3282c47:   mov    $0x0,%eax
          │    ││   ╰││  0x00007f8da3282c4c:   jmp    0x00007f8da3282bed
          │    ↘│    ││  0x00007f8da3282c4e:   mov    $0x0,%eax
          │     │    ╰│  0x00007f8da3282c53:   jmp    0x00007f8da3282bed
   0.02%  │     ↘     │  0x00007f8da3282c55:   mov    $0x0,%eax
   0.01%  │           ╰  0x00007f8da3282c5a:   jmp    0x00007f8da3282bed           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                        ; - java.lang.String::equals@0 (line 1858)
          │                                                                        ; - java.util.Objects::equals@11 (line 64)
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
          │                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
          │                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
          ↘              0x00007f8da3282c5c:   mov    $0xa14,%r8
                         0x00007f8da3282c63:   mov    $0xffffffcd,%r10d
                         0x00007f8da3282c69:   mov    %r10d,0x484(%r15)            ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.AbstractMap::eq@1 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
....................................................................................................
  17.32%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.HashMap::computeIfAbsent, version 5, compile id 1393 

                 --------------------------------------------------------------------------------
                 [Entry Point]
                   # {method} {0x00007f8d2708e678} &apos;computeIfAbsent&apos; &apos;(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;&apos; in &apos;java/util/HashMap&apos;
                   # this:     rsi:rsi   = &apos;java/util/HashMap&apos;
                   # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                   # parm1:    rcx:rcx   = &apos;java/util/function/Function&apos;
                   #           [sp+0x80]  (sp of caller)
                   0x00007f8da3277540:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                   0x00007f8da3277544:   movabs $0x7f8d27000000,%r12
                   0x00007f8da327754e:   add    %r12,%r10
   0.00%           0x00007f8da3277551:   xor    %r12,%r12
   0.01%           0x00007f8da3277554:   cmp    %r10,%rax
                   0x00007f8da3277557:   jne    0x00007f8da2c2f080           ;   {runtime_call ic_miss_stub}
                   0x00007f8da327755d:   data16 xchg %ax,%ax
                 [Verified Entry Point]
   0.02%           0x00007f8da3277560:   mov    %eax,-0x14000(%rsp)
   0.04%           0x00007f8da3277567:   sub    $0x78,%rsp
   0.01%           0x00007f8da327756b:   nop
   0.01%           0x00007f8da327756c:   cmpl   $0x1,0x20(%r15)
   0.01%           0x00007f8da3277574:   jne    0x00007f8da3277f57
   0.03%           0x00007f8da327757a:   mov    %rbp,0x70(%rsp)
   0.02%           0x00007f8da327757f:   mov    %rsi,0x40(%rsp)
   0.02%           0x00007f8da3277584:   mov    %rdx,0x38(%rsp)
   0.02%           0x00007f8da3277589:   mov    %rcx,0x30(%rsp)              ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                             ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.HashMap::computeIfAbsent@0 (line 1197)
   0.02%           0x00007f8da327758e:   mov    0x8(%rcx),%r10d              ; implicit exception: dispatches to 0x00007f8da3277f8f
                                                                             ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                             ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.HashMap::computeIfAbsent@0 (line 1197)
   0.01%           0x00007f8da3277592:   mov    0x8(%rdx),%ebx               ; implicit exception: dispatches to 0x00007f8da3277fb2
   0.01%           0x00007f8da3277595:   movabs $0x7f8d27000000,%rax
   0.01%           0x00007f8da327759f:   lea    (%rax,%rbx,1),%rbx
   0.04%           0x00007f8da32775a3:   mov    %rbx,0x60(%rsp)
   0.01%           0x00007f8da32775a8:   mov    0x1e0(%rbx),%rax
   0.01%           0x00007f8da32775af:   mov    0x40(%rax),%r11
   0.09%           0x00007f8da32775b3:   mov    %rdx,%rsi
   0.02%           0x00007f8da32775b6:   mov    %rax,%rbx
   0.00%           0x00007f8da32775b9:   mov    %r11,%rax                    ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::hash@9 (line 338)
                                                                             ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.02%           0x00007f8da32775bc:   mov    %r10d,0x5c(%rsp)
   0.01%           0x00007f8da32775c1:   call   *%rax                        ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop }
                                                                             ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::hash@9 (line 338)
                                                                             ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.01%           0x00007f8da32775c3:   nopl   0x0(%rax,%rax,1)
   0.00%           0x00007f8da32775cb:   mov    0x40(%rsp),%rsi
   0.06%           0x00007f8da32775d0:   mov    0x1c(%rsi),%edx              ;*getfield threshold {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@31 (line 1204)
   0.02%           0x00007f8da32775d3:   mov    %eax,%ebx
   0.00%           0x00007f8da32775d5:   shr    $0x10,%ebx                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::hash@17 (line 338)
                                                                             ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.00%           0x00007f8da32775d8:   mov    %eax,%r10d
   0.03%           0x00007f8da32775db:   xor    %ebx,%r10d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::hash@18 (line 338)
                                                                             ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.01%           0x00007f8da32775de:   mov    %r10d,0x58(%rsp)
   0.01%           0x00007f8da32775e3:   cmp    0x14(%rsi),%edx
                   0x00007f8da32775e6:   jl     0x00007f8da3277c5f           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@34 (line 1204)
   0.01%           0x00007f8da32775ec:   mov    0x24(%rsi),%edx              ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
   0.06%           0x00007f8da32775ef:   test   %edx,%edx
                   0x00007f8da32775f1:   je     0x00007f8da3277c5f           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@44 (line 1204)
   0.01%           0x00007f8da32775f7:   mov    0xc(,%rdx,8),%ebx            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@49 (line 1204)
   0.42%           0x00007f8da32775fe:   xchg   %ax,%ax
   0.00%           0x00007f8da3277600:   test   %ebx,%ebx
                   0x00007f8da3277602:   je     0x00007f8da3277efd           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@53 (line 1204)
   0.05%           0x00007f8da3277608:   shl    $0x3,%rdx                    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
                   0x00007f8da327760c:   mov    %rdx,0x28(%rsp)
   0.00%           0x00007f8da3277611:   mov    0xc(%rdx),%eax               ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   0.02%           0x00007f8da3277614:   mov    0x8(%rdx),%r11d              ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@289 (line 1240)
   0.09%           0x00007f8da3277618:   mov    %r11d,0x54(%rsp)
   0.06%           0x00007f8da327761d:   mov    %ebx,%r8d
   0.00%           0x00007f8da3277620:   dec    %r8d                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@71 (line 1207)
   0.00%           0x00007f8da3277623:   and    %r10d,%r8d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@73 (line 1207)
   0.01%           0x00007f8da3277626:   mov    %r8d,0x50(%rsp)
   0.04%           0x00007f8da327762b:   cmp    %r8d,%eax
                   0x00007f8da327762e:   jbe    0x00007f8da3277eb6
                   0x00007f8da3277634:   mov    0x10(%rdx,%r8,4),%r9d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   5.71%           0x00007f8da3277639:   mov    %r9d,0x24(%rsp)
   0.09%           0x00007f8da327763e:   mov    0x8(%rsi),%ecx               ;*invokevirtual afterNodeAccess {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@188 (line 1223)
                   0x00007f8da3277641:   mov    %r9d,%edi
   0.00%           0x00007f8da3277644:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
                   0x00007f8da3277648:   test   %r9d,%r9d
          ╭        0x00007f8da327764b:   je     0x00007f8da3277901           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@81 (line 1207)
   0.11%  │        0x00007f8da3277651:   data16 data16 nopw 0x0(%rax,%rax,1) ;   {no_reloc}
          │        0x00007f8da327765c:   data16 data16 xchg %ax,%ax
          │        0x00007f8da3277660:   cmpl   $0x1a7c50,0x8(,%r9,8)        ;   {metadata(&apos;java/util/HashMap$TreeNode&apos;)}
   7.39%  │        0x00007f8da327766c:   je     0x00007f8da3277d4f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@169 (line 1222)
   0.04%  │        0x00007f8da3277672:   cmp    0xc(,%r9,8),%r10d
          │        0x00007f8da327767a:   je     0x00007f8da3277a3b           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@120 (line 1213)
   0.03%  │        0x00007f8da3277680:   mov    %rdi,0x18(%rsp)
   0.03%  │        0x00007f8da3277685:   mov    %ecx,0x4c(%rsp)              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@155 (line 1218)
   0.01%  │        0x00007f8da3277689:   mov    0x18(,%r9,8),%esi            ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.09%  │        0x00007f8da3277691:   test   %esi,%esi
          │        0x00007f8da3277693:   jne    0x00007f8da3277974           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
   0.04%  │        0x00007f8da3277699:   mov    $0x0,%rsi
   0.02%  │        0x00007f8da32776a0:   mov    $0x0,%r10
   0.01%  │        0x00007f8da32776a7:   mov    $0x1,%edx                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@169 (line 1222)
   0.01%  │        0x00007f8da32776ac:   test   %rsi,%rsi
          │        0x00007f8da32776af:   jne    0x00007f8da3277ae5           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@171 (line 1222)
   0.01%  │        0x00007f8da32776b5:   mov    %r10,%r11
   0.02%  │        0x00007f8da32776b8:   mov    %edx,%r10d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@194 (line 1227)
   0.01%  │     ↗  0x00007f8da32776bb:   mov    %r11,0x10(%rsp)
   0.04%  │     │  0x00007f8da32776c0:   cmpl   $0x103d5b0,0x5c(%rsp)        ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f8d2803d5b0&apos;)}
   0.01%  │     │  0x00007f8da32776c8:   jne    0x00007f8da3277e85           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - java.util.HashMap::computeIfAbsent@202 (line 1228)
   0.02%  │     │  0x00007f8da32776ce:   mov    0x30(%rsp),%rcx
   0.01%  │     │  0x00007f8da32776d3:   mov    0xc(%rcx),%eax               ; ImmutableOopMap {rcx=Oop r11=Oop [16]=Oop [24]=Oop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop [64]=Oop }
          │     │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │     │                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@194 (line 1227)
   0.07%  │     │  0x00007f8da32776d6:   mov    0x8(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007f8da3277fd5
   0.13%  │     │  0x00007f8da32776dd:   movabs $0x7f8d27000000,%rsi
   0.01%  │     │  0x00007f8da32776e7:   lea    (%rsi,%rax,1),%rax
   0.04%  │     │  0x00007f8da32776eb:   cmp    -0x1d2(%rip),%rax        # 0x00007f8da3277520
          │     │                                                            ;   {section_word}
   0.04%  │╭    │  0x00007f8da32776f2:   je     0x00007f8da327770b
          ││    │  0x00007f8da32776f8:   cmp    -0x1d7(%rip),%rax        # 0x00007f8da3277528
          ││    │                                                            ;   {section_word}
          ││    │  0x00007f8da32776ff:   nop
          ││    │  0x00007f8da3277700:   je     0x00007f8da3277cc7
          ││    │  0x00007f8da3277706:   jmp    0x00007f8da3277ead
   0.03%  │↘    │  0x00007f8da327770b:   mov    0x1b8(%r15),%rax
   0.01%  │     │  0x00007f8da3277712:   lea    0x18(%rax),%rsi
   0.00%  │     │  0x00007f8da3277716:   data16 nopw 0x0(%rax,%rax,1)
   0.01%  │     │  0x00007f8da3277720:   cmp    0x1c8(%r15),%rsi
          │     │  0x00007f8da3277727:   ja     0x00007f8da3277bd2
   0.02%  │     │  0x00007f8da327772d:   mov    %rsi,0x1b8(%r15)
   0.01%  │     │  0x00007f8da3277734:   prefetchw 0xd8(%rax)
   0.01%  │     │  0x00007f8da327773b:   prefetchw 0x118(%rax)
   0.01%  │     │  0x00007f8da3277742:   prefetchw 0x158(%rax)
   0.03%  │     │  0x00007f8da3277749:   prefetchw 0x198(%rax)
   0.01%  │     │  0x00007f8da3277750:   movq   $0x1,(%rax)
   0.00%  │     │  0x00007f8da3277757:   movl   $0x2a80,0x8(%rax)            ;   {metadata({type array long})}
   0.01%  │     │  0x00007f8da327775e:   movl   $0x1,0xc(%rax)
   0.03%  │     │  0x00007f8da3277765:   movq   $0x0,0x10(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - java.util.stream.Collectors::lambda$summingLong$22@1 (line 661)
          │     │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f8d2803bfb0::get@0
          │     │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$52@1 (line 1106)
          │     │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f8d2803d5b0::apply@5
          │     │                                                            ; - java.util.HashMap::computeIfAbsent@202 (line 1228)
   0.01%  │     │  0x00007f8da327776d:   mov    0x40(%rsp),%rsi
   0.01%  │     │  0x00007f8da3277772:   mov    0x18(%rsi),%r8d              ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - java.util.HashMap::computeIfAbsent@195 (line 1227)
   0.00%  │     │  0x00007f8da3277776:   data16 nopw 0x0(%rax,%rax,1)
   0.04%  │     │  0x00007f8da3277780:   cmpl   $0x8da40,0x4c(%rsp)          ;   {metadata(&apos;java/util/HashMap&apos;)}
   0.01%  │     │  0x00007f8da3277788:   jne    0x00007f8da3277e19           ;*invokevirtual afterNodeInsertion {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - java.util.HashMap::computeIfAbsent@324 (line 1246)
   0.01%  │     │  0x00007f8da327778e:   test   %r11,%r11
          │     │  0x00007f8da3277791:   jne    0x00007f8da3277d86           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - java.util.HashMap::computeIfAbsent@256 (line 1237)
   0.01%  │     │  0x00007f8da3277797:   mov    0x1b8(%r15),%rdx
   0.02%  │     │  0x00007f8da327779e:   lea    0x20(%rdx),%r9
   0.01%  │     │  0x00007f8da32777a2:   movabs $0x7f8d271a7790,%rbx         ;   {metadata(&apos;java/util/HashMap$Node&apos;)}
   0.01%  │     │  0x00007f8da32777ac:   cmp    0x1c8(%r15),%r9
          │     │  0x00007f8da32777b3:   ja     0x00007f8da3277b7d
   0.01%  │     │  0x00007f8da32777b9:   mov    %r9,0x1b8(%r15)
   0.03%  │     │  0x00007f8da32777c0:   prefetchw 0xe0(%rdx)
   0.01%  │     │  0x00007f8da32777c7:   movq   $0x1,(%rdx)
   0.01%  │     │  0x00007f8da32777ce:   movl   $0x1a7790,0x8(%rdx)          ;   {metadata(&apos;java/util/HashMap$Node&apos;)}
   0.00%  │     │  0x00007f8da32777d5:   movl   $0x0,0xc(%rdx)
   0.03%  │     │  0x00007f8da32777dc:   movq   $0x0,0x10(%rdx)
   0.01%  │     │  0x00007f8da32777e4:   movq   $0x0,0x18(%rdx)
   0.02%  │     │  0x00007f8da32777ec:   mov    0x24(%rsp),%r9d
   0.01%  │     │  0x00007f8da32777f1:   mov    0x54(%rsp),%r13d
   0.02%  │     │  0x00007f8da32777f6:   mov    0x58(%rsp),%ebp
   0.01%  │     │  0x00007f8da32777fa:   mov    0x38(%rsp),%rdi
   0.01%  │     │  0x00007f8da32777ff:   mov    %r9d,0x18(%rdx)
   0.02%  │     │  0x00007f8da3277803:   mov    %rax,%r9
   0.02%  │     │  0x00007f8da3277806:   shr    $0x3,%r9
   0.01%  │     │  0x00007f8da327780a:   mov    %r9d,0x14(%rdx)
   0.01%  │     │  0x00007f8da327780e:   mov    %rdi,%r9
   0.01%  │     │  0x00007f8da3277811:   shr    $0x3,%r9
   0.01%  │     │  0x00007f8da3277815:   mov    %r9d,0x10(%rdx)
   0.01%  │     │  0x00007f8da3277819:   mov    %ebp,0xc(%rdx)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - java.util.HashMap::newNode@0 (line 1909)
          │     │                                                            ; - java.util.HashMap::computeIfAbsent@286 (line 1240)
   0.02%  │     │  0x00007f8da327781c:   movabs $0x7f8d27000000,%r9
   0.01%  │     │  0x00007f8da3277826:   lea    (%r9,%r13,1),%r13
   0.02%  │     │  0x00007f8da327782a:   mov    0xd0(%r13),%r9
   0.03%  │     │  0x00007f8da3277831:   mov    0x14(%r9),%r13d
   0.05%  │     │  0x00007f8da3277835:   movslq %r13d,%r14
   0.03%  │     │  0x00007f8da3277838:   nopl   0x0(%rax,%rax,1)
   0.01%  │     │  0x00007f8da3277840:   cmp    (%rbx,%r14,1),%r9
          │ ╭   │  0x00007f8da3277844:   je     0x00007f8da327785d
          │ │   │  0x00007f8da327784a:   cmp    $0x20,%r13d
          │ │   │  0x00007f8da327784e:   jne    0x00007f8da3277ede
          │ │   │  0x00007f8da3277854:   cmp    %r9,%rbx
          │ │╭  │  0x00007f8da3277857:   jne    0x00007f8da327791c
   0.17%  │ ↘│  │  0x00007f8da327785d:   data16 xchg %ax,%ax
   0.00%  │  │  │  0x00007f8da3277860:   cmpb   $0x0,0x40(%r15)
   0.00%  │  │  │  0x00007f8da3277865:   jne    0x00007f8da3277a95
   0.00%  │  │  │  0x00007f8da327786b:   mov    %rax,%r13
   0.04%  │  │  │  0x00007f8da327786e:   mov    0x50(%rsp),%r11d
   0.01%  │  │  │  0x00007f8da3277873:   mov    0x28(%rsp),%r14
   0.00%  │  │  │  0x00007f8da3277878:   mov    %rsi,%rbx
   0.01%  │  │  │  0x00007f8da327787b:   mov    %rdx,%rsi
   0.04%  │  │  │  0x00007f8da327787e:   shr    $0x3,%rsi
   0.01%  │  │  │  0x00007f8da3277882:   mov    %esi,0x10(%r14,%r11,4)
   0.00%  │  │  │  0x00007f8da3277887:   lea    0x10(%r14,%r11,4),%rsi
   0.00%  │  │  │  0x00007f8da327788c:   xor    %rdx,%rsi
   0.02%  │  │  │  0x00007f8da327788f:   test   $0xffffffffffe00000,%rsi
          │  │╭ │  0x00007f8da3277896:   je     0x00007f8da32778cb
   0.01%  │  ││ │  0x00007f8da327789c:   nopl   0x0(%rax)
   0.00%  │  ││ │  0x00007f8da32778a0:   test   %rdx,%rdx
          │  ││╭│  0x00007f8da32778a3:   je     0x00007f8da32778cb
   0.01%  │  ││││  0x00007f8da32778a9:   lea    0x10(%r14,%r11,4),%rsi
   0.02%  │  ││││  0x00007f8da32778ae:   shr    $0x9,%rsi
   0.01%  │  ││││  0x00007f8da32778b2:   movabs $0x7f8d96833000,%r11
   0.01%  │  ││││  0x00007f8da32778bc:   nopl   0x0(%rax)
   0.01%  │  ││││  0x00007f8da32778c0:   cmpb   $0x2,(%rsi,%r11,1)
   0.06%  │  ││││  0x00007f8da32778c5:   jne    0x00007f8da3277b3d           ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││││                                                            ; - java.util.HashMap::computeIfAbsent@289 (line 1240)
   0.00%  │  │↘↘│  0x00007f8da32778cb:   cmp    $0x7,%r10d
          │  │  │  0x00007f8da32778cf:   jge    0x00007f8da3277c92           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │  │  │                                                            ; - java.util.HashMap::computeIfAbsent@294 (line 1241)
          │  │  │                                                            ;   {no_reloc}
   0.01%  │  │  │  0x00007f8da32778d5:   mov    0x40(%rsp),%rsi
   0.02%  │  │  │  0x00007f8da32778da:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │  │                                                            ; - java.util.HashMap::computeIfAbsent@308 (line 1244)
   0.01%  │  │  │  0x00007f8da32778dd:   mov    %r8d,0x18(%rsi)              ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
          │  │  │                                                            ; - java.util.HashMap::computeIfAbsent@309 (line 1244)
   0.01%  │  │  │  0x00007f8da32778e1:   incl   0x14(%rsi)                   ;*putfield size {reexecute=0 rethrow=0 return_oop=0}
          │  │  │                                                            ; - java.util.HashMap::computeIfAbsent@319 (line 1245)
   0.04%  │  │  │  0x00007f8da32778e4:   mov    %r13,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │  │  │                                                            ; - java.util.HashMap::computeIfAbsent@329 (line 1247)
   0.01%  │  │  │  0x00007f8da32778e7:   mov    0x70(%rsp),%rbp
   0.00%  │  │  │  0x00007f8da32778ec:   add    $0x78,%rsp
   0.02%  │  │  │  0x00007f8da32778f0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  │  │  0x00007f8da32778f7:   ja     0x00007f8da3277f67
   0.01%  │  │  │  0x00007f8da32778fd:   vzeroupper 
   0.04%  │  │  │  0x00007f8da3277900:   ret                                 ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │  │  │                                                            ; - java.util.HashMap::computeIfAbsent@81 (line 1207)
   0.13%  ↘  │  │  0x00007f8da3277901:   mov    %rdi,0x18(%rsp)
   0.15%     │  │  0x00007f8da3277906:   mov    %ecx,0x4c(%rsp)
   0.05%     │  │  0x00007f8da327790a:   mov    $0x0,%r11
             │  │  0x00007f8da3277911:   mov    $0x0,%r10d
   0.00%     │  ╰  0x00007f8da3277917:   jmp    0x00007f8da32776bb           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - java.util.HashMap::computeIfAbsent@194 (line 1227)
             ↘     0x00007f8da327791c:   movabs $0x7f8d27863d10,%r13
                   0x00007f8da3277926:   mov    $0x0,%r14d
                   0x00007f8da327792c:   jmp    0x00007f8da327795f
                   0x00007f8da3277931:   data16 data16 nopw 0x0(%rax,%rax,1)
                   0x00007f8da327793c:   data16 data16 xchg %ax,%ax
                   0x00007f8da3277940:   mov    %r14d,%r11d
                   0x00007f8da3277943:   shl    $0x3,%r11d
                   0x00007f8da3277947:   lea    0x8(%r11),%r11d
                   0x00007f8da327794b:   movslq %r11d,%r11
....................................................................................................
  16.98%  <total for region 2>

....[Hottest Regions]...............................................................................
  17.32%      jvmci, level 4  java.util.AbstractMap$SimpleImmutableEntry::equals, version 3, compile id 1409 
  16.98%      jvmci, level 4  java.util.HashMap::computeIfAbsent, version 5, compile id 1393 
   9.28%      jvmci, level 4  java.util.HashMap::resize, version 3, compile id 1327 
   6.55%      jvmci, level 4  java.util.HashMap::replaceAll, version 5, compile id 1507 
   3.95%      jvmci, level 4  java.util.stream.ReduceOps$2ReducingSink::accept, version 9, compile id 1514 
   3.20%      jvmci, level 4  java.util.ArrayList::add, version 3, compile id 1283 
   3.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator$$Lambda.0x00007f8d28085cf8::accept, version 3, compile id 1348 
   2.49%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator::tryAdvance, version 3, compile id 1355 
   2.00%      jvmci, level 4  java.util.AbstractMap$SimpleImmutableEntry::hashCode, version 3, compile id 1378 
   1.84%      jvmci, level 4  java.util.HashMap::computeIfAbsent, version 5, compile id 1393 
   1.63%      jvmci, level 4  java.util.stream.ReduceOps$2ReducingSink::accept, version 9, compile id 1514 
   1.44%      jvmci, level 4  java.util.stream.SpinedBuffer$1Splitr::forEachRemaining, version 3, compile id 1395 
   1.41%      jvmci, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 4, compile id 1510 
   1.24%                      <unknown> 
   1.17%                      <unknown> 
   1.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator::fillBuilder, version 3, compile id 1390 
   0.97%                      <unknown> 
   0.92%      jvmci, level 4  java.util.AbstractMap$SimpleImmutableEntry::hashCode, version 3, compile id 1378 
   0.82%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator::tryAdvance, version 3, compile id 1355 
   0.79%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator::fillBuilder, version 3, compile id 1390 
  21.80%  <...other 897 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  18.92%      jvmci, level 4  java.util.HashMap::computeIfAbsent, version 5, compile id 1393 
  17.32%      jvmci, level 4  java.util.AbstractMap$SimpleImmutableEntry::equals, version 3, compile id 1409 
   9.75%      jvmci, level 4  java.util.HashMap::resize, version 3, compile id 1327 
   7.77%      jvmci, level 4  java.util.HashMap::replaceAll, version 5, compile id 1507 
   5.66%      jvmci, level 4  java.util.stream.ReduceOps$2ReducingSink::accept, version 9, compile id 1514 
   4.88%                      <unknown> 
   4.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator$$Lambda.0x00007f8d28085cf8::accept, version 3, compile id 1348 
   4.29%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator::tryAdvance, version 3, compile id 1355 
   3.59%      jvmci, level 4  java.util.ArrayList::add, version 3, compile id 1283 
   3.44%      jvmci, level 4  java.util.AbstractMap$SimpleImmutableEntry::hashCode, version 3, compile id 1378 
   2.08%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   2.03%              kernel  [unknown] 
   1.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator::fillBuilder, version 3, compile id 1390 
   1.44%      jvmci, level 4  java.util.stream.SpinedBuffer$1Splitr::forEachRemaining, version 3, compile id 1395 
   1.41%      jvmci, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 4, compile id 1510 
   1.28%      jvmci, level 4  java.util.HashMap$TreeNode::find, version 3, compile id 1459 
   1.16%      jvmci, level 4  java.util.stream.AbstractPipeline::wrapAndCopyInto, version 8, compile id 1631 
   0.99%      jvmci, level 4  java.util.stream.ReduceOps$3ReducingSink::begin, version 6, compile id 1632 
   0.98%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 5, compile id 1542 
   0.82%      jvmci, level 4  java.util.stream.ReduceOps$3ReducingSink::accept, version 6, compile id 1630 
   5.78%  <...other 190 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.93%      jvmci, level 4
   4.88%                    
   3.29%           libjvm.so
   2.03%              kernel
   0.50%    perf-2126997.map
   0.14%        libc-2.31.so
   0.09%          ld-2.31.so
   0.07%         c1, level 1
   0.03%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%         interpreter
   0.01%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.number_of_publications_per_author

# Run progress: 42.86% complete, ETA 00:15:57
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 72.701 ms/op
# Warmup Iteration   2: 62.287 ms/op
# Warmup Iteration   3: 62.003 ms/op
# Warmup Iteration   4: 61.424 ms/op
# Warmup Iteration   5: 61.587 ms/op
Iteration   1: 61.474 ms/op
Iteration   2: 69.186 ms/op
Iteration   3: 69.213 ms/op
Iteration   4: 69.087 ms/op
Iteration   5: 69.081 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.number_of_publications_per_author":
  67.608 ±(99.9%) 13.206 ms/op [Average]
  (min, avg, max) = (61.474, 67.608, 69.213), stdev = 3.430
  CI (99.9%): [54.402, 80.814] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.number_of_publications_per_author:asm":
PrintAssembly processed: 290812 total address lines.
Perf output processed (skipped 62.204 seconds):
 Column 1: cycles (50852 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.HashMap::computeIfAbsent, version 5, compile id 1254 

                   # parm1:    rcx:rcx   = &apos;java/util/function/Function&apos;
                   #           [sp+0x60]  (sp of caller)
                   0x00007f3843267e00:   mov    0x8(%rsi),%r10d
                   0x00007f3843267e04:   movabs $0x7f37c7000000,%r12
                   0x00007f3843267e0e:   add    %r12,%r10
                   0x00007f3843267e11:   xor    %r12,%r12
                   0x00007f3843267e14:   cmp    %r10,%rax
                   0x00007f3843267e17:   jne    0x00007f3842c2f080           ;   {runtime_call ic_miss_stub}
                   0x00007f3843267e1d:   data16 xchg %ax,%ax
                 [Verified Entry Point]
   0.05%           0x00007f3843267e20:   mov    %eax,-0x14000(%rsp)
   0.30%           0x00007f3843267e27:   sub    $0x58,%rsp
   0.04%           0x00007f3843267e2b:   nop
   0.02%           0x00007f3843267e2c:   cmpl   $0x1,0x20(%r15)
   0.11%           0x00007f3843267e34:   jne    0x00007f3843268745
   0.07%           0x00007f3843267e3a:   mov    %rbp,0x50(%rsp)
   0.14%           0x00007f3843267e3f:   mov    %rsi,0x30(%rsp)
   0.04%           0x00007f3843267e44:   mov    %rdx,0x28(%rsp)              ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop [40]=Oop [48]=Oop }
                                                                             ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.HashMap::computeIfAbsent@0 (line 1197)
   0.10%           0x00007f3843267e49:   test   %eax,(%rcx)                  ; implicit exception: dispatches to 0x00007f384326877d
                                                                             ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop [40]=Oop [48]=Oop }
                                                                             ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.HashMap::computeIfAbsent@0 (line 1197)
   0.08%           0x00007f3843267e4b:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f38432687a0
   0.34%           0x00007f3843267e4f:   movabs $0x7f37c7000000,%rbx
   0.03%           0x00007f3843267e59:   lea    (%rbx,%r10,1),%rax           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.13%           0x00007f3843267e5d:   mov    0x1e0(%rax),%rbx
   0.17%           0x00007f3843267e64:   mov    0x40(%rbx),%rax
   0.44%           0x00007f3843267e68:   mov    %rdx,%rsi                    ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::hash@9 (line 338)
                                                                             ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.03%           0x00007f3843267e6b:   mov    %rcx,0x20(%rsp)
   0.03%           0x00007f3843267e70:   mov    %r10d,0x44(%rsp)
   0.06%           0x00007f3843267e75:   call   *%rax                        ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
                                                                             ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::hash@9 (line 338)
                                                                             ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.35%           0x00007f3843267e77:   nopl   0x0(%rax,%rax,1)
   0.11%           0x00007f3843267e7f:   mov    0x30(%rsp),%rsi
   1.33%           0x00007f3843267e84:   mov    0x1c(%rsi),%edx              ;*getfield threshold {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@31 (line 1204)
   1.03%           0x00007f3843267e87:   mov    %eax,%ecx
   0.01%           0x00007f3843267e89:   shr    $0x10,%ecx                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::hash@17 (line 338)
                                                                             ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.00%           0x00007f3843267e8c:   xor    %ecx,%eax                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::hash@18 (line 338)
                                                                             ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.00%           0x00007f3843267e8e:   cmp    0x14(%rsi),%edx
                   0x00007f3843267e91:   jl     0x00007f384326849e           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@34 (line 1204)
   0.26%           0x00007f3843267e97:   mov    0x24(%rsi),%edx              ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
   0.26%           0x00007f3843267e9a:   nopw   0x0(%rax,%rax,1)
                   0x00007f3843267ea0:   test   %edx,%edx
                   0x00007f3843267ea2:   je     0x00007f384326849e           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@44 (line 1204)
   0.26%           0x00007f3843267ea8:   mov    0xc(,%rdx,8),%ecx            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@49 (line 1204)
   1.11%           0x00007f3843267eaf:   test   %ecx,%ecx
                   0x00007f3843267eb1:   je     0x00007f384326849e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@53 (line 1204)
   0.26%           0x00007f3843267eb7:   shl    $0x3,%rdx                    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
                   0x00007f3843267ebb:   mov    %ecx,%r8d
                   0x00007f3843267ebe:   dec    %r8d                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@71 (line 1207)
   0.03%           0x00007f3843267ec1:   and    %eax,%r8d                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@73 (line 1207)
   0.25%           0x00007f3843267ec4:   cmp    0xc(%rdx),%r8d
                   0x00007f3843267ec8:   jae    0x00007f384326858d
   0.29%           0x00007f3843267ece:   mov    0x10(%rdx,%r8,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   2.41%           0x00007f3843267ed3:   mov    0x8(%rsi),%ebx               ;*invokevirtual afterNodeAccess {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@188 (line 1223)
   0.01%           0x00007f3843267ed6:   mov    %r11d,%ebp
                   0x00007f3843267ed9:   shl    $0x3,%rbp
   0.25%           0x00007f3843267edd:   mov    %rbp,0x18(%rsp)
   0.51%           0x00007f3843267ee2:   test   %r11d,%r11d
                   0x00007f3843267ee5:   je     0x00007f38432683af
   0.01%           0x00007f3843267eeb:   cmpl   $0x1a7c50,0x8(,%r11,8)       ;   {metadata(&apos;java/util/HashMap$TreeNode&apos;)}
   6.86%           0x00007f3843267ef7:   je     0x00007f38432685c4           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   0.28%           0x00007f3843267efd:   data16 xchg %ax,%ax
   0.01%           0x00007f3843267f00:   cmp    0xc(,%r11,8),%eax
          ╭        0x00007f3843267f08:   jne    0x00007f3843268057           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@120 (line 1213)
   1.00%  │        0x00007f3843267f0e:   mov    0x10(,%r11,8),%r9d
   0.30%  │        0x00007f3843267f16:   mov    %r9d,%r10d
   0.00%  │        0x00007f3843267f19:   shl    $0x3,%r10                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
   0.04%  │        0x00007f3843267f1d:   data16 xchg %ax,%ax
   0.13%  │        0x00007f3843267f20:   cmp    0x28(%rsp),%r10
          │        0x00007f3843267f25:   je     0x00007f38432686b3
   0.05%  │        0x00007f3843267f2b:   cmpl   $0x102b2c0,0x44(%rsp)        ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
   0.01%  │        0x00007f3843267f33:   jne    0x00007f3843268721           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.02%  │        0x00007f3843267f39:   nopl   0x0(%rax)                    ; ImmutableOopMap {rdx=Oop rbp=Oop rsi=Oop r9=NarrowOop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          │                                                                  ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │                                                                  ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.13%  │        0x00007f3843267f40:   cmpl   $0x102b2c0,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f38432687c3
          │                                                                  ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
   4.90%  │        0x00007f3843267f4c:   jne    0x00007f3843268621           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
          │                                                                  ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.15%  │        0x00007f3843267f52:   mov    0x28(%rsp),%r13
   0.01%  │        0x00007f3843267f57:   mov    0xc(%r13),%r10d              ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@30 (line 48)
          │                                                                  ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
          │        0x00007f3843267f5b:   mov    0xc(,%r9,8),%r9d             ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@34 (line 48)
          │                                                                  ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.34%  │        0x00007f3843267f63:   cmp    %r10d,%r9d
          │╭       0x00007f3843267f66:   je     0x00007f384326818f           ; ImmutableOopMap {rdx=Oop rbp=Oop rsi=Oop r9=NarrowOop r10=NarrowOop r13=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          ││                                                                 ;*aload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                 ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.20%  ││       0x00007f3843267f6c:   movsbl 0x10(,%r10,8),%edi           ; implicit exception: dispatches to 0x00007f38432687e6
   0.01%  ││       0x00007f3843267f75:   mov    0x14(,%r10,8),%r11d          ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.lang.String::equals@0 (line 1858)
          ││                                                                 ; - java.util.Objects::equals@11 (line 64)
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
          ││                                                                 ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
          ││       0x00007f3843267f7d:   data16 xchg %ax,%ax
   0.01%  ││       0x00007f3843267f80:   cmp    %r10d,%r9d
          ││╭      0x00007f3843267f83:   je     0x00007f38432681a9           ; ImmutableOopMap {rdx=Oop rbp=Oop rsi=Oop r9=NarrowOop r11=NarrowOop r13=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          │││                                                                ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││                                                                ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.16%  │││      0x00007f3843267f89:   movsbl 0x10(,%r9,8),%r10d           ; implicit exception: dispatches to 0x00007f384326880d
   1.54%  │││      0x00007f3843267f92:   mov    0x14(,%r9,8),%r9d            ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - java.lang.String::equals@0 (line 1858)
          │││                                                                ; - java.util.Objects::equals@11 (line 64)
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
          │││                                                                ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.32%  │││      0x00007f3843267f9a:   nopw   0x0(%rax,%rax,1)
          │││      0x00007f3843267fa0:   cmp    %dil,%r10b
          │││      0x00007f3843267fa3:   jne    0x00007f384326868d           ; ImmutableOopMap {rdx=Oop rbp=Oop rsi=Oop r9=NarrowOop r11=NarrowOop r13=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          │││                                                                ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││                                                                ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.14%  │││      0x00007f3843267fa9:   mov    0xc(,%r9,8),%r10d            ; implicit exception: dispatches to 0x00007f3843268830
          │││                                                                ; ImmutableOopMap {rdx=Oop rbp=Oop rsi=Oop r9=NarrowOop r11=NarrowOop r13=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          │││                                                                ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││                                                                ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   1.43%  │││      0x00007f3843267fb1:   mov    0xc(,%r11,8),%edi            ; implicit exception: dispatches to 0x00007f3843268853
   0.01%  │││      0x00007f3843267fb9:   nopl   0x0(%rax)
          │││      0x00007f3843267fc0:   cmp    %r10d,%edi
          │││      0x00007f3843267fc3:   jne    0x00007f38432685d7
   0.18%  │││      0x00007f3843267fc9:   test   %r10d,%r10d
          │││      0x00007f3843267fcc:   je     0x00007f38432681c5
   0.18%  │││      0x00007f3843267fd2:   mov    %r8d,0x38(%rsp)
          │││      0x00007f3843267fd7:   mov    %rdx,0x10(%rsp)
          │││      0x00007f3843267fdc:   shl    $0x3,%r9
   0.01%  │││      0x00007f3843267fe0:   shl    $0x3,%r11
   0.14%  │││      0x00007f3843267fe4:   mov    %r9,%rsi
          │││      0x00007f3843267fe7:   mov    $0x10,%rdx
          │││      0x00007f3843267fee:   mov    %r11,%rcx
   0.01%  │││      0x00007f3843267ff1:   mov    $0x10,%r8
   0.14%  │││      0x00007f3843267ff8:   mov    %edi,%r9d                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - java.lang.String::equals@0 (line 1858)
          │││                                                                ; - java.util.Objects::equals@11 (line 64)
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
          │││                                                                ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
          │││      0x00007f3843267ffb:   mov    %eax,%r14d
          │││      0x00007f3843267ffe:   xchg   %ax,%ax
   0.00%  │││      0x00007f3843268000:   call   0x00007f3842dbd800           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.19%  │││      0x00007f3843268005:   nop
          │││      0x00007f3843268006:   test   %eax,%eax
          │││      0x00007f3843268008:   je     0x00007f38432685ea           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - java.util.HashMap::computeIfAbsent@145 (line 1214)
          │││      0x00007f384326800e:   mov    %rbp,%r11
          │││      0x00007f3843268011:   mov    $0x0,%eax                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - java.util.HashMap::computeIfAbsent@148 (line 1215)
   0.19%  │││  ↗↗  0x00007f3843268016:   test   %r11,%r11
          │││  ││  0x00007f3843268019:   je     0x00007f38432681eb           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - java.util.HashMap::computeIfAbsent@171 (line 1222)
          │││  ││  0x00007f384326801f:   mov    0x14(%r11),%esi              ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││  ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@169 (line 1222)
          │││  ││  0x00007f3843268023:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
          │││  ││                                                            ; ImmutableOopMap {rsi=NarrowOop r11=Oop r13=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
   0.33%  │││  ││  0x00007f384326802a:   cmp    $0x8da40,%ebx                ;   {metadata(&apos;java/util/HashMap&apos;)}
          │││  ││  0x00007f3843268030:   jne    0x00007f384326850b           ;*invokevirtual afterNodeAccess {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - java.util.HashMap::computeIfAbsent@188 (line 1223)
          │││  ││  0x00007f3843268036:   shl    $0x3,%rsi                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - java.util.HashMap::computeIfAbsent@176 (line 1222)
          │││  ││  0x00007f384326803a:   mov    %rsi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - java.util.HashMap::computeIfAbsent@193 (line 1224)
   0.07%  │││  ││  0x00007f384326803d:   mov    0x50(%rsp),%rbp
   0.16%  │││  ││  0x00007f3843268042:   add    $0x58,%rsp
          │││  ││  0x00007f3843268046:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  ││  0x00007f384326804d:   ja     0x00007f3843268755
   0.10%  │││  ││  0x00007f3843268053:   vzeroupper 
   0.31%  │││  ││  0x00007f3843268056:   ret                                 ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   1.46%  ↘││  ││  0x00007f3843268057:   mov    %r8d,0x38(%rsp)
   0.98%   ││  ││  0x00007f384326805c:   mov    %rdx,0x10(%rsp)
   0.33%   ││  ││  0x00007f3843268061:   mov    %eax,%r14d
           ││  ││  0x00007f3843268064:   mov    0x28(%rsp),%r13
   0.01%   ││  ││  0x00007f3843268069:   mov    0x18(,%r11,8),%esi           ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.11%   ││  ││  0x00007f3843268071:   test   %esi,%esi
           ││  ││  0x00007f3843268073:   je     0x00007f384326839e           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
   0.08%   ││  ││  0x00007f3843268079:   nopl   0x0(%rax)
           ││  ││  0x00007f3843268080:   cmpl   $0x102b2c0,0x44(%rsp)        ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
   0.02%   ││  ││  0x00007f3843268088:   jne    0x00007f38432686c9           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.02%   ││  ││  0x00007f384326808e:   mov    0xc(%r13),%edx               ; ImmutableOopMap {rdx=NarrowOop rsi=NarrowOop r13=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           ││  ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           ││  ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.08%   ││  ││  0x00007f3843268092:   mov    0x14(,%rdx,8),%r9d           ; implicit exception: dispatches to 0x00007f3843268876
   0.23%   ││  ││  0x00007f384326809a:   movsbl 0x10(,%rdx,8),%r10d          ; ImmutableOopMap {rdx=NarrowOop rsi=NarrowOop r9=NarrowOop r13=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           ││  ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           ││  ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.01%   ││  ││  0x00007f38432680a3:   mov    0xc(,%r9,8),%edi             ; implicit exception: dispatches to 0x00007f3843268899
   0.44%   ││  ││  0x00007f38432680ab:   shl    $0x3,%rsi                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.01%   ││  ││  0x00007f38432680af:   mov    $0x1,%eax
           ││╭ ││  0x00007f38432680b4:   jmp    0x00007f38432680e0           ;*aload {reexecute=0 rethrow=0 return_oop=0}
           │││ ││                                                            ; - java.util.HashMap::computeIfAbsent@114 (line 1213)
           │││ ││  0x00007f38432680b9:   nopl   0x0(%rax)                    ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
           │││ ││                                                            ; - java.util.HashMap::computeIfAbsent@116 (line 1213)
   0.11%   │││↗││  0x00007f38432680c0:   mov    0x18(%r11),%esi              ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.19%   ││││││  0x00007f38432680c4:   mov    %eax,%ecx
           ││││││  0x00007f38432680c6:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - java.util.HashMap::computeIfAbsent@155 (line 1218)
           ││││││  0x00007f38432680c8:   test   %esi,%esi
           ││││││  0x00007f38432680ca:   je     0x00007f384326842a           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
   0.02%   ││││││  0x00007f38432680d0:   mov    0x458(%r15),%rbp             ; ImmutableOopMap {rdx=NarrowOop rsi=NarrowOop r9=NarrowOop r11=Oop r13=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           ││││││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           ││││││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
           ││││││  0x00007f38432680d7:   test   %eax,0x0(%rbp)               ;   {poll}
   0.07%   ││││││  0x00007f38432680da:   shl    $0x3,%rsi                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
           ││││││  0x00007f38432680de:   mov    %ecx,%eax                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.01%   ││↘│││  0x00007f38432680e0:   mov    %rsi,%r11                    ; ImmutableOopMap {rdx=NarrowOop r9=NarrowOop r11=Oop r13=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           ││ │││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           ││ │││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.07%   ││ │││  0x00007f38432680e3:   mov    0xc(%r11),%esi               ; implicit exception: dispatches to 0x00007f38432688bc
   2.19%   ││ │││  0x00007f38432680e7:   mov    0x10(%r11),%ecx              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           ││ │││                                                            ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
   0.56%   ││ │││  0x00007f38432680eb:   cmp    %r14d,%esi
           ││ ╰││  0x00007f38432680ee:   jne    0x00007f38432680c0           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@120 (line 1213)
   0.02%   ││  ││  0x00007f38432680f0:   mov    %ecx,%esi
   0.01%   ││  ││  0x00007f38432680f2:   shl    $0x3,%rsi                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
   0.09%   ││  ││  0x00007f38432680f6:   cmp    %r13,%rsi
           ││  ││  0x00007f38432680f9:   je     0x00007f38432686a5           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@132 (line 1213)
   0.08%   ││  ││  0x00007f38432680ff:   nop                                 ; ImmutableOopMap {rcx=NarrowOop rdx=NarrowOop r9=NarrowOop r11=Oop r13=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           ││  ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           ││  ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.01%   ││  ││  0x00007f3843268100:   cmpl   $0x102b2c0,0x8(,%rcx,8)      ; implicit exception: dispatches to 0x00007f38432688df
           ││  ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
   3.18%   ││  ││  0x00007f384326810b:   jne    0x00007f38432685b9           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.11%   ││  ││  0x00007f3843268111:   mov    0xc(,%rcx,8),%esi            ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@34 (line 48)
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.22%   ││  ││  0x00007f3843268118:   cmp    %edx,%esi
           ││  ││  0x00007f384326811a:   je     0x00007f38432681df           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.util.Objects::equals@2 (line 64)
           ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.08%   ││  ││  0x00007f3843268120:   cmp    %edx,%esi
           ││  ││  0x00007f3843268122:   je     0x00007f38432681e3           ; ImmutableOopMap {rsi=NarrowOop r9=NarrowOop r11=Oop r13=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           ││  ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           ││  ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.09%   ││  ││  0x00007f3843268128:   movsbl 0x10(,%rsi,8),%edx           ; implicit exception: dispatches to 0x00007f3843268902
   0.87%   ││  ││  0x00007f3843268130:   mov    0x14(,%rsi,8),%esi           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.lang.String::equals@0 (line 1858)
           ││  ││                                                            ; - java.util.Objects::equals@11 (line 64)
           ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.15%   ││  ││  0x00007f3843268137:   cmp    %r10b,%dl
           ││  ││  0x00007f384326813a:   jne    0x00007f3843268737           ; ImmutableOopMap {rsi=NarrowOop r9=NarrowOop r11=Oop r13=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           ││  ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           ││  ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.04%   ││  ││  0x00007f3843268140:   mov    0xc(,%rsi,8),%edx            ; implicit exception: dispatches to 0x00007f3843268925
   0.82%   ││  ││  0x00007f3843268147:   cmp    %edi,%edx
           ││  ││  0x00007f3843268149:   jne    0x00007f384326866d
   0.10%   ││  ││  0x00007f384326814f:   test   %edx,%edx
           ││  ││  0x00007f3843268151:   je     0x00007f38432681e7
   0.11%   ││  ││  0x00007f3843268157:   mov    %eax,%ebp
           ││  ││  0x00007f3843268159:   shl    $0x3,%rsi
           ││  ││  0x00007f384326815d:   shl    $0x3,%r9
           ││  ││  0x00007f3843268161:   mov    $0x10,%rdx
   0.09%   ││  ││  0x00007f3843268168:   mov    %r9,%rcx
           ││  ││  0x00007f384326816b:   mov    $0x10,%r8                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.lang.String::equals@0 (line 1858)
           ││  ││                                                            ; - java.util.Objects::equals@11 (line 64)
           ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
           ││  ││  0x00007f3843268172:   mov    %edi,%r9d
           ││  ││  0x00007f3843268175:   call   0x00007f3842dbd800           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.12%   ││  ││  0x00007f384326817a:   nop
           ││  ││  0x00007f384326817b:   nopl   0x0(%rax,%rax,1)
           ││  ││  0x00007f3843268180:   test   %eax,%eax
           ││  ││  0x00007f3843268182:   je     0x00007f3843268547           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@145 (line 1214)
           ││  ││  0x00007f3843268188:   mov    %ebp,%eax
   0.09%   ││  ╰│  0x00007f384326818a:   jmp    0x00007f3843268016           ;*aload {reexecute=0 rethrow=0 return_oop=0}
           ││   │                                                            ; - java.util.HashMap::computeIfAbsent@169 (line 1222)
           ↘│   │  0x00007f384326818f:   mov    %rbp,%r11
            │   │  0x00007f3843268192:   mov    %r8d,0x38(%rsp)
            │   │  0x00007f3843268197:   mov    %rdx,0x10(%rsp)
            │   │  0x00007f384326819c:   mov    %eax,%r14d
            │   │  0x00007f384326819f:   mov    $0x0,%eax
            │   ╰  0x00007f38432681a4:   jmp    0x00007f3843268016
            ↘      0x00007f38432681a9:   mov    %rbp,%r11
                   0x00007f38432681ac:   mov    %r8d,0x38(%rsp)
                   0x00007f38432681b1:   mov    %rdx,0x10(%rsp)
....................................................................................................
  44.24%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.stream.Collectors$$Lambda.0x00007f37c803c7f0::accept, version 3, compile id 1312 

              [Disassembly]
              --------------------------------------------------------------------------------
              [Constant Pool (empty)]
              --------------------------------------------------------------------------------
              [Entry Point]
                # {method} {0x00007f37c3317e28} &apos;accept&apos; &apos;(Ljava/lang/Object;Ljava/lang/Object;)V&apos; in &apos;java/util/stream/Collectors$$Lambda+0x00007f37c803c7f0&apos;
                # this:     rsi:rsi   = &apos;java/util/stream/Collectors$$Lambda+0x00007f37c803c7f0&apos;
                # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                # parm1:    rcx:rcx   = &apos;java/lang/Object&apos;
                #           [sp+0x30]  (sp of caller)
   0.01%        0x00007f3843284ac0:   mov    0x8(%rsi),%r10d
   0.03%        0x00007f3843284ac4:   movabs $0x7f37c7000000,%r12
   0.01%        0x00007f3843284ace:   add    %r12,%r10
                0x00007f3843284ad1:   xor    %r12,%r12
   0.02%        0x00007f3843284ad4:   cmp    %r10,%rax
                0x00007f3843284ad7:   jne    0x00007f3842c2f080           ;   {runtime_call ic_miss_stub}
   0.03%        0x00007f3843284add:   data16 xchg %ax,%ax
              [Verified Entry Point]
   1.37%        0x00007f3843284ae0:   mov    %eax,-0x14000(%rsp)
   1.50%        0x00007f3843284ae7:   sub    $0x28,%rsp
   0.06%        0x00007f3843284aeb:   nop
   0.03%        0x00007f3843284aec:   cmpl   $0x1,0x20(%r15)
                0x00007f3843284af4:   jne    0x00007f3843284cf7
   0.18%        0x00007f3843284afa:   mov    %rbp,0x20(%rsp)
   0.05%        0x00007f3843284aff:   mov    %rsi,%r10                    ; ImmutableOopMap {rcx=Oop rdx=Oop r10=Oop }
                                                                          ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@0
   0.03%        0x00007f3843284b02:   test   %eax,(%rcx)                  ; implicit exception: dispatches to 0x00007f3843284d1b
                                                                          ; ImmutableOopMap {rcx=Oop rdx=Oop r10=Oop }
                                                                          ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@0
   7.02%        0x00007f3843284b04:   cmpl   $0x8da40,0x8(%rdx)           ; implicit exception: dispatches to 0x00007f3843284d3e
                                                                          ;   {metadata(&apos;java/util/HashMap&apos;)}
   0.05%        0x00007f3843284b0b:   jne    0x00007f3843284ce5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@13
   0.03%        0x00007f3843284b11:   mov    0xc(%r10),%esi               ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@1
   0.04%        0x00007f3843284b15:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rcx=Oop rdx=Oop r10=Oop }
                                                                          ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@0
   0.17%        0x00007f3843284b20:   cmpl   $0x103b8c8,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007f3843284d61
                                                                          ;   {metadata(&apos;java/util/function/Function$$Lambda+0x00007f37c803b8c8&apos;)}
   0.13%        0x00007f3843284b2b:   jne    0x00007f3843284cee           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                          ; - java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@17
   0.06%        0x00007f3843284b31:   mov    0x14(%r10),%r11d             ;*getfield arg$3 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@9
   0.20%        0x00007f3843284b35:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rcx=Oop rdx=Oop r10=Oop r11=NarrowOop }
                                                                          ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@0
   0.05%        0x00007f3843284b40:   cmpl   $0x103bf30,0x8(,%r11,8)      ; implicit exception: dispatches to 0x00007f3843284d84
                                                                          ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f37c803bf30&apos;)}
   0.09%        0x00007f3843284b4c:   jne    0x00007f3843284caf           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                          ; - java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@17
   0.18%        0x00007f3843284b52:   mov    0x1b8(%r15),%rsi
   0.05%        0x00007f3843284b59:   lea    0x10(%rsi),%r8
   0.03%        0x00007f3843284b5d:   data16 xchg %ax,%ax
   0.03%        0x00007f3843284b60:   cmp    0x1c8(%r15),%r8
          ╭     0x00007f3843284b67:   ja     0x00007f3843284c5a
   0.13%  │     0x00007f3843284b6d:   mov    %r8,0x1b8(%r15)
   0.04%  │     0x00007f3843284b74:   prefetchw 0xd0(%rsi)
   0.05%  │     0x00007f3843284b7b:   movq   $0x1,(%rsi)
   0.03%  │     0x00007f3843284b82:   movl   $0x103cea8,0x8(%rsi)         ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f37c803cea8&apos;)}
   0.18%  │     0x00007f3843284b89:   movl   $0x0,0xc(%rsi)
   0.09%  │     0x00007f3843284b90:   mov    %rsi,%r8                     ;* unwind (locked if synchronized)
          │                                                               ; - jdk.internal.misc.Unsafe::allocateInstance@-3
          │                                                               ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
          │                                                               ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@1
          │                                                               ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
          │                                                               ; - java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@17
   0.04%  │     0x00007f3843284b93:   mov    0x10(%r10),%esi              ;*getfield arg$2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@5
   0.04%  │     0x00007f3843284b97:   mov    %esi,0xc(%r8)                ;* unwind (locked if synchronized)
          │                                                               ; - jdk.internal.misc.Unsafe::allocateInstance@-3
          │                                                               ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
          │                                                               ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@1
          │                                                               ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
          │                                                               ; - java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@17
   0.14%  │     0x00007f3843284b9b:   mov    %r11d,%r10d
   0.08%  │     0x00007f3843284b9e:   shl    $0x3,%r10                    ;*getfield arg$3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@9
   0.03%  │     0x00007f3843284ba2:   mov    %rdx,%rsi
   0.02%  │     0x00007f3843284ba5:   mov    %rcx,%rdx
   0.12%  │     0x00007f3843284ba8:   mov    %rcx,0x10(%rsp)
   0.09%  │     0x00007f3843284bad:   mov    %r8,%rcx                     ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
          │                                                               ; - java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@17
   0.05%  │     0x00007f3843284bb0:   mov    %r10,0x8(%rsp)
   0.04%  │     0x00007f3843284bb5:   mov    %r11d,0x4(%rsp)
   0.13%  │     0x00007f3843284bba:   nop
   0.09%  │     0x00007f3843284bbb:   call   0x00007f3843267e20           ; ImmutableOopMap {[4]=NarrowOop [8]=Oop [16]=Oop }
          │                                                               ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=1}
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
          │                                                               ; - java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@17
          │                                                               ;   {optimized virtual_call}
   0.20%  │     0x00007f3843284bc0:   nopl   0x40002b0(%rax,%rax,1)       ;   {other}
          │     0x00007f3843284bc8:   test   %rax,%rax
          │╭    0x00007f3843284bcb:   je     0x00007f3843284c51
          ││    0x00007f3843284bd1:   mov    0x8(%rax),%esi
   0.13%  ││    0x00007f3843284bd4:   movabs $0x7f37c7000000,%r10
   0.17%  ││    0x00007f3843284bde:   lea    (%r10,%rsi,1),%rsi
   0.00%  ││ ↗  0x00007f3843284be2:   test   %rax,%rax
          ││╭│  0x00007f3843284be5:   je     0x00007f3843284bfe
          ││││  0x00007f3843284beb:   movabs $0x7f37c7002a80,%r10         ;   {metadata({type array long})}
   0.06%  ││││  0x00007f3843284bf5:   cmp    %rsi,%r10
          ││││  0x00007f3843284bf8:   jne    0x00007f3843284c85           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f37c803bf30::accept@5
          ││││                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
          ││││                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@17
   0.16%  ││↘│  0x00007f3843284bfe:   mov    0x4(%rsp),%r11d              ; ImmutableOopMap {rax=Oop r11=NarrowOop [8]=Oop [16]=Oop }
          ││ │                                                            ;*astore {reexecute=1 rethrow=0 return_oop=0}
          ││ │                                                            ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
          ││ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@17
   0.01%  ││ │  0x00007f3843284c03:   mov    0xc(%rax),%esi               ; implicit exception: dispatches to 0x00007f3843284da7
   0.11%  ││ │  0x00007f3843284c06:   mov    0xc(,%r11,8),%r10d           ; ImmutableOopMap {rax=Oop [8]=Oop [16]=Oop }
          ││ │                                                            ;*astore {reexecute=1 rethrow=0 return_oop=0}
          ││ │                                                            ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
          ││ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@17
   0.19%  ││ │  0x00007f3843284c0e:   cmpl   $0x103bb00,0x8(,%r10,8)      ; implicit exception: dispatches to 0x00007f3843284dcd
          ││ │                                                            ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f37c803bb00&apos;)}
   0.06%  ││ │  0x00007f3843284c1a:   jne    0x00007f3843284cdd           ;*invokeinterface applyAsLong {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.stream.Collectors::lambda$summingLong$23@6 (line 662)
          ││ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f37c803bf30::accept@9
          ││ │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
          ││ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@17
   0.12%  ││ │  0x00007f3843284c20:   test   %esi,%esi
          ││ │  0x00007f3843284c22:   je     0x00007f3843284cd5
   0.16%  ││ │  0x00007f3843284c28:   incq   0x10(%rax)                   ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.stream.Collectors::lambda$summingLong$23@12 (line 662)
          ││ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f37c803bf30::accept@9
          ││ │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
          ││ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@17
   0.10%  ││ │  0x00007f3843284c2c:   mov    0x20(%rsp),%rbp
   0.18%  ││ │  0x00007f3843284c31:   add    $0x28,%rsp
          ││ │  0x00007f3843284c35:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││ │  0x00007f3843284c40:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ │  0x00007f3843284c47:   ja     0x00007f3843284d07
   0.09%  ││ │  0x00007f3843284c4d:   vzeroupper 
   0.30%  ││ │  0x00007f3843284c50:   ret    
          │↘ │  0x00007f3843284c51:   mov    $0x0,%rsi
          │  ╰  0x00007f3843284c58:   jmp    0x00007f3843284be2           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.stream.Collectors$$Lambda/0x00007f37c803bf30::accept@5
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
          │                                                               ; - java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@17
          ↘     0x00007f3843284c5a:   mov    %rcx,0x10(%rsp)
                0x00007f3843284c5f:   movabs $0x7f37c803cea8,%rsi         ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f37c803cea8&apos;)}
                0x00007f3843284c69:   call   0x00007f3842db9080           ; ImmutableOopMap {rdx=Oop r10=Oop r11=NarrowOop [16]=Oop }
                                                                          ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f37c803c7f0::accept@0
....................................................................................................
  14.88%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1260 

                     0x00007f384326ea6d:   ret                                 ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
                     0x00007f384326ea6e:   mov    0x64(%rsp),%r11d
                     0x00007f384326ea73:   cmp    $0x226050,%r11d              ;   {metadata(&apos;java/util/stream/ReferencePipeline$7$1&apos;)}
                     0x00007f384326ea7a:   jne    0x00007f384326f190           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                     0x00007f384326ea80:   mov    %r9d,%r11d
                     0x00007f384326ea83:   nopw   0x0(%rax,%rax,1)
                     0x00007f384326ea8c:   data16 data16 xchg %ax,%ax          ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.04%    ↗    ↗   0x00007f384326ea90:   mov    %rsi,%r10
   0.01%    │    │   0x00007f384326ea93:   movabs $0x7f37c802b708,%r14         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
            │    │   0x00007f384326ea9d:   mov    0x40(%rsp),%rbx
   0.13%    │    │   0x00007f384326eaa2:   mov    0x5c(%rsp),%edi
   0.07%    │    │   0x00007f384326eaa6:   mov    0x48(%rsp),%rdx
   0.00%    │    │   0x00007f384326eaab:   test   %r10,%r10
          ╭ │    │   0x00007f384326eaae:   jne    0x00007f384326eaec           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │ │    │                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@124 (line 1712)
          │ │    │   0x00007f384326eab4:   cmp    %r11d,%edi
          │ │    │   0x00007f384326eab7:   jbe    0x00007f384326f093
   0.12%  │ │    │   0x00007f384326eabd:   mov    0x10(%rbx,%r11,4),%esi
   0.46%  │ │    │   0x00007f384326eac2:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │    │                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@133 (line 1713)
   0.06%  │ │    │   0x00007f384326eac6:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │    │                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@130 (line 1713)
   0.00%  │ │   ↗│   0x00007f384326eac9:   test   %rsi,%rsi
          │╭│   ││   0x00007f384326eacc:   jne    0x00007f384326ec9e           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.22%  │││   ││   0x00007f384326ead2:   mov    0x60(%rsp),%r8d
   0.20%  │││   ││   0x00007f384326ead7:   cmp    %r11d,%r8d
          │││   ││   0x00007f384326eada:   jle    0x00007f384326ea3f           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.02%  │││   ││   0x00007f384326eae0:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rsi=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
          │││   ││                                                             ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││   ││                                                             ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
          │││   ││   0x00007f384326eae7:   test   %eax,(%r10)                  ;   {poll}
   0.24%  ││╰   ││   0x00007f384326eaea:   jmp    0x00007f384326ea90           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
          ↘│    ││   0x00007f384326eaec:   mov    0x14(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rbx=Oop r10=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
           │    ││                                                             ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │    ││                                                             ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.09%   │    ││   0x00007f384326eaef:   mov    0x34(,%rsi,8),%esi           ; implicit exception: dispatches to 0x00007f384326f3b3
   0.23%   │    ││   0x00007f384326eaf6:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {rdx=Oop rbx=Oop r10=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
           │    ││                                                             ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │    ││                                                             ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.01%   │    ││   0x00007f384326eb00:   cmpl   $0x102bd28,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007f384326f3d6
           │    ││                                                             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007f37c802bd28&apos;)}
   0.42%   │    ││   0x00007f384326eb0b:   jne    0x00007f384326f2af           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
           │    ││                                                             ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
           │    ││                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.04%   │    ││   0x00007f384326eb11:   mov    0x10(%r10),%esi              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           │    ││                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
   4.28%   │    ││   0x00007f384326eb15:   test   %esi,%esi
           │ ╭  ││   0x00007f384326eb17:   je     0x00007f384326ecb2
   0.03%   │ │  ││   0x00007f384326eb1d:   mov    0x8(,%rsi,8),%r9d
   1.12%   │ │  ││   0x00007f384326eb25:   movabs $0x7f37c7000000,%rcx
   0.02%   │ │  ││   0x00007f384326eb2f:   lea    (%rcx,%r9,1),%r9
   0.03%   │ │  ││↗  0x00007f384326eb33:   test   %esi,%esi
           │ │╭ │││  0x00007f384326eb35:   je     0x00007f384326eb49
           │ ││ │││  0x00007f384326eb3b:   nopl   0x0(%rax,%rax,1)
           │ ││ │││  0x00007f384326eb40:   cmp    %r9,%r14
           │ ││ │││  0x00007f384326eb43:   jne    0x00007f384326f273           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f37c802bd28::apply@1
           │ ││ │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
           │ ││ │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.06%   │ │↘ │││  0x00007f384326eb49:   mov    %r11d,0x64(%rsp)
   0.00%   │ │  │││  0x00007f384326eb4e:   mov    %r10,0x10(%rsp)              ; ImmutableOopMap {rsi=NarrowOop [16]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
           │ │  │││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
           │ │  │││  0x00007f384326eb53:   mov    0x18(,%rsi,8),%r9d           ; implicit exception: dispatches to 0x00007f384326f3f9
           │ │  │││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.61%   │ │  │││  0x00007f384326eb5b:   test   %eax,0x0(,%r9,8)             ; implicit exception: deoptimizes
           │ │  │││                                                            ; ImmutableOopMap {rsi=NarrowOop r9=NarrowOop [16]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
   3.85%   │ │  │││  0x00007f384326eb63:   shl    $0x3,%r9                     ;*getfield authors {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication::getAuthors@1 (line 51)
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$numberOfPublicationsPerAuthor$4@1 (line 97)
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f37c802bd28::apply@4
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ │  │││  0x00007f384326eb67:   shl    $0x3,%rsi                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
           │ │  │││  0x00007f384326eb6b:   mov    %rsi,0x8(%rsp)
   0.00%   │ │  │││  0x00007f384326eb70:   mov    %r9,%rsi                     ;*invokeinterface stream {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$numberOfPublicationsPerAuthor$4@4 (line 97)
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f37c802bd28::apply@4
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.05%   │ │  │││  0x00007f384326eb73:   xchg   %ax,%ax
           │ │  │││  0x00007f384326eb75:   nop
           │ │  │││  0x00007f384326eb76:   data16 xchg %ax,%ax
   0.00%   │ │  │││  0x00007f384326eb79:   movabs $0xffffffffffffffff,%rax
   0.07%   │ │  │││  0x00007f384326eb83:   call   0x00007f3842c2f680           ; ImmutableOopMap {[8]=Oop [16]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
           │ │  │││                                                            ;*invokeinterface stream {reexecute=0 rethrow=0 return_oop=1}
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$numberOfPublicationsPerAuthor$4@4 (line 97)
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f37c802bd28::apply@4
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ │  │││                                                            ;   {virtual_call}
   0.00%   │ │  │││  0x00007f384326eb88:   nopl   0x8000478(%rax,%rax,1)       ;   {other}
           │ │  │││  0x00007f384326eb90:   mov    0x48(%rsp),%rdx
   0.04%   │ │  │││  0x00007f384326eb95:   cmpb   $0x0,0x10(%rdx)
   0.00%   │ │  │││  0x00007f384326eb99:   jne    0x00007f384326f208           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@25 (line 275)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ │  │││  0x00007f384326eb9f:   nop                                 ; ImmutableOopMap {rax=Oop rdx=Oop [8]=Oop [16]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
           │ │  │││                                                            ;*areturn {reexecute=1 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$numberOfPublicationsPerAuthor$4@9 (line 97)
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f37c802bd28::apply@4
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ │  │││  0x00007f384326eba0:   cmpl   $0xe58d8,0x8(%rax)           ; implicit exception: dispatches to 0x00007f384326f41c
           │ │  │││                                                            ;   {metadata(&apos;java/util/stream/ReferencePipeline$Head&apos;)}
   0.05%   │ │  │││  0x00007f384326eba7:   jne    0x00007f384326f1f6           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@13 (line 273)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ │  │││  0x00007f384326ebad:   mov    0x1c(%rax),%r10d
           │ │  │││  0x00007f384326ebb1:   mov    %r10d,%esi
           │ │  │││  0x00007f384326ebb4:   shl    $0x3,%rsi                    ;*getfield sourceStage {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.AbstractPipeline::sequential@1 (line 304)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@29 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.05%   │ │  │││  0x00007f384326ebb8:   nopl   0x0(%rax,%rax,1)
           │ │  │││  0x00007f384326ebc0:   cmp    %rax,%rsi
           │ │  │││  0x00007f384326ebc3:   jne    0x00007f384326f154           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.AbstractPipeline::sourceStageSpliterator@5 (line 275)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$Head::forEach@8 (line 762)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%   │ │  │││  0x00007f384326ebc9:   cmpb   $0x0,0x18(%rax)
           │ │  │││  0x00007f384326ebcd:   jne    0x00007f384326f285           ; ImmutableOopMap {rax=Oop rdx=Oop r10=NarrowOop [8]=Oop [16]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
           │ │  │││                                                            ;*areturn {reexecute=1 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$numberOfPublicationsPerAuthor$4@9 (line 97)
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f37c802bd28::apply@4
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.06%   │ │  │││  0x00007f384326ebd3:   mov    0x28(,%r10,8),%r11d          ; implicit exception: dispatches to 0x00007f384326f43f
           │ │  │││  0x00007f384326ebdb:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop rdx=Oop r10=NarrowOop r11=NarrowOop [8]=Oop [16]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
           │ │  │││                                                            ;*areturn {reexecute=1 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$numberOfPublicationsPerAuthor$4@9 (line 97)
           │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f37c802bd28::apply@4
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%   │ │  │││  0x00007f384326ebe0:   cmpl   $0x1896a8,0x8(,%r11,8)       ; implicit exception: dispatches to 0x00007f384326f462
           │ │  │││                                                            ;   {metadata(&apos;java/util/ArrayList$ArrayListSpliterator&apos;)}
   0.05%   │ │  │││  0x00007f384326ebec:   jne    0x00007f384326f2eb           ;*invokeinterface forEachRemaining {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%   │ │  │││  0x00007f384326ebf2:   movb   $0x0,0x1a(,%r10,8)           ;*putfield parallel {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.AbstractPipeline::sequential@5 (line 304)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@29 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ │  │││  0x00007f384326ebfb:   movb   $0x1,0x18(%rax)              ;*putfield linkedOrConsumed {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.AbstractPipeline::sourceStageSpliterator@35 (line 280)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$Head::forEach@8 (line 762)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ │  │││  0x00007f384326ebff:   nop
   0.05%   │ │  │││  0x00007f384326ec00:   cmpb   $0x0,0x40(%r15)
   0.01%   │ │  │││  0x00007f384326ec05:   jne    0x00007f384326ed20
   0.00%   │ │  │││  0x00007f384326ec0b:   mov    %rax,(%rsp)
           │ │  │││  0x00007f384326ec0f:   movl   $0x0,0x28(,%r10,8)           ;*putfield sourceSpliterator {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.AbstractPipeline::sourceStageSpliterator@61 (line 285)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$Head::forEach@8 (line 762)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.05%   │ │  │││  0x00007f384326ec1b:   mov    0xc(%rdx),%esi               ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@38 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%   │ │  │││  0x00007f384326ec1e:   shl    $0x3,%r11                    ;*getfield sourceSpliterator {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.AbstractPipeline::sourceStageSpliterator@42 (line 282)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$Head::forEach@8 (line 762)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%   │ │  │││  0x00007f384326ec22:   mov    %esi,%r10d
           │ │  │││  0x00007f384326ec25:   shl    $0x3,%r10                    ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@38 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.07%   │ │  │││  0x00007f384326ec29:   mov    %r11,%rsi                    ;*invokeinterface forEachRemaining {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ │  │││  0x00007f384326ec2c:   mov    %r10,%rdx
           │ │  │││  0x00007f384326ec2f:   call   0x00007f3842c2f380           ; ImmutableOopMap {[0]=Oop [16]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
           │ │  │││                                                            ;*invokeinterface forEachRemaining {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ │  │││                                                            ;   {optimized virtual_call}
           │ │  │││  0x00007f384326ec34:   nopl   0xc000524(%rax,%rax,1)       ;   {other}
   0.01%   │ │  │││  0x00007f384326ec3c:   mov    (%rsp),%rax
   0.12%   │ │  │││  0x00007f384326ec40:   mov    0x1c(%rax),%esi              ; ImmutableOopMap {rax=Oop [16]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
           │ │  │││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - (reexecute) java.util.stream.ReferencePipeline$Head::forEach@17 (line 762)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.10%   │ │  │││  0x00007f384326ec43:   mov    0x30(,%rsi,8),%esi           ; implicit exception: dispatches to 0x00007f384326f485
   0.16%   │ │  │││  0x00007f384326ec4a:   test   %esi,%esi
           │ │  │││  0x00007f384326ec4c:   jne    0x00007f384326f235           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.AbstractPipeline::close@22 (line 320)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@94 (line 283)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.04%   │ │  │││  0x00007f384326ec52:   movb   $0x1,0x18(%rax)              ;*putfield linkedOrConsumed {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││                                                            ; - java.util.stream.AbstractPipeline::close@2 (line 317)
           │ │  │││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@94 (line 283)
           │ │  │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ │  │││  0x00007f384326ec56:   data16 nopw 0x0(%rax,%rax,1)
           │ │  │││  0x00007f384326ec60:   cmpb   $0x0,0x40(%r15)
   0.01%   │ │ ╭│││  0x00007f384326ec65:   jne    0x00007f384326ecbe
   0.04%   │ │ ││││  0x00007f384326ec6b:   movl   $0x0,0x2c(%rax)              ;*putfield sourceSupplier {reexecute=0 rethrow=0 return_oop=0}
           │ │ ││││                                                            ; - java.util.stream.AbstractPipeline::close@7 (line 318)
           │ │ ││││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@94 (line 283)
           │ │ ││││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ │ ││││  0x00007f384326ec72:   cmpb   $0x0,0x40(%r15)
           │ │ ││││  0x00007f384326ec77:   jne    0x00007f384326ecef
   0.01%   │ │ ││││  0x00007f384326ec7d:   mov    0x10(%rsp),%r10
   0.05%   │ │ ││││  0x00007f384326ec82:   movl   $0x0,0x28(%rax)              ;*putfield sourceSpliterator {reexecute=0 rethrow=0 return_oop=0}
           │ │ ││││                                                            ; - java.util.stream.AbstractPipeline::close@12 (line 319)
           │ │ ││││                                                            ; - java.util.stream.ReferencePipeline$7$1::accept@94 (line 283)
           │ │ ││││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ │ ││││  0x00007f384326ec89:   mov    0x18(%r10),%r10d
           │ │ ││││  0x00007f384326ec8d:   shl    $0x3,%r10                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           │ │ ││││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@152 (line 1716)
   0.02%   │ │ ││││  0x00007f384326ec91:   mov    %r10,%rsi
   0.03%   │ │ ││││  0x00007f384326ec94:   mov    0x64(%rsp),%r11d
           │ │ │╰││  0x00007f384326ec99:   jmp    0x00007f384326eac9           ;*aload {reexecute=0 rethrow=0 return_oop=0}
           │ │ │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.41%   ↘ │ │ ││  0x00007f384326ec9e:   mov    0x60(%rsp),%r8d
   0.36%     │ │ ││  0x00007f384326eca3:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rsi=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │ │ ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
             │ │ ││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
             │ │ ││  0x00007f384326ecaa:   test   %eax,(%r10)                  ;   {poll}
   0.22%     │ │ ╰│  0x00007f384326ecad:   jmp    0x00007f384326ea90           ;*aload {reexecute=0 rethrow=0 return_oop=0}
             │ │  │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
             ↘ │  │  0x00007f384326ecb2:   mov    $0x0,%r9
               │  ╰  0x00007f384326ecb9:   jmp    0x00007f384326eb33           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
               │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f37c802bd28::apply@1
               │                                                               ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
               │                                                               ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
               ↘     0x00007f384326ecbe:   lea    0x2c(%rax),%rsi
                     0x00007f384326ecc2:   mov    (%rsi),%esi
                     0x00007f384326ecc4:   test   %esi,%esi
                     0x00007f384326ecc6:   je     0x00007f384326ec6b
....................................................................................................
  14.54%  <total for region 3>

....[Hottest Regions]...............................................................................
  44.24%      jvmci, level 4  java.util.HashMap::computeIfAbsent, version 5, compile id 1254 
  14.88%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f37c803c7f0::accept, version 3, compile id 1312 
  14.54%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1260 
   9.79%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 3, compile id 1234 
   3.83%      jvmci, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 3, compile id 1243 
   2.53%      jvmci, level 4  java.util.stream.ReduceOps$3ReducingSink::accept, version 4, compile id 1313 
   2.05%                      <unknown> 
   1.44%      jvmci, level 4  java.util.Collection::stream, version 3, compile id 1245 
   1.18%                      <unknown> 
   0.95%                      <unknown> 
   0.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 3, compile id 1234 
   0.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 3, compile id 1234 
   0.59%    perf-2127063.map  [unknown] 
   0.26%                      <unknown> 
   0.22%              kernel  [unknown] 
   0.15%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   1.58%  <...other 394 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  44.27%      jvmci, level 4  java.util.HashMap::computeIfAbsent, version 5, compile id 1254 
  14.88%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f37c803c7f0::accept, version 3, compile id 1312 
  14.54%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1260 
  11.29%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 3, compile id 1234 
   4.53%                      <unknown> 
   3.83%      jvmci, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 3, compile id 1243 
   2.53%      jvmci, level 4  java.util.stream.ReduceOps$3ReducingSink::accept, version 4, compile id 1313 
   1.54%              kernel  [unknown] 
   1.44%      jvmci, level 4  java.util.Collection::stream, version 3, compile id 1245 
   0.59%    perf-2127063.map  [unknown] 
   0.04%      jvmci, level 4  java.util.HashMap::resize, version 2, compile id 719 
   0.03%           libjvm.so  G1CardSet::occupied 
   0.03%      jvmci, level 4  java.util.HashMap::replaceAll, version 5, compile id 1280 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%      jvmci, level 4  java.util.HashMap::newNode, version 2, compile id 1040 
   0.02%           libjvm.so  defaultStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.01%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.36%  <...other 121 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.87%      jvmci, level 4
   4.53%                    
   1.54%              kernel
   0.59%    perf-2127063.map
   0.30%           libjvm.so
   0.11%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%          ld-2.31.so
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.number_of_publications_per_year

# Run progress: 50.00% complete, ETA 00:13:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.444 ms/op
# Warmup Iteration   2: 8.131 ms/op
# Warmup Iteration   3: 8.180 ms/op
# Warmup Iteration   4: 8.153 ms/op
# Warmup Iteration   5: 8.346 ms/op
Iteration   1: 8.158 ms/op
Iteration   2: 8.200 ms/op
Iteration   3: 8.174 ms/op
Iteration   4: 8.186 ms/op
Iteration   5: 8.102 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.number_of_publications_per_year":
  8.164 ±(99.9%) 0.146 ms/op [Average]
  (min, avg, max) = (8.102, 8.164, 8.200), stdev = 0.038
  CI (99.9%): [8.018, 8.310] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.number_of_publications_per_year:asm":
PrintAssembly processed: 275489 total address lines.
Perf output processed (skipped 61.956 seconds):
 Column 1: cycles (51015 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1212 

                 0x00007f3db32601ed:   ret                                 ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
                 0x00007f3db32601ee:   mov    0x38(%rsp),%r11d
                 0x00007f3db32601f3:   cmp    $0x2563e8,%r11d              ;   {metadata(&apos;java/util/stream/ReduceOps$3ReducingSink&apos;)}
                 0x00007f3db32601fa:   jne    0x00007f3db32603f8           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                 0x00007f3db3260200:   mov    %r9d,%r11d
                 0x00007f3db3260203:   nopw   0x0(%rax,%rax,1)
                 0x00007f3db326020c:   data16 data16 xchg %ax,%ax          ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.08%    ↗ ↗  0x00007f3db3260210:   mov    %rsi,%r10
   0.16%    │ │  0x00007f3db3260213:   mov    0x20(%rsp),%rcx
   0.34%    │ │  0x00007f3db3260218:   mov    0x40(%rsp),%edi
   1.07%    │ │  0x00007f3db326021c:   mov    0x28(%rsp),%rdx
   0.07%    │ │  0x00007f3db3260221:   test   %r10,%r10
          ╭ │ │  0x00007f3db3260224:   jne    0x00007f3db3260263           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@124 (line 1712)
   0.21%  │ │ │  0x00007f3db326022a:   cmp    %r11d,%edi
          │ │ │  0x00007f3db326022d:   jbe    0x00007f3db3260443
   0.29%  │ │ │  0x00007f3db3260233:   mov    0x10(%rcx,%r11,4),%esi
   1.12%  │ │ │  0x00007f3db3260238:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@133 (line 1713)
   0.25%  │ │ │  0x00007f3db326023c:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@130 (line 1713)
   0.34%  │ │↗│  0x00007f3db326023f:   nop
   0.63%  │ │││  0x00007f3db3260240:   test   %rsi,%rsi
          │╭│││  0x00007f3db3260243:   jne    0x00007f3db32602bf           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.87%  │││││  0x00007f3db3260249:   mov    0x44(%rsp),%r8d
   0.38%  │││││  0x00007f3db326024e:   cmp    %r11d,%r8d
          │││││  0x00007f3db3260251:   jle    0x00007f3db32601ba           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.24%  │││││  0x00007f3db3260257:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rsi=Oop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
          │││││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.51%  │││││  0x00007f3db326025e:   test   %eax,(%r10)                  ;   {poll}
   0.87%  ││╰││  0x00007f3db3260261:   jmp    0x00007f3db3260210           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
          ↘│ ││  0x00007f3db3260263:   mov    %r11d,0x38(%rsp)
   0.05%   │ ││  0x00007f3db3260268:   mov    0x14(%rdx),%esi              ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │ ││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.44%   │ ││  0x00007f3db326026b:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
           │ ││                                                            ; ImmutableOopMap {rdx=Oop rsi=NarrowOop r10=Oop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
   1.49%   │ ││  0x00007f3db3260272:   mov    0x10(%r10),%r9d              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
  28.40%   │ ││  0x00007f3db3260276:   mov    0xc(%rdx),%ebx               ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@5 (line 169)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.04%   │ ││  0x00007f3db3260279:   shl    $0x3,%rsi                    ;*getfield val$accumulator {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@1 (line 169)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%   │ ││  0x00007f3db326027d:   shl    $0x3,%rbx                    ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@5 (line 169)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%   │ ││  0x00007f3db3260281:   shl    $0x3,%r9                     ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
   0.42%   │ ││  0x00007f3db3260285:   mov    %rbx,%rdx
   0.02%   │ ││  0x00007f3db3260288:   mov    %r9,%rcx                     ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%   │ ││  0x00007f3db326028b:   mov    %r10,0x8(%rsp)
   0.01%   │ ││  0x00007f3db3260290:   nop
   0.42%   │ ││  0x00007f3db3260291:   movabs $0xffffffffffffffff,%rax
   0.02%   │ ││  0x00007f3db326029b:   call   0x00007f3db2c2f680           ; ImmutableOopMap {[8]=Oop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
           │ ││                                                            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ ││                                                            ;   {virtual_call}
   0.29%   │ ││  0x00007f3db32602a0:   nopl   0x5000390(%rax,%rax,1)       ;   {other}
   0.13%   │ ││  0x00007f3db32602a8:   mov    0x8(%rsp),%r10
   0.07%   │ ││  0x00007f3db32602ad:   mov    0x18(%r10),%r10d
   0.59%   │ ││  0x00007f3db32602b1:   shl    $0x3,%r10                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@152 (line 1716)
   0.37%   │ ││  0x00007f3db32602b5:   mov    %r10,%rsi
   0.07%   │ ││  0x00007f3db32602b8:   mov    0x38(%rsp),%r11d
   0.00%   │ ╰│  0x00007f3db32602bd:   jmp    0x00007f3db326023f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   2.90%   ↘  │  0x00007f3db32602bf:   mov    0x44(%rsp),%r8d
   2.82%      │  0x00007f3db32602c4:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rsi=Oop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
              │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
              │                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.29%      │  0x00007f3db32602cb:   test   %eax,(%r10)                  ;   {poll}
   1.88%      ╰  0x00007f3db32602ce:   jmp    0x00007f3db3260210
                 0x00007f3db32602d3:   cmp    $0x2563e8,%r11d              ;   {metadata(&apos;java/util/stream/ReduceOps$3ReducingSink&apos;)}
                 0x00007f3db32602da:   jne    0x00007f3db326039f           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                 0x00007f3db32602e0:   mov    %r13,0x8(%rsp)
                 0x00007f3db32602e5:   mov    %rbp,0x18(%rsp)
                 0x00007f3db32602ea:   mov    %ebx,0x14(%rsp)
                 0x00007f3db32602ee:   mov    %r9d,0x34(%rsp)
                 0x00007f3db32602f3:   mov    %r11d,0x38(%rsp)
                 0x00007f3db32602f8:   mov    0x14(%rdx),%esi              ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
....................................................................................................
  48.16%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.stream.Collectors$$Lambda.0x00007f3d3803c5b8::accept, version 3, compile id 1200 

               [Disassembly]
               --------------------------------------------------------------------------------
               [Constant Pool (empty)]
               --------------------------------------------------------------------------------
               [Entry Point]
                 # {method} {0x00007f3d2c317090} &apos;accept&apos; &apos;(Ljava/lang/Object;Ljava/lang/Object;)V&apos; in &apos;java/util/stream/Collectors$$Lambda+0x00007f3d3803c5b8&apos;
                 # this:     rsi:rsi   = &apos;java/util/stream/Collectors$$Lambda+0x00007f3d3803c5b8&apos;
                 # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                 # parm1:    rcx:rcx   = &apos;java/lang/Object&apos;
                 #           [sp+0x30]  (sp of caller)
   0.01%         0x00007f3db3260f60:   mov    0x8(%rsi),%r10d
   0.42%         0x00007f3db3260f64:   movabs $0x7f3d37000000,%r12
   0.02%         0x00007f3db3260f6e:   add    %r12,%r10
   0.01%         0x00007f3db3260f71:   xor    %r12,%r12
   0.00%         0x00007f3db3260f74:   cmp    %r10,%rax
                 0x00007f3db3260f77:   jne    0x00007f3db2c2f080           ;   {runtime_call ic_miss_stub}
   0.42%         0x00007f3db3260f7d:   data16 xchg %ax,%ax
               [Verified Entry Point]
   0.02%         0x00007f3db3260f80:   mov    %eax,-0x14000(%rsp)
   0.03%         0x00007f3db3260f87:   sub    $0x28,%rsp
   0.44%         0x00007f3db3260f8b:   nop
   0.03%         0x00007f3db3260f8c:   cmpl   $0x1,0x20(%r15)
   0.01%         0x00007f3db3260f94:   jne    0x00007f3db326128b
   0.01%         0x00007f3db3260f9a:   mov    %rbp,0x20(%rsp)
   0.44%         0x00007f3db3260f9f:   mov    %rsi,%r10                    ; ImmutableOopMap {rcx=Oop rdx=Oop r10=Oop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@0
   0.02%         0x00007f3db3260fa2:   cmpl   $0x8da40,0x8(%rdx)           ; implicit exception: dispatches to 0x00007f3db32612af
                                                                           ;   {metadata(&apos;java/util/HashMap&apos;)}
   0.01%         0x00007f3db3260fa9:   jne    0x00007f3db326126c           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@13
   0.00%         0x00007f3db3260faf:   mov    0xc(%r10),%esi               ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@1
   0.46%         0x00007f3db3260fb3:   nopw   0x0(%rax,%rax,1)
   0.01%         0x00007f3db3260fbc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rcx=Oop rdx=Oop r10=Oop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@0
   0.01%         0x00007f3db3260fc0:   cmpl   $0x102bd28,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007f3db32612d2
                                                                           ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007f3d3802bd28&apos;)}
   0.46%         0x00007f3db3260fcb:   jne    0x00007f3db326125d           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                           ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@17
   0.05%         0x00007f3db3260fd1:   mov    0x14(%r10),%r11d             ;*getfield arg$3 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@9
   0.01%         0x00007f3db3260fd5:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rcx=Oop rdx=Oop r10=Oop r11=NarrowOop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@0
                 0x00007f3db3260fe0:   cmpl   $0x103bcf8,0x8(,%r11,8)      ; implicit exception: dispatches to 0x00007f3db32612f5
                                                                           ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f3d3803bcf8&apos;)}
   0.45%         0x00007f3db3260fec:   jne    0x00007f3db32611fc           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                           ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@17
   0.02%         0x00007f3db3260ff2:   test   %rcx,%rcx
          ╭      0x00007f3db3260ff5:   je     0x00007f3db3261190
   0.00%  │      0x00007f3db3260ffb:   mov    0x8(%rcx),%esi
  14.32%  │      0x00007f3db3260ffe:   movabs $0x7f3d37000000,%r8
   0.03%  │      0x00007f3db3261008:   lea    (%r8,%rsi,1),%rsi            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f3d3802bd28::apply@1
          │                                                                ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          │                                                                ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@17
   0.17%  │      0x00007f3db326100c:   test   %rcx,%rcx
          │╭     0x00007f3db326100f:   je     0x00007f3db3261029
          ││     0x00007f3db3261015:   movabs $0x7f3d3802b708,%r8          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
   0.24%  ││     0x00007f3db326101f:   nop
   0.02%  ││     0x00007f3db3261020:   cmp    %rsi,%r8
          ││     0x00007f3db3261023:   jne    0x00007f3db326124e           ; ImmutableOopMap {rcx=Oop rdx=Oop r10=Oop r11=NarrowOop }
          ││                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                               ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@0
   0.23%  │↘     0x00007f3db3261029:   mov    0xc(%rcx),%r8d               ; implicit exception: dispatches to 0x00007f3db3261318
   0.19%  │      0x00007f3db326102d:   lea    0x80(%r8),%esi
   0.42%  │      0x00007f3db3261034:   cmp    $0x100,%esi
          │ ╭    0x00007f3db326103a:   jb     0x00007f3db3261178
   0.17%  │ │    0x00007f3db3261040:   mov    0x1b8(%r15),%rsi
   0.01%  │ │    0x00007f3db3261047:   lea    0x10(%rsi),%r9
          │ │    0x00007f3db326104b:   cmp    0x1c8(%r15),%r9
          │ │    0x00007f3db3261052:   ja     0x00007f3db32611ce
   0.25%  │ │    0x00007f3db3261058:   mov    %r9,0x1b8(%r15)
   0.21%  │ │    0x00007f3db326105f:   prefetchw 0xd0(%rsi)
   0.02%  │ │    0x00007f3db3261066:   movq   $0x1,(%rsi)
   0.00%  │ │    0x00007f3db326106d:   movl   $0x25c88,0x8(%rsi)           ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.33%  │ │    0x00007f3db3261074:   movl   $0x0,0xc(%rsi)
   0.15%  │ │    0x00007f3db326107b:   mov    %r8d,0xc(%rsi)               ;* unwind (locked if synchronized)
          │ │                                                              ; - java.lang.Integer::valueOf@-3
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f3d3802bd28::apply@7
          │ │                                                              ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          │ │                                                              ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@17
   0.01%  │ │ ↗  0x00007f3db326107f:   mov    %rsi,%r8
          │ │ │  0x00007f3db3261082:   mov    0x1b8(%r15),%rsi
   0.34%  │ │ │  0x00007f3db3261089:   lea    0x10(%rsi),%r9
   0.18%  │ │ │  0x00007f3db326108d:   cmp    0x1c8(%r15),%r9
          │ │ │  0x00007f3db3261094:   ja     0x00007f3db32611a8
   0.01%  │ │ │  0x00007f3db326109a:   mov    %r9,0x1b8(%r15)
          │ │ │  0x00007f3db32610a1:   prefetchw 0xd0(%rsi)
   0.25%  │ │ │  0x00007f3db32610a8:   movq   $0x1,(%rsi)
   0.20%  │ │ │  0x00007f3db32610af:   movl   $0x103cc70,0x8(%rsi)         ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f3d3803cc70&apos;)}
   0.03%  │ │ │  0x00007f3db32610b6:   movl   $0x0,0xc(%rsi)
   0.00%  │ │ │  0x00007f3db32610bd:   mov    %rcx,0x10(%rsp)
   0.26%  │ │ │  0x00007f3db32610c2:   mov    %rsi,%rcx                    ;* unwind (locked if synchronized)
          │ │ │                                                            ; - jdk.internal.misc.Unsafe::allocateInstance@-3
          │ │ │                                                            ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
          │ │ │                                                            ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@1
          │ │ │                                                            ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
          │ │ │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
          │ │ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@17
   0.20%  │ │ │  0x00007f3db32610c5:   mov    0x10(%r10),%esi              ;*getfield arg$2 {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@5
   0.04%  │ │ │  0x00007f3db32610c9:   mov    %esi,0xc(%rcx)               ;* unwind (locked if synchronized)
          │ │ │                                                            ; - jdk.internal.misc.Unsafe::allocateInstance@-3
          │ │ │                                                            ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
          │ │ │                                                            ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@1
          │ │ │                                                            ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
          │ │ │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
          │ │ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@17
   0.01%  │ │ │  0x00007f3db32610cc:   mov    %r11d,%r10d
   0.26%  │ │ │  0x00007f3db32610cf:   shl    $0x3,%r10                    ;*getfield arg$3 {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@9
   0.17%  │ │ │  0x00007f3db32610d3:   mov    %rdx,%rsi
   0.01%  │ │ │  0x00007f3db32610d6:   mov    %r8,%rdx                     ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
          │ │ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@17
   0.01%  │ │ │  0x00007f3db32610d9:   mov    %r10,0x8(%rsp)
   0.26%  │ │ │  0x00007f3db32610de:   mov    %r11d,0x4(%rsp)
   0.18%  │ │ │  0x00007f3db32610e3:   call   0x00007f3db325d300           ; ImmutableOopMap {[4]=NarrowOop [8]=Oop [16]=Oop }
          │ │ │                                                            ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=1}
          │ │ │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
          │ │ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@17
          │ │ │                                                            ;   {optimized virtual_call}
   0.00%  │ │ │  0x00007f3db32610e8:   nopl   0x4000358(%rax,%rax,1)       ;   {other}
   0.06%  │ │ │  0x00007f3db32610f0:   test   %rax,%rax
          │ │ │  0x00007f3db32610f3:   je     0x00007f3db326119c
   0.32%  │ │ │  0x00007f3db32610f9:   mov    0x8(%rax),%esi
   0.08%  │ │ │  0x00007f3db32610fc:   movabs $0x7f3d37000000,%r10
   0.01%  │ │ │  0x00007f3db3261106:   lea    (%r10,%rsi,1),%rsi
   0.06%  │ │ │  0x00007f3db326110a:   test   %rax,%rax
          │ │╭│  0x00007f3db326110d:   je     0x00007f3db3261129
   0.30%  │ │││  0x00007f3db3261113:   movabs $0x7f3d37002a80,%r10         ;   {metadata({type array long})}
   0.11%  │ │││  0x00007f3db326111d:   data16 xchg %ax,%ax
   0.00%  │ │││  0x00007f3db3261120:   cmp    %rsi,%r10
          │ │││  0x00007f3db3261123:   jne    0x00007f3db3261283           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803bcf8::accept@5
          │ │││                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
          │ │││                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@17
   0.06%  │ │↘│  0x00007f3db3261129:   mov    0x4(%rsp),%r11d              ; ImmutableOopMap {rax=Oop r11=NarrowOop [8]=Oop [16]=Oop }
          │ │ │                                                            ;*astore {reexecute=1 rethrow=0 return_oop=0}
          │ │ │                                                            ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
          │ │ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@17
   0.62%  │ │ │  0x00007f3db326112e:   mov    0xc(%rax),%esi               ; implicit exception: dispatches to 0x00007f3db326133b
   0.00%  │ │ │  0x00007f3db3261131:   mov    0xc(,%r11,8),%r10d           ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803bcf8::accept@1
          │ │ │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
          │ │ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@17
   0.67%  │ │ │  0x00007f3db3261139:   nopl   0x0(%rax)                    ; ImmutableOopMap {rax=Oop [8]=Oop [16]=Oop }
          │ │ │                                                            ;*astore {reexecute=1 rethrow=0 return_oop=0}
          │ │ │                                                            ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
          │ │ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@17
   0.14%  │ │ │  0x00007f3db3261140:   cmpl   $0x103b8c8,0x8(,%r10,8)      ; implicit exception: dispatches to 0x00007f3db326135e
          │ │ │                                                            ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f3d3803b8c8&apos;)}
   1.45%  │ │ │  0x00007f3db326114c:   jne    0x00007f3db3261224           ;*invokeinterface applyAsLong {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.stream.Collectors::lambda$summingLong$23@6 (line 662)
          │ │ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803bcf8::accept@9
          │ │ │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
          │ │ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@17
   0.28%  │ │ │  0x00007f3db3261152:   test   %esi,%esi
          │ │ │  0x00007f3db3261154:   je     0x00007f3db326127b
   0.11%  │ │ │  0x00007f3db326115a:   incq   0x10(%rax)                   ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.stream.Collectors::lambda$summingLong$23@12 (line 662)
          │ │ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803bcf8::accept@9
          │ │ │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
          │ │ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@17
   0.34%  │ │ │  0x00007f3db326115e:   mov    0x20(%rsp),%rbp
   0.12%  │ │ │  0x00007f3db3261163:   add    $0x28,%rsp
   0.07%  │ │ │  0x00007f3db3261167:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │ │  0x00007f3db326116e:   ja     0x00007f3db326129b
          │ │ │  0x00007f3db3261174:   vzeroupper 
   0.48%  │ │ │  0x00007f3db3261177:   ret    
          │ ↘ │  0x00007f3db3261178:   movabs $0x7ffece048,%r8             ;   {oop(a &apos;java/lang/Integer&apos;[256] {0x00000007ffece048})}
          │   │  0x00007f3db3261182:   mov    0x10(%r8,%rsi,4),%esi
          │   │  0x00007f3db3261187:   shl    $0x3,%rsi
          │   ╰  0x00007f3db326118b:   jmp    0x00007f3db326107f           ;* unwind (locked if synchronized)
          │                                                                ; - java.lang.Integer::valueOf@-3
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f3d3802bd28::apply@7
          │                                                                ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          │                                                                ; - java.util.stream.Collectors$$Lambda/0x00007f3d3803c5b8::accept@17
          ↘      0x00007f3db3261190:   mov    $0x0,%rsi
                 0x00007f3db3261197:   jmp    0x00007f3db326100c           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  27.82%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.HashMap::computeIfAbsent, version 3, compile id 1201 

             # parm1:    rcx:rcx   = &apos;java/util/function/Function&apos;
             #           [sp+0x60]  (sp of caller)
             0x00007f3db325d2e0:   mov    0x8(%rsi),%r10d
             0x00007f3db325d2e4:   movabs $0x7f3d37000000,%r12
             0x00007f3db325d2ee:   add    %r12,%r10
             0x00007f3db325d2f1:   xor    %r12,%r12
             0x00007f3db325d2f4:   cmp    %r10,%rax
             0x00007f3db325d2f7:   jne    0x00007f3db2c2f080           ;   {runtime_call ic_miss_stub}
             0x00007f3db325d2fd:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.02%     0x00007f3db325d300:   mov    %eax,-0x14000(%rsp)
   0.49%     0x00007f3db325d307:   sub    $0x58,%rsp
   0.01%     0x00007f3db325d30b:   nop
   0.00%     0x00007f3db325d30c:   cmpl   $0x1,0x20(%r15)
   0.25%     0x00007f3db325d314:   jne    0x00007f3db325da46
   0.18%     0x00007f3db325d31a:   mov    %rbp,0x50(%rsp)
   0.01%     0x00007f3db325d31f:   mov    %rsi,0x30(%rsp)
   0.01%     0x00007f3db325d324:   mov    %rdx,0x28(%rsp)              ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop [40]=Oop [48]=Oop }
                                                                       ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.HashMap::computeIfAbsent@0 (line 1197)
   0.25%     0x00007f3db325d329:   test   %eax,(%rcx)                  ; implicit exception: dispatches to 0x00007f3db325da7e
                                                                       ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop [40]=Oop [48]=Oop }
                                                                       ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.HashMap::computeIfAbsent@0 (line 1197)
   0.21%     0x00007f3db325d32b:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f3db325daa1
   0.01%     0x00007f3db325d32f:   movabs $0x7f3d37000000,%rbx
   0.00%     0x00007f3db325d339:   lea    (%rbx,%r10,1),%rax           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.23%     0x00007f3db325d33d:   mov    0x1e0(%rax),%rbx
   0.19%     0x00007f3db325d344:   mov    0x40(%rbx),%rax
   0.04%     0x00007f3db325d348:   mov    %rdx,%rsi                    ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::hash@9 (line 338)
                                                                       ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.00%     0x00007f3db325d34b:   mov    %rcx,0x20(%rsp)
   0.26%     0x00007f3db325d350:   mov    %r10d,0x44(%rsp)
   0.20%     0x00007f3db325d355:   call   *%rax                        ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
                                                                       ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::hash@9 (line 338)
                                                                       ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   1.75%     0x00007f3db325d357:   nopl   0x0(%rax,%rax,1)
   0.00%     0x00007f3db325d35f:   mov    0x30(%rsp),%rsi
   0.28%     0x00007f3db325d364:   mov    0x1c(%rsi),%edx              ;*getfield threshold {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@31 (line 1204)
   1.12%     0x00007f3db325d367:   mov    %eax,%r10d
   0.00%     0x00007f3db325d36a:   shr    $0x10,%r10d                  ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::hash@17 (line 338)
                                                                       ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
             0x00007f3db325d36e:   xor    %eax,%r10d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::hash@18 (line 338)
                                                                       ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.07%     0x00007f3db325d371:   mov    %r10d,0x40(%rsp)
   0.39%     0x00007f3db325d376:   cmp    0x14(%rsi),%edx
             0x00007f3db325d379:   jl     0x00007f3db325d725           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@34 (line 1204)
   0.01%     0x00007f3db325d37f:   mov    0x24(%rsi),%edx              ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
   0.16%     0x00007f3db325d382:   test   %edx,%edx
             0x00007f3db325d384:   je     0x00007f3db325d725           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@44 (line 1204)
   0.31%     0x00007f3db325d38a:   mov    0xc(,%rdx,8),%r11d           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@49 (line 1204)
   1.26%     0x00007f3db325d392:   test   %r11d,%r11d
             0x00007f3db325d395:   je     0x00007f3db325d8e4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@53 (line 1204)
   0.24%     0x00007f3db325d39b:   shl    $0x3,%rdx                    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
             0x00007f3db325d39f:   mov    %r11d,%eax
   0.06%     0x00007f3db325d3a2:   dec    %eax                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@71 (line 1207)
   0.13%     0x00007f3db325d3a4:   and    %r10d,%eax                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@73 (line 1207)
   0.24%     0x00007f3db325d3a7:   cmp    0xc(%rdx),%eax
             0x00007f3db325d3aa:   jae    0x00007f3db325d9d8
   0.24%     0x00007f3db325d3b0:   mov    0x10(%rdx,%rax,4),%r8d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   1.09%     0x00007f3db325d3b5:   mov    0x8(%rsi),%r9d               ;*invokevirtual afterNodeAccess {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@188 (line 1223)
   0.16%     0x00007f3db325d3b9:   mov    %r8d,%ecx
   0.01%     0x00007f3db325d3bc:   shl    $0x3,%rcx
   0.25%     0x00007f3db325d3c0:   test   %r8d,%r8d
          ╭  0x00007f3db325d3c3:   je     0x00007f3db325d496
   0.34%  │  0x00007f3db325d3c9:   cmpl   $0x1a7c50,0x8(,%r8,8)        ;   {metadata(&apos;java/util/HashMap$TreeNode&apos;)}
   1.90%  │  0x00007f3db325d3d5:   je     0x00007f3db325da34           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   0.30%  │  0x00007f3db325d3db:   nopl   0x0(%rax,%rax,1)
   0.06%  │  0x00007f3db325d3e0:   cmp    0xc(,%r8,8),%r10d
          │  0x00007f3db325d3e8:   jne    0x00007f3db325d687           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@120 (line 1213)
   0.73%  │  0x00007f3db325d3ee:   mov    0x10(,%r8,8),%r8d
   0.24%  │  0x00007f3db325d3f6:   mov    %r8d,%ebx
   0.04%  │  0x00007f3db325d3f9:   shl    $0x3,%rbx                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
   0.08%  │  0x00007f3db325d3fd:   data16 xchg %ax,%ax
   0.10%  │  0x00007f3db325d400:   cmp    0x28(%rsp),%rbx
          │  0x00007f3db325d405:   je     0x00007f3db325d869
   0.24%  │  0x00007f3db325d40b:   cmpl   $0x25c88,0x44(%rsp)          ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.04%  │  0x00007f3db325d413:   jne    0x00007f3db325d9ea           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.09%  │  0x00007f3db325d419:   nopl   0x0(%rax)                    ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=NarrowOop [32]=Oop [40]=Oop [48]=Oop }
          │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.10%  │  0x00007f3db325d420:   cmpl   $0x25c88,0x8(,%r8,8)         ; implicit exception: dispatches to 0x00007f3db325dac4
          │                                                            ;   {metadata(&apos;java/lang/Integer&apos;)}
   1.49%  │  0x00007f3db325d42c:   jne    0x00007f3db325d8d5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.Integer::equals@4 (line 1224)
          │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.35%  │  0x00007f3db325d432:   mov    0x28(%rsp),%rbx
   0.05%  │  0x00007f3db325d437:   mov    0xc(%rbx),%edi               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.Integer::equals@8 (line 1225)
          │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.01%  │  0x00007f3db325d43a:   nopw   0x0(%rax,%rax,1)
   0.04%  │  0x00007f3db325d440:   cmp    0xc(,%r8,8),%edi
          │  0x00007f3db325d448:   jne    0x00007f3db325d9a6           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.Integer::equals@18 (line 1225)
          │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.62%  │  0x00007f3db325d44e:   mov    %rcx,%r8
          │  0x00007f3db325d451:   mov    $0x0,%r11d                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@148 (line 1215)
   0.03%  │  0x00007f3db325d457:   test   %r8,%r8
          │  0x00007f3db325d45a:   je     0x00007f3db325d6af           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@171 (line 1222)
   0.28%  │  0x00007f3db325d460:   mov    0x14(%r8),%edi               ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@169 (line 1222)
   0.09%  │  0x00007f3db325d464:   test   %eax,0x0(,%rdi,8)            ; implicit exception: deoptimizes
          │                                                            ; ImmutableOopMap {rcx=Oop rdx=Oop rbx=Oop rsi=Oop rdi=NarrowOop r8=Oop [32]=Oop [40]=Oop }
   0.09%  │  0x00007f3db325d46b:   cmp    $0x8da40,%r9d                ;   {metadata(&apos;java/util/HashMap&apos;)}
          │  0x00007f3db325d472:   jne    0x00007f3db325d891           ;*invokevirtual afterNodeAccess {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@188 (line 1223)
   0.29%  │  0x00007f3db325d478:   shl    $0x3,%rdi                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@176 (line 1222)
   0.10%  │  0x00007f3db325d47c:   mov    %rdi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@193 (line 1224)
          │  0x00007f3db325d47f:   mov    0x50(%rsp),%rbp
   0.04%  │  0x00007f3db325d484:   add    $0x58,%rsp
   0.29%  │  0x00007f3db325d488:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f3db325d48f:   ja     0x00007f3db325da56
   0.07%  │  0x00007f3db325d495:   ret                                 ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@81 (line 1207)
   0.00%  ↘  0x00007f3db325d496:   movl   $0x0,0x3c(%rsp)
   0.01%     0x00007f3db325d49e:   mov    0x28(%rsp),%rbx
             0x00007f3db325d4a3:   cmp    $0x8da40,%r9d                ;   {metadata(&apos;java/util/HashMap&apos;)}
             0x00007f3db325d4aa:   jne    0x00007f3db325d934           ;*invokevirtual afterNodeInsertion {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@324 (line 1246)
             0x00007f3db325d4b0:   mov    %rcx,0x18(%rsp)
   0.00%     0x00007f3db325d4b5:   mov    %eax,0x38(%rsp)
             0x00007f3db325d4b9:   mov    %rdx,0x10(%rsp)
   0.00%     0x00007f3db325d4be:   mov    0x18(%rsi),%r8d              ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@195 (line 1227)
             0x00007f3db325d4c2:   mov    %r8d,0x44(%rsp)
   0.00%     0x00007f3db325d4c7:   mov    0x20(%rsp),%rsi
             0x00007f3db325d4cc:   mov    %rbx,%rdx                    ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@202 (line 1228)
             0x00007f3db325d4cf:   xchg   %ax,%ax
             0x00007f3db325d4d1:   movabs $0xffffffffffffffff,%rax
             0x00007f3db325d4db:   call   0x00007f3db2c2f680           ; ImmutableOopMap {[16]=Oop [24]=Oop [40]=Oop [48]=Oop }
                                                                       ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=1}
                                                                       ; - java.util.HashMap::computeIfAbsent@202 (line 1228)
                                                                       ;   {virtual_call}
             0x00007f3db325d4e0:   nopl   0x50003d0(%rax,%rax,1)       ;   {other}
             0x00007f3db325d4e8:   mov    0x30(%rsp),%rsi
....................................................................................................
  18.25%  <total for region 3>

....[Hottest Regions]...............................................................................
  48.16%       jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1212 
  27.82%       jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f3d3803c5b8::accept, version 3, compile id 1200 
  18.25%       jvmci, level 4  java.util.HashMap::computeIfAbsent, version 3, compile id 1201 
   3.05%       jvmci, level 4  java.lang.Integer::hashCode, version 2, compile id 1192 
   0.29%               kernel  [unknown] 
   0.18%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.56%  <...other 501 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  48.16%       jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1212 
  27.82%       jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f3d3803c5b8::accept, version 3, compile id 1200 
  18.26%       jvmci, level 4  java.util.HashMap::computeIfAbsent, version 3, compile id 1201 
   3.05%       jvmci, level 4  java.lang.Integer::hashCode, version 2, compile id 1192 
   1.86%               kernel  [unknown] 
   0.08%                       <unknown> 
   0.04%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%       jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f3d3803ca30::apply, version 2, compile id 1302 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  G1ConcurrentRefine::RemSetSamplingClosure::do_heap_region 
   0.01%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.01%       jvmci, level 4  java.util.HashMap::resize, version 2, compile id 725 
   0.01%            libjvm.so  G1CardSet::occupied 
   0.01%            libjvm.so  MethodMatcher::matches 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%       jvmci, level 4  java.util.HashMap::newNode, version 2, compile id 1039 
   0.01%       jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f3d3803cc70::apply, version 3, compile id 1229 
   0.55%  <...other 222 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.35%       jvmci, level 4
   1.86%               kernel
   0.31%            libjvm.so
   0.19%  libjvmcicompiler.so
   0.10%         libc-2.31.so
   0.08%                     
   0.03%   libpthread-2.31.so
   0.02%          interpreter
   0.02%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.00%     perf-2127128.map
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publication_with_the_most_authors

# Run progress: 57.14% complete, ETA 00:11:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.289 ms/op
# Warmup Iteration   2: 11.916 ms/op
# Warmup Iteration   3: 11.258 ms/op
# Warmup Iteration   4: 11.316 ms/op
# Warmup Iteration   5: 11.314 ms/op
Iteration   1: 11.275 ms/op
Iteration   2: 11.527 ms/op
Iteration   3: 11.413 ms/op
Iteration   4: 11.158 ms/op
Iteration   5: 11.104 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publication_with_the_most_authors":
  11.296 ±(99.9%) 0.677 ms/op [Average]
  (min, avg, max) = (11.104, 11.296, 11.527), stdev = 0.176
  CI (99.9%): [10.619, 11.972] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publication_with_the_most_authors:asm":
PrintAssembly processed: 270689 total address lines.
Perf output processed (skipped 61.911 seconds):
 Column 1: cycles (51063 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1175 

              0x00007efce72589c7:   ja     0x00007efce7259649
              0x00007efce72589cd:   ret    
              0x00007efce72589ce:   cmpl   $0x2270b0,0x54(%rsp)         ;   {metadata(&apos;java/util/stream/ReferencePipeline$2$1&apos;)}
              0x00007efce72589d6:   jne    0x00007efce72594df           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
              0x00007efce72589dc:   mov    %r9d,%r11d
              0x00007efce72589df:   mov    %rax,%r10
              0x00007efce72589e2:   data16 nopw 0x0(%rax,%rax,1)
              0x00007efce72589ec:   data16 data16 xchg %ax,%ax          ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.32%   ↗  0x00007efce72589f0:   mov    0x28(%rsp),%rbx
   0.42%   │  0x00007efce72589f5:   mov    0x48(%rsp),%edi
   0.23%   │  0x00007efce72589f9:   mov    0x38(%rsp),%rdx
   0.23%   │  0x00007efce72589fe:   movabs $0x7efc6c02b708,%r8          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
   0.38%   │  0x00007efce7258a08:   mov    %r10,0x8(%rsp)
   0.38%   │  0x00007efce7258a0d:   test   %r10,%r10
          ╭│  0x00007efce7258a10:   jne    0x00007efce7258a54           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@124 (line 1712)
   0.15%  ││  0x00007efce7258a16:   cmp    %r11d,%edi
          ││  0x00007efce7258a19:   jbe    0x00007efce725955e
   0.17%  ││  0x00007efce7258a1f:   mov    0x10(%rbx,%r11,4),%r10d
   0.59%  ││  0x00007efce7258a24:   shl    $0x3,%r10                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@133 (line 1713)
   0.34%  ││  0x00007efce7258a28:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@130 (line 1713)
   0.44%  ││  0x00007efce7258a2b:   test   %r10,%r10
          ││  0x00007efce7258a2e:   jne    0x00007efce7258b72           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.18%  ││  0x00007efce7258a34:   mov    0x50(%rsp),%r8d
   0.21%  ││  0x00007efce7258a39:   nopl   0x0(%rax)
   0.22%  ││  0x00007efce7258a40:   cmp    %r11d,%r8d
          ││  0x00007efce7258a43:   jle    0x00007efce7258997           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.38%  ││  0x00007efce7258a49:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r10=Oop [32]=Oop [40]=Oop [52]=NarrowOop [56]=Oop }
          ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.12%  ││  0x00007efce7258a50:   test   %eax,(%rsi)                  ;   {poll}
   0.20%  │╰  0x00007efce7258a52:   jmp    0x00007efce72589f0           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.09%  ↘   0x00007efce7258a54:   mov    0x10(%rdx),%ebp              ; ImmutableOopMap {rdx=Oop rbx=Oop r10=Oop [8]=Oop [32]=Oop [40]=Oop [52]=NarrowOop [56]=Oop }
                                                                        ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.07%      0x00007efce7258a57:   mov    0x34(,%rbp,8),%ebp           ; implicit exception: dispatches to 0x00007efce72596c6
                                                                        ; ImmutableOopMap {rdx=Oop rbx=Oop rbp=NarrowOop r10=Oop [8]=Oop [32]=Oop [40]=Oop [52]=NarrowOop [56]=Oop }
                                                                        ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.21%      0x00007efce7258a5e:   mov    0x8(,%rbp,8),%r13d           ; implicit exception: dispatches to 0x00007efce72596ed
   0.28%      0x00007efce7258a66:   mov    %ebp,0x18(%rsp)
   0.10%      0x00007efce7258a6a:   mov    0x10(%r10),%ebp              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
  21.30%      0x00007efce7258a6e:   test   %ebp,%ebp
              0x00007efce7258a70:   je     0x00007efce7258b85
   0.25%      0x00007efce7258a76:   mov    0x8(,%rbp,8),%edx
  23.74%      0x00007efce7258a7d:   movabs $0x7efc6b000000,%r10
   0.04%      0x00007efce7258a87:   lea    (%r10,%rdx,1),%rdx           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.module.DefaultRoots$$Lambda/0x800000005::test@5
                                                                        ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.22%      0x00007efce7258a8b:   mov    %ebp,%r10d
   0.03%      0x00007efce7258a8e:   shl    $0x3,%r10                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
   0.02%      0x00007efce7258a92:   mov    %r10,0x10(%rsp)
   0.03%      0x00007efce7258a97:   movabs $0x7efc6b000000,%r10
   0.25%      0x00007efce7258aa1:   lea    (%r10,%r13,1),%r13
   0.02%      0x00007efce7258aa5:   cmp    -0x2ac(%rip),%r13        # 0x00007efce7258800
                                                                        ;   {section_word}
   0.02%      0x00007efce7258aac:   je     0x00007efce7258af8
              0x00007efce7258ab2:   cmp    -0x2b1(%rip),%r13        # 0x00007efce7258808
                                                                        ;   {section_word}
              0x00007efce7258ab9:   je     0x00007efce7258b91
              0x00007efce7258abf:   cmp    -0x2b6(%rip),%r13        # 0x00007efce7258810
                                                                        ;   {section_word}
              0x00007efce7258ac6:   je     0x00007efce7258bef
              0x00007efce7258acc:   cmp    -0x2bb(%rip),%r13        # 0x00007efce7258818
                                                                        ;   {section_word}
              0x00007efce7258ad3:   je     0x00007efce7258c42
....................................................................................................
  51.61%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.stream.ReduceOps$2ReducingSink::accept, version 5, compile id 1177 

                  JVMCI data     [0x00007efce725b3f0,0x00007efce725b408] = 24
                 [Disassembly]
                 --------------------------------------------------------------------------------
                 [Constant Pool (empty)]
                 --------------------------------------------------------------------------------
                 [Entry Point]
                   # {method} {0x00007efc601a06e8} &apos;accept&apos; &apos;(Ljava/lang/Object;)V&apos; in &apos;java/util/stream/ReduceOps$2ReducingSink&apos;
                   # this:     rsi:rsi   = &apos;java/util/stream/ReduceOps$2ReducingSink&apos;
                   # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                   #           [sp+0x20]  (sp of caller)
   0.24%           0x00007efce725aa40:   mov    0x8(%rsi),%r10d
   0.03%           0x00007efce725aa44:   movabs $0x7efc6b000000,%r12
   0.02%           0x00007efce725aa4e:   add    %r12,%r10
   0.02%           0x00007efce725aa51:   xor    %r12,%r12
   0.24%           0x00007efce725aa54:   cmp    %r10,%rax
                   0x00007efce725aa57:   jne    0x00007efce6c2f080           ;   {runtime_call ic_miss_stub}
   0.05%           0x00007efce725aa5d:   data16 xchg %ax,%ax
                 [Verified Entry Point]
   0.04%           0x00007efce725aa60:   mov    %eax,-0x14000(%rsp)
   0.29%           0x00007efce725aa67:   sub    $0x18,%rsp
   0.03%           0x00007efce725aa6b:   nop
   0.03%           0x00007efce725aa6c:   cmpl   $0x1,0x20(%r15)
   0.04%           0x00007efce725aa74:   jne    0x00007efce725ae40
   0.20%           0x00007efce725aa7a:   mov    %rbp,0x10(%rsp)
   0.03%           0x00007efce725aa7f:   mov    %rsi,%r10
   0.02%           0x00007efce725aa82:   cmpb   $0x0,0xc(%r10)
   0.03%           0x00007efce725aa87:   jne    0x00007efce725acd3           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.stream.ReduceOps$2ReducingSink::accept@4 (line 119)
   0.24%           0x00007efce725aa8d:   mov    0x14(%r10),%esi              ;*getfield val$operator {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.stream.ReduceOps$2ReducingSink::accept@22 (line 123)
   0.03%           0x00007efce725aa91:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.03%           0x00007efce725aa9c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rdx=Oop rsi=NarrowOop r10=Oop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.stream.ReduceOps$2ReducingSink::accept@0 (line 119)
   0.03%           0x00007efce725aaa0:   cmpl   $0x103bb60,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007efce725ae66
                                                                             ;   {metadata(&apos;java/util/function/BinaryOperator$$Lambda+0x00007efc6c03bb60&apos;)}
   0.31%           0x00007efce725aaab:   jne    0x00007efce725ae31           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
   0.02%           0x00007efce725aab1:   mov    0xc(,%rsi,8),%esi            ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.function.BinaryOperator$$Lambda/0x00007efc6c03bb60::apply@1
                                                                             ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
   0.05%           0x00007efce725aab8:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdx=Oop rsi=NarrowOop r10=Oop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.stream.ReduceOps$2ReducingSink::accept@0 (line 119)
   0.23%           0x00007efce725aac0:   cmpl   $0x103b8c8,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007efce725ae8d
                                                                             ;   {metadata(&apos;java/util/Comparator$$Lambda+0x00007efc6c03b8c8&apos;)}
   0.06%           0x00007efce725aacb:   jne    0x00007efce725adbe           ;*invokeinterface compare {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                             ; - java.util.function.BinaryOperator$$Lambda/0x00007efc6c03bb60::apply@6
                                                                             ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
   0.04%           0x00007efce725aad1:   mov    0xc(,%rsi,8),%esi            ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.Comparator$$Lambda/0x00007efc6c03b8c8::compare@1
                                                                             ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                             ; - java.util.function.BinaryOperator$$Lambda/0x00007efc6c03bb60::apply@6
                                                                             ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
   0.25%           0x00007efce725aad8:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdx=Oop r10=Oop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.stream.ReduceOps$2ReducingSink::accept@0 (line 119)
   0.03%           0x00007efce725aae0:   cmpl   $0x1084000,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007efce725aeb0
                                                                             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007efc6c084000&apos;)}
   0.07%           0x00007efce725aaeb:   jne    0x00007efce725ade6           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                             ; - java.util.Comparator$$Lambda/0x00007efc6c03b8c8::compare@6
                                                                             ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                             ; - java.util.function.BinaryOperator$$Lambda/0x00007efc6c03bb60::apply@6
                                                                             ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
   0.24%           0x00007efce725aaf1:   mov    0x10(%r10),%esi              ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.stream.ReduceOps$2ReducingSink::accept@26 (line 123)
   0.02%           0x00007efce725aaf5:   test   %esi,%esi
          ╭        0x00007efce725aaf7:   je     0x00007efce725ac2e
   0.02%  │        0x00007efce725aafd:   mov    0x8(,%rsi,8),%r11d
   0.04%  │        0x00007efce725ab05:   movabs $0x7efc6b000000,%r8
   0.24%  │        0x00007efce725ab0f:   lea    (%r8,%r11,1),%r11
   0.04%  │     ↗  0x00007efce725ab13:   movabs $0x7efc6c02b708,%r8          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
   0.03%  │     │  0x00007efce725ab1d:   data16 xchg %ax,%ax
   0.03%  │     │  0x00007efce725ab20:   test   %esi,%esi
          │╭    │  0x00007efce725ab22:   je     0x00007efce725ab31           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007efc6c084000::apply@1
          ││    │                                                            ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
          ││    │                                                            ; - java.util.Comparator$$Lambda/0x00007efc6c03b8c8::compare@6
          ││    │                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
          ││    │                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007efc6c03bb60::apply@6
          ││    │                                                            ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
   0.22%  ││    │  0x00007efce725ab28:   cmp    %r11,%r8
          ││    │  0x00007efce725ab2b:   jne    0x00007efce725ae13           ; ImmutableOopMap {rdx=Oop rsi=NarrowOop r10=Oop }
          ││    │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          ││    │                                                            ; - (reexecute) java.util.stream.ReduceOps$2ReducingSink::accept@0 (line 119)
   0.04%  │↘    │  0x00007efce725ab31:   mov    0x18(,%rsi,8),%r11d          ; implicit exception: dispatches to 0x00007efce725aed3
   0.02%  │     │  0x00007efce725ab39:   nopl   0x0(%rax)                    ; ImmutableOopMap {rdx=Oop rsi=NarrowOop r10=Oop r11=NarrowOop }
          │     │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │     │                                                            ; - (reexecute) java.util.stream.ReduceOps$2ReducingSink::accept@0 (line 119)
   0.04%  │     │  0x00007efce725ab40:   cmpl   $0xbbbb8,0x8(,%r11,8)        ; implicit exception: dispatches to 0x00007efce725aef6
          │     │                                                            ;   {metadata(&apos;java/util/ArrayList&apos;)}
   0.30%  │     │  0x00007efce725ab4c:   jne    0x00007efce725adf5           ;*invokeinterface size {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@4 (line 168)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007efc6c084000::apply@4
          │     │                                                            ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
          │     │                                                            ; - java.util.Comparator$$Lambda/0x00007efc6c03b8c8::compare@6
          │     │                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
          │     │                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007efc6c03bb60::apply@6
          │     │                                                            ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
   0.03%  │     │  0x00007efce725ab52:   test   %rdx,%rdx
          │     │  0x00007efce725ab55:   je     0x00007efce725ac6f
   0.05%  │     │  0x00007efce725ab5b:   mov    0x8(%rdx),%r9d
   0.26%  │     │  0x00007efce725ab5f:   movabs $0x7efc6b000000,%rcx
   0.03%  │     │  0x00007efce725ab69:   lea    (%rcx,%r9,1),%r9
   0.03%  │     │  0x00007efce725ab6d:   test   %rdx,%rdx
          │ ╭   │  0x00007efce725ab70:   je     0x00007efce725ab7f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007efc6c084000::apply@1
          │ │   │                                                            ; - java.util.Comparator::lambda$comparing$77a9974f$1@12 (line 473)
          │ │   │                                                            ; - java.util.Comparator$$Lambda/0x00007efc6c03b8c8::compare@6
          │ │   │                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
          │ │   │                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007efc6c03bb60::apply@6
          │ │   │                                                            ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
   0.04%  │ │   │  0x00007efce725ab76:   cmp    %r9,%r8
          │ │   │  0x00007efce725ab79:   jne    0x00007efce725ae22           ; ImmutableOopMap {rdx=Oop rsi=NarrowOop r10=Oop r11=NarrowOop }
          │ │   │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │ │   │                                                            ; - (reexecute) java.util.stream.ReduceOps$2ReducingSink::accept@0 (line 119)
   0.23%  │ ↘   │  0x00007efce725ab7f:   mov    0x18(%rdx),%r8d              ; implicit exception: dispatches to 0x00007efce725af19
          │     │                                                            ; ImmutableOopMap {rdx=Oop rsi=NarrowOop r8=NarrowOop r10=Oop r11=NarrowOop }
          │     │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │     │                                                            ; - (reexecute) java.util.stream.ReduceOps$2ReducingSink::accept@0 (line 119)
   1.13%  │     │  0x00007efce725ab83:   cmpl   $0xbbbb8,0x8(,%r8,8)         ; implicit exception: dispatches to 0x00007efce725af3c
          │     │                                                            ;   {metadata(&apos;java/util/ArrayList&apos;)}
  32.88%  │     │  0x00007efce725ab8f:   jne    0x00007efce725ae04           ;*invokeinterface size {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@4 (line 168)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007efc6c084000::apply@4
          │     │                                                            ; - java.util.Comparator::lambda$comparing$77a9974f$1@12 (line 473)
          │     │                                                            ; - java.util.Comparator$$Lambda/0x00007efc6c03b8c8::compare@6
          │     │                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
          │     │                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007efc6c03bb60::apply@6
          │     │                                                            ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
   0.29%  │     │  0x00007efce725ab95:   mov    0x10(,%r11,8),%r11d          ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - java.util.ArrayList::size@1 (line 253)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@4 (line 168)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007efc6c084000::apply@4
          │     │                                                            ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
          │     │                                                            ; - java.util.Comparator$$Lambda/0x00007efc6c03b8c8::compare@6
          │     │                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
          │     │                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007efc6c03bb60::apply@6
          │     │                                                            ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
   0.01%  │     │  0x00007efce725ab9d:   data16 xchg %ax,%ax
   0.01%  │     │  0x00007efce725aba0:   cmp    0x10(,%r8,8),%r11d
          │     │  0x00007efce725aba8:   jl     0x00007efce725accb           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@8 (line 74)
          │     │                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007efc6c03bb60::apply@6
          │     │                                                            ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
   1.99%  │     │  0x00007efce725abae:   shl    $0x3,%rsi                    ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - java.util.stream.ReduceOps$2ReducingSink::accept@26 (line 123)
   0.00%  │     │  0x00007efce725abb2:   mov    %rsi,%r11                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@16 (line 74)
          │     │                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007efc6c03bb60::apply@6
          │     │                                                            ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
   0.01%  │     │  0x00007efce725abb5:   cmpb   $0x0,0x40(%r15)
   0.02%  │  ╭  │  0x00007efce725abba:   jne    0x00007efce725ac3a
   0.29%  │  │  │  0x00007efce725abc0:   mov    %r11,%rsi
   0.02%  │  │  │  0x00007efce725abc3:   shr    $0x3,%rsi
   0.01%  │  │  │  0x00007efce725abc7:   mov    %esi,0x10(%r10)
   0.02%  │  │  │  0x00007efce725abcb:   mov    %r10,%rsi
   0.26%  │  │  │  0x00007efce725abce:   xor    %r11,%rsi
   0.02%  │  │  │  0x00007efce725abd1:   test   $0xffffffffffe00000,%rsi
          │  │╭ │  0x00007efce725abd8:   je     0x00007efce725ac0b
   0.01%  │  ││ │  0x00007efce725abde:   xchg   %ax,%ax
   0.01%  │  ││ │  0x00007efce725abe0:   test   %r11,%r11
          │  ││╭│  0x00007efce725abe3:   je     0x00007efce725ac0b
   0.25%  │  ││││  0x00007efce725abe9:   movabs $0x7efcdaeef000,%rsi
   0.01%  │  ││││  0x00007efce725abf3:   shr    $0x9,%r10
   0.01%  │  ││││  0x00007efce725abf7:   nopw   0x0(%rax,%rax,1)
   0.02%  │  ││││  0x00007efce725ac00:   cmpb   $0x2,(%r10,%rsi,1)
   0.28%  │  ││││  0x00007efce725ac05:   jne    0x00007efce725ac7b           ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
          │  ││││                                                            ; - java.util.stream.ReduceOps$2ReducingSink::accept@35 (line 123)
   0.02%  │  │↘↘│  0x00007efce725ac0b:   mov    0x10(%rsp),%rbp
   0.02%  │  │  │  0x00007efce725ac10:   add    $0x18,%rsp
   0.26%  │  │  │  0x00007efce725ac14:   nopl   0x0(%rax,%rax,1)
   0.01%  │  │  │  0x00007efce725ac1c:   data16 data16 xchg %ax,%ax
   0.00%  │  │  │  0x00007efce725ac20:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  │  │  0x00007efce725ac27:   ja     0x00007efce725ae50
   0.02%  │  │  │  0x00007efce725ac2d:   ret    
          ↘  │  │  0x00007efce725ac2e:   mov    $0x0,%r11
             │  ╰  0x00007efce725ac35:   jmp    0x00007efce725ab13           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007efc6c084000::apply@1
             │                                                               ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
             │                                                               ; - java.util.Comparator$$Lambda/0x00007efc6c03b8c8::compare@6
             │                                                               ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
             │                                                               ; - java.util.function.BinaryOperator$$Lambda/0x00007efc6c03bb60::apply@6
             │                                                               ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
             ↘     0x00007efce725ac3a:   lea    0x10(%r10),%rsi
                   0x00007efce725ac3e:   mov    (%rsi),%esi
....................................................................................................
  42.47%  <total for region 2>

....[Hottest Regions]...............................................................................
  51.61%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1175 
  42.47%      jvmci, level 4  java.util.stream.ReduceOps$2ReducingSink::accept, version 5, compile id 1177 
   3.25%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1175 
   0.15%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   1.77%  <...other 612 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.86%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1175 
  42.47%      jvmci, level 4  java.util.stream.ReduceOps$2ReducingSink::accept, version 5, compile id 1177 
   1.60%              kernel  [unknown] 
   0.61%                      <unknown> 
   0.04%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  defaultStream::write 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  MethodMatcher::matches 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  ObjectSynchronizer::is_async_deflation_needed 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  outputStream::print 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.21%  <...other 91 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.33%      jvmci, level 4
   1.60%              kernel
   0.61%                    
   0.23%           libjvm.so
   0.12%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.03%          ld-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%         c1, level 3
   0.01%              [vdso]
   0.01%    perf-2127193.map
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publications_per_author

# Run progress: 64.29% complete, ETA 00:09:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 147.582 ms/op
# Warmup Iteration   2: 120.271 ms/op
# Warmup Iteration   3: 116.507 ms/op
# Warmup Iteration   4: 121.810 ms/op
# Warmup Iteration   5: 121.667 ms/op
Iteration   1: 120.726 ms/op
Iteration   2: 122.622 ms/op
Iteration   3: 122.518 ms/op
Iteration   4: 120.604 ms/op
Iteration   5: 122.295 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publications_per_author":
  121.753 ±(99.9%) 3.855 ms/op [Average]
  (min, avg, max) = (120.604, 121.753, 122.622), stdev = 1.001
  CI (99.9%): [117.899, 125.608] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publications_per_author:asm":
PrintAssembly processed: 299922 total address lines.
Perf output processed (skipped 62.592 seconds):
 Column 1: cycles (62383 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.HashMap::computeIfAbsent, version 5, compile id 1296 

                   # parm1:    rcx:rcx   = &apos;java/util/function/Function&apos;
                   #           [sp+0x60]  (sp of caller)
                   0x00007efc53270a00:   mov    0x8(%rsi),%r10d
                   0x00007efc53270a04:   movabs $0x7efbd7000000,%r12
                   0x00007efc53270a0e:   add    %r12,%r10
                   0x00007efc53270a11:   xor    %r12,%r12
                   0x00007efc53270a14:   cmp    %r10,%rax
                   0x00007efc53270a17:   jne    0x00007efc52c2f080           ;   {runtime_call ic_miss_stub}
                   0x00007efc53270a1d:   data16 xchg %ax,%ax
                 [Verified Entry Point]
   0.06%           0x00007efc53270a20:   mov    %eax,-0x14000(%rsp)
   0.07%           0x00007efc53270a27:   sub    $0x58,%rsp
   0.04%           0x00007efc53270a2b:   nop
   0.02%           0x00007efc53270a2c:   cmpl   $0x1,0x20(%r15)
   0.02%           0x00007efc53270a34:   jne    0x00007efc532713ad
   0.01%           0x00007efc53270a3a:   mov    %rbp,0x50(%rsp)
   0.05%           0x00007efc53270a3f:   mov    %rsi,0x30(%rsp)
   0.03%           0x00007efc53270a44:   mov    %rdx,0x28(%rsp)              ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop [40]=Oop [48]=Oop }
                                                                             ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.HashMap::computeIfAbsent@0 (line 1197)
   0.01%           0x00007efc53270a49:   test   %eax,(%rcx)                  ; implicit exception: dispatches to 0x00007efc532713e6
                                                                             ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop [40]=Oop [48]=Oop }
                                                                             ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.HashMap::computeIfAbsent@0 (line 1197)
   0.03%           0x00007efc53270a4b:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007efc5327140d
   0.13%           0x00007efc53270a4f:   movabs $0x7efbd7000000,%rbx
   0.02%           0x00007efc53270a59:   lea    (%rbx,%r10,1),%rax           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.03%           0x00007efc53270a5d:   mov    0x1e0(%rax),%rbx
   0.03%           0x00007efc53270a64:   mov    0x40(%rbx),%rax
   0.08%           0x00007efc53270a68:   mov    %rdx,%rsi                    ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::hash@9 (line 338)
                                                                             ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.03%           0x00007efc53270a6b:   mov    %rcx,0x20(%rsp)
   0.02%           0x00007efc53270a70:   mov    %r10d,0x44(%rsp)
   0.03%           0x00007efc53270a75:   call   *%rax                        ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
                                                                             ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::hash@9 (line 338)
                                                                             ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.07%           0x00007efc53270a77:   nopl   0x0(%rax,%rax,1)
   0.04%           0x00007efc53270a7f:   mov    0x30(%rsp),%rsi
   0.34%           0x00007efc53270a84:   mov    0x1c(%rsi),%edx              ;*getfield threshold {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@31 (line 1204)
   0.42%           0x00007efc53270a87:   mov    %eax,%ecx
   0.00%           0x00007efc53270a89:   shr    $0x10,%ecx                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::hash@17 (line 338)
                                                                             ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.00%           0x00007efc53270a8c:   xor    %ecx,%eax                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::hash@18 (line 338)
                                                                             ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
                   0x00007efc53270a8e:   cmp    0x14(%rsi),%edx
                   0x00007efc53270a91:   jl     0x00007efc5327109e           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@34 (line 1204)
   0.13%           0x00007efc53270a97:   mov    0x24(%rsi),%edx              ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
   0.07%           0x00007efc53270a9a:   nopw   0x0(%rax,%rax,1)
                   0x00007efc53270aa0:   test   %edx,%edx
                   0x00007efc53270aa2:   je     0x00007efc5327109e           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@44 (line 1204)
   0.11%           0x00007efc53270aa8:   mov    0xc(,%rdx,8),%ecx            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@49 (line 1204)
   0.50%           0x00007efc53270aaf:   test   %ecx,%ecx
                   0x00007efc53270ab1:   je     0x00007efc5327109e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@53 (line 1204)
   0.09%           0x00007efc53270ab7:   shl    $0x3,%rdx                    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
                   0x00007efc53270abb:   mov    %ecx,%r8d
                   0x00007efc53270abe:   dec    %r8d                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@71 (line 1207)
   0.02%           0x00007efc53270ac1:   and    %eax,%r8d                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@73 (line 1207)
   0.10%           0x00007efc53270ac4:   cmp    0xc(%rdx),%r8d
                   0x00007efc53270ac8:   jae    0x00007efc5327134e
   0.12%           0x00007efc53270ace:   mov    0x10(%rdx,%r8,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   1.46%           0x00007efc53270ad3:   mov    0x8(%rsi),%ebx               ;*invokevirtual afterNodeAccess {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@188 (line 1223)
   0.00%           0x00007efc53270ad6:   mov    %r11d,%ebp
                   0x00007efc53270ad9:   shl    $0x3,%rbp
   0.16%           0x00007efc53270add:   data16 xchg %ax,%ax
                   0x00007efc53270ae0:   test   %r11d,%r11d
                   0x00007efc53270ae3:   je     0x00007efc53270fa5
   0.05%           0x00007efc53270ae9:   cmpl   $0x1a7c50,0x8(,%r11,8)       ;   {metadata(&apos;java/util/HashMap$TreeNode&apos;)}
   4.69%           0x00007efc53270af5:   je     0x00007efc532711f0           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   0.11%           0x00007efc53270afb:   nopl   0x0(%rax,%rax,1)
   0.00%           0x00007efc53270b00:   cmp    0xc(,%r11,8),%eax
          ╭        0x00007efc53270b08:   jne    0x00007efc53270c55           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@120 (line 1213)
   0.43%  │        0x00007efc53270b0e:   mov    0x10(,%r11,8),%r9d
   0.16%  │        0x00007efc53270b16:   mov    %r9d,%r10d
   0.00%  │        0x00007efc53270b19:   shl    $0x3,%r10                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
   0.03%  │        0x00007efc53270b1d:   data16 xchg %ax,%ax
   0.05%  │        0x00007efc53270b20:   cmp    0x28(%rsp),%r10
          │        0x00007efc53270b25:   je     0x00007efc53271245
   0.01%  │        0x00007efc53270b2b:   cmpl   $0x102b2b0,0x44(%rsp)        ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
   0.00%  │        0x00007efc53270b33:   jne    0x00007efc53271271           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.01%  │        0x00007efc53270b39:   nopl   0x0(%rax)                    ; ImmutableOopMap {rdx=Oop rbp=Oop rsi=Oop r9=NarrowOop [32]=Oop [40]=Oop [48]=Oop }
          │                                                                  ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │                                                                  ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.07%  │        0x00007efc53270b40:   cmpl   $0x102b2b0,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007efc53271430
          │                                                                  ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
   3.14%  │        0x00007efc53270b4c:   jne    0x00007efc5327125b           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
          │                                                                  ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.07%  │        0x00007efc53270b52:   mov    0x28(%rsp),%r13
   0.00%  │        0x00007efc53270b57:   mov    0xc(%r13),%r10d              ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@30 (line 48)
          │                                                                  ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
          │        0x00007efc53270b5b:   mov    0xc(,%r9,8),%r9d             ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@34 (line 48)
          │                                                                  ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.15%  │        0x00007efc53270b63:   cmp    %r10d,%r9d
          │╭       0x00007efc53270b66:   je     0x00007efc53270d90           ; ImmutableOopMap {rdx=Oop rbp=Oop rsi=Oop r9=NarrowOop r10=NarrowOop r13=Oop [32]=Oop [40]=Oop [48]=Oop }
          ││                                                                 ;*aload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                 ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.06%  ││       0x00007efc53270b6c:   movsbl 0x10(,%r10,8),%edi           ; implicit exception: dispatches to 0x00007efc53271453
   0.00%  ││       0x00007efc53270b75:   mov    0x14(,%r10,8),%r11d          ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.lang.String::equals@0 (line 1858)
          ││                                                                 ; - java.util.Objects::equals@11 (line 64)
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
          ││                                                                 ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
          ││       0x00007efc53270b7d:   data16 xchg %ax,%ax
   0.00%  ││       0x00007efc53270b80:   cmp    %r10d,%r9d
          ││╭      0x00007efc53270b83:   je     0x00007efc53270dab           ; ImmutableOopMap {rdx=Oop rbp=Oop rsi=Oop r9=NarrowOop r11=NarrowOop r13=Oop [32]=Oop [40]=Oop [48]=Oop }
          │││                                                                ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││                                                                ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.08%  │││      0x00007efc53270b89:   movsbl 0x10(,%r9,8),%r10d           ; implicit exception: dispatches to 0x00007efc53271476
   0.81%  │││      0x00007efc53270b92:   mov    0x14(,%r9,8),%r9d            ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - java.lang.String::equals@0 (line 1858)
          │││                                                                ; - java.util.Objects::equals@11 (line 64)
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
          │││                                                                ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.16%  │││      0x00007efc53270b9a:   nopw   0x0(%rax,%rax,1)
          │││      0x00007efc53270ba0:   cmp    %dil,%r10b
          │││      0x00007efc53270ba3:   jne    0x00007efc532712bd           ; ImmutableOopMap {rdx=Oop rbp=Oop rsi=Oop r9=NarrowOop r11=NarrowOop r13=Oop [32]=Oop [40]=Oop [48]=Oop }
          │││                                                                ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││                                                                ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.05%  │││      0x00007efc53270ba9:   mov    0xc(,%r9,8),%r10d            ; implicit exception: dispatches to 0x00007efc53271499
          │││                                                                ; ImmutableOopMap {rdx=Oop rbp=Oop rsi=Oop r9=NarrowOop r11=NarrowOop r13=Oop [32]=Oop [40]=Oop [48]=Oop }
          │││                                                                ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││                                                                ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.82%  │││      0x00007efc53270bb1:   mov    0xc(,%r11,8),%edi            ; implicit exception: dispatches to 0x00007efc532714bc
   0.00%  │││      0x00007efc53270bb9:   nopl   0x0(%rax)
          │││      0x00007efc53270bc0:   cmp    %r10d,%edi
          │││      0x00007efc53270bc3:   jne    0x00007efc53271188
   0.12%  │││      0x00007efc53270bc9:   test   %r10d,%r10d
          │││      0x00007efc53270bcc:   je     0x00007efc53270dc6
   0.09%  │││      0x00007efc53270bd2:   mov    %r8d,0x38(%rsp)
   0.00%  │││      0x00007efc53270bd7:   mov    %rdx,0x18(%rsp)
          │││      0x00007efc53270bdc:   shl    $0x3,%r9
   0.01%  │││      0x00007efc53270be0:   shl    $0x3,%r11
   0.05%  │││      0x00007efc53270be4:   mov    %r9,%rsi
          │││      0x00007efc53270be7:   mov    $0x10,%rdx
          │││      0x00007efc53270bee:   mov    %r11,%rcx
   0.01%  │││      0x00007efc53270bf1:   mov    $0x10,%r8
   0.08%  │││      0x00007efc53270bf8:   mov    %edi,%r9d                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - java.lang.String::equals@0 (line 1858)
          │││                                                                ; - java.util.Objects::equals@11 (line 64)
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
          │││                                                                ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
          │││      0x00007efc53270bfb:   mov    %eax,%r14d
          │││      0x00007efc53270bfe:   xchg   %ax,%ax
   0.01%  │││      0x00007efc53270c00:   call   0x00007efc52dbe880           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.09%  │││      0x00007efc53270c05:   nop
          │││      0x00007efc53270c06:   test   %eax,%eax
          │││      0x00007efc53270c08:   je     0x00007efc532711b4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - java.util.HashMap::computeIfAbsent@145 (line 1214)
          │││      0x00007efc53270c0e:   mov    %rbp,%r11
          │││      0x00007efc53270c11:   mov    $0x0,%r10d                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - java.util.HashMap::computeIfAbsent@148 (line 1215)
   0.11%  │││  ↗↗  0x00007efc53270c17:   test   %r11,%r11
          │││  ││  0x00007efc53270c1a:   je     0x00007efc53270de5           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - java.util.HashMap::computeIfAbsent@171 (line 1222)
          │││  ││  0x00007efc53270c20:   mov    0x14(%r11),%eax              ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││  ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@169 (line 1222)
          │││  ││  0x00007efc53270c24:   test   %eax,0x0(,%rax,8)            ; implicit exception: deoptimizes
          │││  ││                                                            ; ImmutableOopMap {rax=NarrowOop rbp=Oop r11=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
   0.12%  │││  ││  0x00007efc53270c2b:   cmp    $0x8da40,%ebx                ;   {metadata(&apos;java/util/HashMap&apos;)}
          │││  ││  0x00007efc53270c31:   jne    0x00007efc53271287           ;*invokevirtual afterNodeAccess {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - java.util.HashMap::computeIfAbsent@188 (line 1223)
          │││  ││  0x00007efc53270c37:   shl    $0x3,%rax                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - java.util.HashMap::computeIfAbsent@176 (line 1222)
          │││  ││  0x00007efc53270c3b:   mov    0x50(%rsp),%rbp
   0.13%  │││  ││  0x00007efc53270c40:   add    $0x58,%rsp
          │││  ││  0x00007efc53270c44:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  ││  0x00007efc53270c4b:   ja     0x00007efc532713bd
          │││  ││  0x00007efc53270c51:   vzeroupper 
   0.11%  │││  ││  0x00007efc53270c54:   ret                                 ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   0.58%  ↘││  ││  0x00007efc53270c55:   mov    %r8d,0x38(%rsp)
   0.41%   ││  ││  0x00007efc53270c5a:   mov    %rdx,0x18(%rsp)
   0.18%   ││  ││  0x00007efc53270c5f:   mov    %eax,%r14d
           ││  ││  0x00007efc53270c62:   mov    0x28(%rsp),%r13
   0.01%   ││  ││  0x00007efc53270c67:   mov    0x18(,%r11,8),%esi           ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.09%   ││  ││  0x00007efc53270c6f:   test   %esi,%esi
           ││  ││  0x00007efc53270c71:   je     0x00007efc53270f93           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
   0.05%   ││  ││  0x00007efc53270c77:   nopw   0x0(%rax,%rax,1)
           ││  ││  0x00007efc53270c80:   cmpl   $0x102b2b0,0x44(%rsp)        ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
   0.00%   ││  ││  0x00007efc53270c88:   jne    0x00007efc5327132d           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.00%   ││  ││  0x00007efc53270c8e:   mov    0xc(%r13),%edx               ; ImmutableOopMap {rdx=NarrowOop rbp=Oop rsi=NarrowOop r13=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           ││  ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           ││  ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.03%   ││  ││  0x00007efc53270c92:   movsbl 0x10(,%rdx,8),%r9d           ; implicit exception: dispatches to 0x00007efc532714df
   0.09%   ││  ││  0x00007efc53270c9b:   mov    0x14(,%rdx,8),%ecx           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.lang.String::equals@0 (line 1858)
           ││  ││                                                            ; - java.util.Objects::equals@11 (line 64)
           ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.01%   ││  ││  0x00007efc53270ca2:   shl    $0x3,%rsi                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
           ││  ││  0x00007efc53270ca6:   mov    $0x1,%r10d
   0.00%   ││╭ ││  0x00007efc53270cac:   jmp    0x00007efc53270ce1           ;*aload {reexecute=0 rethrow=0 return_oop=0}
           │││ ││                                                            ; - java.util.HashMap::computeIfAbsent@114 (line 1213)
           │││ ││  0x00007efc53270cb1:   data16 data16 nopw 0x0(%rax,%rax,1)
           │││ ││  0x00007efc53270cbc:   data16 data16 xchg %ax,%ax          ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
           │││ ││                                                            ; - java.util.HashMap::computeIfAbsent@116 (line 1213)
   0.07%   │││↗││  0x00007efc53270cc0:   mov    0x18(%r11),%esi              ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.09%   ││││││  0x00007efc53270cc4:   mov    %r10d,%edi
           ││││││  0x00007efc53270cc7:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - java.util.HashMap::computeIfAbsent@155 (line 1218)
           ││││││  0x00007efc53270cc9:   test   %esi,%esi
           ││││││  0x00007efc53270ccb:   je     0x00007efc5327102a           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
   0.02%   ││││││  0x00007efc53270cd1:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rcx=NarrowOop rdx=NarrowOop rbp=Oop rsi=NarrowOop r11=Oop r13=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           ││││││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           ││││││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.01%   ││││││  0x00007efc53270cd8:   test   %eax,(%rax)                  ;   {poll}
   0.04%   ││││││  0x00007efc53270cda:   shl    $0x3,%rsi                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
           ││││││  0x00007efc53270cde:   mov    %edi,%r10d                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.04%   ││↘│││  0x00007efc53270ce1:   mov    %rsi,%r11                    ; ImmutableOopMap {rcx=NarrowOop rdx=NarrowOop rbp=Oop r11=Oop r13=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           ││ │││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           ││ │││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.01%   ││ │││  0x00007efc53270ce4:   mov    0xc(%r11),%esi               ; implicit exception: dispatches to 0x00007efc53271502
   1.83%   ││ │││  0x00007efc53270ce8:   mov    0x10(%r11),%edi              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           ││ │││                                                            ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
   0.23%   ││ │││  0x00007efc53270cec:   cmp    %r14d,%esi
           ││ ╰││  0x00007efc53270cef:   jne    0x00007efc53270cc0           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@120 (line 1213)
   0.01%   ││  ││  0x00007efc53270cf1:   mov    %edi,%esi
           ││  ││  0x00007efc53270cf3:   shl    $0x3,%rsi                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
   0.03%   ││  ││  0x00007efc53270cf7:   cmp    %r13,%rsi
           ││  ││  0x00007efc53270cfa:   je     0x00007efc532712d3           ; ImmutableOopMap {rcx=NarrowOop rdx=NarrowOop rbp=Oop rdi=NarrowOop r11=Oop r13=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           ││  ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           ││  ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.04%   ││  ││  0x00007efc53270d00:   cmpl   $0x102b2b0,0x8(,%rdi,8)      ; implicit exception: dispatches to 0x00007efc53271525
           ││  ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
   1.80%   ││  ││  0x00007efc53270d0b:   jne    0x00007efc53271299           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.03%   ││  ││  0x00007efc53270d11:   mov    0xc(,%rdi,8),%esi            ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@34 (line 48)
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.07%   ││  ││  0x00007efc53270d18:   cmp    %edx,%esi
           ││  ││  0x00007efc53270d1a:   je     0x00007efc53270f5e           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.util.Objects::equals@2 (line 64)
           ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.05%   ││  ││  0x00007efc53270d20:   cmp    %edx,%esi
           ││  ││  0x00007efc53270d22:   je     0x00007efc53270fbf           ; ImmutableOopMap {rcx=NarrowOop rbp=Oop rsi=NarrowOop r11=Oop r13=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           ││  ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           ││  ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.03%   ││  ││  0x00007efc53270d28:   movsbl 0x10(,%rsi,8),%edx           ; implicit exception: dispatches to 0x00007efc53271548
   0.43%   ││  ││  0x00007efc53270d30:   mov    0x14(,%rsi,8),%esi           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.lang.String::equals@0 (line 1858)
           ││  ││                                                            ; - java.util.Objects::equals@11 (line 64)
           ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.06%   ││  ││  0x00007efc53270d37:   cmp    %r9b,%dl
           ││  ││  0x00007efc53270d3a:   jne    0x00007efc53271389           ; ImmutableOopMap {rcx=NarrowOop rbp=Oop rsi=NarrowOop r11=Oop r13=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           ││  ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           ││  ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.02%   ││  ││  0x00007efc53270d40:   mov    0xc(,%rsi,8),%edx            ; implicit exception: dispatches to 0x00007efc5327156d
           ││  ││                                                            ; ImmutableOopMap {rcx=NarrowOop rbp=Oop rsi=NarrowOop r11=Oop r13=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           ││  ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           ││  ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.39%   ││  ││  0x00007efc53270d47:   mov    0xc(,%rcx,8),%r9d            ; implicit exception: dispatches to 0x00007efc53271590
           ││  ││  0x00007efc53270d4f:   cmp    %edx,%r9d
           ││  ││  0x00007efc53270d52:   jne    0x00007efc53271365
   0.04%   ││  ││  0x00007efc53270d58:   test   %edx,%edx
           ││  ││  0x00007efc53270d5a:   je     0x00007efc53270fc7
   0.05%   ││  ││  0x00007efc53270d60:   shl    $0x3,%rsi
           ││  ││  0x00007efc53270d64:   shl    $0x3,%rcx
           ││  ││  0x00007efc53270d68:   mov    $0x10,%rdx
           ││  ││  0x00007efc53270d6f:   mov    $0x10,%r8                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.lang.String::equals@0 (line 1858)
           ││  ││                                                            ; - java.util.Objects::equals@11 (line 64)
           ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.03%   ││  ││  0x00007efc53270d76:   mov    %r10d,%r13d
           ││  ││  0x00007efc53270d79:   call   0x00007efc52dbe880           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.02%   ││  ││  0x00007efc53270d7e:   nop
           ││  ││  0x00007efc53270d7f:   nop
           ││  ││  0x00007efc53270d80:   test   %eax,%eax
           ││  ││  0x00007efc53270d82:   je     0x00007efc53271203           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.util.HashMap::computeIfAbsent@145 (line 1214)
           ││  ││  0x00007efc53270d88:   mov    %r13d,%r10d
   0.04%   ││  ╰│  0x00007efc53270d8b:   jmp    0x00007efc53270c17           ;*aload {reexecute=0 rethrow=0 return_oop=0}
           ││   │                                                            ; - java.util.HashMap::computeIfAbsent@169 (line 1222)
           ↘│   │  0x00007efc53270d90:   mov    %rbp,%r11
            │   │  0x00007efc53270d93:   mov    $0x0,%r10d
            │   │  0x00007efc53270d99:   mov    %r8d,0x38(%rsp)
            │   │  0x00007efc53270d9e:   mov    %rdx,0x18(%rsp)
            │   │  0x00007efc53270da3:   mov    %eax,%r14d
            │   ╰  0x00007efc53270da6:   jmp    0x00007efc53270c17
            ↘      0x00007efc53270dab:   mov    %rbp,%r11
                   0x00007efc53270dae:   mov    $0x0,%r10d
                   0x00007efc53270db4:   mov    %r8d,0x38(%rsp)
....................................................................................................
  23.22%  <total for region 1>

....[Hottest Regions]...............................................................................
  23.22%      jvmci, level 4  java.util.HashMap::computeIfAbsent, version 5, compile id 1296 
   6.64%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007efbd803ca80::accept, version 3, compile id 1283 
   5.66%      jvmci, level 4  java.util.stream.Collectors::lambda$uniqKeysMapAccumulator$1, version 3, compile id 1163 
   5.05%      jvmci, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 3, compile id 1279 
   4.92%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   4.32%      jvmci, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 3, compile id 1279 
   3.88%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007efbd8069340::accept, version 2, compile id 1094 
   3.09%           libjvm.so  G1ScanCardClosure::do_oop_work<narrowOop> 
   3.07%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007efbd803ccb0::accept, version 3, compile id 1271 
   3.03%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1307 
   2.69%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 3, compile id 1272 
   2.61%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   1.94%      jvmci, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 3, compile id 1279 
   1.83%      jvmci, level 4  java.util.HashMap::resize, version 4, compile id 1309 
   1.64%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   1.62%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   1.59%      jvmci, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 4, compile id 1305 
   1.30%           libjvm.so  OopOopIterateBoundedDispatch<G1ConcurrentRefineOopClosure>::Table::oop_oop_iterate_bounded<ObjArrayKlass, narrowOop> 
   1.22%                      <unknown> 
   1.13%      jvmci, level 4  java.util.stream.ForEachOps$ForEachOp$OfRef::accept, version 2, compile id 1232 
  19.54%  <...other 665 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  23.25%      jvmci, level 4  java.util.HashMap::computeIfAbsent, version 5, compile id 1296 
  12.04%      jvmci, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 3, compile id 1279 
   8.52%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   7.73%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007efbd803ca80::accept, version 3, compile id 1283 
   6.37%      jvmci, level 4  java.util.stream.Collectors::lambda$uniqKeysMapAccumulator$1, version 3, compile id 1163 
   5.21%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   4.03%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007efbd8069340::accept, version 2, compile id 1094 
   3.87%           libjvm.so  G1ScanCardClosure::do_oop_work<narrowOop> 
   3.67%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 3, compile id 1272 
   3.07%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007efbd803ccb0::accept, version 3, compile id 1271 
   3.03%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1307 
   2.66%                      <unknown> 
   2.58%      jvmci, level 4  java.util.HashMap::resize, version 4, compile id 1309 
   1.59%      jvmci, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 4, compile id 1305 
   1.30%           libjvm.so  OopOopIterateBoundedDispatch<G1ConcurrentRefineOopClosure>::Table::oop_oop_iterate_bounded<ObjArrayKlass, narrowOop> 
   1.20%              kernel  [unknown] 
   1.13%      jvmci, level 4  java.util.stream.ForEachOps$ForEachOp$OfRef::accept, version 2, compile id 1232 
   1.04%      jvmci, level 4  java.util.stream.AbstractPipeline::copyInto, version 4, compile id 1345 
   1.02%      jvmci, level 4  java.util.HashMap::putVal, version 3, compile id 1109 
   0.93%      jvmci, level 4  java.util.stream.Sink$ChainedReference::begin, version 4, compile id 1346 
   5.78%  <...other 221 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  73.02%      jvmci, level 4
  21.87%           libjvm.so
   2.66%                    
   1.20%              kernel
   0.59%        runtime stub
   0.33%    perf-2127257.map
   0.18%        libc-2.31.so
   0.08%          ld-2.31.so
   0.02%  libpthread-2.31.so
   0.02%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publications_with_the_most_authors_per_year

# Run progress: 71.43% complete, ETA 00:07:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.909 ms/op
# Warmup Iteration   2: 9.291 ms/op
# Warmup Iteration   3: 9.434 ms/op
# Warmup Iteration   4: 9.233 ms/op
# Warmup Iteration   5: 9.073 ms/op
Iteration   1: 9.205 ms/op
Iteration   2: 9.486 ms/op
Iteration   3: 9.347 ms/op
Iteration   4: 9.342 ms/op
Iteration   5: 9.345 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publications_with_the_most_authors_per_year":
  9.345 ±(99.9%) 0.382 ms/op [Average]
  (min, avg, max) = (9.205, 9.345, 9.486), stdev = 0.099
  CI (99.9%): [8.963, 9.728] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publications_with_the_most_authors_per_year:asm":
PrintAssembly processed: 316343 total address lines.
Perf output processed (skipped 62.107 seconds):
 Column 1: cycles (51116 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.stream.Collectors::lambda$groupingBy$53, version 3, compile id 1217 

                 [Constant Pool (empty)]
                 --------------------------------------------------------------------------------
                 [Verified Entry Point]
                   # {method} {0x00007f6f070e13f0} &apos;lambda$groupingBy$53&apos; &apos;(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/Map;Ljava/lang/Object;)V&apos; in &apos;java/util/stream/Collectors&apos;
                   # parm0:    rsi:rsi   = &apos;java/util/function/Function&apos;
                   # parm1:    rdx:rdx   = &apos;java/util/function/Supplier&apos;
                   # parm2:    rcx:rcx   = &apos;java/util/function/BiConsumer&apos;
                   # parm3:    r8:r8     = &apos;java/util/Map&apos;
                   # parm4:    r9:r9     = &apos;java/lang/Object&apos;
                   #           [sp+0x70]  (sp of caller)
   0.14%           0x00007f6f872617a0:   mov    %eax,-0x14000(%rsp)
   0.25%           0x00007f6f872617a7:   sub    $0x68,%rsp
   0.04%           0x00007f6f872617ab:   nop
   0.12%           0x00007f6f872617ac:   cmpl   $0x1,0x20(%r15)
   0.26%           0x00007f6f872617b4:   jne    0x00007f6f87262968
   0.01%           0x00007f6f872617ba:   mov    %rbp,0x60(%rsp)
   0.07%           0x00007f6f872617bf:   mov    %rdx,0x38(%rsp)
   0.10%           0x00007f6f872617c4:   mov    %r8,0x30(%rsp)               ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=Oop r9=Oop [48]=Oop [56]=Oop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@0 (line 1105)
   0.24%           0x00007f6f872617c9:   cmpl   $0x10848e8,0x8(%rsi)         ; implicit exception: dispatches to 0x00007f6f8726298c
                                                                             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007f6f080848e8&apos;)}
                   0x00007f6f872617d0:   jne    0x00007f6f8726267e           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.06%           0x00007f6f872617d6:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=Oop r9=Oop [48]=Oop [56]=Oop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@0 (line 1105)
   0.14%           0x00007f6f872617e0:   cmpl   $0x8da40,0x8(%r8)            ; implicit exception: dispatches to 0x00007f6f872629af
                                                                             ;   {metadata(&apos;java/util/HashMap&apos;)}
   0.25%           0x00007f6f872617e8:   jne    0x00007f6f8726290e           ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                   0x00007f6f872617ee:   test   %r9,%r9
          ╭        0x00007f6f872617f1:   je     0x00007f6f87261b6a
   0.05%  │        0x00007f6f872617f7:   mov    0x8(%r9),%eax
   8.23%  │        0x00007f6f872617fb:   movabs $0x7f6f07000000,%r10
   0.14%  │        0x00007f6f87261805:   lea    (%r10,%rax,1),%rax
   0.10%  │        0x00007f6f87261809:   movabs $0x7f6f0802b6f8,%r10         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
   0.03%  │        0x00007f6f87261813:   test   %r9,%r9
          │╭       0x00007f6f87261816:   je     0x00007f6f87261829           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f6f080848e8::apply@1
          ││                                                                 ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.09%  ││       0x00007f6f8726181c:   nopl   0x0(%rax)
   0.17%  ││       0x00007f6f87261820:   cmp    %rax,%r10
          ││       0x00007f6f87261823:   jne    0x00007f6f87262932           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=Oop r9=Oop [48]=Oop [56]=Oop }
          ││                                                                 ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                 ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@0 (line 1105)
   0.12%  │↘       0x00007f6f87261829:   mov    0xc(%r9),%r11d               ; implicit exception: dispatches to 0x00007f6f872629d2
   0.17%  │        0x00007f6f8726182d:   mov    0x1c(%r8),%eax               ;*getfield threshold {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@31 (line 1204)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.09%  │        0x00007f6f87261831:   mov    %r11d,%ebx
   0.16%  │        0x00007f6f87261834:   shr    $0x10,%ebx                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::hash@17 (line 338)
          │                                                                  ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.10%  │        0x00007f6f87261837:   xor    %r11d,%ebx                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::hash@18 (line 338)
          │                                                                  ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.14%  │        0x00007f6f8726183a:   mov    %ebx,0x54(%rsp)
   0.31%  │        0x00007f6f8726183e:   xchg   %ax,%ax
   0.17%  │        0x00007f6f87261840:   cmp    0x14(%r8),%eax
          │        0x00007f6f87261844:   jl     0x00007f6f87262129           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@34 (line 1204)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.01%  │        0x00007f6f8726184a:   mov    0x24(%r8),%eax               ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.04%  │        0x00007f6f8726184e:   test   %eax,%eax
          │        0x00007f6f87261850:   je     0x00007f6f87262129           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@44 (line 1204)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.22%  │        0x00007f6f87261856:   mov    0xc(,%rax,8),%edi            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@49 (line 1204)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.15%  │        0x00007f6f8726185d:   data16 xchg %ax,%ax
   0.00%  │        0x00007f6f87261860:   test   %edi,%edi
          │        0x00007f6f87261862:   je     0x00007f6f87262920           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@53 (line 1204)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.03%  │        0x00007f6f87261868:   shl    $0x3,%rax                    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.20%  │        0x00007f6f8726186c:   mov    %edi,%esi
   0.18%  │        0x00007f6f8726186e:   dec    %esi                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@71 (line 1207)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.00%  │        0x00007f6f87261870:   and    %ebx,%esi                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@73 (line 1207)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.04%  │        0x00007f6f87261872:   cmp    0xc(%rax),%esi
          │        0x00007f6f87261875:   jae    0x00007f6f87262945
   0.24%  │        0x00007f6f8726187b:   mov    %edi,0x4c(%rsp)
   0.19%  │        0x00007f6f8726187f:   mov    0x10(%rax,%rsi,4),%ebp
   0.17%  │        0x00007f6f87261883:   mov    %ebp,%r13d
   0.03%  │        0x00007f6f87261886:   shl    $0x3,%r13                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.20%  │        0x00007f6f8726188a:   lea    0x80(%r11),%r14d             ;* unwind (locked if synchronized)
          │                                                                  ; - java.lang.Integer::valueOf@-3
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f6f080848e8::apply@7
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.15%  │        0x00007f6f87261891:   movabs $0x7f6f7b6ef000,%rdi         ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@289 (line 1240)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.01%  │        0x00007f6f8726189b:   nopl   0x0(%rax,%rax,1)
   0.03%  │        0x00007f6f872618a0:   test   %ebp,%ebp
          │        0x00007f6f872618a2:   je     0x00007f6f87261c45
   0.24%  │        0x00007f6f872618a8:   cmpl   $0x1a7c50,0x8(,%rbp,8)       ;   {metadata(&apos;java/util/HashMap$TreeNode&apos;)}
   1.76%  │        0x00007f6f872618b3:   je     0x00007f6f87262874           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.22%  │        0x00007f6f872618b9:   nopl   0x0(%rax)
   0.06%  │        0x00007f6f872618c0:   cmp    0xc(,%rbp,8),%ebx
          │        0x00007f6f872618c7:   jne    0x00007f6f87261f65           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@120 (line 1213)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.82%  │        0x00007f6f872618cd:   mov    0x10(,%rbp,8),%ebp           ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.16%  │        0x00007f6f872618d4:   nopl   0x0(%rax,%rax,1)
   0.06%  │        0x00007f6f872618dc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rax=Oop rcx=Oop rdx=Oop rbp=NarrowOop r8=Oop r9=Oop r13=Oop [48]=Oop [56]=Oop }
          │                                                                  ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │                                                                  ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.09%  │        0x00007f6f872618e0:   cmpl   $0x25c88,0x8(,%rbp,8)        ; implicit exception: dispatches to 0x00007f6f872629f5
          │                                                                  ;   {metadata(&apos;java/lang/Integer&apos;)}
   2.07%  │        0x00007f6f872618eb:   jne    0x00007f6f8726281a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.lang.Integer::equals@4 (line 1224)
          │                                                                  ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.35%  │        0x00007f6f872618f1:   mov    0xc(,%rbp,8),%r8d            ;* unwind (locked if synchronized)
          │                                                                  ; - java.lang.Integer::intValue@-3
          │                                                                  ; - java.lang.Integer::equals@15 (line 1225)
          │                                                                  ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.21%  │        0x00007f6f872618f9:   nopl   0x0(%rax)
   0.01%  │        0x00007f6f87261900:   cmp    $0x100,%r14d
          │ ╭      0x00007f6f87261907:   jb     0x00007f6f87261b52
   0.03%  │ │      0x00007f6f8726190d:   mov    0x1b8(%r15),%r14
   0.28%  │ │      0x00007f6f87261914:   lea    0x10(%r14),%rdx
   0.05%  │ │      0x00007f6f87261918:   nopl   0x0(%rax,%rax,1)
   0.01%  │ │      0x00007f6f87261920:   cmp    0x1c8(%r15),%rdx
          │ │      0x00007f6f87261927:   ja     0x00007f6f87261c0b
   0.03%  │ │      0x00007f6f8726192d:   mov    %rdx,0x1b8(%r15)
   0.28%  │ │      0x00007f6f87261934:   prefetchw 0xd0(%r14)
   0.06%  │ │      0x00007f6f8726193c:   movq   $0x1,(%r14)
   0.01%  │ │      0x00007f6f87261943:   movl   $0x25c88,0x8(%r14)           ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.03%  │ │      0x00007f6f8726194b:   movl   $0x0,0xc(%r14)
   0.29%  │ │      0x00007f6f87261953:   mov    %r11d,0xc(%r14)
   0.04%  │ │      0x00007f6f87261957:   mov    %r14,%rdx                    ;* unwind (locked if synchronized)
          │ │                                                                ; - java.lang.Integer::valueOf@-3
          │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f6f080848e8::apply@7
          │ │                                                                ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.01%  │ │   ↗  0x00007f6f8726195a:   shl    $0x3,%rbp                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.04%  │ │   │  0x00007f6f8726195e:   xchg   %ax,%ax
   0.36%  │ │   │  0x00007f6f87261960:   cmp    %rbp,%rdx
          │ │   │  0x00007f6f87261963:   je     0x00007f6f87262797           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.HashMap::computeIfAbsent@132 (line 1213)
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.07%  │ │   │  0x00007f6f87261969:   cmp    0xc(%rdx),%r8d
          │ │   │  0x00007f6f8726196d:   jne    0x00007f6f872627fe           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.lang.Integer::equals@18 (line 1225)
          │ │   │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.10%  │ │   │  0x00007f6f87261973:   mov    %rdx,%r8
   0.03%  │ │   │  0x00007f6f87261976:   mov    %r13,%r11
   0.26%  │ │   │  0x00007f6f87261979:   mov    $0x0,%edx                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.HashMap::computeIfAbsent@148 (line 1215)
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.07%  │ │   │  0x00007f6f8726197e:   xchg   %ax,%ax
   0.01%  │ │   │  0x00007f6f87261980:   test   %r11,%r11
          │ │   │  0x00007f6f87261983:   je     0x00007f6f87261ff9           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.HashMap::computeIfAbsent@171 (line 1222)
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.03%  │ │   │  0x00007f6f87261989:   mov    0x14(%r11),%ebp              ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │ │   │                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@169 (line 1222)
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.26%  │ │   │  0x00007f6f8726198d:   test   %eax,0x0(,%rbp,8)            ; implicit exception: deoptimizes
          │ │   │                                                            ; ImmutableOopMap {rax=Oop rcx=Oop rbp=NarrowOop r8=Oop r9=Oop r11=Oop r13=Oop [48]=Oop [56]=Oop }
   0.13%  │ │   │  0x00007f6f87261994:   shl    $0x3,%rbp                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.HashMap::computeIfAbsent@176 (line 1222)
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.04%  │ │   │  0x00007f6f87261998:   nopl   0x0(%rax,%rax,1)
   0.28%  │ │   │  0x00007f6f872619a0:   cmpl   $0x76c,0xc(%r9)
   0.06%  │ │   │  0x00007f6f872619a8:   jl     0x00007f6f87262862           ; ImmutableOopMap {rcx=Oop rbp=Oop r9=Oop }
          │ │   │                                                            ;*astore {reexecute=1 rethrow=0 return_oop=0}
          │ │   │                                                            ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
   0.03%  │ │   │  0x00007f6f872619ae:   cmpl   $0x103c8a8,0x8(%rcx)         ; implicit exception: dispatches to 0x00007f6f87262a18
          │ │   │                                                            ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f6f0803c8a8&apos;)}
   0.04%  │ │   │  0x00007f6f872619b5:   jne    0x00007f6f872626e1           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.29%  │ │   │  0x00007f6f872619bb:   mov    0xc(%rcx),%esi               ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@1
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.06%  │ │   │  0x00007f6f872619be:   xchg   %ax,%ax                      ; ImmutableOopMap {rcx=Oop rbp=Oop r9=Oop }
          │ │   │                                                            ;*astore {reexecute=1 rethrow=0 return_oop=0}
          │ │   │                                                            ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
   0.02%  │ │   │  0x00007f6f872619c0:   cmpl   $0x102bd18,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007f6f87262a3b
          │ │   │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007f6f0802bd18&apos;)}
   0.33%  │ │   │  0x00007f6f872619cb:   jne    0x00007f6f8726273b           ;*invokeinterface test {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$filtering$16@2 (line 528)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.08%  │ │   │  0x00007f6f872619d1:   mov    0x10(%rcx),%esi              ;*getfield arg$2 {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@5
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.02%  │ │   │  0x00007f6f872619d4:   nopl   0x0(%rax,%rax,1)
   0.02%  │ │   │  0x00007f6f872619dc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rcx=Oop rbp=Oop r9=Oop }
          │ │   │                                                            ;*astore {reexecute=1 rethrow=0 return_oop=0}
          │ │   │                                                            ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
   0.29%  │ │   │  0x00007f6f872619e0:   cmpl   $0x103bfc8,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007f6f87262a5e
          │ │   │                                                            ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f6f0803bfc8&apos;)}
   0.09%  │ │   │  0x00007f6f872619eb:   jne    0x00007f6f8726272c
   0.02%  │ │   │  0x00007f6f872619f1:   cmpl   $0xde7b0,0x8(%rbp)           ;   {metadata(&apos;java/util/stream/Collectors$1OptionalBox&apos;)}
   0.31%  │ │   │  0x00007f6f872619f8:   jne    0x00007f6f8726271d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803bfc8::accept@1
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.08%  │ │   │  0x00007f6f872619fe:   movsbl 0xc(%rbp),%esi               ;*getfield present {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.stream.Collectors$1OptionalBox::accept@1 (line 895)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803bfc8::accept@5
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.01%  │ │   │  0x00007f6f87261a02:   mov    0x14(%rbp),%eax              ;*getfield val$op {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.stream.Collectors$1OptionalBox::accept@9 (line 896)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803bfc8::accept@5
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.04%  │ │   │  0x00007f6f87261a05:   mov    0x10(%rbp),%edx              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.stream.Collectors$1OptionalBox::accept@13 (line 896)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803bfc8::accept@5
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.29%  │ │   │  0x00007f6f87261a08:   test   %sil,%sil
          │ │   │  0x00007f6f87261a0b:   je     0x00007f6f87261e6d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.stream.Collectors$1OptionalBox::accept@4 (line 895)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803bfc8::accept@5
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.07%  │ │   │  0x00007f6f87261a11:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.01%  │ │   │  0x00007f6f87261a1c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rax=NarrowOop rcx=Oop rdx=NarrowOop rbp=Oop r9=Oop }
          │ │   │                                                            ;*astore {reexecute=1 rethrow=0 return_oop=0}
          │ │   │                                                            ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
   0.03%  │ │   │  0x00007f6f87261a20:   cmpl   $0x103bb60,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007f6f87262a81
          │ │   │                                                            ;   {metadata(&apos;java/util/function/BinaryOperator$$Lambda+0x00007f6f0803bb60&apos;)}
   0.33%  │ │   │  0x00007f6f87261a2b:   jne    0x00007f6f872626ff           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803bfc8::accept@5
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.01%  │ │   │  0x00007f6f87261a31:   mov    0xc(,%rax,8),%esi            ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007f6f0803bb60::apply@1
          │ │   │                                                            ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803bfc8::accept@5
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.03%  │ │   │  0x00007f6f87261a38:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rcx=Oop rdx=NarrowOop rbp=Oop rsi=NarrowOop r9=Oop }
          │ │   │                                                            ;*astore {reexecute=1 rethrow=0 return_oop=0}
          │ │   │                                                            ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
   0.32%  │ │   │  0x00007f6f87261a40:   cmpl   $0x103b8c8,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007f6f87262aa4
          │ │   │                                                            ;   {metadata(&apos;java/util/Comparator$$Lambda+0x00007f6f0803b8c8&apos;)}
   0.16%  │ │   │  0x00007f6f87261a4b:   jne    0x00007f6f872626f0           ;*invokeinterface compare {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
          │ │   │                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007f6f0803bb60::apply@6
          │ │   │                                                            ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803bfc8::accept@5
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.08%  │ │   │  0x00007f6f87261a51:   mov    0xc(,%rsi,8),%esi            ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.Comparator$$Lambda/0x00007f6f0803b8c8::compare@1
          │ │   │                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
          │ │   │                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007f6f0803bb60::apply@6
          │ │   │                                                            ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803bfc8::accept@5
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.31%  │ │   │  0x00007f6f87261a58:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rcx=Oop rdx=NarrowOop rbp=Oop r9=Oop }
          │ │   │                                                            ;*astore {reexecute=1 rethrow=0 return_oop=0}
          │ │   │                                                            ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
   0.06%  │ │   │  0x00007f6f87261a60:   cmpl   $0x1084000,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007f6f87262ac7
          │ │   │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007f6f08084000&apos;)}
   0.71%  │ │   │  0x00007f6f87261a6b:   jne    0x00007f6f872626b1           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
          │ │   │                                                            ; - java.util.Comparator$$Lambda/0x00007f6f0803b8c8::compare@6
          │ │   │                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
          │ │   │                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007f6f0803bb60::apply@6
          │ │   │                                                            ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803bfc8::accept@5
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.34%  │ │   │  0x00007f6f87261a71:   test   %edx,%edx
          │ │   │  0x00007f6f87261a73:   je     0x00007f6f87261b76
   0.03%  │ │   │  0x00007f6f87261a79:   mov    0x8(,%rdx,8),%esi
   0.32%  │ │   │  0x00007f6f87261a80:   movabs $0x7f6f07000000,%rax
   0.02%  │ │   │  0x00007f6f87261a8a:   lea    (%rax,%rsi,1),%rsi
   0.33%  │ │   │  0x00007f6f87261a8e:   test   %edx,%edx
          │ │╭  │  0x00007f6f87261a90:   je     0x00007f6f87261a9f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f6f08084000::apply@1
          │ ││  │                                                            ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
          │ ││  │                                                            ; - java.util.Comparator$$Lambda/0x00007f6f0803b8c8::compare@6
          │ ││  │                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
          │ ││  │                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007f6f0803bb60::apply@6
          │ ││  │                                                            ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
          │ ││  │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803bfc8::accept@5
          │ ││  │                                                            ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
          │ ││  │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ ││  │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.04%  │ ││  │  0x00007f6f87261a96:   cmp    %rsi,%r10
          │ ││  │  0x00007f6f87261a99:   jne    0x00007f6f872627d0           ; ImmutableOopMap {rcx=Oop rdx=NarrowOop rbp=Oop r9=Oop }
          │ ││  │                                                            ;*astore {reexecute=1 rethrow=0 return_oop=0}
          │ ││  │                                                            ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
   0.03%  │ │↘  │  0x00007f6f87261a9f:   mov    0x18(,%rdx,8),%esi           ; implicit exception: dispatches to 0x00007f6f87262aed
          │ │   │                                                            ; ImmutableOopMap {rcx=Oop rdx=NarrowOop rbp=Oop rsi=NarrowOop r9=Oop }
          │ │   │                                                            ;*astore {reexecute=1 rethrow=0 return_oop=0}
          │ │   │                                                            ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
   0.20%  │ │   │  0x00007f6f87261aa6:   cmpl   $0xbbbb8,0x8(,%rsi,8)        ; implicit exception: dispatches to 0x00007f6f87262b10
          │ │   │                                                            ;   {metadata(&apos;java/util/ArrayList&apos;)}
   1.91%  │ │   │  0x00007f6f87261ab1:   jne    0x00007f6f8726274d           ;*invokeinterface size {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationsWithTheMostAuthorsPerYear$15@4 (line 182)
          │ │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f6f08084000::apply@4
          │ │   │                                                            ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
          │ │   │                                                            ; - java.util.Comparator$$Lambda/0x00007f6f0803b8c8::compare@6
          │ │   │                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
          │ │   │                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007f6f0803bb60::apply@6
          │ │   │                                                            ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803bfc8::accept@5
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.18%  │ │   │  0x00007f6f87261ab7:   mov    0x18(%r9),%eax               ;*getfield authors {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication::getAuthors@1 (line 51)
          │ │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationsWithTheMostAuthorsPerYear$15@1 (line 182)
          │ │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f6f08084000::apply@4
          │ │   │                                                            ; - java.util.Comparator::lambda$comparing$77a9974f$1@12 (line 473)
          │ │   │                                                            ; - java.util.Comparator$$Lambda/0x00007f6f0803b8c8::compare@6
          │ │   │                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
          │ │   │                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007f6f0803bb60::apply@6
          │ │   │                                                            ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803bfc8::accept@5
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   3.95%  │ │   │  0x00007f6f87261abb:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=NarrowOop rcx=Oop rdx=NarrowOop rbp=Oop rsi=NarrowOop r9=Oop }
          │ │   │                                                            ;*astore {reexecute=1 rethrow=0 return_oop=0}
          │ │   │                                                            ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
   0.16%  │ │   │  0x00007f6f87261ac0:   cmpl   $0xbbbb8,0x8(,%rax,8)        ; implicit exception: dispatches to 0x00007f6f87262b33
          │ │   │                                                            ;   {metadata(&apos;java/util/ArrayList&apos;)}
  21.88%  │ │   │  0x00007f6f87261acb:   jne    0x00007f6f8726270e           ;*invokeinterface size {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationsWithTheMostAuthorsPerYear$15@4 (line 182)
          │ │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f6f08084000::apply@4
          │ │   │                                                            ; - java.util.Comparator::lambda$comparing$77a9974f$1@12 (line 473)
          │ │   │                                                            ; - java.util.Comparator$$Lambda/0x00007f6f0803b8c8::compare@6
          │ │   │                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
          │ │   │                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007f6f0803bb60::apply@6
          │ │   │                                                            ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803bfc8::accept@5
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.20%  │ │   │  0x00007f6f87261ad1:   mov    0x10(,%rsi,8),%esi           ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.ArrayList::size@1 (line 253)
          │ │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationsWithTheMostAuthorsPerYear$15@4 (line 182)
          │ │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f6f08084000::apply@4
          │ │   │                                                            ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
          │ │   │                                                            ; - java.util.Comparator$$Lambda/0x00007f6f0803b8c8::compare@6
          │ │   │                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
          │ │   │                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007f6f0803bb60::apply@6
          │ │   │                                                            ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803bfc8::accept@5
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.21%  │ │   │  0x00007f6f87261ad8:   nopl   0x0(%rax,%rax,1)
   0.01%  │ │   │  0x00007f6f87261ae0:   cmp    0x10(,%rax,8),%esi
          │ │   │  0x00007f6f87261ae7:   jl     0x00007f6f87261ff1           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@8 (line 74)
          │ │   │                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007f6f0803bb60::apply@6
          │ │   │                                                            ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803bfc8::accept@5
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   2.51%  │ │   │  0x00007f6f87261aed:   shl    $0x3,%rdx                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                            ; - java.util.stream.Collectors$1OptionalBox::accept@13 (line 896)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803bfc8::accept@5
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
          │ │   │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ │   │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.06%  │ │   │  0x00007f6f87261af1:   cmpb   $0x0,0x40(%r15)
   0.01%  │ │   │  0x00007f6f87261af6:   jne    0x00007f6f87261b85
   0.04%  │ │   │  0x00007f6f87261afc:   mov    %rdx,%rsi
   0.31%  │ │   │  0x00007f6f87261aff:   shr    $0x3,%rsi
   0.05%  │ │   │  0x00007f6f87261b03:   mov    %esi,0x10(%rbp)
   0.01%  │ │   │  0x00007f6f87261b06:   mov    %rbp,%rsi
   0.04%  │ │   │  0x00007f6f87261b09:   xor    %rdx,%rsi
   0.32%  │ │   │  0x00007f6f87261b0c:   test   $0xffffffffffe00000,%rsi
          │ │ ╭ │  0x00007f6f87261b13:   je     0x00007f6f87261b38
   0.07%  │ │ │ │  0x00007f6f87261b19:   nopl   0x0(%rax)
   0.01%  │ │ │ │  0x00007f6f87261b20:   test   %rdx,%rdx
          │ │ │╭│  0x00007f6f87261b23:   je     0x00007f6f87261b38
   0.05%  │ │ │││  0x00007f6f87261b29:   shr    $0x9,%rbp
   0.29%  │ │ │││  0x00007f6f87261b2d:   cmpb   $0x2,0x0(%rbp,%rdi,1)
   0.07%  │ │ │││  0x00007f6f87261b32:   jne    0x00007f6f87261bbf           ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │ │││                                                            ; - java.util.stream.Collectors$1OptionalBox::accept@22 (line 896)
          │ │ │││                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803bfc8::accept@5
          │ │ │││                                                            ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
          │ │ │││                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f6f0803c8a8::accept@10
          │ │ │││                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.06%  │ │ ↘↘│  0x00007f6f87261b38:   mov    0x60(%rsp),%rbp
   0.28%  │ │   │  0x00007f6f87261b3d:   add    $0x68,%rsp
   0.05%  │ │   │  0x00007f6f87261b41:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │   │  0x00007f6f87261b48:   ja     0x00007f6f87262978
   0.01%  │ │   │  0x00007f6f87261b4e:   vzeroupper 
   0.37%  │ │   │  0x00007f6f87261b51:   ret    
          │ ↘   │  0x00007f6f87261b52:   movabs $0x7ffece048,%rdx            ;   {oop(a &apos;java/lang/Integer&apos;[256] {0x00000007ffece048})}
          │     │  0x00007f6f87261b5c:   mov    0x10(%rdx,%r14,4),%edx
          │     │  0x00007f6f87261b61:   shl    $0x3,%rdx
          │     ╰  0x00007f6f87261b65:   jmp    0x00007f6f8726195a           ;* unwind (locked if synchronized)
          │                                                                  ; - java.lang.Integer::valueOf@-3
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f6f080848e8::apply@7
          │                                                                  ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          ↘        0x00007f6f87261b6a:   mov    $0x0,%rax
                   0x00007f6f87261b71:   jmp    0x00007f6f87261809           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f6f080848e8::apply@1
....................................................................................................
  61.08%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1261 

                 0x00007f6f87267a6d:   ret                                 ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
                 0x00007f6f87267a6e:   mov    0x38(%rsp),%r11d
                 0x00007f6f87267a73:   cmp    $0x2563e8,%r11d              ;   {metadata(&apos;java/util/stream/ReduceOps$3ReducingSink&apos;)}
                 0x00007f6f87267a7a:   jne    0x00007f6f87267c78           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                 0x00007f6f87267a80:   mov    %r9d,%r11d
                 0x00007f6f87267a83:   nopw   0x0(%rax,%rax,1)
                 0x00007f6f87267a8c:   data16 data16 xchg %ax,%ax          ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.79%    ↗ ↗  0x00007f6f87267a90:   mov    %rsi,%r10
   0.32%    │ │  0x00007f6f87267a93:   mov    0x20(%rsp),%rcx
   0.03%    │ │  0x00007f6f87267a98:   mov    0x40(%rsp),%edi
   0.33%    │ │  0x00007f6f87267a9c:   mov    0x28(%rsp),%rdx
   0.78%    │ │  0x00007f6f87267aa1:   test   %r10,%r10
          ╭ │ │  0x00007f6f87267aa4:   jne    0x00007f6f87267ae3           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@124 (line 1712)
   0.14%  │ │ │  0x00007f6f87267aaa:   cmp    %r11d,%edi
          │ │ │  0x00007f6f87267aad:   jbe    0x00007f6f87267cc3
   0.02%  │ │ │  0x00007f6f87267ab3:   mov    0x10(%rcx,%r11,4),%esi
   0.34%  │ │ │  0x00007f6f87267ab8:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@133 (line 1713)
   0.67%  │ │ │  0x00007f6f87267abc:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@130 (line 1713)
   0.22%  │ │↗│  0x00007f6f87267abf:   nop
   0.02%  │ │││  0x00007f6f87267ac0:   test   %rsi,%rsi
          │╭│││  0x00007f6f87267ac3:   jne    0x00007f6f87267b3f           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.23%  │││││  0x00007f6f87267ac9:   mov    0x44(%rsp),%r8d
   0.84%  │││││  0x00007f6f87267ace:   cmp    %r11d,%r8d
          │││││  0x00007f6f87267ad1:   jle    0x00007f6f87267a3a           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.15%  │││││  0x00007f6f87267ad7:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rsi=Oop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
          │││││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.03%  │││││  0x00007f6f87267ade:   test   %eax,(%r10)                  ;   {poll}
   0.27%  ││╰││  0x00007f6f87267ae1:   jmp    0x00007f6f87267a90           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.20%  ↘│ ││  0x00007f6f87267ae3:   mov    %r11d,0x38(%rsp)
   0.02%   │ ││  0x00007f6f87267ae8:   mov    0x14(%rdx),%esi              ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │ ││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.09%   │ ││  0x00007f6f87267aeb:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
           │ ││                                                            ; ImmutableOopMap {rdx=Oop rsi=NarrowOop r10=Oop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
   0.81%   │ ││  0x00007f6f87267af2:   mov    0x10(%r10),%r9d              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
  22.29%   │ ││  0x00007f6f87267af6:   mov    0xc(%rdx),%ebx               ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@5 (line 169)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%   │ ││  0x00007f6f87267af9:   shl    $0x3,%rsi                    ;*getfield val$accumulator {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@1 (line 169)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.04%   │ ││  0x00007f6f87267afd:   shl    $0x3,%rbx                    ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@5 (line 169)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.09%   │ ││  0x00007f6f87267b01:   shl    $0x3,%r9                     ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
   0.26%   │ ││  0x00007f6f87267b05:   mov    %rbx,%rdx
           │ ││  0x00007f6f87267b08:   mov    %r9,%rcx                     ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.05%   │ ││  0x00007f6f87267b0b:   mov    %r10,0x8(%rsp)
   0.10%   │ ││  0x00007f6f87267b10:   nop
   0.23%   │ ││  0x00007f6f87267b11:   movabs $0xffffffffffffffff,%rax
   0.00%   │ ││  0x00007f6f87267b1b:   call   0x00007f6f86c2f680           ; ImmutableOopMap {[8]=Oop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
           │ ││                                                            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ ││                                                            ;   {virtual_call}
   0.04%   │ ││  0x00007f6f87267b20:   nopl   0x5000390(%rax,%rax,1)       ;   {other}
           │ ││  0x00007f6f87267b28:   mov    0x8(%rsp),%r10
   0.32%   │ ││  0x00007f6f87267b2d:   mov    0x18(%r10),%r10d
   0.07%   │ ││  0x00007f6f87267b31:   shl    $0x3,%r10                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@152 (line 1716)
   0.01%   │ ││  0x00007f6f87267b35:   mov    %r10,%rsi
   0.04%   │ ││  0x00007f6f87267b38:   mov    0x38(%rsp),%r11d
   0.26%   │ ╰│  0x00007f6f87267b3d:   jmp    0x00007f6f87267abf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.45%   ↘  │  0x00007f6f87267b3f:   mov    0x44(%rsp),%r8d
   0.73%      │  0x00007f6f87267b44:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rsi=Oop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
              │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
              │                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.07%      │  0x00007f6f87267b4b:   test   %eax,(%r10)                  ;   {poll}
   0.47%      ╰  0x00007f6f87267b4e:   jmp    0x00007f6f87267a90
                 0x00007f6f87267b53:   cmp    $0x2563e8,%r11d              ;   {metadata(&apos;java/util/stream/ReduceOps$3ReducingSink&apos;)}
                 0x00007f6f87267b5a:   jne    0x00007f6f87267c1f           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                 0x00007f6f87267b60:   mov    %r13,0x8(%rsp)
                 0x00007f6f87267b65:   mov    %rbp,0x18(%rsp)
                 0x00007f6f87267b6a:   mov    %ebx,0x14(%rsp)
                 0x00007f6f87267b6e:   mov    %r9d,0x34(%rsp)
                 0x00007f6f87267b73:   mov    %r11d,0x38(%rsp)
                 0x00007f6f87267b78:   mov    0x14(%rdx),%esi              ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
....................................................................................................
  31.82%  <total for region 2>

....[Hottest Regions]...............................................................................
  61.08%       jvmci, level 4  java.util.stream.Collectors::lambda$groupingBy$53, version 3, compile id 1217 
  31.82%       jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1261 
   4.03%       jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f6f0803ccf0::accept, version 3, compile id 1219 
   0.32%               kernel  [unknown] 
   0.15%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  java.util.stream.Collectors::lambda$groupingBy$53, version 3, compile id 1217 
   1.97%  <...other 676 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  61.12%       jvmci, level 4  java.util.stream.Collectors::lambda$groupingBy$53, version 3, compile id 1217 
  31.82%       jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1261 
   4.03%       jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f6f0803ccf0::accept, version 3, compile id 1219 
   1.67%               kernel  [unknown] 
   0.09%                       <unknown> 
   0.05%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.04%       jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f6f0803e110::accept, version 3, compile id 1351 
   0.04%       jvmci, level 4  java.util.HashMap::resize, version 3, compile id 1335 
   0.03%       jvmci, level 4  java.util.stream.ReferencePipeline::forEach, version 3, compile id 1348 
   0.03%       jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f6f0803e340::accept, version 3, compile id 1341 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%         libc-2.31.so  _IO_fwrite 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%       hsdis-amd64.so  print_insn 
   0.02%       jvmci, level 4  java.util.HashMap::putVal, version 3, compile id 1106 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.01%  libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%       jvmci, level 4  java.util.HashMap::replaceAll, version 4, compile id 1376 
   0.01%       jvmci, level 4  java.util.stream.Streams$StreamBuilderImpl::forEachRemaining, version 3, compile id 1354 
   0.92%  <...other 324 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.23%       jvmci, level 4
   1.67%               kernel
   0.45%  libjvmcicompiler.so
   0.31%            libjvm.so
   0.16%         libc-2.31.so
   0.09%                     
   0.02%       hsdis-amd64.so
   0.02%          interpreter
   0.02%           ld-2.31.so
   0.01%   libpthread-2.31.so
   0.01%               [vdso]
   0.01%          c1, level 3
   0.00%        libdl-2.31.so
   0.00%     perf-2127325.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publications_years_statistics

# Run progress: 78.57% complete, ETA 00:05:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.994 ms/op
# Warmup Iteration   2: 9.519 ms/op
# Warmup Iteration   3: 9.379 ms/op
# Warmup Iteration   4: 9.438 ms/op
# Warmup Iteration   5: 9.607 ms/op
Iteration   1: 9.273 ms/op
Iteration   2: 9.535 ms/op
Iteration   3: 9.522 ms/op
Iteration   4: 9.477 ms/op
Iteration   5: 9.537 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publications_years_statistics":
  9.469 ±(99.9%) 0.433 ms/op [Average]
  (min, avg, max) = (9.273, 9.469, 9.537), stdev = 0.112
  CI (99.9%): [9.036, 9.902] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publications_years_statistics:asm":
PrintAssembly processed: 269052 total address lines.
Perf output processed (skipped 62.108 seconds):
 Column 1: cycles (50936 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1166 

              0x00007f21fb25a847:   ja     0x00007f21fb25b520
              0x00007f21fb25a84d:   ret    
              0x00007f21fb25a84e:   cmpl   $0x2270b0,0x54(%rsp)         ;   {metadata(&apos;java/util/stream/ReferencePipeline$2$1&apos;)}
              0x00007f21fb25a856:   jne    0x00007f21fb25b3bc           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
              0x00007f21fb25a85c:   mov    %r9d,%r11d
              0x00007f21fb25a85f:   mov    %rax,%r10
              0x00007f21fb25a862:   data16 nopw 0x0(%rax,%rax,1)
              0x00007f21fb25a86c:   data16 data16 xchg %ax,%ax          ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.24%   ↗  0x00007f21fb25a870:   mov    0x28(%rsp),%rbx
   0.33%   │  0x00007f21fb25a875:   mov    0x48(%rsp),%edi
   0.48%   │  0x00007f21fb25a879:   mov    0x38(%rsp),%rdx
   0.40%   │  0x00007f21fb25a87e:   movabs $0x7f218002b708,%r8          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
   0.27%   │  0x00007f21fb25a888:   mov    %r10,0x8(%rsp)
   0.37%   │  0x00007f21fb25a88d:   test   %r10,%r10
          ╭│  0x00007f21fb25a890:   jne    0x00007f21fb25a8d4           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@124 (line 1712)
   0.40%  ││  0x00007f21fb25a896:   cmp    %r11d,%edi
          ││  0x00007f21fb25a899:   jbe    0x00007f21fb25b2b9
   0.16%  ││  0x00007f21fb25a89f:   mov    0x10(%rbx,%r11,4),%r10d
   0.67%  ││  0x00007f21fb25a8a4:   shl    $0x3,%r10                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@133 (line 1713)
   0.32%  ││  0x00007f21fb25a8a8:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@130 (line 1713)
   0.37%  ││  0x00007f21fb25a8ab:   test   %r10,%r10
          ││  0x00007f21fb25a8ae:   jne    0x00007f21fb25a9f2           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.54%  ││  0x00007f21fb25a8b4:   mov    0x50(%rsp),%r8d
   0.20%  ││  0x00007f21fb25a8b9:   nopl   0x0(%rax)
   0.18%  ││  0x00007f21fb25a8c0:   cmp    %r11d,%r8d
          ││  0x00007f21fb25a8c3:   jle    0x00007f21fb25a817           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.31%  ││  0x00007f21fb25a8c9:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r10=Oop [32]=Oop [40]=Oop [52]=NarrowOop [56]=Oop }
          ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.48%  ││  0x00007f21fb25a8d0:   test   %eax,(%rsi)                  ;   {poll}
   0.27%  │╰  0x00007f21fb25a8d2:   jmp    0x00007f21fb25a870           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.06%  ↘   0x00007f21fb25a8d4:   mov    0x10(%rdx),%ebp              ; ImmutableOopMap {rdx=Oop rbx=Oop r10=Oop [8]=Oop [32]=Oop [40]=Oop [52]=NarrowOop [56]=Oop }
                                                                        ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.22%      0x00007f21fb25a8d7:   mov    0x34(,%rbp,8),%ebp           ; implicit exception: dispatches to 0x00007f21fb25b59d
                                                                        ; ImmutableOopMap {rdx=Oop rbx=Oop rbp=NarrowOop r10=Oop [8]=Oop [32]=Oop [40]=Oop [52]=NarrowOop [56]=Oop }
                                                                        ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.60%      0x00007f21fb25a8de:   mov    0x8(,%rbp,8),%r13d           ; implicit exception: dispatches to 0x00007f21fb25b5c0
   0.87%      0x00007f21fb25a8e6:   mov    %ebp,0x18(%rsp)
   0.07%      0x00007f21fb25a8ea:   mov    0x10(%r10),%ebp              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
  36.51%      0x00007f21fb25a8ee:   test   %ebp,%ebp
              0x00007f21fb25a8f0:   je     0x00007f21fb25aa05
   0.32%      0x00007f21fb25a8f6:   mov    0x8(,%rbp,8),%edx
  33.54%      0x00007f21fb25a8fd:   movabs $0x7f217f000000,%r10
   0.02%      0x00007f21fb25a907:   lea    (%r10,%rdx,1),%rdx           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.module.DefaultRoots$$Lambda/0x80000000b::test@1
                                                                        ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.41%      0x00007f21fb25a90b:   mov    %ebp,%r10d
   0.00%      0x00007f21fb25a90e:   shl    $0x3,%r10                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
   0.01%      0x00007f21fb25a912:   mov    %r10,0x10(%rsp)
   0.03%      0x00007f21fb25a917:   movabs $0x7f217f000000,%r10
   0.39%      0x00007f21fb25a921:   lea    (%r10,%r13,1),%r13
   0.00%      0x00007f21fb25a925:   cmp    -0x2ac(%rip),%r13        # 0x00007f21fb25a680
                                                                        ;   {section_word}
   0.01%      0x00007f21fb25a92c:   je     0x00007f21fb25a978
              0x00007f21fb25a932:   cmp    -0x2b1(%rip),%r13        # 0x00007f21fb25a688
                                                                        ;   {section_word}
              0x00007f21fb25a939:   je     0x00007f21fb25aa11
              0x00007f21fb25a93f:   cmp    -0x2b6(%rip),%r13        # 0x00007f21fb25a690
                                                                        ;   {section_word}
              0x00007f21fb25a946:   je     0x00007f21fb25aa5e
              0x00007f21fb25a94c:   cmp    -0x2bb(%rip),%r13        # 0x00007f21fb25a698
                                                                        ;   {section_word}
              0x00007f21fb25a953:   je     0x00007f21fb25aaba
....................................................................................................
  79.04%  <total for region 1>

....[Hottest Regions]...............................................................................
  79.04%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1166 
   7.52%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1166 
   5.51%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f218003bae0::accept, version 3, compile id 1164 
   3.51%      jvmci, level 4  java.util.stream.ReduceOps$3ReducingSink::accept, version 4, compile id 1163 
   1.14%                      <unknown> 
   0.38%    perf-2127389.map  [unknown] 
   0.35%              kernel  [unknown] 
   0.15%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.76%  <...other 554 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  86.56%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1166 
   5.51%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f218003bae0::accept, version 3, compile id 1164 
   3.51%      jvmci, level 4  java.util.stream.ReduceOps$3ReducingSink::accept, version 4, compile id 1163 
   2.13%              kernel  [unknown] 
   1.52%                      <unknown> 
   0.39%    perf-2127389.map  [unknown] 
   0.03%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  fileStream::write 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  syscall 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.20%  <...other 83 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.58%      jvmci, level 4
   2.13%              kernel
   1.52%                    
   0.39%    perf-2127389.map
   0.20%           libjvm.so
   0.12%        libc-2.31.so
   0.02%         interpreter
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.00%          ld-2.31.so
   0.00%         c1, level 3
   0.00%         c1, level 2
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.year_with_the_most_publications

# Run progress: 85.71% complete, ETA 00:03:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.158 ms/op
# Warmup Iteration   2: 6.502 ms/op
# Warmup Iteration   3: 6.411 ms/op
# Warmup Iteration   4: 6.326 ms/op
# Warmup Iteration   5: 6.321 ms/op
Iteration   1: 6.141 ms/op
Iteration   2: 7.582 ms/op
Iteration   3: 7.544 ms/op
Iteration   4: 7.515 ms/op
Iteration   5: 7.592 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.year_with_the_most_publications":
  7.275 ±(99.9%) 2.444 ms/op [Average]
  (min, avg, max) = (6.141, 7.275, 7.592), stdev = 0.635
  CI (99.9%): [4.831, 9.719] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.year_with_the_most_publications:asm":
PrintAssembly processed: 296846 total address lines.
Perf output processed (skipped 62.009 seconds):
 Column 1: cycles (50782 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1220 

                  0x00007ff9cf2661e7:   ja     0x00007ff9cf266469
                  0x00007ff9cf2661ed:   ret    
               ↗  0x00007ff9cf2661ee:   mov    %rsi,%r10
               │  0x00007ff9cf2661f1:   mov    0x28(%rsp),%rcx
               │  0x00007ff9cf2661f6:   mov    0x40(%rsp),%ebx
               │  0x00007ff9cf2661fa:   mov    0x30(%rsp),%rdx
               │  0x00007ff9cf2661ff:   mov    %r8d,%r11d
               │  0x00007ff9cf266202:   data16 nopw 0x0(%rax,%rax,1)
               │  0x00007ff9cf26620c:   data16 data16 xchg %ax,%ax          ;*aload {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.58%    ↗↗ │  0x00007ff9cf266210:   test   %r10,%r10
          ╭ ││ │  0x00007ff9cf266213:   jne    0x00007ff9cf26628b           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@124 (line 1712)
   0.12%  │ ││ │  0x00007ff9cf266219:   nopl   0x0(%rax)
   0.02%  │ ││ │  0x00007ff9cf266220:   cmp    %r11d,%ebx
          │ ││ │  0x00007ff9cf266223:   jbe    0x00007ff9cf2663eb
   0.75%  │ ││ │  0x00007ff9cf266229:   mov    0x10(%rcx,%r11,4),%esi
   0.84%  │ ││ │  0x00007ff9cf26622e:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@133 (line 1713)
   0.18%  │ ││ │  0x00007ff9cf266232:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@130 (line 1713)
   0.07%  │ ││↗│  0x00007ff9cf266235:   test   %rsi,%rsi
          │╭││││  0x00007ff9cf266238:   jne    0x00007ff9cf266269           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   1.10%  ││││││  0x00007ff9cf26623e:   mov    0x44(%rsp),%r10d
   1.07%  ││││││  0x00007ff9cf266243:   cmp    %r11d,%r10d
          ││││││  0x00007ff9cf266246:   jle    0x00007ff9cf2661bb           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.15%  ││││││  0x00007ff9cf26624c:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rsi=Oop [28]=NarrowOop [32]=Oop [40]=Oop [48]=Oop }
          ││││││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          ││││││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.04%  ││││││  0x00007ff9cf266253:   test   %eax,(%r8)                   ;   {poll}
   1.16%  ││││││  0x00007ff9cf266256:   mov    0x28(%rsp),%rcx
   0.53%  ││││││  0x00007ff9cf26625b:   mov    0x40(%rsp),%ebx
   0.07%  ││││││  0x00007ff9cf26625f:   mov    0x30(%rsp),%rdx
   0.02%  ││││││  0x00007ff9cf266264:   mov    %rsi,%r10
   0.81%  ││╰│││  0x00007ff9cf266267:   jmp    0x00007ff9cf266210           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││ │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   2.84%  │↘ │││  0x00007ff9cf266269:   mov    0x44(%rsp),%r10d
   3.14%  │  │││  0x00007ff9cf26626e:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rsi=Oop [28]=NarrowOop [32]=Oop [40]=Oop [48]=Oop }
          │  │││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │  │││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.19%  │  │││  0x00007ff9cf266275:   test   %eax,(%r8)                   ;   {poll}
   1.64%  │  │││  0x00007ff9cf266278:   mov    0x28(%rsp),%rcx
   0.08%  │  │││  0x00007ff9cf26627d:   mov    0x40(%rsp),%ebx
   0.10%  │  │││  0x00007ff9cf266281:   mov    0x30(%rsp),%rdx
   0.02%  │  │││  0x00007ff9cf266286:   mov    %rsi,%r10
   0.34%  │  ╰││  0x00007ff9cf266289:   jmp    0x00007ff9cf266210           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.50%  ↘   ││  0x00007ff9cf26628b:   mov    %r11d,0x38(%rsp)
   0.02%      ││  0x00007ff9cf266290:   mov    0x10(%r10),%esi
  28.51%      ││  0x00007ff9cf266294:   mov    %esi,%r9d
              ││  0x00007ff9cf266297:   shl    $0x3,%r9                     ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
   0.55%      ││  0x00007ff9cf26629b:   mov    %rdx,%rsi
              ││  0x00007ff9cf26629e:   mov    %r9,%rdx                     ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
              ││  0x00007ff9cf2662a1:   mov    %r10,0x10(%rsp)
              ││  0x00007ff9cf2662a6:   data16 xchg %ax,%ax
   0.53%      ││  0x00007ff9cf2662a9:   movabs $0xffffffffffffffff,%rax
              ││  0x00007ff9cf2662b3:   call   0x00007ff9cec2f680           ; ImmutableOopMap {[16]=Oop [28]=NarrowOop [32]=Oop [40]=Oop [48]=Oop }
              ││                                                            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
              ││                                                            ;   {virtual_call}
   0.06%      ││  0x00007ff9cf2662b8:   nopl   0x50003a8(%rax,%rax,1)       ;   {other}
   0.08%      ││  0x00007ff9cf2662c0:   mov    0x10(%rsp),%r10
   1.58%      ││  0x00007ff9cf2662c5:   mov    0x18(%r10),%r10d
   0.80%      ││  0x00007ff9cf2662c9:   shl    $0x3,%r10                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@152 (line 1716)
   0.23%      ││  0x00007ff9cf2662cd:   mov    %r10,%rsi
   0.24%      ││  0x00007ff9cf2662d0:   mov    0x38(%rsp),%r11d
   0.04%      ╰│  0x00007ff9cf2662d5:   jmp    0x00007ff9cf266235           ;*aload {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
               │  0x00007ff9cf2662da:   mov    0x44(%rsp),%r11d
               │  0x00007ff9cf2662df:   nop
               ╰  0x00007ff9cf2662e0:   jmp    0x00007ff9cf2661ee           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
                  0x00007ff9cf2662e5:   mov    %rbp,0x20(%rsp)
                  0x00007ff9cf2662ea:   mov    %rax,0x10(%rsp)
                  0x00007ff9cf2662ef:   mov    %r10d,0x3c(%rsp)
                  0x00007ff9cf2662f4:   mov    %r9d,0x1c(%rsp)
                  0x00007ff9cf2662f9:   mov    %r8d,0x38(%rsp)
....................................................................................................
  49.02%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.stream.Collectors::lambda$groupingBy$53, version 3, compile id 1195 

              [Constant Pool (empty)]
              --------------------------------------------------------------------------------
              [Verified Entry Point]
                # {method} {0x00007ff9530e13f0} &apos;lambda$groupingBy$53&apos; &apos;(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/Map;Ljava/lang/Object;)V&apos; in &apos;java/util/stream/Collectors&apos;
                # parm0:    rsi:rsi   = &apos;java/util/function/Function&apos;
                # parm1:    rdx:rdx   = &apos;java/util/function/Supplier&apos;
                # parm2:    rcx:rcx   = &apos;java/util/function/BiConsumer&apos;
                # parm3:    r8:r8     = &apos;java/util/Map&apos;
                # parm4:    r9:r9     = &apos;java/lang/Object&apos;
                #           [sp+0x70]  (sp of caller)
   0.23%        0x00007ff9cf261140:   mov    %eax,-0x14000(%rsp)
   0.99%        0x00007ff9cf261147:   sub    $0x68,%rsp
                0x00007ff9cf26114b:   nop
                0x00007ff9cf26114c:   cmpl   $0x1,0x20(%r15)
   0.17%        0x00007ff9cf261154:   jne    0x00007ff9cf261e53
   0.39%        0x00007ff9cf26115a:   mov    %rbp,0x60(%rsp)
   0.31%        0x00007ff9cf26115f:   mov    %r8,0x40(%rsp)               ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=Oop r9=Oop [64]=Oop }
                                                                          ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@0 (line 1105)
   0.76%        0x00007ff9cf261164:   cmpl   $0x102bd28,0x8(%rsi)         ; implicit exception: dispatches to 0x00007ff9cf261e7a
                                                                          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007ff95402bd28&apos;)}
   0.15%        0x00007ff9cf26116b:   jne    0x00007ff9cf261db5           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=Oop r9=Oop [64]=Oop }
                                                                          ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@0 (line 1105)
   0.11%        0x00007ff9cf261171:   cmpl   $0x8da40,0x8(%r8)            ; implicit exception: dispatches to 0x00007ff9cf261e9d
                                                                          ;   {metadata(&apos;java/util/HashMap&apos;)}
   0.08%        0x00007ff9cf261179:   jne    0x00007ff9cf261dc7           ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.17%        0x00007ff9cf26117f:   nop
   0.17%        0x00007ff9cf261180:   test   %r9,%r9
          ╭     0x00007ff9cf261183:   je     0x00007ff9cf261395
   0.10%  │     0x00007ff9cf261189:   mov    0x8(%r9),%eax
  12.78%  │     0x00007ff9cf26118d:   movabs $0x7ff953000000,%r10
   0.11%  │     0x00007ff9cf261197:   lea    (%r10,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff95402bd28::apply@1
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.27%  │     0x00007ff9cf26119b:   nopl   0x0(%rax,%rax,1)
   0.11%  │     0x00007ff9cf2611a0:   test   %r9,%r9
          │╭    0x00007ff9cf2611a3:   je     0x00007ff9cf2611bc
   0.02%  ││    0x00007ff9cf2611a9:   movabs $0x7ff95402b708,%r10         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
   0.13%  ││    0x00007ff9cf2611b3:   cmp    %rax,%r10
          ││    0x00007ff9cf2611b6:   jne    0x00007ff9cf261d57           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=Oop r9=Oop [64]=Oop }
          ││                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                              ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@0 (line 1105)
   0.23%  │↘    0x00007ff9cf2611bc:   mov    0xc(%r9),%r10d               ; implicit exception: dispatches to 0x00007ff9cf261ec0
   0.29%  │     0x00007ff9cf2611c0:   mov    0x1c(%r8),%eax               ;*getfield threshold {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.HashMap::computeIfAbsent@31 (line 1204)
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.04%  │     0x00007ff9cf2611c4:   mov    %r10d,%r11d
   0.12%  │     0x00007ff9cf2611c7:   shr    $0x10,%r11d                  ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.HashMap::hash@17 (line 338)
          │                                                               ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.27%  │     0x00007ff9cf2611cb:   xor    %r10d,%r11d                  ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.HashMap::hash@18 (line 338)
          │                                                               ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.23%  │     0x00007ff9cf2611ce:   mov    %r11d,0x54(%rsp)
   0.43%  │     0x00007ff9cf2611d3:   cmp    0x14(%r8),%eax
          │     0x00007ff9cf2611d7:   jl     0x00007ff9cf2617c5           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.HashMap::computeIfAbsent@34 (line 1204)
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.14%  │     0x00007ff9cf2611dd:   mov    0x24(%r8),%eax               ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.10%  │     0x00007ff9cf2611e1:   test   %eax,%eax
          │     0x00007ff9cf2611e3:   je     0x00007ff9cf2617c5           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.HashMap::computeIfAbsent@44 (line 1204)
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.09%  │     0x00007ff9cf2611e9:   mov    0xc(,%rax,8),%ebx            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.HashMap::computeIfAbsent@49 (line 1204)
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.24%  │     0x00007ff9cf2611f0:   test   %ebx,%ebx
          │     0x00007ff9cf2611f2:   je     0x00007ff9cf261cc3           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.HashMap::computeIfAbsent@53 (line 1204)
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.12%  │     0x00007ff9cf2611f8:   shl    $0x3,%rax                    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.11%  │     0x00007ff9cf2611fc:   mov    %ebx,%esi
   0.07%  │     0x00007ff9cf2611fe:   dec    %esi                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.HashMap::computeIfAbsent@71 (line 1207)
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.25%  │     0x00007ff9cf261200:   and    %r11d,%esi                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.HashMap::computeIfAbsent@73 (line 1207)
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.11%  │     0x00007ff9cf261203:   cmp    0xc(%rax),%esi
          │     0x00007ff9cf261206:   jae    0x00007ff9cf261ca5
   0.31%  │     0x00007ff9cf26120c:   mov    0x10(%rax,%rsi,4),%edi
   1.12%  │     0x00007ff9cf261210:   mov    %edi,%ebp
          │     0x00007ff9cf261212:   shl    $0x3,%rbp                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.33%  │     0x00007ff9cf261216:   lea    0x80(%r10),%r13d             ;* unwind (locked if synchronized)
          │                                                               ; - java.lang.Integer::valueOf@-3
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff95402bd28::apply@7
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.08%  │     0x00007ff9cf26121d:   data16 xchg %ax,%ax
   0.07%  │     0x00007ff9cf261220:   test   %edi,%edi
          │     0x00007ff9cf261222:   je     0x00007ff9cf2613db
   0.01%  │     0x00007ff9cf261228:   cmpl   $0x1a7c50,0x8(,%rdi,8)       ;   {metadata(&apos;java/util/HashMap$TreeNode&apos;)}
   2.68%  │     0x00007ff9cf261233:   je     0x00007ff9cf261dd9           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.49%  │     0x00007ff9cf261239:   nopl   0x0(%rax)
          │     0x00007ff9cf261240:   cmp    0xc(,%rdi,8),%r11d
          │     0x00007ff9cf261248:   jne    0x00007ff9cf261685           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.HashMap::computeIfAbsent@120 (line 1213)
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.51%  │     0x00007ff9cf26124e:   mov    0x10(,%rdi,8),%edi           ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.38%  │     0x00007ff9cf261255:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rax=Oop rcx=Oop rdx=Oop rbp=Oop rdi=NarrowOop r8=Oop r9=Oop [64]=Oop }
          │                                                               ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │                                                               ; - (reexecute) java.util.HashMap::computeIfAbsent@66 (line 1207)
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
          │     0x00007ff9cf261260:   cmpl   $0x25c88,0x8(,%rdi,8)        ; implicit exception: dispatches to 0x00007ff9cf261ee3
          │                                                               ;   {metadata(&apos;java/lang/Integer&apos;)}
   2.16%  │     0x00007ff9cf26126b:   jne    0x00007ff9cf261c56           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.lang.Integer::equals@4 (line 1224)
          │                                                               ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.50%  │     0x00007ff9cf261271:   mov    0xc(,%rdi,8),%r14d           ;* unwind (locked if synchronized)
          │                                                               ; - java.lang.Integer::intValue@-3
          │                                                               ; - java.lang.Integer::equals@15 (line 1225)
          │                                                               ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.23%  │     0x00007ff9cf261279:   nopl   0x0(%rax)
          │     0x00007ff9cf261280:   cmp    $0x100,%r13d
          │ ╭   0x00007ff9cf261287:   jb     0x00007ff9cf261379
   0.09%  │ │   0x00007ff9cf26128d:   mov    %ebx,0x48(%rsp)
   0.38%  │ │   0x00007ff9cf261291:   mov    0x1b8(%r15),%r13
   0.05%  │ │   0x00007ff9cf261298:   lea    0x10(%r13),%rbx
          │ │   0x00007ff9cf26129c:   nopl   0x0(%rax)
   0.06%  │ │   0x00007ff9cf2612a0:   cmp    0x1c8(%r15),%rbx
          │ │   0x00007ff9cf2612a7:   ja     0x00007ff9cf2613a5
   0.40%  │ │   0x00007ff9cf2612ad:   mov    %rbx,0x1b8(%r15)
   0.03%  │ │   0x00007ff9cf2612b4:   prefetchw 0xd0(%r13)
   0.03%  │ │   0x00007ff9cf2612bc:   movq   $0x1,0x0(%r13)
   0.07%  │ │   0x00007ff9cf2612c4:   movl   $0x25c88,0x8(%r13)           ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.41%  │ │   0x00007ff9cf2612cc:   movl   $0x0,0xc(%r13)
   0.05%  │ │   0x00007ff9cf2612d4:   mov    %r10d,0xc(%r13)
          │ │   0x00007ff9cf2612d8:   mov    %r13,%rbx                    ;* unwind (locked if synchronized)
          │ │                                                             ; - java.lang.Integer::valueOf@-3
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff95402bd28::apply@7
          │ │                                                             ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.06%  │ │↗  0x00007ff9cf2612db:   shl    $0x3,%rdi                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
          │ ││                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.40%  │ ││  0x00007ff9cf2612df:   nop
   0.04%  │ ││  0x00007ff9cf2612e0:   cmp    %rdi,%rbx
          │ ││  0x00007ff9cf2612e3:   je     0x00007ff9cf261dfa           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.HashMap::computeIfAbsent@132 (line 1213)
          │ ││                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
          │ ││  0x00007ff9cf2612e9:   cmp    0xc(%rbx),%r14d
          │ ││  0x00007ff9cf2612ed:   jne    0x00007ff9cf261cfa           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.lang.Integer::equals@18 (line 1225)
          │ ││                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
          │ ││                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.23%  │ ││  0x00007ff9cf2612f3:   mov    %rbx,%rdi
   0.39%  │ ││  0x00007ff9cf2612f6:   mov    %rbp,%rbx
   0.06%  │ ││  0x00007ff9cf2612f9:   mov    $0x0,%r10d                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.HashMap::computeIfAbsent@148 (line 1215)
          │ ││                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
          │ ││  0x00007ff9cf2612ff:   nop
   0.07%  │ ││  0x00007ff9cf261300:   test   %rbx,%rbx
          │ ││  0x00007ff9cf261303:   je     0x00007ff9cf26170f           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.HashMap::computeIfAbsent@171 (line 1222)
          │ ││                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.42%  │ ││  0x00007ff9cf261309:   mov    0x14(%rbx),%r13d             ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │ ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@169 (line 1222)
          │ ││                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.05%  │ ││  0x00007ff9cf26130d:   test   %eax,0x0(,%r13,8)            ; implicit exception: deoptimizes
          │ ││                                                            ; ImmutableOopMap {rax=Oop rcx=Oop rdx=Oop rbx=Oop rbp=Oop rdi=Oop r8=Oop r9=Oop r13=NarrowOop }
   0.11%  │ ││  0x00007ff9cf261315:   shl    $0x3,%r13                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.HashMap::computeIfAbsent@176 (line 1222)
          │ ││                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.36%  │ ││  0x00007ff9cf261319:   nopl   0x0(%rax)                    ; ImmutableOopMap {rcx=Oop r9=Oop r13=Oop }
          │ ││                                                            ;*astore {reexecute=1 rethrow=0 return_oop=0}
          │ ││                                                            ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
   0.05%  │ ││  0x00007ff9cf261320:   cmpl   $0x103bcf8,0x8(%rcx)         ; implicit exception: dispatches to 0x00007ff9cf261f06
          │ ││                                                            ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007ff95403bcf8&apos;)}
   0.00%  │ ││  0x00007ff9cf261327:   jne    0x00007ff9cf261d32
   0.09%  │ ││  0x00007ff9cf26132d:   cmpl   $0x2a80,0x8(%r13)            ;   {metadata({type array long})}
   0.42%  │ ││  0x00007ff9cf261335:   jne    0x00007ff9cf261d45           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.stream.Collectors$$Lambda/0x00007ff95403bcf8::accept@5
          │ ││                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.06%  │ ││  0x00007ff9cf26133b:   mov    0xc(%r13),%esi               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.stream.Collectors::lambda$summingLong$23@3 (line 662)
          │ ││                                                            ; - java.util.stream.Collectors$$Lambda/0x00007ff95403bcf8::accept@9
          │ ││                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.00%  │ ││  0x00007ff9cf26133f:   mov    0xc(%rcx),%eax               ; ImmutableOopMap {rcx=Oop r9=Oop r13=Oop }
          │ ││                                                            ;*astore {reexecute=1 rethrow=0 return_oop=0}
          │ ││                                                            ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@30 (line 1106)
   0.06%  │ ││  0x00007ff9cf261342:   cmpl   $0x103b8c8,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007ff9cf261f2d
          │ ││                                                            ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007ff95403b8c8&apos;)}
   0.49%  │ ││  0x00007ff9cf26134d:   jne    0x00007ff9cf261c90           ;*invokeinterface applyAsLong {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.stream.Collectors::lambda$summingLong$23@6 (line 662)
          │ ││                                                            ; - java.util.stream.Collectors$$Lambda/0x00007ff95403bcf8::accept@9
          │ ││                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.01%  │ ││  0x00007ff9cf261353:   test   %esi,%esi
          │ ││  0x00007ff9cf261355:   je     0x00007ff9cf261bc8
   0.06%  │ ││  0x00007ff9cf26135b:   incq   0x10(%r13)                   ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.stream.Collectors::lambda$summingLong$23@12 (line 662)
          │ ││                                                            ; - java.util.stream.Collectors$$Lambda/0x00007ff95403bcf8::accept@9
          │ ││                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.45%  │ ││  0x00007ff9cf26135f:   mov    0x60(%rsp),%rbp
   0.06%  │ ││  0x00007ff9cf261364:   add    $0x68,%rsp
   0.35%  │ ││  0x00007ff9cf261368:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ ││  0x00007ff9cf26136f:   ja     0x00007ff9cf261e66
   0.06%  │ ││  0x00007ff9cf261375:   vzeroupper 
   0.53%  │ ││  0x00007ff9cf261378:   ret    
          │ ↘│  0x00007ff9cf261379:   mov    %ebx,0x48(%rsp)
          │  │  0x00007ff9cf26137d:   movabs $0x7ffece048,%rbx            ;   {oop(a &apos;java/lang/Integer&apos;[256] {0x00000007ffece048})}
          │  │  0x00007ff9cf261387:   mov    0x10(%rbx,%r13,4),%ebx
          │  │  0x00007ff9cf26138c:   shl    $0x3,%rbx
          │  ╰  0x00007ff9cf261390:   jmp    0x00007ff9cf2612db           ;* unwind (locked if synchronized)
          │                                                               ; - java.lang.Integer::valueOf@-3
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff95402bd28::apply@7
          │                                                               ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          ↘     0x00007ff9cf261395:   mov    $0x0,%rax
                0x00007ff9cf26139c:   nopl   0x0(%rax)
....................................................................................................
  35.22%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.02%       jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1220 
  35.22%       jvmci, level 4  java.util.stream.Collectors::lambda$groupingBy$53, version 3, compile id 1195 
   7.00%       jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007ff95403c5b8::accept, version 3, compile id 1336 
   4.70%       jvmci, level 4  java.util.stream.ReduceOps$3ReducingSink::accept, version 4, compile id 1337 
   1.17%                       <unknown> 
   0.52%               kernel  [unknown] 
   0.39%     perf-2127453.map  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.41%  <...other 428 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.03%       jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1220 
  35.26%       jvmci, level 4  java.util.stream.Collectors::lambda$groupingBy$53, version 3, compile id 1195 
   7.00%       jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007ff95403c5b8::accept, version 3, compile id 1336 
   4.70%       jvmci, level 4  java.util.stream.ReduceOps$3ReducingSink::accept, version 4, compile id 1337 
   1.94%               kernel  [unknown] 
   1.22%                       <unknown> 
   0.39%     perf-2127453.map  [unknown] 
   0.02%       jvmci, level 4  java.util.HashMap::resize, version 2, compile id 710 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  G1CardSet::occupied 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%       jvmci, level 4  java.util.function.Function$$Lambda.0x00007ff95403cf00::apply, version 2, compile id 1364 
   0.01%       jvmci, level 4  java.util.stream.AbstractPipeline::wrapAndCopyInto, version 4, compile id 1352 
   0.01%         libc-2.31.so  syscall 
   0.01%       jvmci, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 3, compile id 1272 
   0.01%            libjvm.so  xmlStream::write_text 
   0.33%  <...other 141 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.05%       jvmci, level 4
   1.94%               kernel
   1.22%                     
   0.39%     perf-2127453.map
   0.19%            libjvm.so
   0.10%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.02%          interpreter
   0.02%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.years_with_the_most_publications

# Run progress: 92.86% complete, ETA 00:01:57
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.555 ms/op
# Warmup Iteration   2: 7.847 ms/op
# Warmup Iteration   3: 7.541 ms/op
# Warmup Iteration   4: 7.512 ms/op
# Warmup Iteration   5: 7.582 ms/op
Iteration   1: 7.559 ms/op
Iteration   2: 7.538 ms/op
Iteration   3: 7.495 ms/op
Iteration   4: 7.471 ms/op
Iteration   5: 7.495 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.years_with_the_most_publications":
  7.512 ±(99.9%) 0.138 ms/op [Average]
  (min, avg, max) = (7.471, 7.512, 7.559), stdev = 0.036
  CI (99.9%): [7.373, 7.650] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.years_with_the_most_publications:asm":
PrintAssembly processed: 303031 total address lines.
Perf output processed (skipped 62.135 seconds):
 Column 1: cycles (51184 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1250 

                 0x00007f160f2681ed:   ret                                 ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
                 0x00007f160f2681ee:   mov    0x38(%rsp),%r11d
                 0x00007f160f2681f3:   cmp    $0x2563e8,%r11d              ;   {metadata(&apos;java/util/stream/ReduceOps$3ReducingSink&apos;)}
                 0x00007f160f2681fa:   jne    0x00007f160f2683f8           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                 0x00007f160f268200:   mov    %r9d,%r11d
                 0x00007f160f268203:   nopw   0x0(%rax,%rax,1)
                 0x00007f160f26820c:   data16 data16 xchg %ax,%ax          ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.78%    ↗ ↗  0x00007f160f268210:   mov    %rsi,%r10
   0.22%    │ │  0x00007f160f268213:   mov    0x20(%rsp),%rcx
   0.02%    │ │  0x00007f160f268218:   mov    0x40(%rsp),%edi
   0.76%    │ │  0x00007f160f26821c:   mov    0x28(%rsp),%rdx
   0.75%    │ │  0x00007f160f268221:   test   %r10,%r10
          ╭ │ │  0x00007f160f268224:   jne    0x00007f160f268263           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@124 (line 1712)
   0.16%  │ │ │  0x00007f160f26822a:   cmp    %r11d,%edi
          │ │ │  0x00007f160f26822d:   jbe    0x00007f160f268443
   0.02%  │ │ │  0x00007f160f268233:   mov    0x10(%rcx,%r11,4),%esi
   0.80%  │ │ │  0x00007f160f268238:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@133 (line 1713)
   0.79%  │ │ │  0x00007f160f26823c:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@130 (line 1713)
   0.26%  │ │↗│  0x00007f160f26823f:   nop
   0.03%  │ │││  0x00007f160f268240:   test   %rsi,%rsi
          │╭│││  0x00007f160f268243:   jne    0x00007f160f2682bf           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.76%  │││││  0x00007f160f268249:   mov    0x44(%rsp),%r8d
   1.11%  │││││  0x00007f160f26824e:   cmp    %r11d,%r8d
          │││││  0x00007f160f268251:   jle    0x00007f160f2681ba           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.23%  │││││  0x00007f160f268257:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rsi=Oop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
          │││││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.01%  │││││  0x00007f160f26825e:   test   %eax,(%r10)                  ;   {poll}
   0.69%  ││╰││  0x00007f160f268261:   jmp    0x00007f160f268210           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.08%  ↘│ ││  0x00007f160f268263:   mov    %r11d,0x38(%rsp)
   0.02%   │ ││  0x00007f160f268268:   mov    0x14(%rdx),%esi              ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │ ││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.32%   │ ││  0x00007f160f26826b:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
           │ ││                                                            ; ImmutableOopMap {rdx=Oop rsi=NarrowOop r10=Oop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
   1.72%   │ ││  0x00007f160f268272:   mov    0x10(%r10),%r9d              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
  29.20%   │ ││  0x00007f160f268276:   mov    0xc(%rdx),%ebx               ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@5 (line 169)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ ││  0x00007f160f268279:   shl    $0x3,%rsi                    ;*getfield val$accumulator {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@1 (line 169)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.02%   │ ││  0x00007f160f26827d:   shl    $0x3,%rbx                    ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@5 (line 169)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.04%   │ ││  0x00007f160f268281:   shl    $0x3,%r9                     ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
   0.46%   │ ││  0x00007f160f268285:   mov    %rbx,%rdx
   0.00%   │ ││  0x00007f160f268288:   mov    %r9,%rcx                     ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.02%   │ ││  0x00007f160f26828b:   mov    %r10,0x8(%rsp)
   0.02%   │ ││  0x00007f160f268290:   nop
   0.44%   │ ││  0x00007f160f268291:   movabs $0x7f159403c5b8,%rax
   0.00%   │ ││  0x00007f160f26829b:   call   0x00007f160f261c40           ; ImmutableOopMap {[8]=Oop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
           │ ││                                                            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ ││                                                            ;   {virtual_call}
   0.07%   │ ││  0x00007f160f2682a0:   nopl   0x5000390(%rax,%rax,1)       ;   {other}
           │ ││  0x00007f160f2682a8:   mov    0x8(%rsp),%r10
   0.45%   │ ││  0x00007f160f2682ad:   mov    0x18(%r10),%r10d
   0.11%   │ ││  0x00007f160f2682b1:   shl    $0x3,%r10                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@152 (line 1716)
   0.02%   │ ││  0x00007f160f2682b5:   mov    %r10,%rsi
   0.09%   │ ││  0x00007f160f2682b8:   mov    0x38(%rsp),%r11d
   0.34%   │ ╰│  0x00007f160f2682bd:   jmp    0x00007f160f26823f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   2.92%   ↘  │  0x00007f160f2682bf:   mov    0x44(%rsp),%r8d
   3.22%      │  0x00007f160f2682c4:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rsi=Oop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
              │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
              │                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.34%      │  0x00007f160f2682cb:   test   %eax,(%r10)                  ;   {poll}
   1.76%      ╰  0x00007f160f2682ce:   jmp    0x00007f160f268210
                 0x00007f160f2682d3:   cmp    $0x2563e8,%r11d              ;   {metadata(&apos;java/util/stream/ReduceOps$3ReducingSink&apos;)}
                 0x00007f160f2682da:   jne    0x00007f160f26839f           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                 0x00007f160f2682e0:   mov    %r13,0x8(%rsp)
                 0x00007f160f2682e5:   mov    %rbp,0x18(%rsp)
                 0x00007f160f2682ea:   mov    %ebx,0x14(%rsp)
                 0x00007f160f2682ee:   mov    %r9d,0x34(%rsp)
                 0x00007f160f2682f3:   mov    %r11d,0x38(%rsp)
                 0x00007f160f2682f8:   mov    0x14(%rdx),%esi              ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
....................................................................................................
  49.04%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.stream.Collectors$$Lambda.0x00007f159403c5b8::accept, version 3, compile id 1209 

              0x00007f160f261c34:   0xf4f4f4f4                              
              0x00007f160f261c38:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
              0x00007f160f261c3c:   0xf4f4f4f4                              
            --------------------------------------------------------------------------------
            [Entry Point]
              # {method} {0x00007f1588316b90} &apos;accept&apos; &apos;(Ljava/lang/Object;Ljava/lang/Object;)V&apos; in &apos;java/util/stream/Collectors$$Lambda+0x00007f159403c5b8&apos;
              # this:     rsi:rsi   = &apos;java/util/stream/Collectors$$Lambda+0x00007f159403c5b8&apos;
              # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
              # parm1:    rcx:rcx   = &apos;java/lang/Object&apos;
              #           [sp+0x80]  (sp of caller)
   0.03%      0x00007f160f261c40:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
   0.46%      0x00007f160f261c44:   movabs $0x7f1593000000,%r12
   0.00%      0x00007f160f261c4e:   add    %r12,%r10
   0.01%      0x00007f160f261c51:   xor    %r12,%r12
   0.03%      0x00007f160f261c54:   cmp    %r10,%rax
              0x00007f160f261c57:   jne    0x00007f160ec2f080           ;   {runtime_call ic_miss_stub}
   0.41%      0x00007f160f261c5d:   data16 xchg %ax,%ax
            [Verified Entry Point]
   0.01%      0x00007f160f261c60:   mov    %eax,-0x14000(%rsp)
   0.06%      0x00007f160f261c67:   sub    $0x78,%rsp
   0.41%      0x00007f160f261c6b:   nop
   0.01%      0x00007f160f261c6c:   cmpl   $0x0,0x20(%r15)
   0.02%      0x00007f160f261c74:   jne    0x00007f160f2629eb
   0.04%      0x00007f160f261c7a:   mov    %rbp,0x70(%rsp)
   0.39%      0x00007f160f261c7f:   mov    %rsi,%r10
   0.00%      0x00007f160f261c82:   mov    %rdx,0x40(%rsp)
   0.02%      0x00007f160f261c87:   mov    %rcx,0x38(%rsp)              ; ImmutableOopMap {rcx=Oop rdx=Oop r10=Oop [56]=Oop [64]=Oop }
                                                                        ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@0
   0.04%      0x00007f160f261c8c:   cmpl   $0x8da40,0x8(%rdx)           ; implicit exception: dispatches to 0x00007f160f262a0f
                                                                        ;   {metadata(&apos;java/util/HashMap&apos;)}
   0.47%      0x00007f160f261c93:   jne    0x00007f160f262895           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@13
   0.01%      0x00007f160f261c99:   mov    0xc(%r10),%esi               ; ImmutableOopMap {rcx=Oop rdx=Oop r10=Oop [56]=Oop [64]=Oop }
                                                                        ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@0
   0.02%      0x00007f160f261c9d:   mov    0x8(,%rsi,8),%esi            ; implicit exception: dispatches to 0x00007f160f262a32
   0.04%      0x00007f160f261ca4:   mov    0x10(%r10),%r11d             ;*getfield arg$2 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@5
   0.40%      0x00007f160f261ca8:   mov    %r11d,0x34(%rsp)
   0.01%      0x00007f160f261cad:   mov    0x14(%r10),%r8d
   0.02%      0x00007f160f261cb1:   mov    %r8d,0x30(%rsp)
   0.04%      0x00007f160f261cb6:   mov    %r8d,%r9d
   0.43%      0x00007f160f261cb9:   shl    $0x3,%r9                     ;*getfield arg$3 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@9
   0.00%      0x00007f160f261cbd:   mov    %r11d,%edi
   0.03%      0x00007f160f261cc0:   shl    $0x3,%rdi                    ;*getfield arg$2 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@5
   0.03%      0x00007f160f261cc4:   movabs $0x7f1593000000,%rbx
   0.47%      0x00007f160f261cce:   lea    (%rbx,%rsi,1),%rsi
   0.01%      0x00007f160f261cd2:   movabs $0x7f1593025c88,%rbp         ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.02%      0x00007f160f261cdc:   mov    %rbp,0x60(%rsp)
   0.04%      0x00007f160f261ce1:   cmp    -0xe8(%rip),%rsi        # 0x00007f160f261c00
                                                                        ;   {section_word}
   0.40%  ╭   0x00007f160f261ce8:   je     0x00007f160f261d00
          │   0x00007f160f261cee:   cmp    -0xed(%rip),%rsi        # 0x00007f160f261c08
          │                                                             ;   {section_word}
          │   0x00007f160f261cf5:   je     0x00007f160f2621b4
          │   0x00007f160f261cfb:   jmp    0x00007f160f262841
   0.00%  ↘   0x00007f160f261d00:   test   %rcx,%rcx
              0x00007f160f261d03:   je     0x00007f160f261fd8
   0.02%      0x00007f160f261d09:   mov    0x8(%rcx),%esi
  14.02%      0x00007f160f261d0c:   movabs $0x7f1593000000,%rbx
   0.30%      0x00007f160f261d16:   lea    (%rbx,%rsi,1),%rsi           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f159402bd18::apply@1
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   0.17%      0x00007f160f261d1a:   nopw   0x0(%rax,%rax,1)
   0.01%      0x00007f160f261d20:   test   %rcx,%rcx
           ╭  0x00007f160f261d23:   je     0x00007f160f261d3c
   0.03%   │  0x00007f160f261d29:   movabs $0x7f159402b6f8,%rbx         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
   0.29%   │  0x00007f160f261d33:   cmp    %rsi,%rbx
           │  0x00007f160f261d36:   jne    0x00007f160f26277c           ; ImmutableOopMap {rcx=Oop rdx=Oop rdi=Oop r9=Oop r10=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop }
           │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@0
   0.22%   ↘  0x00007f160f261d3c:   mov    0xc(%rcx),%ebx               ; implicit exception: dispatches to 0x00007f160f262a55
   0.19%      0x00007f160f261d3f:   lea    0x80(%rbx),%esi
   0.14%      0x00007f160f261d45:   cmp    $0x100,%esi
              0x00007f160f261d4b:   jb     0x00007f160f261fb7
   0.42%      0x00007f160f261d51:   mov    0x1b8(%r15),%rsi
   0.04%      0x00007f160f261d58:   lea    0x10(%rsi),%rax
   0.02%      0x00007f160f261d5c:   nopl   0x0(%rax)
   0.03%      0x00007f160f261d60:   cmp    0x1c8(%r15),%rax
              0x00007f160f261d67:   ja     0x00007f160f261ff1
   0.39%      0x00007f160f261d6d:   mov    %rax,0x1b8(%r15)
   0.03%      0x00007f160f261d74:   prefetchw 0xd0(%rsi)
   0.02%      0x00007f160f261d7b:   movq   $0x1,(%rsi)
   0.03%      0x00007f160f261d82:   movl   $0x25c88,0x8(%rsi)           ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.44%      0x00007f160f261d89:   movl   $0x0,0xc(%rsi)
   0.04%      0x00007f160f261d90:   mov    %ebx,0xc(%rsi)
   0.02%      0x00007f160f261d93:   mov    %rdi,0x28(%rsp)
   0.02%      0x00007f160f261d98:   mov    %r9,0x20(%rsp)               ;* unwind (locked if synchronized)
                                                                        ; - java.lang.Integer::valueOf@-3
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f159402bd18::apply@7
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   0.46%      0x00007f160f261d9d:   mov    %rsi,0x18(%rsp)              ; ImmutableOopMap {rsi=Oop [24]=Oop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop }
                                                                        ;*ldc_w {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.stream.Collectors::lambda$groupingBy$53@8 (line 1105)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   0.03%      0x00007f160f261da2:   mov    0x8(%rsi),%ebx               ; implicit exception: dispatches to 0x00007f160f262a78
   0.13%      0x00007f160f261da5:   movabs $0x7f1593000000,%rax
   0.01%      0x00007f160f261daf:   lea    (%rax,%rbx,1),%rbx
   0.44%      0x00007f160f261db3:   mov    %rbx,0x58(%rsp)
   0.06%      0x00007f160f261db8:   mov    0x1e0(%rbx),%rax
   0.05%      0x00007f160f261dbf:   mov    0x40(%rax),%r10
   0.10%      0x00007f160f261dc3:   mov    %rsi,%r13
   0.42%      0x00007f160f261dc6:   mov    %rax,%rbx                    ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::hash@9 (line 338)
                                                                        ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   0.04%      0x00007f160f261dc9:   mov    %r10,%rax
   0.02%      0x00007f160f261dcc:   call   *%rax                        ; ImmutableOopMap {[24]=Oop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop }
                                                                        ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::hash@9 (line 338)
                                                                        ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   1.87%      0x00007f160f261dce:   nopl   0x0(%rax,%rax,1)
              0x00007f160f261dd6:   mov    0x40(%rsp),%rdx
   0.48%      0x00007f160f261ddb:   mov    0x1c(%rdx),%esi              ;*getfield threshold {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@31 (line 1204)
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   0.98%      0x00007f160f261dde:   mov    %eax,%r10d
   0.00%      0x00007f160f261de1:   shr    $0x10,%r10d                  ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::hash@17 (line 338)
                                                                        ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   0.26%      0x00007f160f261de5:   xor    %eax,%r10d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::hash@18 (line 338)
                                                                        ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   0.03%      0x00007f160f261de8:   mov    %r10d,0x54(%rsp)
   0.23%      0x00007f160f261ded:   cmp    0x14(%rdx),%esi
              0x00007f160f261df0:   jl     0x00007f160f26247b           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@34 (line 1204)
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   0.03%      0x00007f160f261df6:   mov    0x24(%rdx),%esi              ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   0.48%      0x00007f160f261df9:   nopl   0x0(%rax)
   0.03%      0x00007f160f261e00:   test   %esi,%esi
              0x00007f160f261e02:   je     0x00007f160f26247b           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@44 (line 1204)
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   0.27%      0x00007f160f261e08:   mov    0xc(,%rsi,8),%r11d           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@49 (line 1204)
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   1.09%      0x00007f160f261e10:   test   %r11d,%r11d
              0x00007f160f261e13:   je     0x00007f160f262819           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@53 (line 1204)
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   0.51%      0x00007f160f261e19:   shl    $0x3,%rsi                    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   0.03%      0x00007f160f261e1d:   mov    %r11d,%eax
              0x00007f160f261e20:   dec    %eax                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@71 (line 1207)
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
              0x00007f160f261e22:   and    %r10d,%eax                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@73 (line 1207)
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   0.47%      0x00007f160f261e25:   cmp    0xc(%rsi),%eax
              0x00007f160f261e28:   jae    0x00007f160f2629b7
   0.30%      0x00007f160f261e2e:   mov    0x10(%rsi,%rax,4),%r8d
   1.22%      0x00007f160f261e33:   mov    %r8d,%r9d
              0x00007f160f261e36:   shl    $0x3,%r9
   0.48%      0x00007f160f261e3a:   nopw   0x0(%rax,%rax,1)
   0.03%      0x00007f160f261e40:   test   %r8d,%r8d
              0x00007f160f261e43:   je     0x00007f160f26202b
   0.01%      0x00007f160f261e49:   cmpl   $0x1a7c50,0x8(,%r8,8)        ;   {metadata(&apos;java/util/HashMap$TreeNode&apos;)}
   2.38%      0x00007f160f261e55:   je     0x00007f160f2628df           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   0.47%      0x00007f160f261e5b:   nopl   0x0(%rax,%rax,1)
              0x00007f160f261e60:   cmp    0xc(,%r8,8),%r10d
              0x00007f160f261e68:   jne    0x00007f160f262365           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@120 (line 1213)
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   0.63%      0x00007f160f261e6e:   mov    0x10(,%r8,8),%r8d
   0.37%      0x00007f160f261e76:   mov    %r8d,%ecx
   0.00%      0x00007f160f261e79:   shl    $0x3,%rcx                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   0.01%      0x00007f160f261e7d:   data16 xchg %ax,%ax
   0.16%      0x00007f160f261e80:   cmp    0x18(%rsp),%rcx
              0x00007f160f261e85:   je     0x00007f160f2626f4           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@132 (line 1213)
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   0.31%      0x00007f160f261e8b:   test   %r8d,%r8d
              0x00007f160f261e8e:   je     0x00007f160f261fe5
   0.01%      0x00007f160f261e94:   mov    0x8(,%r8,8),%ecx
   1.29%      0x00007f160f261e9c:   movabs $0x7f1593000000,%rbx
   0.08%      0x00007f160f261ea6:   lea    (%rbx,%rcx,1),%rcx           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.Long::equals@1 (line 1452)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
                                                                        ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007f159403c5b8::accept@17
   0.41%      0x00007f160f261eaa:   mov    0x58(%rsp),%rbx
              0x00007f160f261eaf:   cmp    -0x2a6(%rip),%rbx        # 0x00007f160f261c10
                                                                        ;   {section_word}
              0x00007f160f261eb6:   je     0x00007f160f261ece
              0x00007f160f261ebc:   cmp    -0x2ab(%rip),%rbx        # 0x00007f160f261c18
                                                                        ;   {section_word}
              0x00007f160f261ec3:   je     0x00007f160f26239c
....................................................................................................
  37.95%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.04%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1250 
  37.95%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f159403c5b8::accept, version 3, compile id 1209 
   5.39%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f159403c5b8::accept, version 3, compile id 1209 
   4.21%      jvmci, level 4  java.lang.Integer::hashCode, version 2, compile id 1208 
   0.49%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 3, compile id 1326 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  java.lang.Long::hashCode, version 3, compile id 1288 
   0.02%              kernel  [unknown] 
   2.09%  <...other 641 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.04%      jvmci, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 1250 
  43.41%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f159403c5b8::accept, version 3, compile id 1209 
   4.21%      jvmci, level 4  java.lang.Integer::hashCode, version 2, compile id 1208 
   1.92%              kernel  [unknown] 
   0.55%                      <unknown> 
   0.06%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.06%      jvmci, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 3, compile id 1326 
   0.05%      jvmci, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 3, compile id 1332 
   0.04%      jvmci, level 4  java.util.ArrayList::add, version 3, compile id 1273 
   0.04%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f159403d568::accept, version 3, compile id 1335 
   0.03%      jvmci, level 4  java.util.HashMap::resize, version 2, compile id 697 
   0.03%      jvmci, level 4  java.lang.Long::hashCode, version 3, compile id 1288 
   0.02%      jvmci, level 4  java.util.stream.Sink$ChainedReference::begin, version 4, compile id 1395 
   0.02%    perf-2127519.map  [unknown] 
   0.02%           libjvm.so  MethodMatcher::matches 
   0.02%      jvmci, level 4  java.util.stream.ReferencePipeline::collect, version 4, compile id 1322 
   0.02%      jvmci, level 4  java.util.stream.AbstractPipeline::copyInto, version 6, compile id 1398 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%      jvmci, level 4  java.util.stream.Collectors$$Lambda.0x00007f159403ca30::apply, version 2, compile id 1414 
   0.42%  <...other 136 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.02%      jvmci, level 4
   1.92%              kernel
   0.55%                    
   0.33%           libjvm.so
   0.09%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.02%    perf-2127519.map
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%         c1, level 3
   0.01%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:27:23

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
PublicationStatisticsBenchmark.author_with_the_most_publications                avgt    5    57.440 ±   0.845  ms/op
PublicationStatisticsBenchmark.author_with_the_most_publications:asm            avgt            NaN              ---
PublicationStatisticsBenchmark.authors_with_no_duplicate_collaborations         avgt    5    74.206 ±   0.673  ms/op
PublicationStatisticsBenchmark.authors_with_no_duplicate_collaborations:asm     avgt            NaN              ---
PublicationStatisticsBenchmark.first_publication_year                           avgt    5     7.687 ±   2.866  ms/op
PublicationStatisticsBenchmark.first_publication_year:asm                       avgt            NaN              ---
PublicationStatisticsBenchmark.last_publication_year                            avgt    5     7.823 ±   2.278  ms/op
PublicationStatisticsBenchmark.last_publication_year:asm                        avgt            NaN              ---
PublicationStatisticsBenchmark.most_prolific_pair_of_authors                    avgt    5  5814.783 ± 351.632  ms/op
PublicationStatisticsBenchmark.most_prolific_pair_of_authors:asm                avgt            NaN              ---
PublicationStatisticsBenchmark.most_prolific_pair_of_authors_per_year           avgt    5   986.641 ±  30.716  ms/op
PublicationStatisticsBenchmark.most_prolific_pair_of_authors_per_year:asm       avgt            NaN              ---
PublicationStatisticsBenchmark.number_of_publications_per_author                avgt    5    67.608 ±  13.206  ms/op
PublicationStatisticsBenchmark.number_of_publications_per_author:asm            avgt            NaN              ---
PublicationStatisticsBenchmark.number_of_publications_per_year                  avgt    5     8.164 ±   0.146  ms/op
PublicationStatisticsBenchmark.number_of_publications_per_year:asm              avgt            NaN              ---
PublicationStatisticsBenchmark.publication_with_the_most_authors                avgt    5    11.296 ±   0.677  ms/op
PublicationStatisticsBenchmark.publication_with_the_most_authors:asm            avgt            NaN              ---
PublicationStatisticsBenchmark.publications_per_author                          avgt    5   121.753 ±   3.855  ms/op
PublicationStatisticsBenchmark.publications_per_author:asm                      avgt            NaN              ---
PublicationStatisticsBenchmark.publications_with_the_most_authors_per_year      avgt    5     9.345 ±   0.382  ms/op
PublicationStatisticsBenchmark.publications_with_the_most_authors_per_year:asm  avgt            NaN              ---
PublicationStatisticsBenchmark.publications_years_statistics                    avgt    5     9.469 ±   0.433  ms/op
PublicationStatisticsBenchmark.publications_years_statistics:asm                avgt            NaN              ---
PublicationStatisticsBenchmark.year_with_the_most_publications                  avgt    5     7.275 ±   2.444  ms/op
PublicationStatisticsBenchmark.year_with_the_most_publications:asm              avgt            NaN              ---
PublicationStatisticsBenchmark.years_with_the_most_publications                 avgt    5     7.512 ±   0.138  ms/op
PublicationStatisticsBenchmark.years_with_the_most_publications:asm             avgt            NaN              ---
