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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = _)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 180.486 us/op
# Warmup Iteration   2: 159.628 us/op
# Warmup Iteration   3: 159.604 us/op
# Warmup Iteration   4: 159.790 us/op
# Warmup Iteration   5: 159.445 us/op
Iteration   1: 159.469 us/op
Iteration   2: 159.376 us/op
Iteration   3: 159.667 us/op
Iteration   4: 161.360 us/op
Iteration   5: 160.295 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split":
  160.033 ±(99.9%) 3.171 us/op [Average]
  (min, avg, max) = (159.376, 160.033, 161.360), stdev = 0.824
  CI (99.9%): [156.862, 163.205] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:·asm":
PrintAssembly processed: 221883 total address lines.
Perf output processed (skipped 59.130 seconds):
 Column 1: cycles (50733 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.regex.Matcher::search, version 4, compile id 798 

                   #           [sp+0x50]  (sp of caller)
                   0x00007fb11b002080:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                   0x00007fb11b002084:   movabs $0x800000000,%r12
                   0x00007fb11b00208e:   add    %r12,%r10
                   0x00007fb11b002091:   xor    %r12,%r12
                   0x00007fb11b002094:   cmp    %r10,%rax
                   0x00007fb11b002097:   jne    0x00007fb1134ff780           ;   {runtime_call ic_miss_stub}
                   0x00007fb11b00209d:   nop
                   0x00007fb11b00209e:   xchg   %ax,%ax
                 [Verified Entry Point]
   0.47%           0x00007fb11b0020a0:   mov    %eax,-0x14000(%rsp)
   0.01%           0x00007fb11b0020a7:   sub    $0x48,%rsp
   0.56%           0x00007fb11b0020ab:   mov    %rbp,0x40(%rsp)
                   0x00007fb11b0020b0:   mov    %rsi,0x20(%rsp)
                   0x00007fb11b0020b5:   mov    %edx,0x34(%rsp)
   0.00%           0x00007fb11b0020b9:   nopl   0x0(%rax)
   0.54%           0x00007fb11b0020c0:   test   %edx,%edx
                   0x00007fb11b0020c2:   jl     0x00007fb11b002840           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@11 (line 1718)
                   0x00007fb11b0020c8:   mov    0x38(%rsi),%r10d             ; ImmutableOopMap {rsi=Oop r10=NarrowOop [32]=Oop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.regex.Matcher::search@0 (line 1716)
   0.02%           0x00007fb11b0020cc:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007fb11b0028b7
   0.01%           0x00007fb11b0020d4:   movb   $0x0,0x30(%rsi)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@2 (line 1716)
   0.44%           0x00007fb11b0020d8:   movb   $0x0,0x31(%rsi)              ;*putfield requireEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@7 (line 1717)
                   0x00007fb11b0020dc:   mov    %edx,0x1c(%rsi)              ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@22 (line 1719)
   0.00%           0x00007fb11b0020df:   mov    0x24(%rsi),%ecx              ;*getfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@27 (line 1720)
                   0x00007fb11b0020e2:   test   %ecx,%ecx
   0.51%           0x00007fb11b0020e4:   cmovl  %edx,%ecx                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@30 (line 1720)
   0.00%           0x00007fb11b0020e7:   mov    %ecx,0x24(%rsi)              ;*putfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@41 (line 1720)
   0.00%           0x00007fb11b0020ea:   test   %r11d,%r11d
          ╭        0x00007fb11b0020ed:   je     0x00007fb11b002157           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.regex.Matcher::search@52 (line 1721)
   0.00%  │        0x00007fb11b0020f3:   mov    %r11d,%ecx
   0.48%  │        0x00007fb11b0020f6:   dec    %ecx
          │        0x00007fb11b0020f8:   movslq %ecx,%rcx
   0.00%  │        0x00007fb11b0020fb:   mov    %r11d,%r8d
   0.01%  │        0x00007fb11b0020fe:   xchg   %ax,%ax
   0.43%  │        0x00007fb11b002100:   cmp    %rcx,%r8
          │╭       0x00007fb11b002103:   ja     0x00007fb11b002113
          ││       0x00007fb11b002109:   cmp    $0x2,%r11d
          ││       0x00007fb11b00210d:   jae    0x00007fb11b00285f
          │↘       0x00007fb11b002113:   movl   $0xffffffff,0x10(,%r10,8)    ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.regex.Matcher::search@61 (line 1722)
   0.01%  │        0x00007fb11b00211f:   cmp    $0x3,%r11d
   0.00%  │        0x00007fb11b002123:   mov    $0x2,%ecx
   0.47%  │        0x00007fb11b002128:   cmovb  %r11d,%ecx
          │        0x00007fb11b00212c:   mov    %r10d,%r8d
          │        0x00007fb11b00212f:   shl    $0x3,%r8                     ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.regex.Matcher::search@48 (line 1721)
          │        0x00007fb11b002133:   mov    $0x1,%r9d
   0.48%  │ ╭      0x00007fb11b002139:   jmp    0x00007fb11b00214c           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                ; - java.util.regex.Matcher::search@46 (line 1721)
          │ │      0x00007fb11b00213e:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                ; - java.util.regex.Matcher::search@52 (line 1721)
   0.48%  │ │↗     0x00007fb11b002140:   movl   $0xffffffff,0x10(%r8,%r9,4)  ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.regex.Matcher::search@61 (line 1722)
          │ ││     0x00007fb11b002149:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.regex.Matcher::search@62 (line 1721)
   0.00%  │ ↘│     0x00007fb11b00214c:   cmp    %r9d,%ecx
          │  │     0x00007fb11b00214f:   jle    0x00007fb11b0023d8
   0.00%  │  ╰     0x00007fb11b002155:   jmp    0x00007fb11b002140           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.regex.Matcher::search@52 (line 1721)
          ↘        0x00007fb11b002157:   mov    0x3c(%rsi),%ecx              ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@118 (line 1728)
                   0x00007fb11b00215a:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rcx=NarrowOop rsi=Oop r10=NarrowOop [32]=Oop }
                                                                             ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.regex.Matcher::search@68 (line 1723)
   0.44%           0x00007fb11b002160:   cmpl   $0xed30,0x8(,%rcx,8)         ; implicit exception: dispatches to 0x00007fb11b0028d3
                                                                             ;   {metadata(&apos;java/lang/String&apos;)}
   0.03%           0x00007fb11b00216b:   jne    0x00007fb11b00281c           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
                                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
   0.00%           0x00007fb11b002171:   cmpb   $0x0,0x10(,%rcx,8)
   0.55%           0x00007fb11b002179:   jne    0x00007fb11b0027e8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.lang.String::isLatin1@10 (line 4551)
                                                                             ; - java.lang.String::charAt@1 (line 1514)
                                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
                                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
   0.01%           0x00007fb11b00217f:   mov    0x14(,%rcx,8),%r8d           ; ImmutableOopMap {rcx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop [32]=Oop }
                                                                             ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.regex.Matcher::search@68 (line 1723)
                   0x00007fb11b002187:   mov    0xc(,%r8,8),%r9d             ; implicit exception: dispatches to 0x00007fb11b0028ef
   0.49%           0x00007fb11b00218f:   mov    0x44(%rsi),%ebx              ; ImmutableOopMap {rcx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop [32]=Oop }
                                                                             ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.regex.Matcher::search@68 (line 1723)
   0.01%           0x00007fb11b002192:   cmpl   $0x0,0xc(,%rbx,8)            ; implicit exception: dispatches to 0x00007fb11b00290b
                   0x00007fb11b00219a:   jne    0x00007fb11b0025fe           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@76 (line 1723)
   0.48%           0x00007fb11b0021a0:   mov    0x34(%rsi),%ebx              ; ImmutableOopMap {rcx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop [32]=Oop }
                                                                             ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.regex.Matcher::search@68 (line 1723)
   0.01%           0x00007fb11b0021a3:   mov    0x34(,%rbx,8),%ebx           ; implicit exception: dispatches to 0x00007fb11b002927
                                                                             ; ImmutableOopMap {rcx=NarrowOop rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop [32]=Oop }
                                                                             ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.regex.Matcher::search@68 (line 1723)
   0.01%           0x00007fb11b0021aa:   cmpl   $0x2660c0,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007fb11b002946
                                                                             ;   {metadata(&apos;java/util/regex/Pattern$Start&apos;)}
   0.56%           0x00007fb11b0021b5:   jne    0x00007fb11b002792           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
   0.02%           0x00007fb11b0021bb:   mov    0x10(%rsi),%edi              ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$Start::match@2 (line 3602)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
                   0x00007fb11b0021be:   mov    %edi,%eax
                   0x00007fb11b0021c0:   sub    0x10(,%rbx,8),%eax           ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$Start::match@9 (line 3602)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
   0.48%           0x00007fb11b0021c7:   cmp    %eax,%edx
                   0x00007fb11b0021c9:   jg     0x00007fb11b002780           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$Start::match@10 (line 3602)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
   0.03%           0x00007fb11b0021cf:   mov    %r11d,0x30(%rsp)
                   0x00007fb11b0021d4:   mov    %r10d,0x1c(%rsp)
                   0x00007fb11b0021d9:   mov    0xc(,%rbx,8),%ebp            ; ImmutableOopMap {rcx=NarrowOop rbx=NarrowOop rbp=NarrowOop rsi=Oop r8=NarrowOop [28]=NarrowOop [32]=Oop }
                                                                             ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.regex.Matcher::search@68 (line 1723)
   0.44%           0x00007fb11b0021e0:   mov    0x8(,%rbp,8),%r13d           ; implicit exception: dispatches to 0x00007fb11b002966
   0.08%           0x00007fb11b0021e8:   mov    %eax,%r14d
                   0x00007fb11b0021eb:   sub    %edx,%r14d
                   0x00007fb11b0021ee:   inc    %r14d
   0.41%           0x00007fb11b0021f1:   movslq %r14d,%r14
   0.05%           0x00007fb11b0021f4:   mov    %edx,%r10d
                   0x00007fb11b0021f7:   add    %r10,%r14
   0.01%           0x00007fb11b0021fa:   mov    %r14,%r10
   0.47%           0x00007fb11b0021fd:   dec    %r10
   0.05%           0x00007fb11b002200:   movslq %edi,%r11
                   0x00007fb11b002203:   cmp    %r10,%r11
                   0x00007fb11b002206:   jle    0x00007fb11b00282e
   0.04%           0x00007fb11b00220c:   cmp    %edx,%edi
                   0x00007fb11b00220e:   jle    0x00007fb11b002890           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@5 (line 3953)
                                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
   0.46%           0x00007fb11b002214:   cmp    $0x1,%r14
                   0x00007fb11b002218:   jl     0x00007fb11b0026dd           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.lang.StringLatin1::charAt@1 (line 47)
                                                                             ; - java.lang.String::charAt@12 (line 1515)
                                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
                                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
   0.01%           0x00007fb11b00221e:   mov    %r9d,%r11d
                   0x00007fb11b002221:   cmp    %r10,%r11
                   0x00007fb11b002224:   jle    0x00007fb11b002626
   0.04%           0x00007fb11b00222a:   cmp    %edx,%r9d
                   0x00007fb11b00222d:   jle    0x00007fb11b002635           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.lang.StringLatin1::charAt@7 (line 47)
                                                                             ; - java.lang.String::charAt@12 (line 1515)
                                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
                                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
   0.46%           0x00007fb11b002233:   cmp    %r10,%r11
                   0x00007fb11b002236:   jbe    0x00007fb11b0027a5
   0.05%           0x00007fb11b00223c:   nopl   0x0(%rax)
                   0x00007fb11b002240:   cmp    %edx,%r9d
                   0x00007fb11b002243:   jbe    0x00007fb11b0027b7           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.lang.StringLatin1::charAt@21 (line 50)
                                                                             ; - java.lang.String::charAt@12 (line 1515)
                                                                             ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
                                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
                   0x00007fb11b002249:   movl   $0x0,0x18(%rsi)              ;*putfield acceptMode {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@105 (line 1727)
   0.42%           0x00007fb11b002250:   movabs $0x800000000,%r10
   0.05%           0x00007fb11b00225a:   lea    (%r10,%r13,1),%r13
                   0x00007fb11b00225e:   mov    %ebp,%r10d
                   0x00007fb11b002261:   shl    $0x3,%r10                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$Start::match@38 (line 3608)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
   0.45%           0x00007fb11b002265:   shl    $0x3,%rbx                    ;*getfield root {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@112 (line 1728)
   0.04%           0x00007fb11b002269:   shl    $0x3,%rcx                    ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@118 (line 1728)
                   0x00007fb11b00226d:   mov    %rcx,0x10(%rsp)
                   0x00007fb11b002272:   movabs $0x7fec3bfb8,%r11            ;   {oop([I{0x00000007fec3bfb8})}
   0.40%           0x00007fb11b00227c:   mov    %edx,%r14d
   0.04%           0x00007fb11b00227f:   nop                                 ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$Start::match@31 (line 3607)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
   0.70%        ↗  0x00007fb11b002280:   cmp    %eax,%r14d
                │  0x00007fb11b002283:   jg     0x00007fb11b0025ea           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - java.util.regex.Pattern$Start::match@34 (line 3607)
                │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   0.78%        │  0x00007fb11b002289:   mov    %r14d,0x2c(%rsp)
   1.07%        │  0x00007fb11b00228e:   movsbl 0x10(%r14,%r8,8),%edx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
                │                                                            ; - java.lang.String::charAt@12 (line 1515)
                │                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
                │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   0.77%        │  0x00007fb11b002294:   mov    %r14d,%esi
   0.69%        │  0x00007fb11b002297:   inc    %esi
   0.77%        │  0x00007fb11b002299:   cmp    -0x240(%rip),%r13        # 0x00007fb11b002060
                │                                                            ;   {section_word}
   1.07%      ╭ │  0x00007fb11b0022a0:   je     0x00007fb11b0022b8
              │ │  0x00007fb11b0022a6:   cmp    -0x245(%rip),%r13        # 0x00007fb11b002068
              │ │                                                            ;   {section_word}
              │╭│  0x00007fb11b0022ad:   je     0x00007fb11b0022fb
              │││  0x00007fb11b0022b3:   jmp    0x00007fb11b0028a5
   0.68%      ↘││  0x00007fb11b0022b8:   mov    0x10(,%rbp,8),%ecx           ;*getfield predicate {reexecute=0 rethrow=0 return_oop=0}
               ││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@9 (line 3954)
               ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
               ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   0.73%       ││  0x00007fb11b0022bf:   nop                                 ; ImmutableOopMap {rcx=NarrowOop rbx=Oop rbp=NarrowOop r8=NarrowOop r10=Oop r11=Oop [16]=Oop [28]=NarrowOop [32]=Oop }
               ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
               ││                                                            ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3607)
               ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   0.75%       ││  0x00007fb11b0022c0:   cmpl   $0x1b7b40,0x8(,%rcx,8)       ; implicit exception: dispatches to 0x00007fb11b002986
               ││                                                            ;   {metadata(&apos;java/util/regex/Pattern$$Lambda$21+0x80000001e&apos;)}
   1.97%       ││  0x00007fb11b0022cb:   jne    0x00007fb11b002739           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
               ││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@19 (line 3954)
               ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
               ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   0.86%       ││  0x00007fb11b0022d1:   movzbl %dl,%edx                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
               ││                                                            ; - java.lang.StringLatin1::charAt@25 (line 50)
               ││                                                            ; - java.lang.String::charAt@12 (line 1515)
               ││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
               ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
               ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   0.83%       ││  0x00007fb11b0022d4:   nopl   0x0(%rax,%rax,1)
   0.87%       ││  0x00007fb11b0022dc:   data16 data16 xchg %ax,%ax
   0.62%       ││  0x00007fb11b0022e0:   cmp    0xc(,%rcx,8),%edx
               ││  0x00007fb11b0022e7:   je     0x00007fb11b0024c5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               ││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 3954)
               ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
               ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   2.05%       ││  0x00007fb11b0022ed:   mov    0x348(%r15),%rdx             ; ImmutableOopMap {rbx=Oop rbp=NarrowOop r8=NarrowOop r10=Oop r11=Oop [16]=Oop [28]=NarrowOop [32]=Oop }
               ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
               ││                                                            ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3607)
               ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   1.84%       ││  0x00007fb11b0022f4:   test   %eax,(%rdx)                  ;   {poll}
   1.13%       ││  0x00007fb11b0022f6:   mov    %esi,%r14d
   0.71%       │╰  0x00007fb11b0022f9:   jmp    0x00007fb11b002280           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
               │                                                             ; - java.util.regex.Pattern$Start::match@31 (line 3607)
               │                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
               ↘   0x00007fb11b0022fb:   nopl   0x0(%rax,%rax,1)
                   0x00007fb11b002300:   cmp    %r14d,%edi
                   0x00007fb11b002303:   jle    0x00007fb11b002727           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4322)
                                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
                   0x00007fb11b002309:   cmp    $0x80,%dl
                   0x00007fb11b00230c:   jae    0x00007fb11b002715           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  30.86%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.regex.Pattern::split, version 4, compile id 823 

              0x00007fb11b00cffe:   mov    0x20(%rbx),%esi              ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::end@18 (line 523)
                                                                        ; - java.util.regex.Pattern::split@111 (line 1274)
              0x00007fb11b00d001:   mov    %esi,%r10d
              0x00007fb11b00d004:   mov    %r11d,%esi
              0x00007fb11b00d007:   jmp    0x00007fb11b00d39e           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@29 (line 1265)
              0x00007fb11b00d00c:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fb11b00d017:   data16 data16 xchg %ax,%ax
              0x00007fb11b00d01b:   nopl   0x0(%rax,%rax,1)
   0.45%      0x00007fb11b00d020:   cmp    0xc(%rbx),%r10d
              0x00007fb11b00d024:   jl     0x00007fb11b00e885           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@21 (line 736)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.00%      0x00007fb11b00d02a:   cmp    0x10(%rbx),%r10d
              0x00007fb11b00d02e:   jg     0x00007fb11b00e8a6           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@34 (line 740)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
              0x00007fb11b00d034:   mov    %rbx,%rsi
              0x00007fb11b00d037:   mov    %r10d,%edx                   ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.48%      0x00007fb11b00d03a:   mov    %r10d,0x4c(%rsp)
              0x00007fb11b00d03f:   nop
   0.00%      0x00007fb11b00d040:   data16 xchg %ax,%ax
   0.00%      0x00007fb11b00d043:   call   0x00007fb11b0020a0           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop }
                                                                        ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                        ;   {optimized virtual_call}
   0.00%      0x00007fb11b00d048:   nop
   0.12%      0x00007fb11b00d049:   test   %eax,%eax
              0x00007fb11b00d04b:   je     0x00007fb11b00d5d2           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@34 (line 1265)
   0.13%      0x00007fb11b00d051:   mov    0x40(%rsp),%rsi
   1.13%      0x00007fb11b00d056:   mov    0x1c(%rsi),%r10d             ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::start@1 (line 449)
                                                                        ; - java.util.regex.Pattern::split@60 (line 1267)
   1.66%      0x00007fb11b00d05a:   nopw   0x0(%rax,%rax,1)
   0.03%      0x00007fb11b00d060:   test   %r10d,%r10d
              0x00007fb11b00d063:   jl     0x00007fb11b00e666           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::start@4 (line 449)
                                                                        ; - java.util.regex.Pattern::split@86 (line 1272)
   0.44%      0x00007fb11b00d069:   mov    0x4c(%rsp),%r11d
              0x00007fb11b00d06e:   test   %r11d,%r11d
              0x00007fb11b00d071:   jl     0x00007fb11b00e357           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::checkBoundsBeginEnd@1 (line 4603)
                                                                        ; - java.lang.String::substring@8 (line 2707)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.01%      0x00007fb11b00d077:   cmp    %r10d,%r11d
              0x00007fb11b00d07a:   jg     0x00007fb11b00e7e8           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::checkBoundsBeginEnd@6 (line 4603)
                                                                        ; - java.lang.String::substring@8 (line 2707)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.44%      0x00007fb11b00d080:   mov    0x38(%rsp),%rdx
   0.03%      0x00007fb11b00d085:   mov    0x14(%rdx),%r8d              ; ImmutableOopMap {rdx=Oop rsi=Oop r8=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                        ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.regex.Matcher::find@68 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.03%      0x00007fb11b00d089:   mov    0xc(,%r8,8),%r9d             ; implicit exception: dispatches to 0x00007fb11b00e946
   1.80%      0x00007fb11b00d091:   movsbl 0x10(%rdx),%ebx              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::coder@7 (line 4543)
                                                                        ; - java.lang.String::length@6 (line 1479)
                                                                        ; - java.lang.String::substring@1 (line 2706)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.01%      0x00007fb11b00d095:   mov    %ebx,%ecx
   0.01%      0x00007fb11b00d097:   mov    %r9d,%edi
   0.00%      0x00007fb11b00d09a:   shr    %cl,%edi                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::length@9 (line 1479)
                                                                        ; - java.lang.String::substring@1 (line 2706)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.92%      0x00007fb11b00d09c:   nopl   0x0(%rax)
   0.01%      0x00007fb11b00d0a0:   cmp    %edi,%r10d
              0x00007fb11b00d0a3:   jg     0x00007fb11b00e512           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::checkBoundsBeginEnd@11 (line 4603)
                                                                        ; - java.lang.String::substring@8 (line 2707)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.04%      0x00007fb11b00d0a9:   test   %r11d,%r11d
              0x00007fb11b00d0ac:   je     0x00007fb11b00d58b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@54 (line 1267)
   0.00%      0x00007fb11b00d0b2:   test   %r11d,%r11d
              0x00007fb11b00d0b5:   je     0x00007fb11b00d554           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::substring@12 (line 2708)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.44%      0x00007fb11b00d0bb:   nopl   0x0(%rax,%rax,1)
   0.01%      0x00007fb11b00d0c0:   test   %ebx,%ebx
              0x00007fb11b00d0c2:   jne    0x00007fb11b00e850           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::isLatin1@10 (line 4551)
                                                                        ; - java.lang.String::substring@28 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.03%      0x00007fb11b00d0c8:   cmp    %r11d,%r10d
              0x00007fb11b00d0cb:   je     0x00007fb11b00d5b5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::newString@1 (line 766)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.01%      0x00007fb11b00d0d1:   mov    %r10d,%ebx
   0.41%      0x00007fb11b00d0d4:   sub    %r11d,%ebx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::substring@24 (line 2711)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.00%      0x00007fb11b00d0d7:   test   %ebx,%ebx
              0x00007fb11b00d0d9:   jl     0x00007fb11b00e5ca           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@5 (line 3820)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.03%      0x00007fb11b00d0df:   mov    0x108(%r15),%rbp
   0.01%      0x00007fb11b00d0e6:   mov    %ebx,%edi
   0.46%      0x00007fb11b00d0e8:   lea    0x17(%rdi),%rdi
   0.00%      0x00007fb11b00d0ec:   and    $0xfffffffffffffff8,%rdi
   0.03%      0x00007fb11b00d0f0:   mov    %rdi,%rcx
   0.00%      0x00007fb11b00d0f3:   add    %rbp,%rcx
   0.40%      0x00007fb11b00d0f6:   data16 nopw 0x0(%rax,%rax,1)
   0.01%      0x00007fb11b00d100:   cmp    0x118(%r15),%rcx
              0x00007fb11b00d107:   ja     0x00007fb11b00d486
   0.03%      0x00007fb11b00d10d:   mov    %rcx,0x108(%r15)
   0.03%      0x00007fb11b00d114:   prefetchw 0xc0(%rdi,%rbp,1)
   0.47%      0x00007fb11b00d11c:   prefetchw 0x100(%rdi,%rbp,1)
   0.01%      0x00007fb11b00d124:   prefetchw 0x140(%rdi,%rbp,1)
   0.05%      0x00007fb11b00d12c:   prefetchw 0x180(%rdi,%rbp,1)
   0.19%      0x00007fb11b00d134:   movq   $0x1,0x0(%rbp)
   1.11%      0x00007fb11b00d13c:   movl   $0x6848,0x8(%rbp)            ;   {metadata({type array byte})}
   0.01%      0x00007fb11b00d143:   mov    %ebx,0xc(%rbp)
   0.09%      0x00007fb11b00d146:   lea    -0x10(%rdi),%rcx
   0.01%      0x00007fb11b00d14a:   cmp    $0x800,%rcx
              0x00007fb11b00d151:   jae    0x00007fb11b00d4b2
   0.40%      0x00007fb11b00d157:   mov    $0x10,%rcx
   0.00%      0x00007fb11b00d15e:   xchg   %ax,%ax
   0.02%  ╭   0x00007fb11b00d160:   jmp    0x00007fb11b00d18d
          │   0x00007fb11b00d165:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fb11b00d170:   data16 data16 xchg %ax,%ax
          │   0x00007fb11b00d174:   nopl   0x0(%rax,%rax,1)
          │   0x00007fb11b00d17c:   data16 data16 xchg %ax,%ax
   0.56%  │↗  0x00007fb11b00d180:   movq   $0x0,0x0(%rbp,%rcx,1)
   0.04%  ││  0x00007fb11b00d189:   lea    0x8(%rcx),%rcx
   0.02%  ↘│  0x00007fb11b00d18d:   cmp    %rcx,%rdi
           ╰  0x00007fb11b00d190:   ja     0x00007fb11b00d180           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@41 (line 3822)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
              0x00007fb11b00d192:   mov    %r9d,%edi
   0.46%      0x00007fb11b00d195:   sub    %r11d,%edi                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@53 (line 3823)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.05%      0x00007fb11b00d198:   cmp    %ebx,%edi
   0.01%      0x00007fb11b00d19a:   cmovg  %ebx,%edi                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.Math::min@2 (line 1649)
                                                                        ; - java.util.Arrays::copyOfRange@55 (line 3824)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
              0x00007fb11b00d19d:   data16 xchg %ax,%ax
   0.50%      0x00007fb11b00d1a0:   test   %edi,%edi
              0x00007fb11b00d1a2:   jl     0x00007fb11b00e52e
   0.05%      0x00007fb11b00d1a8:   sub    %edi,%r9d
   0.00%      0x00007fb11b00d1ab:   cmp    %r9d,%r11d
              0x00007fb11b00d1ae:   jg     0x00007fb11b00e30c
              0x00007fb11b00d1b4:   cmp    %ebx,%edi
              0x00007fb11b00d1b6:   jg     0x00007fb11b00e75a           ;* unwind (locked if synchronized)
                                                                        ; - java.lang.System::arraycopy@-3
                                                                        ; - java.util.Arrays::copyOfRange@58 (line 3823)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.47%      0x00007fb11b00d1bc:   shl    $0x3,%r8                     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::length@1 (line 1479)
                                                                        ; - java.lang.String::substring@1 (line 2706)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.04%      0x00007fb11b00d1c0:   mov    %rbp,%r10
   0.01%      0x00007fb11b00d1c3:   mov    %edi,%r9d
              0x00007fb11b00d1c6:   lea    0x10(%r8,%r11,1),%rdi
   0.68%      0x00007fb11b00d1cb:   lea    0x10(%r10),%rsi
   0.04%      0x00007fb11b00d1cf:   mov    %r9,%rdx                     ;* unwind (locked if synchronized)
                                                                        ; - java.lang.System::arraycopy@-3
                                                                        ; - java.util.Arrays::copyOfRange@58 (line 3823)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.01%      0x00007fb11b00d1d2:   mov    %rbp,0x18(%rsp)
   0.42%      0x00007fb11b00d1d7:   call   Stub::jbyte_arraycopy        ;   {runtime_call StubRoutines (2)}
   0.16%      0x00007fb11b00d1dc:   nop
   0.07%      0x00007fb11b00d1dd:   mov    0x108(%r15),%rsi
   0.31%      0x00007fb11b00d1e4:   lea    0x18(%rsi),%rdx
   0.21%      0x00007fb11b00d1e8:   cmp    0x118(%r15),%rdx
              0x00007fb11b00d1ef:   ja     0x00007fb11b00d45f
   0.21%      0x00007fb11b00d1f5:   mov    %rdx,0x108(%r15)
   0.15%      0x00007fb11b00d1fc:   prefetchw 0xd8(%rsi)
   0.53%      0x00007fb11b00d203:   movq   $0x1,(%rsi)
   1.30%      0x00007fb11b00d20a:   movl   $0xed30,0x8(%rsi)            ;   {metadata(&apos;java/lang/String&apos;)}
   0.35%      0x00007fb11b00d211:   movl   $0x0,0xc(%rsi)
   0.68%      0x00007fb11b00d218:   movq   $0x0,0x10(%rsi)
   0.02%      0x00007fb11b00d220:   mov    0x18(%rsp),%rbp
   0.22%      0x00007fb11b00d225:   shr    $0x3,%rbp
   0.28%      0x00007fb11b00d229:   mov    %ebp,0x14(%rsi)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::newString@7 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.13%      0x00007fb11b00d22c:   mov    0x30(%rsp),%r10
   0.16%      0x00007fb11b00d231:   mov    0x14(%r10),%edx              ; ImmutableOopMap {rdx=NarrowOop rsi=Oop r10=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                        ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.lang.String::subSequence@6 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.12%      0x00007fb11b00d235:   mov    0xc(,%rdx,8),%eax            ; implicit exception: dispatches to 0x00007fb11b00e966
   1.86%      0x00007fb11b00d23c:   incl   0xc(%r10)                    ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@7 (line 466)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
   0.19%      0x00007fb11b00d240:   mov    0x10(%r10),%r11d             ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@17 (line 467)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
   0.30%      0x00007fb11b00d244:   cmp    %eax,%r11d
              0x00007fb11b00d247:   je     0x00007fb11b00d526           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@3 (line 453)
                                                                        ; - java.util.ArrayList::add@20 (line 467)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
   0.03%      0x00007fb11b00d24d:   shl    $0x3,%rdx                    ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@13 (line 467)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
   0.01%      0x00007fb11b00d251:   mov    0x40(%rsp),%r13
   0.20%      0x00007fb11b00d256:   mov    0x1c(%r13),%r8d              ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::end@1 (line 521)
                                                                        ; - java.util.regex.Pattern::split@111 (line 1274)
   0.34%      0x00007fb11b00d25a:   nopw   0x0(%rax,%rax,1)
   0.01%      0x00007fb11b00d260:   test   %r8d,%r8d
              0x00007fb11b00d263:   jl     0x00007fb11b00e55c           ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop r13=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                        ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.ArrayList::add@11 (line 455)
                                                                        ; - java.util.ArrayList::add@20 (line 467)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
   0.02%      0x00007fb11b00d269:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007fb11b00e986
   0.19%      0x00007fb11b00d26c:   mov    0x8(%rdx),%ecx
   0.29%      0x00007fb11b00d26f:   cmp    %r11d,%eax
              0x00007fb11b00d272:   jbe    0x00007fb11b00e7a6
   0.01%      0x00007fb11b00d278:   mov    0x58(%rsp),%r14
   0.02%      0x00007fb11b00d27d:   movabs $0x800000000,%rax
   0.20%      0x00007fb11b00d287:   lea    (%rax,%rcx,1),%rcx
   0.25%      0x00007fb11b00d28b:   mov    0xe0(%rcx),%rax
   1.58%      0x00007fb11b00d292:   mov    0x14(%rax),%ecx
   1.91%      0x00007fb11b00d295:   movslq %ecx,%rdi
   0.47%      0x00007fb11b00d298:   nopl   0x0(%rax,%rax,1)
              0x00007fb11b00d2a0:   cmp    (%r14,%rdi,1),%rax
              0x00007fb11b00d2a4:   je     0x00007fb11b00d305
              0x00007fb11b00d2aa:   cmp    $0x20,%ecx
              0x00007fb11b00d2ad:   jne    0x00007fb11b00e207
              0x00007fb11b00d2b3:   cmp    %rax,%r14
              0x00007fb11b00d2b6:   je     0x00007fb11b00d3ae
              0x00007fb11b00d2bc:   mov    $0x0,%ecx
              0x00007fb11b00d2c1:   movabs $0x800b22690,%r9
              0x00007fb11b00d2cb:   jmp    0x00007fb11b00d2fa
              0x00007fb11b00d2d0:   data16 data16 nopw 0x0(%rax,%rax,1)
....................................................................................................
  28.10%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.regex.Matcher::search, version 4, compile id 798 

                0x00007fb11b0023cd:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@37 (line 4323)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
                0x00007fb11b0023cf:   cmp    %edx,%edi
                0x00007fb11b0023d1:   jg     0x00007fb11b0023a0
                0x00007fb11b0023d3:   jmp    0x00007fb11b0027c9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4322)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.46%        0x00007fb11b0023d8:   lea    -0x10(%r11),%ecx
                0x00007fb11b0023dc:   nopl   0x0(%rax)
   0.00%  ╭     0x00007fb11b0023e0:   jmp    0x00007fb11b0024b7
          │     0x00007fb11b0023e5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │     0x00007fb11b0023f0:   data16 data16 xchg %ax,%ax
          │     0x00007fb11b0023f4:   nopl   0x0(%rax,%rax,1)
          │     0x00007fb11b0023fc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Matcher::search@52 (line 1721)
   0.01%  │↗    0x00007fb11b002400:   movl   $0xffffffff,0x10(%r8,%r9,4)  ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - java.util.regex.Matcher::search@61 (line 1722)
          ││    0x00007fb11b002409:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - java.util.regex.Matcher::search@62 (line 1721)
   0.46%  ││    0x00007fb11b00240c:   nopl   0x0(%rax)
   0.50%  ││↗   0x00007fb11b002410:   cmp    %r9d,%r11d
   0.00%  │││   0x00007fb11b002413:   jle    0x00007fb11b002157
   0.55%  │╰│   0x00007fb11b002419:   jmp    0x00007fb11b002400
          │ │   0x00007fb11b00241b:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - java.util.regex.Matcher::search@52 (line 1721)
   0.50%  │ │↗  0x00007fb11b002420:   movl   $0xffffffff,0x10(%r8,%r9,4)
          │ ││  0x00007fb11b002429:   movslq %r9d,%rbx
          │ ││  0x00007fb11b00242c:   movl   $0xffffffff,0x14(%r8,%rbx,4)
          │ ││  0x00007fb11b002435:   movl   $0xffffffff,0x18(%r8,%rbx,4)
   0.54%  │ ││  0x00007fb11b00243e:   movl   $0xffffffff,0x1c(%r8,%rbx,4)
   0.00%  │ ││  0x00007fb11b002447:   movl   $0xffffffff,0x20(%r8,%rbx,4)
   0.00%  │ ││  0x00007fb11b002450:   movl   $0xffffffff,0x24(%r8,%rbx,4)
          │ ││  0x00007fb11b002459:   movl   $0xffffffff,0x28(%r8,%rbx,4)
   0.46%  │ ││  0x00007fb11b002462:   movl   $0xffffffff,0x2c(%r8,%rbx,4)
   0.00%  │ ││  0x00007fb11b00246b:   movl   $0xffffffff,0x30(%r8,%rbx,4)
   0.00%  │ ││  0x00007fb11b002474:   movl   $0xffffffff,0x34(%r8,%rbx,4)
   0.00%  │ ││  0x00007fb11b00247d:   movl   $0xffffffff,0x38(%r8,%rbx,4)
   0.47%  │ ││  0x00007fb11b002486:   movl   $0xffffffff,0x3c(%r8,%rbx,4)
   0.01%  │ ││  0x00007fb11b00248f:   movl   $0xffffffff,0x40(%r8,%rbx,4)
   0.00%  │ ││  0x00007fb11b002498:   movl   $0xffffffff,0x44(%r8,%rbx,4)
   0.01%  │ ││  0x00007fb11b0024a1:   movl   $0xffffffff,0x48(%r8,%rbx,4)
   0.46%  │ ││  0x00007fb11b0024aa:   movl   $0xffffffff,0x4c(%r8,%rbx,4) ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Matcher::search@61 (line 1722)
   0.00%  │ ││  0x00007fb11b0024b3:   lea    0x10(%r9),%r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Matcher::search@62 (line 1721)
   0.42%  ↘ ││  0x00007fb11b0024b7:   cmp    %r9d,%ecx
            ╰│  0x00007fb11b0024ba:   jle    0x00007fb11b002410
             ╰  0x00007fb11b0024c0:   jmp    0x00007fb11b002420           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@52 (line 1721)
   2.60%        0x00007fb11b0024c5:   mov    0xc(,%rbp,8),%edx            ; ImmutableOopMap {rbx=Oop [16]=Oop [28]=NarrowOop [32]=Oop }
                                                                          ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3607)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   3.66%        0x00007fb11b0024cc:   cmpl   $0x267850,0x8(,%rdx,8)       ; implicit exception: dispatches to 0x00007fb11b0029c6
                                                                          ;   {metadata(&apos;java/util/regex/Pattern$LastNode&apos;)}
   2.30%        0x00007fb11b0024d7:   jne    0x00007fb11b002696           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.46%        0x00007fb11b0024dd:   data16 xchg %ax,%ax
   0.02%        0x00007fb11b0024e0:   cmpl   $0x2,0x30(%rsp)
   0.01%        0x00007fb11b0024e5:   jb     0x00007fb11b002666           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$LastNode::match@32 (line 3581)
                                                                          ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.02%        0x00007fb11b0024eb:   mov    0x1c(%rsp),%r11d
   0.42%        0x00007fb11b0024f0:   mov    0x34(%rsp),%r10d
   0.02%        0x00007fb11b0024f5:   mov    0x20(%rsp),%rdx
   0.02%        0x00007fb11b0024fa:   mov    %esi,0x20(%rdx)              ;*putfield last {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$LastNode::match@20 (line 3580)
                                                                          ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.64%        0x00007fb11b0024fd:   mov    %r10d,0x10(,%r11,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$LastNode::match@32 (line 3581)
                                                                          ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.96%        0x00007fb11b002505:   mov    %esi,0x14(,%r11,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$LastNode::match@42 (line 3582)
                                                                          ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.16%        0x00007fb11b00250d:   mov    0x20(%rsp),%rsi              ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@47 (line 3608)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.01%        0x00007fb11b002512:   mov    0x38(%rsi),%eax              ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@56 (line 3610)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.20%        0x00007fb11b002515:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                          ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.regex.Pattern$Start::match@50 (line 3609)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.23%        0x00007fb11b002520:   cmpl   $0x2,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007fb11b0029e6
   1.92%        0x00007fb11b002528:   jb     0x00007fb11b002644           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@64 (line 3610)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.45%        0x00007fb11b00252e:   mov    0x2c(%rsp),%r14d
   0.01%        0x00007fb11b002533:   mov    %r14d,0x1c(%rsi)             ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@52 (line 3609)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.01%        0x00007fb11b002537:   mov    %r14d,0x10(,%rax,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@64 (line 3610)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.39%        0x00007fb11b00253f:   mov    0x20(%rsi),%r10d             ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@71 (line 3611)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.56%        0x00007fb11b002543:   mov    %r10d,0x14(,%rax,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@74 (line 3611)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.51%        0x00007fb11b00254b:   mov    $0x1,%r10d
   0.00%        0x00007fb11b002551:   test   %r10d,%r10d
                0x00007fb11b002554:   je     0x00007fb11b0025de           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@126 (line 1729)
   0.11%        0x00007fb11b00255a:   mov    0x20(%rsi),%eax              ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@136 (line 1731)
   0.11%        0x00007fb11b00255d:   mov    %eax,0x24(%rsi)              ;*putfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@139 (line 1731)
   0.28%        0x00007fb11b002560:   incl   0x2c(%rsi)                   ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@149 (line 1732)
   0.25%        0x00007fb11b002563:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@153 (line 1733)
   0.25%        0x00007fb11b002566:   mov    0x40(%rsp),%rbp
   0.02%        0x00007fb11b00256b:   add    $0x48,%rsp
   0.11%        0x00007fb11b00256f:   mov    0x348(%r15),%rcx
   0.13%        0x00007fb11b002576:   test   %eax,(%rcx)                  ;   {poll_return}
   0.30%        0x00007fb11b002578:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@47 (line 3608)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
                0x00007fb11b002579:   mov    %ecx,0x30(%rsp)
                0x00007fb11b00257d:   mov    0x10(%rsp),%rcx
                0x00007fb11b002582:   mov    %rbx,0x8(%rsp)
                0x00007fb11b002587:   mov    %r10,(%rsp)
                0x00007fb11b00258b:   mov    %eax,0x34(%rsp)
                0x00007fb11b00258f:   mov    0x20(%rsp),%rsi
                0x00007fb11b002594:   mov    0xc(,%rbp,8),%r8d            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.regex.Pattern$BmpCharPropertyGreedy::match@43 (line 4325)
....................................................................................................
  22.01%  <total for region 3>

....[Hottest Regions]...............................................................................
  30.86%       jvmci, level 4  java.util.regex.Matcher::search, version 4, compile id 798 
  28.10%       jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 823 
  22.01%       jvmci, level 4  java.util.regex.Matcher::search, version 4, compile id 798 
   5.57%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   5.40%       jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 823 
   2.39%         runtime stub  StubRoutines::checkcast_arraycopy 
   0.82%         runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.60%       jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 824 
   0.51%       jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 823 
   0.43%               kernel  [unknown] 
   0.20%       jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 823 
   0.20%            libjvm.so  G1BarrierSet::invalidate 
   0.18%               kernel  [unknown] 
   0.17%       jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 824 
   0.11%       jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 824 
   0.11%       jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 823 
   0.10%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%         runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.07%               kernel  [unknown] 
   2.00%  <...other 422 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.87%       jvmci, level 4  java.util.regex.Matcher::search, version 4, compile id 798 
  34.45%       jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 823 
   5.57%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.40%         runtime stub  StubRoutines::checkcast_arraycopy 
   1.84%               kernel  [unknown] 
   0.93%       jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 824 
   0.90%         runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.20%            libjvm.so  G1BarrierSet::invalidate 
   0.06%         libc-2.31.so  [unknown] 
   0.05%                       <unknown> 
   0.05%       jvmci, level 4  java.util.ArrayList::grow, version 1, compile id 827 
   0.05%            libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.04%            libjvm.so  OtherRegionsTable::occupied 
   0.03%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.44%  <...other 141 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.32%       jvmci, level 4
   8.88%         runtime stub
   1.84%               kernel
   0.69%            libjvm.so
   0.11%         libc-2.31.so
   0.05%                     
   0.03%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.00%          c1, level 3
   0.00%               [vdso]
   0.00%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = __)

# Run progress: 25.00% complete, ETA 00:05:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 352.428 us/op
# Warmup Iteration   2: 321.592 us/op
# Warmup Iteration   3: 320.562 us/op
# Warmup Iteration   4: 321.541 us/op
# Warmup Iteration   5: 320.976 us/op
Iteration   1: 320.938 us/op
Iteration   2: 320.878 us/op
Iteration   3: 321.160 us/op
Iteration   4: 321.251 us/op
Iteration   5: 320.730 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split":
  320.991 ±(99.9%) 0.817 us/op [Average]
  (min, avg, max) = (320.730, 320.991, 321.251), stdev = 0.212
  CI (99.9%): [320.175, 321.808] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:·asm":
PrintAssembly processed: 220373 total address lines.
Perf output processed (skipped 59.089 seconds):
 Column 1: cycles (50897 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.regex.Matcher::search, version 2, compile id 771 

              0x00007f9e8affda0d:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@37 (line 4323)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
              0x00007f9e8affda10:   cmp    %ebp,%edx
              0x00007f9e8affda12:   jg     0x00007f9e8affd9e0
              0x00007f9e8affda14:   jmp    0x00007f9e8affde2d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4322)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
   0.61%      0x00007f9e8affda19:   mov    %eax,0x14(%rsp)
   0.21%      0x00007f9e8affda1d:   mov    %r13d,0x4c(%rsp)
   0.78%      0x00007f9e8affda22:   mov    0x10(,%rax,8),%r10d          ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$Slice::match@1 (line 4078)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
   0.02%      0x00007f9e8affda2a:   mov    %r10d,0x10(%rsp)             ; ImmutableOopMap {rsi=Oop r10=NarrowOop [16]=NarrowOop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop }
                                                                        ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3607)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
   0.59%      0x00007f9e8affda2f:   mov    0xc(,%r10,8),%r9d            ; implicit exception: dispatches to 0x00007f9e8affe086
   0.23%      0x00007f9e8affda37:   mov    %r9d,0x48(%rsp)
   0.74%      0x00007f9e8affda3c:   mov    0x50(%rsp),%edx
   0.01%      0x00007f9e8affda40:   mov    $0x0,%r11d
   0.62%  ╭   0x00007f9e8affda46:   jmp    0x00007f9e8affdae4           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.regex.Pattern$Slice::match@14 (line 4080)
          │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
          │   0x00007f9e8affda4b:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f9e8affda56:   data16 data16 xchg %ax,%ax
          │   0x00007f9e8affda5a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.regex.Pattern$Slice::match@18 (line 4080)
          │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
   1.63%  │↗  0x00007f9e8affda60:   mov    %r11d,%ecx
   0.00%  ││  0x00007f9e8affda63:   add    %edx,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@24 (line 4081)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          ││  0x00007f9e8affda65:   cmp    0x10(%rsi),%ecx
          ││  0x00007f9e8affda68:   jge    0x00007f9e8affdb58           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@29 (line 4081)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   1.00%  ││  0x00007f9e8affda6e:   mov    %ecx,0x44(%rsp)
   1.61%  ││  0x00007f9e8affda72:   mov    %r10d,%ecx
          ││  0x00007f9e8affda75:   shl    $0x3,%rcx                    ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@1 (line 4078)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          ││  0x00007f9e8affda79:   nopl   0x0(%rax)
   0.19%  ││  0x00007f9e8affda80:   cmp    %r11d,%r9d
          ││  0x00007f9e8affda83:   jbe    0x00007f9e8affdf3c
   1.67%  ││  0x00007f9e8affda89:   mov    0x20(%rsp),%r10
          ││  0x00007f9e8affda8e:   mov    0x44(%rsp),%edx
   0.51%  ││  0x00007f9e8affda92:   mov    0x10(%rcx,%r11,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@43 (line 4085)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   0.01%  ││  0x00007f9e8affda97:   mov    %r10,%rsi                    ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4085)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   1.72%  ││  0x00007f9e8affda9a:   mov    %rcx,0x8(%rsp)
   0.06%  ││  0x00007f9e8affda9f:   mov    %r11d,0x44(%rsp)
   0.14%  ││  0x00007f9e8affdaa4:   mov    %r8d,0x40(%rsp)
   0.02%  ││  0x00007f9e8affdaa9:   movabs $0xffffffffffffffff,%rax
   1.64%  ││  0x00007f9e8affdab3:   call   0x00007f9e834ffd80           ; ImmutableOopMap {[8]=Oop [16]=NarrowOop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop }
          ││                                                            ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4085)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          ││                                                            ;   {virtual_call}
   6.35%  ││  0x00007f9e8affdab8:   nop
   0.03%  ││  0x00007f9e8affdab9:   mov    0x40(%rsp),%r8d
   0.31%  ││  0x00007f9e8affdabe:   xchg   %ax,%ax
   1.60%  ││  0x00007f9e8affdac0:   cmp    %eax,%r8d
          ││  0x00007f9e8affdac3:   jne    0x00007f9e8affdb7a           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4085)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   1.66%  ││  0x00007f9e8affdac9:   mov    0x44(%rsp),%r11d
   2.10%  ││  0x00007f9e8affdace:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@59 (line 4080)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   0.24%  ││  0x00007f9e8affdad1:   mov    0x48(%rsp),%r9d
   0.18%  ││  0x00007f9e8affdad6:   mov    0x10(%rsp),%r10d
   0.04%  ││  0x00007f9e8affdadb:   mov    0x50(%rsp),%edx
          ││  0x00007f9e8affdadf:   mov    0x38(%rsp),%rsi              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@14 (line 4080)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   0.51%  ↘│  0x00007f9e8affdae4:   cmp    %r11d,%r9d
           ╰  0x00007f9e8affdae7:   jg     0x00007f9e8affda60           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$Slice::match@18 (line 4080)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
   0.20%      0x00007f9e8affdaed:   mov    0x14(%rsp),%eax
   0.05%      0x00007f9e8affdaf1:   mov    0xc(,%rax,8),%esi            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.regex.Pattern$Slice::match@65 (line 4088)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
   0.86%      0x00007f9e8affdaf8:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
                                                                        ; ImmutableOopMap {rsi=NarrowOop [24]=Oop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop }
   1.39%      0x00007f9e8affdaff:   shl    $0x3,%rsi                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$Slice::match@66 (line 4088)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
              0x00007f9e8affdb03:   mov    0x48(%rsp),%r9d
              0x00007f9e8affdb08:   add    0x50(%rsp),%r9d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$Slice::match@73 (line 4088)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
              0x00007f9e8affdb0d:   mov    0x38(%rsp),%rdx
   0.29%      0x00007f9e8affdb12:   mov    %r9d,%ecx
              0x00007f9e8affdb15:   mov    0x20(%rsp),%r8               ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$Slice::match@75 (line 4088)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
              0x00007f9e8affdb1a:   data16 xchg %ax,%ax
              0x00007f9e8affdb1d:   movabs $0xffffffffffffffff,%rax
   0.25%      0x00007f9e8affdb27:   call   0x00007f9e834ffd80           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop }
                                                                        ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$Slice::match@75 (line 4088)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                        ;   {virtual_call}
   0.54%      0x00007f9e8affdb2c:   nop
              0x00007f9e8affdb2d:   test   %eax,%eax
              0x00007f9e8affdb2f:   jne    0x00007f9e8affdd45
              0x00007f9e8affdb35:   mov    0x4c(%rsp),%r13d
              0x00007f9e8affdb3a:   movabs $0x7fef39ee8,%rbx            ;   {oop([I{0x00000007fef39ee8})}
              0x00007f9e8affdb44:   mov    0x54(%rsp),%r8d
....................................................................................................
  30.60%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.regex.Pattern::split, version 4, compile id 808 

                                                                        ; - java.util.ArrayList::add@20 (line 467)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
              0x00007f9e8b00a3ad:   mov    0x20(%rbx),%esi              ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::end@18 (line 523)
                                                                        ; - java.util.regex.Pattern::split@111 (line 1274)
              0x00007f9e8b00a3b0:   mov    %esi,%r10d
              0x00007f9e8b00a3b3:   mov    %r11d,%esi
              0x00007f9e8b00a3b6:   jmp    0x00007f9e8b00a73e           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@29 (line 1265)
              0x00007f9e8b00a3bb:   nopl   0x0(%rax,%rax,1)
   0.25%      0x00007f9e8b00a3c0:   cmp    0xc(%rbx),%r10d
              0x00007f9e8b00a3c4:   jl     0x00007f9e8b00b718           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@21 (line 736)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
              0x00007f9e8b00a3ca:   cmp    0x10(%rbx),%r10d
              0x00007f9e8b00a3ce:   jg     0x00007f9e8b00b76d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@34 (line 740)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
              0x00007f9e8b00a3d4:   mov    %rbx,%rsi
   0.00%      0x00007f9e8b00a3d7:   mov    %r10d,%edx                   ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.24%      0x00007f9e8b00a3da:   mov    %r10d,0x5c(%rsp)
              0x00007f9e8b00a3df:   nop
              0x00007f9e8b00a3e0:   data16 xchg %ax,%ax
              0x00007f9e8b00a3e3:   call   0x00007f9e8affd720           ; ImmutableOopMap {[32]=Oop [72]=Oop [80]=Oop }
                                                                        ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                        ;   {optimized virtual_call}
   0.00%      0x00007f9e8b00a3e8:   nop
   0.24%      0x00007f9e8b00a3e9:   test   %eax,%eax
              0x00007f9e8b00a3eb:   je     0x00007f9e8b00a977           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@34 (line 1265)
              0x00007f9e8b00a3f1:   mov    0x50(%rsp),%rsi
   0.65%      0x00007f9e8b00a3f6:   mov    0x1c(%rsi),%r10d             ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::start@1 (line 449)
                                                                        ; - java.util.regex.Pattern::split@60 (line 1267)
   0.89%      0x00007f9e8b00a3fa:   nopw   0x0(%rax,%rax,1)
              0x00007f9e8b00a400:   test   %r10d,%r10d
              0x00007f9e8b00a403:   jl     0x00007f9e8b00b6c6           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::start@4 (line 449)
                                                                        ; - java.util.regex.Pattern::split@86 (line 1272)
   0.25%      0x00007f9e8b00a409:   mov    0x5c(%rsp),%r11d
              0x00007f9e8b00a40e:   test   %r11d,%r11d
              0x00007f9e8b00a411:   jl     0x00007f9e8b00b78b           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::checkBoundsBeginEnd@1 (line 4603)
                                                                        ; - java.lang.String::substring@8 (line 2707)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
              0x00007f9e8b00a417:   cmp    %r10d,%r11d
              0x00007f9e8b00a41a:   jg     0x00007f9e8b00bb5c           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::checkBoundsBeginEnd@6 (line 4603)
                                                                        ; - java.lang.String::substring@8 (line 2707)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.26%      0x00007f9e8b00a420:   mov    0x48(%rsp),%rdx
   0.00%      0x00007f9e8b00a425:   mov    0x14(%rdx),%r8d              ; ImmutableOopMap {rdx=Oop rsi=Oop r8=NarrowOop [32]=Oop [72]=Oop [80]=Oop }
                                                                        ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.regex.Matcher::find@68 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.01%      0x00007f9e8b00a429:   mov    0xc(,%r8,8),%r9d             ; implicit exception: dispatches to 0x00007f9e8b00bc26
   0.95%      0x00007f9e8b00a431:   movsbl 0x10(%rdx),%ebx              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::coder@7 (line 4543)
                                                                        ; - java.lang.String::length@6 (line 1479)
                                                                        ; - java.lang.String::substring@1 (line 2706)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.00%      0x00007f9e8b00a435:   mov    %ebx,%ecx
              0x00007f9e8b00a437:   mov    %r9d,%edi
              0x00007f9e8b00a43a:   shr    %cl,%edi                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::length@9 (line 1479)
                                                                        ; - java.lang.String::substring@1 (line 2706)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.54%      0x00007f9e8b00a43c:   nopl   0x0(%rax)
              0x00007f9e8b00a440:   cmp    %edi,%r10d
              0x00007f9e8b00a443:   jg     0x00007f9e8b00b841           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::checkBoundsBeginEnd@11 (line 4603)
                                                                        ; - java.lang.String::substring@8 (line 2707)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
              0x00007f9e8b00a449:   test   %r11d,%r11d
              0x00007f9e8b00a44c:   je     0x00007f9e8b00a93f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@54 (line 1267)
   0.00%      0x00007f9e8b00a452:   test   %r11d,%r11d
              0x00007f9e8b00a455:   je     0x00007f9e8b00a7f4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::substring@12 (line 2708)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.22%      0x00007f9e8b00a45b:   nopl   0x0(%rax,%rax,1)
              0x00007f9e8b00a460:   test   %ebx,%ebx
              0x00007f9e8b00a462:   jne    0x00007f9e8b00baad           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::isLatin1@10 (line 4551)
                                                                        ; - java.lang.String::substring@28 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
              0x00007f9e8b00a468:   cmp    %r11d,%r10d
              0x00007f9e8b00a46b:   je     0x00007f9e8b00a95a           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::newString@1 (line 766)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.00%      0x00007f9e8b00a471:   mov    %r10d,%ebx
   0.27%      0x00007f9e8b00a474:   sub    %r11d,%ebx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::substring@24 (line 2711)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
              0x00007f9e8b00a477:   test   %ebx,%ebx
              0x00007f9e8b00a479:   jl     0x00007f9e8b00b916           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@5 (line 3820)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
              0x00007f9e8b00a47f:   mov    0x108(%r15),%rbp
   0.00%      0x00007f9e8b00a486:   mov    %ebx,%edi
   0.22%      0x00007f9e8b00a488:   lea    0x17(%rdi),%rdi
              0x00007f9e8b00a48c:   and    $0xfffffffffffffff8,%rdi
              0x00007f9e8b00a490:   mov    %rdi,%rcx
   0.00%      0x00007f9e8b00a493:   add    %rbp,%rcx
   0.25%      0x00007f9e8b00a496:   data16 nopw 0x0(%rax,%rax,1)
              0x00007f9e8b00a4a0:   cmp    0x118(%r15),%rcx
              0x00007f9e8b00a4a7:   ja     0x00007f9e8b00a81f
              0x00007f9e8b00a4ad:   mov    %rcx,0x108(%r15)
   0.00%      0x00007f9e8b00a4b4:   prefetchw 0xc0(%rdi,%rbp,1)
   0.25%      0x00007f9e8b00a4bc:   prefetchw 0x100(%rdi,%rbp,1)
   0.00%      0x00007f9e8b00a4c4:   prefetchw 0x140(%rdi,%rbp,1)
   0.00%      0x00007f9e8b00a4cc:   prefetchw 0x180(%rdi,%rbp,1)
   0.65%      0x00007f9e8b00a4d4:   movq   $0x1,0x0(%rbp)
   0.35%      0x00007f9e8b00a4dc:   movl   $0x6848,0x8(%rbp)            ;   {metadata({type array byte})}
              0x00007f9e8b00a4e3:   mov    %ebx,0xc(%rbp)
   0.00%      0x00007f9e8b00a4e6:   lea    -0x10(%rdi),%rcx
   0.03%      0x00007f9e8b00a4ea:   cmp    $0x800,%rcx
              0x00007f9e8b00a4f1:   jae    0x00007f9e8b00a872
   0.24%      0x00007f9e8b00a4f7:   mov    $0x10,%rcx
              0x00007f9e8b00a4fe:   xchg   %ax,%ax
   0.00%  ╭   0x00007f9e8b00a500:   jmp    0x00007f9e8b00a52d
          │   0x00007f9e8b00a505:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f9e8b00a510:   data16 data16 xchg %ax,%ax
          │   0x00007f9e8b00a514:   nopl   0x0(%rax,%rax,1)
          │   0x00007f9e8b00a51c:   data16 data16 xchg %ax,%ax
   0.28%  │↗  0x00007f9e8b00a520:   movq   $0x0,0x0(%rbp,%rcx,1)
   0.03%  ││  0x00007f9e8b00a529:   lea    0x8(%rcx),%rcx
   0.03%  ↘│  0x00007f9e8b00a52d:   cmp    %rcx,%rdi
           ╰  0x00007f9e8b00a530:   ja     0x00007f9e8b00a520           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@41 (line 3822)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
              0x00007f9e8b00a532:   mov    %r9d,%edi
   0.19%      0x00007f9e8b00a535:   sub    %r11d,%edi                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@53 (line 3823)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.03%      0x00007f9e8b00a538:   cmp    %ebx,%edi
              0x00007f9e8b00a53a:   cmovg  %ebx,%edi                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.Math::min@2 (line 1649)
                                                                        ; - java.util.Arrays::copyOfRange@55 (line 3824)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
              0x00007f9e8b00a53d:   data16 xchg %ax,%ax
   0.21%      0x00007f9e8b00a540:   test   %edi,%edi
              0x00007f9e8b00a542:   jl     0x00007f9e8b00b9cc
   0.01%      0x00007f9e8b00a548:   sub    %edi,%r9d
              0x00007f9e8b00a54b:   cmp    %r9d,%r11d
              0x00007f9e8b00a54e:   jg     0x00007f9e8b00b971
              0x00007f9e8b00a554:   cmp    %ebx,%edi
              0x00007f9e8b00a556:   jg     0x00007f9e8b00b8e5           ;* unwind (locked if synchronized)
                                                                        ; - java.lang.System::arraycopy@-3
                                                                        ; - java.util.Arrays::copyOfRange@58 (line 3823)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.22%      0x00007f9e8b00a55c:   shl    $0x3,%r8                     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::length@1 (line 1479)
                                                                        ; - java.lang.String::substring@1 (line 2706)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.03%      0x00007f9e8b00a560:   mov    %rbp,%r10
              0x00007f9e8b00a563:   mov    %edi,%r9d
              0x00007f9e8b00a566:   lea    0x10(%r8,%r11,1),%rdi
   0.30%      0x00007f9e8b00a56b:   lea    0x10(%r10),%rsi
   0.05%      0x00007f9e8b00a56f:   mov    %r9,%rdx                     ;* unwind (locked if synchronized)
                                                                        ; - java.lang.System::arraycopy@-3
                                                                        ; - java.util.Arrays::copyOfRange@58 (line 3823)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
              0x00007f9e8b00a572:   mov    %rbp,0x18(%rsp)
   0.04%      0x00007f9e8b00a577:   call   Stub::jbyte_arraycopy        ;   {runtime_call StubRoutines (2)}
   0.13%      0x00007f9e8b00a57c:   nop
   0.03%      0x00007f9e8b00a57d:   mov    0x108(%r15),%rsi
   0.32%      0x00007f9e8b00a584:   lea    0x18(%rsi),%rdx
   0.14%      0x00007f9e8b00a588:   cmp    0x118(%r15),%rdx
              0x00007f9e8b00a58f:   ja     0x00007f9e8b00a84b
   0.31%      0x00007f9e8b00a595:   mov    %rdx,0x108(%r15)
   0.14%      0x00007f9e8b00a59c:   prefetchw 0xd8(%rsi)
   0.29%      0x00007f9e8b00a5a3:   movq   $0x1,(%rsi)
   0.82%      0x00007f9e8b00a5aa:   movl   $0xed30,0x8(%rsi)            ;   {metadata(&apos;java/lang/String&apos;)}
   0.12%      0x00007f9e8b00a5b1:   movl   $0x0,0xc(%rsi)
   0.34%      0x00007f9e8b00a5b8:   movq   $0x0,0x10(%rsi)
   0.02%      0x00007f9e8b00a5c0:   mov    0x18(%rsp),%rbp
   0.14%      0x00007f9e8b00a5c5:   shr    $0x3,%rbp
   0.12%      0x00007f9e8b00a5c9:   mov    %ebp,0x14(%rsi)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::newString@7 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.10%      0x00007f9e8b00a5cc:   mov    0x20(%rsp),%r10
   0.09%      0x00007f9e8b00a5d1:   mov    0x14(%r10),%edx              ; ImmutableOopMap {rdx=NarrowOop rsi=Oop r10=Oop [32]=Oop [72]=Oop [80]=Oop }
                                                                        ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.lang.String::subSequence@6 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.09%      0x00007f9e8b00a5d5:   mov    0xc(,%rdx,8),%eax            ; implicit exception: dispatches to 0x00007f9e8b00bc46
   0.96%      0x00007f9e8b00a5dc:   incl   0xc(%r10)                    ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@7 (line 466)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
   0.11%      0x00007f9e8b00a5e0:   mov    0x10(%r10),%r11d             ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@17 (line 467)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
   0.17%      0x00007f9e8b00a5e4:   cmp    %eax,%r11d
              0x00007f9e8b00a5e7:   je     0x00007f9e8b00a8f3           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@3 (line 453)
                                                                        ; - java.util.ArrayList::add@20 (line 467)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
   0.00%      0x00007f9e8b00a5ed:   shl    $0x3,%rdx                    ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@13 (line 467)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
   0.00%      0x00007f9e8b00a5f1:   mov    0x50(%rsp),%r13
   0.06%      0x00007f9e8b00a5f6:   mov    0x1c(%r13),%r8d              ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::end@1 (line 521)
                                                                        ; - java.util.regex.Pattern::split@111 (line 1274)
   0.14%      0x00007f9e8b00a5fa:   nopw   0x0(%rax,%rax,1)
              0x00007f9e8b00a600:   test   %r8d,%r8d
              0x00007f9e8b00a603:   jl     0x00007f9e8b00ba40           ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop r13=Oop [32]=Oop [72]=Oop [80]=Oop }
                                                                        ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.ArrayList::add@11 (line 455)
                                                                        ; - java.util.ArrayList::add@20 (line 467)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
   0.01%      0x00007f9e8b00a609:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007f9e8b00bc66
   0.06%      0x00007f9e8b00a60c:   mov    0x8(%rdx),%ecx
   0.15%      0x00007f9e8b00a60f:   cmp    %r11d,%eax
              0x00007f9e8b00a612:   jbe    0x00007f9e8b00babf
   0.00%      0x00007f9e8b00a618:   mov    0x68(%rsp),%r14
   0.01%      0x00007f9e8b00a61d:   movabs $0x800000000,%rax
   0.08%      0x00007f9e8b00a627:   lea    (%rax,%rcx,1),%rcx
   0.15%      0x00007f9e8b00a62b:   mov    0xe0(%rcx),%rax
   0.71%      0x00007f9e8b00a632:   mov    0x14(%rax),%ecx
   1.01%      0x00007f9e8b00a635:   movslq %ecx,%rdi
   0.23%      0x00007f9e8b00a638:   nopl   0x0(%rax,%rax,1)
              0x00007f9e8b00a640:   cmp    (%r14,%rdi,1),%rax
              0x00007f9e8b00a644:   je     0x00007f9e8b00a6a5
              0x00007f9e8b00a64a:   cmp    $0x20,%ecx
              0x00007f9e8b00a64d:   jne    0x00007f9e8b00b57f
              0x00007f9e8b00a653:   cmp    %rax,%r14
              0x00007f9e8b00a656:   je     0x00007f9e8b00a74e
              0x00007f9e8b00a65c:   mov    $0x0,%ecx
              0x00007f9e8b00a661:   movabs $0x800b22690,%r9
              0x00007f9e8b00a66b:   jmp    0x00007f9e8b00a69a
              0x00007f9e8b00a670:   data16 data16 nopw 0x0(%rax,%rax,1)
....................................................................................................
  15.24%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.regex.Matcher::search, version 2, compile id 771 

                 #           [sp+0x70]  (sp of caller)
                 0x00007f9e8affd700:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                 0x00007f9e8affd704:   movabs $0x800000000,%r12
                 0x00007f9e8affd70e:   add    %r12,%r10
                 0x00007f9e8affd711:   xor    %r12,%r12
                 0x00007f9e8affd714:   cmp    %r10,%rax
                 0x00007f9e8affd717:   jne    0x00007f9e834ff780           ;   {runtime_call ic_miss_stub}
                 0x00007f9e8affd71d:   nop
                 0x00007f9e8affd71e:   xchg   %ax,%ax
               [Verified Entry Point]
   0.24%         0x00007f9e8affd720:   mov    %eax,-0x14000(%rsp)
                 0x00007f9e8affd727:   sub    $0x68,%rsp
   0.24%         0x00007f9e8affd72b:   mov    %rbp,0x60(%rsp)
                 0x00007f9e8affd730:   mov    %rsi,0x38(%rsp)
                 0x00007f9e8affd735:   test   %edx,%edx
                 0x00007f9e8affd737:   jl     0x00007f9e8affdf0e           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Matcher::search@11 (line 1718)
                 0x00007f9e8affd73d:   mov    0x38(%rsi),%r10d             ; ImmutableOopMap {rsi=Oop r10=NarrowOop [56]=Oop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Matcher::search@0 (line 1716)
   0.23%         0x00007f9e8affd741:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f9e8affdf86
                 0x00007f9e8affd749:   movb   $0x0,0x30(%rsi)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Matcher::search@2 (line 1716)
                 0x00007f9e8affd74d:   movb   $0x0,0x31(%rsi)              ;*putfield requireEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Matcher::search@7 (line 1717)
                 0x00007f9e8affd751:   mov    %edx,0x1c(%rsi)              ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Matcher::search@22 (line 1719)
   0.25%         0x00007f9e8affd754:   mov    0x24(%rsi),%r8d              ;*getfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Matcher::search@27 (line 1720)
                 0x00007f9e8affd758:   test   %r8d,%r8d
   0.00%         0x00007f9e8affd75b:   cmovl  %edx,%r8d                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Matcher::search@30 (line 1720)
                 0x00007f9e8affd75f:   mov    %r8d,0x24(%rsi)              ;*putfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Matcher::search@41 (line 1720)
   0.25%         0x00007f9e8affd763:   test   %r11d,%r11d
          ╭      0x00007f9e8affd766:   je     0x00007f9e8affd7d7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.regex.Matcher::search@52 (line 1721)
          │      0x00007f9e8affd76c:   mov    %r11d,%r8d
          │      0x00007f9e8affd76f:   dec    %r8d
          │      0x00007f9e8affd772:   movslq %r8d,%r8
   0.24%  │      0x00007f9e8affd775:   mov    %r11d,%r9d
          │      0x00007f9e8affd778:   nopl   0x0(%rax,%rax,1)
   0.00%  │      0x00007f9e8affd780:   cmp    %r8,%r9
          │╭     0x00007f9e8affd783:   ja     0x00007f9e8affd793
          ││     0x00007f9e8affd789:   cmp    $0x2,%r11d
          ││     0x00007f9e8affd78d:   jae    0x00007f9e8affdf6a
   0.00%  │↘     0x00007f9e8affd793:   movl   $0xffffffff,0x10(,%r10,8)    ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.regex.Matcher::search@61 (line 1722)
   0.27%  │      0x00007f9e8affd79f:   cmp    $0x3,%r11d
          │      0x00007f9e8affd7a3:   mov    $0x2,%r8d
          │      0x00007f9e8affd7a9:   cmovb  %r11d,%r8d
   0.00%  │      0x00007f9e8affd7ad:   shl    $0x3,%r10                    ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.regex.Matcher::search@48 (line 1721)
   0.25%  │      0x00007f9e8affd7b1:   mov    $0x1,%r9d
          │ ╭    0x00007f9e8affd7b7:   jmp    0x00007f9e8affd7cc           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - java.util.regex.Matcher::search@46 (line 1721)
          │ │    0x00007f9e8affd7bc:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - java.util.regex.Matcher::search@52 (line 1721)
   0.23%  │ │↗   0x00007f9e8affd7c0:   movl   $0xffffffff,0x10(%r10,%r9,4) ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                             ; - java.util.regex.Matcher::search@61 (line 1722)
          │ ││   0x00007f9e8affd7c9:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                             ; - java.util.regex.Matcher::search@62 (line 1721)
          │ ↘│   0x00007f9e8affd7cc:   cmp    %r9d,%r8d
          │  │   0x00007f9e8affd7cf:   jle    0x00007f9e8affdc68
          │  ╰   0x00007f9e8affd7d5:   jmp    0x00007f9e8affd7c0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.regex.Matcher::search@52 (line 1721)
          ↘      0x00007f9e8affd7d7:   mov    0x3c(%rsi),%r10d             ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Matcher::search@118 (line 1728)
                 0x00007f9e8affd7db:   mov    %r10d,0x34(%rsp)             ; ImmutableOopMap {rsi=Oop r10=NarrowOop [52]=NarrowOop [56]=Oop }
                                                                           ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Matcher::search@68 (line 1723)
   0.20%         0x00007f9e8affd7e0:   cmpl   $0xed30,0x8(,%r10,8)         ; implicit exception: dispatches to 0x00007f9e8affdfa6
                                                                           ;   {metadata(&apos;java/lang/String&apos;)}
   0.03%         0x00007f9e8affd7ec:   jne    0x00007f9e8affde36           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
   0.00%         0x00007f9e8affd7f2:   mov    0x44(%rsi),%r11d             ;*getfield localsPos {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Matcher::search@72 (line 1723)
   0.26%         0x00007f9e8affd7f6:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {rsi=Oop r10=NarrowOop [52]=NarrowOop [56]=Oop }
                                                                           ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Matcher::search@68 (line 1723)
   0.04%         0x00007f9e8affd800:   cmpl   $0x0,0xc(,%r11,8)            ; implicit exception: dispatches to 0x00007f9e8affdfc6
   0.01%         0x00007f9e8affd809:   jne    0x00007f9e8affdec0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Matcher::search@76 (line 1723)
   0.26%         0x00007f9e8affd80f:   mov    0x34(%rsi),%r11d             ; ImmutableOopMap {rsi=Oop r10=NarrowOop [52]=NarrowOop [56]=Oop }
                                                                           ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Matcher::search@68 (line 1723)
   0.03%         0x00007f9e8affd813:   mov    0x34(,%r11,8),%r11d          ; implicit exception: dispatches to 0x00007f9e8affdfe6
   0.00%         0x00007f9e8affd81b:   mov    %r11d,0x30(%rsp)             ; ImmutableOopMap {rsi=Oop r10=NarrowOop r11=NarrowOop [48]=NarrowOop [52]=NarrowOop [56]=Oop }
                                                                           ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Matcher::search@68 (line 1723)
   0.01%         0x00007f9e8affd820:   cmpl   $0x2660c0,0x8(,%r11,8)       ; implicit exception: dispatches to 0x00007f9e8affe006
                                                                           ;   {metadata(&apos;java/util/regex/Pattern$Start&apos;)}
   0.29%         0x00007f9e8affd82c:   jne    0x00007f9e8affde8d           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
   0.03%         0x00007f9e8affd832:   mov    0x10(%rsi),%r8d              ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Start::match@2 (line 3602)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                 0x00007f9e8affd836:   sub    0x10(,%r11,8),%r8d           ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Start::match@9 (line 3602)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
   0.19%         0x00007f9e8affd83e:   mov    %r8d,0x54(%rsp)
   0.11%         0x00007f9e8affd843:   cmp    %r8d,%edx
                 0x00007f9e8affd846:   jg     0x00007f9e8affdf2a           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Start::match@10 (line 3602)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
   0.00%         0x00007f9e8affd84c:   mov    %r8d,%r9d
   0.00%         0x00007f9e8affd84f:   sub    %edx,%r9d
   0.19%         0x00007f9e8affd852:   inc    %r9d
   0.06%         0x00007f9e8affd855:   movslq %r9d,%r9
                 0x00007f9e8affd858:   mov    %edx,%ecx
   0.00%         0x00007f9e8affd85a:   add    %rcx,%r9
   0.21%         0x00007f9e8affd85d:   data16 xchg %ax,%ax
   0.02%         0x00007f9e8affd860:   cmp    $0x1,%r9
                 0x00007f9e8affd864:   jl     0x00007f9e8affdefc           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.StringLatin1::charAt@1 (line 47)
                                                                           ; - java.lang.String::charAt@12 (line 1515)
                                                                           ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
   0.07%         0x00007f9e8affd86a:   movl   $0x0,0x18(%rsi)              ;*putfield acceptMode {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Matcher::search@105 (line 1727)
   0.00%         0x00007f9e8affd871:   mov    %r11d,%r9d
   0.18%         0x00007f9e8affd874:   shl    $0x3,%r9                     ;*getfield root {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Matcher::search@112 (line 1728)
   0.01%         0x00007f9e8affd878:   mov    %r9,0x28(%rsp)
   0.07%         0x00007f9e8affd87d:   mov    %r10d,%ecx
                 0x00007f9e8affd880:   shl    $0x3,%rcx                    ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Matcher::search@118 (line 1728)
   0.17%         0x00007f9e8affd884:   mov    %rcx,0x20(%rsp)
   0.01%         0x00007f9e8affd889:   movabs $0x7fef39ee8,%rbx            ;   {oop([I{0x00000007fef39ee8})}
   0.06%         0x00007f9e8affd893:   mov    %edx,%r9d
                 0x00007f9e8affd896:   jmp    0x00007f9e8affd9bf           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Start::match@31 (line 3607)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                 0x00007f9e8affd89b:   nopl   0x0(%rax,%rax,1)             ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Start::match@34 (line 3607)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
   0.94%         0x00007f9e8affd8a0:   mov    %r9d,0x50(%rsp)
                 0x00007f9e8affd8a5:   mov    0xc(,%r11,8),%eax            ; ImmutableOopMap {rax=NarrowOop rbx=Oop rsi=Oop r10=NarrowOop r11=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3607)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
   0.03%         0x00007f9e8affd8ad:   mov    0x8(,%rax,8),%edx            ; implicit exception: dispatches to 0x00007f9e8affe026
   1.92%         0x00007f9e8affd8b4:   movabs $0x800000000,%rbp
   0.24%         0x00007f9e8affd8be:   lea    0x0(%rbp,%rdx,1),%rdx
   3.00%         0x00007f9e8affd8c3:   mov    %eax,%ebp
   0.01%         0x00007f9e8affd8c5:   shl    $0x3,%rbp                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Start::match@38 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
   0.28%         0x00007f9e8affd8c9:   mov    %rbp,0x18(%rsp)
   0.24%         0x00007f9e8affd8ce:   mov    %r9d,%r13d
   1.03%         0x00007f9e8affd8d1:   inc    %r13d
   0.01%         0x00007f9e8affd8d4:   cmp    -0x1fb(%rip),%rdx        # 0x00007f9e8affd6e0
                                                                           ;   {section_word}
   0.63%         0x00007f9e8affd8db:   nopl   0x0(%rax,%rax,1)
   0.24%      ╭  0x00007f9e8affd8e0:   je     0x00007f9e8affd8f8
   1.10%      │  0x00007f9e8affd8e6:   cmp    -0x205(%rip),%rdx        # 0x00007f9e8affd6e8
              │                                                            ;   {section_word}
   0.01%      │  0x00007f9e8affd8ed:   je     0x00007f9e8affda19
              │  0x00007f9e8affd8f3:   jmp    0x00007f9e8affde57
              ↘  0x00007f9e8affd8f8:   mov    0x10(%rsi),%edx              ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@4 (line 4321)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                 0x00007f9e8affd8fb:   nopl   0x0(%rax,%rax,1)
                 0x00007f9e8affd900:   cmp    %r9d,%edx
                 0x00007f9e8affd903:   jle    0x00007f9e8affdeae           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4322)
....................................................................................................
  14.42%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, java.lang.String::charAt, version 2, compile id 207 

            JVMCI data     [0x00007f9e8afcf170,0x00007f9e8afcf180] = 16
           [Disassembly]
           --------------------------------------------------------------------------------
           [Constant Pool (empty)]
           --------------------------------------------------------------------------------
           [Entry Point]
             # {method} {0x000000080042e580} &apos;charAt&apos; &apos;(I)C&apos; in &apos;java/lang/String&apos;
             # this:     rsi:rsi   = &apos;java/lang/String&apos;
             # parm0:    rdx       = int
             #           [sp+0x20]  (sp of caller)
   0.22%     0x00007f9e8afcef00:   mov    0x8(%rsi),%r10d
   0.01%     0x00007f9e8afcef04:   movabs $0x800000000,%r12
   1.65%     0x00007f9e8afcef0e:   add    %r12,%r10
   0.06%     0x00007f9e8afcef11:   xor    %r12,%r12
   0.13%     0x00007f9e8afcef14:   cmp    %r10,%rax
             0x00007f9e8afcef17:   jne    0x00007f9e834ff780           ;   {runtime_call ic_miss_stub}
   0.01%     0x00007f9e8afcef1d:   nop
   1.66%     0x00007f9e8afcef1e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.05%     0x00007f9e8afcef20:   mov    %eax,-0x14000(%rsp)
   0.17%     0x00007f9e8afcef27:   sub    $0x18,%rsp
   1.62%     0x00007f9e8afcef2b:   mov    %rbp,0x10(%rsp)
   0.05%     0x00007f9e8afcef30:   cmpb   $0x0,0x10(%rsi)
   0.15%  ╭  0x00007f9e8afcef34:   jne    0x00007f9e8afcef81           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.String::isLatin1@10 (line 4551)
          │                                                            ; - java.lang.String::charAt@1 (line 1514)
   0.01%  │  0x00007f9e8afcef3a:   nopw   0x0(%rax,%rax,1)
   1.65%  │  0x00007f9e8afcef40:   test   %edx,%edx
          │  0x00007f9e8afcef42:   jl     0x00007f9e8afcefb5           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
          │                                                            ; - java.lang.String::charAt@12 (line 1515)
   0.05%  │  0x00007f9e8afcef48:   mov    0x14(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
          │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) java.lang.String::charAt@0 (line 1514)
   0.13%  │  0x00007f9e8afcef4b:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f9e8afcefd3
   0.40%  │  0x00007f9e8afcef53:   cmp    %edx,%r10d
          │  0x00007f9e8afcef56:   jle    0x00007f9e8afcefa6           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
          │                                                            ; - java.lang.String::charAt@12 (line 1515)
   1.98%  │  0x00007f9e8afcef5c:   nopl   0x0(%rax)
          │  0x00007f9e8afcef60:   cmp    %edx,%r10d
          │  0x00007f9e8afcef63:   jbe    0x00007f9e8afcefc4           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
          │                                                            ; - java.lang.String::charAt@12 (line 1515)
   0.18%  │  0x00007f9e8afcef69:   movzbl 0x10(%rdx,%rax,8),%eax       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.StringLatin1::charAt@25 (line 50)
          │                                                            ; - java.lang.String::charAt@12 (line 1515)
   0.43%  │  0x00007f9e8afcef6e:   mov    0x10(%rsp),%rbp
   1.55%  │  0x00007f9e8afcef73:   add    $0x18,%rsp
          │  0x00007f9e8afcef77:   mov    0x348(%r15),%rcx
   0.19%  │  0x00007f9e8afcef7e:   test   %eax,(%rcx)                  ;   {poll_return}
   0.07%  │  0x00007f9e8afcef80:   ret    
          ↘  0x00007f9e8afcef81:   mov    $0x210,%r11
             0x00007f9e8afcef88:   mov    $0xffffffed,%r10d
             0x00007f9e8afcef8e:   mov    %r10d,0x370(%r15)
             0x00007f9e8afcef95:   mov    %r11,0x378(%r15)             ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.StringLatin1::charAt@1 (line 47)
                                                                       ; - java.lang.String::charAt@12 (line 1515)
             0x00007f9e8afcef9c:   nopl   0x0(%rax)
             0x00007f9e8afcefa0:   call   0x00007f9e8350527a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.lang.String::charAt@0 (line 1514)
....................................................................................................
  12.44%  <total for region 4>

....[Hottest Regions]...............................................................................
  30.60%      jvmci, level 4  java.util.regex.Matcher::search, version 2, compile id 771 
  15.24%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 808 
  14.42%      jvmci, level 4  java.util.regex.Matcher::search, version 2, compile id 771 
  12.44%      jvmci, level 4  java.lang.String::charAt, version 2, compile id 207 
   5.22%      jvmci, level 4  java.util.regex.Matcher::search, version 2, compile id 771 
   5.11%      jvmci, level 4  java.util.regex.Matcher::search, version 2, compile id 771 
   3.51%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.59%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 808 
   2.05%      jvmci, level 4  java.util.regex.Matcher::search, version 2, compile id 771 
   1.96%      jvmci, level 4  java.util.regex.Matcher::search, version 2, compile id 771 
   1.69%      jvmci, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 782 
   1.20%        runtime stub  StubRoutines::checkcast_arraycopy 
   0.72%              kernel  [unknown] 
   0.39%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.32%      jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 802 
   0.24%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 808 
   0.11%              kernel  [unknown] 
   0.09%           libjvm.so  G1BarrierSet::invalidate 
   0.09%              kernel  [unknown] 
   0.08%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 808 
   1.92%  <...other 389 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  59.35%      jvmci, level 4  java.util.regex.Matcher::search, version 2, compile id 771 
  18.26%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 808 
  12.44%      jvmci, level 4  java.lang.String::charAt, version 2, compile id 207 
   3.51%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.88%              kernel  [unknown] 
   1.69%      jvmci, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 782 
   1.20%        runtime stub  StubRoutines::checkcast_arraycopy 
   0.49%      jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 802 
   0.43%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.09%           libjvm.so  G1BarrierSet::invalidate 
   0.07%                      <unknown> 
   0.05%        libc-2.31.so  [unknown] 
   0.04%      jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 809 
   0.04%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.03%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.03%           libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.32%  <...other 117 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.29%      jvmci, level 4
   5.15%        runtime stub
   1.88%              kernel
   0.43%           libjvm.so
   0.11%        libc-2.31.so
   0.07%                    
   0.03%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%     perf-114711.map
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = _)

# Run progress: 50.00% complete, ETA 00:03:44
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 99.887 us/op
# Warmup Iteration   2: 90.880 us/op
# Warmup Iteration   3: 90.838 us/op
# Warmup Iteration   4: 90.770 us/op
# Warmup Iteration   5: 90.820 us/op
Iteration   1: 90.789 us/op
Iteration   2: 90.781 us/op
Iteration   3: 90.759 us/op
Iteration   4: 90.791 us/op
Iteration   5: 90.757 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split":
  90.775 ±(99.9%) 0.063 us/op [Average]
  (min, avg, max) = (90.757, 90.775, 90.791), stdev = 0.016
  CI (99.9%): [90.712, 90.838] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:·asm":
PrintAssembly processed: 211377 total address lines.
Perf output processed (skipped 58.910 seconds):
 Column 1: cycles (51109 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.lang.String::split, version 4, compile id 792 

                                                                        ; - java.lang.String::split@127 (line 3123)
              0x00007f38d700589c:   nopl   0x0(%rax)                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::isLatin1@10 (line 4551)
                                                                        ; - java.lang.String::indexOf@1 (line 2421)
                                                                        ; - java.lang.String::split@131 (line 3123)
              0x00007f38d70058a0:   test   %r11d,%r11d
              0x00007f38d70058a3:   jl     0x00007f38d700696c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::indexOf@13 (line 207)
                                                                        ; - java.lang.String::indexOf@13 (line 2421)
                                                                        ; - java.lang.String::split@131 (line 3123)
   0.00%      0x00007f38d70058a9:   mov    0x14(%rsi),%edx              ; ImmutableOopMap {rdx=NarrowOop rsi=Oop [32]=Oop [56]=Oop }
                                                                        ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.lang.String::split@127 (line 3123)
   0.86%      0x00007f38d70058ac:   mov    0xc(,%rdx,8),%edi            ; implicit exception: dispatches to 0x00007f38d7006a2a
   0.02%      0x00007f38d70058b3:   shl    $0x3,%rdx                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::indexOf@8 (line 2421)
                                                                        ; - java.lang.String::split@131 (line 3123)
              0x00007f38d70058b7:   cmp    %r11d,%edi
              0x00007f38d70058ba:   jle    0x00007f38d7005da9           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::indexOf@23 (line 209)
                                                                        ; - java.lang.String::indexOf@13 (line 2421)
                                                                        ; - java.lang.String::split@131 (line 3123)
   0.00%      0x00007f38d70058c0:   mov    %rdx,%rsi
   0.82%      0x00007f38d70058c3:   mov    %rdx,0x18(%rsp)
              0x00007f38d70058c8:   mov    $0x10,%rdx
              0x00007f38d70058cf:   mov    %edi,%ecx
   0.01%      0x00007f38d70058d1:   mov    %r11d,%r8d
   0.87%      0x00007f38d70058d4:   mov    %r13d,%r9d                   ;* unwind (locked if synchronized)
                                                                        ; - java.lang.StringLatin1::indexOfChar@-3
                                                                        ; - java.lang.StringLatin1::indexOf@32 (line 213)
                                                                        ; - java.lang.String::indexOf@13 (line 2421)
                                                                        ; - java.lang.String::split@131 (line 3123)
              0x00007f38d70058d7:   mov    %edi,%ebx
              0x00007f38d70058d9:   call   0x00007f38cf65cd80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.indexOf1S1&gt;}
   0.80%      0x00007f38d70058de:   nop
              0x00007f38d70058df:   nop
   0.10%      0x00007f38d70058e0:   cmp    $0xffffffff,%eax
              0x00007f38d70058e3:   je     0x00007f38d7005dd8           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::split@138 (line 3123)
              0x00007f38d70058e9:   cmp    %eax,%r11d
              0x00007f38d70058ec:   jg     0x00007f38d700666d           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::checkBoundsBeginEnd@6 (line 4603)
                                                                        ; - java.lang.String::substring@8 (line 2707)
                                                                        ; - java.lang.String::split@164 (line 3125)
   0.96%      0x00007f38d70058f2:   cmp    %ebx,%eax
              0x00007f38d70058f4:   jg     0x00007f38d700666d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::checkBoundsBeginEnd@11 (line 4603)
                                                                        ; - java.lang.String::substring@8 (line 2707)
                                                                        ; - java.lang.String::split@164 (line 3125)
   0.35%      0x00007f38d70058fa:   nopw   0x0(%rax,%rax,1)
              0x00007f38d7005900:   test   %r11d,%r11d
              0x00007f38d7005903:   je     0x00007f38d7005d6c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::substring@12 (line 2708)
                                                                        ; - java.lang.String::split@164 (line 3125)
              0x00007f38d7005909:   cmp    %eax,%r11d
              0x00007f38d700590c:   je     0x00007f38d7005dba           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::newString@1 (line 766)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::split@164 (line 3125)
   0.70%      0x00007f38d7005912:   mov    %eax,%r10d
   0.17%      0x00007f38d7005915:   sub    %r11d,%r10d                  ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::substring@24 (line 2711)
                                                                        ; - java.lang.String::split@164 (line 3125)
              0x00007f38d7005918:   nopl   0x0(%rax,%rax,1)
              0x00007f38d7005920:   test   %r10d,%r10d
              0x00007f38d7005923:   jl     0x00007f38d7006987           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@5 (line 3820)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::split@164 (line 3125)
   0.62%      0x00007f38d7005929:   mov    0x108(%r15),%r8
   0.21%      0x00007f38d7005930:   mov    %r10d,%edi
              0x00007f38d7005933:   lea    0x17(%rdi),%rdi
              0x00007f38d7005937:   and    $0xfffffffffffffff8,%rdi
   0.70%      0x00007f38d700593b:   mov    %rdi,%rsi
   0.15%      0x00007f38d700593e:   add    %r8,%rsi
              0x00007f38d7005941:   cmp    0x118(%r15),%rsi
              0x00007f38d7005948:   ja     0x00007f38d7005c85
   0.02%      0x00007f38d700594e:   mov    %rsi,0x108(%r15)
   0.71%      0x00007f38d7005955:   prefetchw 0xc0(%rdi,%r8,1)
   0.53%      0x00007f38d700595e:   prefetchw 0x100(%rdi,%r8,1)
   0.12%      0x00007f38d7005967:   prefetchw 0x140(%rdi,%r8,1)
   0.37%      0x00007f38d7005970:   prefetchw 0x180(%rdi,%r8,1)
   0.86%      0x00007f38d7005979:   movq   $0x1,(%r8)
   0.77%      0x00007f38d7005980:   movl   $0x6848,0x8(%r8)             ;   {metadata({type array byte})}
   0.13%      0x00007f38d7005988:   mov    %r10d,0xc(%r8)
   1.15%      0x00007f38d700598c:   lea    -0x10(%rdi),%r9
   0.16%      0x00007f38d7005990:   cmp    $0x800,%r9
              0x00007f38d7005997:   jae    0x00007f38d7005cdb
   0.18%      0x00007f38d700599d:   mov    $0x10,%rsi
   0.04%  ╭   0x00007f38d70059a4:   jmp    0x00007f38d70059cc
          │   0x00007f38d70059a9:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f38d70059b4:   data16 data16 xchg %ax,%ax
          │   0x00007f38d70059b8:   nopl   0x0(%rax,%rax,1)
   1.44%  │↗  0x00007f38d70059c0:   movq   $0x0,(%r8,%rsi,1)
   1.38%  ││  0x00007f38d70059c8:   lea    0x8(%rsi),%rsi
   0.50%  ↘│  0x00007f38d70059cc:   cmp    %rsi,%rdi
           ╰  0x00007f38d70059cf:   ja     0x00007f38d70059c0           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@41 (line 3822)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::split@164 (line 3125)
   0.00%      0x00007f38d70059d1:   mov    %ebx,%edi
   0.69%      0x00007f38d70059d3:   sub    %r11d,%edi                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@53 (line 3823)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::split@164 (line 3125)
   0.14%      0x00007f38d70059d6:   cmp    %r10d,%edi
   0.01%      0x00007f38d70059d9:   cmovg  %r10d,%edi                   ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.Math::min@2 (line 1649)
                                                                        ; - java.util.Arrays::copyOfRange@55 (line 3824)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::split@164 (line 3125)
              0x00007f38d70059dd:   data16 xchg %ax,%ax
   0.74%      0x00007f38d70059e0:   test   %edi,%edi
              0x00007f38d70059e2:   jl     0x00007f38d70067ba
   0.13%      0x00007f38d70059e8:   mov    %ebx,%esi
   0.00%      0x00007f38d70059ea:   sub    %edi,%esi
              0x00007f38d70059ec:   cmp    %esi,%r11d
              0x00007f38d70059ef:   jg     0x00007f38d70068e6
   0.73%      0x00007f38d70059f5:   cmp    %r10d,%edi
              0x00007f38d70059f8:   jg     0x00007f38d7006728
   0.12%      0x00007f38d70059fe:   mov    %eax,0x4c(%rsp)
   0.02%      0x00007f38d7005a02:   mov    0x18(%rsp),%rdx
   0.02%      0x00007f38d7005a07:   mov    %r8,%rsi
   0.77%      0x00007f38d7005a0a:   mov    %edi,%ebx
   0.10%      0x00007f38d7005a0c:   lea    0x10(%rdx,%r11,1),%rdi
   0.18%      0x00007f38d7005a11:   lea    0x10(%rsi),%rsi
              0x00007f38d7005a15:   mov    %rbx,%rdx                    ;* unwind (locked if synchronized)
                                                                        ; - java.lang.System::arraycopy@-3
                                                                        ; - java.util.Arrays::copyOfRange@58 (line 3823)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::split@164 (line 3125)
   0.68%      0x00007f38d7005a18:   mov    %r8,0x10(%rsp)
   0.04%      0x00007f38d7005a1d:   data16 xchg %ax,%ax
   0.12%      0x00007f38d7005a20:   call   Stub::jbyte_arraycopy        ;   {runtime_call StubRoutines (2)}
   1.02%      0x00007f38d7005a25:   nop
   0.02%      0x00007f38d7005a26:   mov    0x108(%r15),%rsi
   2.29%      0x00007f38d7005a2d:   lea    0x18(%rsi),%rax
   0.70%      0x00007f38d7005a31:   cmp    0x118(%r15),%rax
              0x00007f38d7005a38:   ja     0x00007f38d7005cb4
   1.30%      0x00007f38d7005a3e:   mov    %rax,0x108(%r15)
   0.04%      0x00007f38d7005a45:   prefetchw 0xd8(%rsi)
   1.28%      0x00007f38d7005a4c:   movq   $0x1,(%rsi)
   0.84%      0x00007f38d7005a53:   movl   $0xed30,0x8(%rsi)            ;   {metadata(&apos;java/lang/String&apos;)}
   2.85%      0x00007f38d7005a5a:   movl   $0x0,0xc(%rsi)
   0.05%      0x00007f38d7005a61:   movq   $0x0,0x10(%rsi)
   1.46%      0x00007f38d7005a69:   mov    0x10(%rsp),%r8
   0.13%      0x00007f38d7005a6e:   shr    $0x3,%r8
   0.02%      0x00007f38d7005a72:   mov    %r8d,0x14(%rsi)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::newString@7 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::split@164 (line 3125)
   0.83%      0x00007f38d7005a76:   mov    0x20(%rsp),%r10
   0.07%      0x00007f38d7005a7b:   mov    0x14(%r10),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop r10=Oop [32]=Oop [56]=Oop }
                                                                        ;*invokevirtual add {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.lang.String::split@167 (line 3125)
   0.11%      0x00007f38d7005a7f:   mov    0xc(,%rax,8),%edx            ; implicit exception: dispatches to 0x00007f38d7006a46
   2.98%      0x00007f38d7005a86:   incl   0xc(%r10)                    ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@7 (line 466)
                                                                        ; - java.lang.String::split@167 (line 3125)
   0.23%      0x00007f38d7005a8a:   cmp    0x50(%rsp),%edx
              0x00007f38d7005a8e:   je     0x00007f38d7005d4c           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@3 (line 453)
                                                                        ; - java.util.ArrayList::add@20 (line 467)
                                                                        ; - java.lang.String::split@167 (line 3125)
   0.65%      0x00007f38d7005a94:   shl    $0x3,%rax                    ; ImmutableOopMap {rax=Oop rsi=Oop r10=Oop [32]=Oop [56]=Oop }
                                                                        ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.ArrayList::add@11 (line 455)
                                                                        ; - java.util.ArrayList::add@20 (line 467)
                                                                        ; - java.lang.String::split@167 (line 3125)
   0.02%      0x00007f38d7005a98:   mov    0xc(%rax),%edx               ; implicit exception: dispatches to 0x00007f38d7006a66
   0.02%      0x00007f38d7005a9b:   mov    0x8(%rax),%ecx
   0.19%      0x00007f38d7005a9e:   xchg   %ax,%ax
   0.58%      0x00007f38d7005aa0:   cmp    0x50(%rsp),%edx
              0x00007f38d7005aa4:   jbe    0x00007f38d70068b9
   0.06%      0x00007f38d7005aaa:   mov    0x60(%rsp),%r11
   0.06%      0x00007f38d7005aaf:   movabs $0x800000000,%rdx
   0.21%      0x00007f38d7005ab9:   lea    (%rdx,%rcx,1),%rcx
   0.58%      0x00007f38d7005abd:   mov    0xe0(%rcx),%rdx
   3.22%      0x00007f38d7005ac4:   mov    0x14(%rdx),%ecx
   3.31%      0x00007f38d7005ac7:   movslq %ecx,%rdi
   0.89%      0x00007f38d7005aca:   cmp    (%r11,%rdi,1),%rdx
              0x00007f38d7005ace:   je     0x00007f38d7005b25
              0x00007f38d7005ad4:   cmp    $0x20,%ecx
              0x00007f38d7005ad7:   jne    0x00007f38d70066d4
              0x00007f38d7005add:   data16 xchg %ax,%ax
              0x00007f38d7005ae0:   cmp    %rdx,%r11
              0x00007f38d7005ae3:   je     0x00007f38d7005bd3
              0x00007f38d7005ae9:   mov    $0x0,%ecx
              0x00007f38d7005aee:   movabs $0x800b22690,%r8
              0x00007f38d7005af8:   jmp    0x00007f38d7005b1a
              0x00007f38d7005afd:   data16 xchg %ax,%ax
....................................................................................................
  46.17%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::jbyte_disjoint_arraycopy 

                    --------------------------------------------------------------------------------
                    - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                    - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                    StubRoutines::jbyte_disjoint_arraycopy [0x00007f38cf4e6660, 0x00007f38cf4e671b] (187 bytes)
                    --------------------------------------------------------------------------------
   0.00%              0x00007f38cf4e6660:   push   %rbp
                      0x00007f38cf4e6661:   mov    %rsp,%rbp
   0.03%           ↗  0x00007f38cf4e6664:   mov    %rdx,%rcx
   0.60%           │  0x00007f38cf4e6667:   shr    $0x3,%rdx
   0.16%           │  0x00007f38cf4e666b:   lea    -0x8(%rdi,%rdx,8),%rdi
   0.01%           │  0x00007f38cf4e6670:   lea    -0x8(%rsi,%rdx,8),%rsi
   0.02%           │  0x00007f38cf4e6675:   neg    %rdx
   0.73%  ╭        │  0x00007f38cf4e6678:   jmp    Stub::jbyte_disjoint_arraycopy+136 0x00007f38cf4e66e8
   0.75%  │↗     ↗ │  0x00007f38cf4e667d:   mov    0x8(%rdi,%rdx,8),%rax
   0.83%  ││     │ │  0x00007f38cf4e6682:   mov    %rax,0x8(%rsi,%rdx,8)
   0.50%  ││     │ │  0x00007f38cf4e6687:   inc    %rdx
          │╰     │ │  0x00007f38cf4e668a:   jne    Stub::jbyte_disjoint_arraycopy+29 0x00007f38cf4e667d
   0.71%  │      │↗│  0x00007f38cf4e668c:   test   $0x4,%ecx
          │ ╭    │││  0x00007f38cf4e6692:   je     Stub::jbyte_disjoint_arraycopy+66 0x00007f38cf4e66a2
   0.67%  │ │    │││  0x00007f38cf4e6694:   mov    0x8(%rdi),%eax
   1.02%  │ │    │││  0x00007f38cf4e6697:   mov    %eax,0x8(%rsi)
   0.57%  │ │    │││  0x00007f38cf4e669a:   add    $0x4,%rdi
   0.18%  │ │    │││  0x00007f38cf4e669e:   add    $0x4,%rsi
   1.48%  │ ↘    │││  0x00007f38cf4e66a2:   test   $0x2,%ecx
          │  ╭   │││  0x00007f38cf4e66a8:   je     Stub::jbyte_disjoint_arraycopy+90 0x00007f38cf4e66ba
   1.60%  │  │   │││  0x00007f38cf4e66aa:   mov    0x8(%rdi),%ax
   1.99%  │  │   │││  0x00007f38cf4e66ae:   mov    %ax,0x8(%rsi)
   0.70%  │  │   │││  0x00007f38cf4e66b2:   add    $0x2,%rdi
   0.03%  │  │   │││  0x00007f38cf4e66b6:   add    $0x2,%rsi
   0.51%  │  ↘   │││  0x00007f38cf4e66ba:   test   $0x1,%ecx
   0.34%  │   ╭  │││  0x00007f38cf4e66c0:   je     Stub::jbyte_disjoint_arraycopy+104 0x00007f38cf4e66c8
   1.48%  │   │  │││  0x00007f38cf4e66c2:   mov    0x8(%rdi),%al
   1.83%  │   │  │││  0x00007f38cf4e66c5:   mov    %al,0x8(%rsi)
   2.10%  │   ↘  │││  0x00007f38cf4e66c8:   xor    %rax,%rax
   0.18%  │      │││  0x00007f38cf4e66cb:   vzeroupper 
   1.04%  │      │││  0x00007f38cf4e66ce:   leave  
   2.35%  │      │││  0x00007f38cf4e66cf:   ret    
          │    ↗ │││  0x00007f38cf4e66d0:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
          │    │ │││  0x00007f38cf4e66d6:   vmovdqu %ymm0,-0x38(%rsi,%rdx,8)
          │    │ │││  0x00007f38cf4e66dc:   vmovdqu -0x18(%rdi,%rdx,8),%ymm1
          │    │ │││  0x00007f38cf4e66e2:   vmovdqu %ymm1,-0x18(%rsi,%rdx,8)
   0.13%  ↘    │ │││  0x00007f38cf4e66e8:   add    $0x8,%rdx
               ╰ │││  0x00007f38cf4e66ec:   jle    Stub::jbyte_disjoint_arraycopy+112 0x00007f38cf4e66d0
   0.02%         │││  0x00007f38cf4e66ee:   sub    $0x4,%rdx
                ╭│││  0x00007f38cf4e66f2:   jg     Stub::jbyte_disjoint_arraycopy+164 0x00007f38cf4e6704
                ││││  0x00007f38cf4e66f4:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
                ││││  0x00007f38cf4e66fa:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
                ││││  0x00007f38cf4e6700:   add    $0x4,%rdx
   0.81%        ↘│││  0x00007f38cf4e6704:   vpxor  %ymm0,%ymm0,%ymm0
                 │││  0x00007f38cf4e6708:   vpxor  %ymm1,%ymm1,%ymm1
                 │││  0x00007f38cf4e670c:   sub    $0x4,%rdx
                 ╰││  0x00007f38cf4e6710:   jl     Stub::jbyte_disjoint_arraycopy+29 0x00007f38cf4e667d
   0.04%          ╰│  0x00007f38cf4e6716:   jmp    Stub::jbyte_disjoint_arraycopy+44 0x00007f38cf4e668c
                   │--------------------------------------------------------------------------------
                   │- - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   │- - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   │StubRoutines::jbyte_arraycopy [0x00007f38cf4e6720, 0x00007f38cf4e67e6] (198 bytes)
                   │--------------------------------------------------------------------------------
   0.64%           │  0x00007f38cf4e6720:   push   %rbp
   0.42%           │  0x00007f38cf4e6721:   mov    %rsp,%rbp
   0.01%           │  0x00007f38cf4e6724:   cmp    %rdi,%rsi
   0.70%           │  0x00007f38cf4e6727:   lea    (%rdi,%rdx,1),%rax
....................................................................................................
  25.32%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.lang.String::split, version 4, compile id 792 

               0x00007f38d7005b05:   lea    0x8(%rdi),%edi
               0x00007f38d7005b08:   movslq %edi,%rdi
               0x00007f38d7005b0b:   mov    (%r8,%rdi,1),%rdi
               0x00007f38d7005b0f:   cmp    %rdi,%rdx
          ╭    0x00007f38d7005b12:   je     0x00007f38d7005be5
          │    0x00007f38d7005b18:   inc    %ecx
          │    0x00007f38d7005b1a:   cmp    $0x5,%ecx
          │    0x00007f38d7005b1d:   jl     0x00007f38d7005b00
          │    0x00007f38d7005b1f:   nop
          │    0x00007f38d7005b20:   jmp    0x00007f38d70066d4
   5.03%  │    0x00007f38d7005b25:   movabs $0x800b22690,%r8
   0.01%  │↗↗  0x00007f38d7005b2f:   cmpb   $0x0,0x38(%r15)
   0.00%  │││  0x00007f38d7005b34:   jne    0x00007f38d7005bee
          │││  0x00007f38d7005b3a:   mov    0x50(%rsp),%r13d
   0.86%  │││  0x00007f38d7005b3f:   mov    %r10,%r9
          │││  0x00007f38d7005b42:   mov    %rsi,%r11
   0.00%  │││  0x00007f38d7005b45:   mov    %r11,%rsi
          │││  0x00007f38d7005b48:   shr    $0x3,%rsi
   0.86%  │││  0x00007f38d7005b4c:   mov    %esi,0x10(%rax,%r13,4)
   0.01%  │││  0x00007f38d7005b51:   lea    0x10(%rax,%r13,4),%rsi
          │││  0x00007f38d7005b56:   xor    %r11,%rsi
          │││  0x00007f38d7005b59:   nopl   0x0(%rax)
   0.91%  │││  0x00007f38d7005b60:   test   $0xffffffffffe00000,%rsi
          │││  0x00007f38d7005b67:   je     0x00007f38d7005c35
          │││  0x00007f38d7005b6d:   test   %r11,%r11
          │││  0x00007f38d7005b70:   je     0x00007f38d7005c45
          │││  0x00007f38d7005b76:   mov    0x68(%rsp),%r10
          │││  0x00007f38d7005b7b:   lea    0x10(%rax,%r13,4),%rsi
   0.00%  │││  0x00007f38d7005b80:   shr    $0x9,%rsi
          │││  0x00007f38d7005b84:   cmpb   $0x4,(%rsi,%r10,1)
          │││  0x00007f38d7005b89:   jne    0x00007f38d7005c52
   0.01%  │││  0x00007f38d7005b8f:   mov    %r11,0x10(%rsp)
          │││  0x00007f38d7005b94:   mov    %r9,%r8                      ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.util.ArrayList::add@14 (line 455)
          │││                                                            ; - java.util.ArrayList::add@20 (line 467)
          │││                                                            ; - java.lang.String::split@167 (line 3125)
          │││  0x00007f38d7005b97:   mov    0x50(%rsp),%r13d
   0.01%  │││  0x00007f38d7005b9c:   inc    %r13d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.util.ArrayList::add@18 (line 456)
          │││                                                            ; - java.util.ArrayList::add@20 (line 467)
          │││                                                            ; - java.lang.String::split@167 (line 3125)
   0.01%  │││  0x00007f38d7005b9f:   mov    %r13d,0x10(%r8)              ;*putfield size {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.util.ArrayList::add@19 (line 456)
          │││                                                            ; - java.util.ArrayList::add@20 (line 467)
          │││                                                            ; - java.lang.String::split@167 (line 3125)
   0.90%  │││  0x00007f38d7005ba3:   mov    0x348(%r15),%rdi             ; ImmutableOopMap {rax=Oop r8=Oop [16]=Oop [32]=Oop [56]=Oop }
          │││                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) java.util.ArrayList::add@22 (line 457)
          │││                                                            ; - java.util.ArrayList::add@20 (line 467)
          │││                                                            ; - java.lang.String::split@167 (line 3125)
   0.00%  │││  0x00007f38d7005baa:   test   %eax,(%rdi)                  ;   {poll}
   0.01%  │││  0x00007f38d7005bac:   mov    0x4c(%rsp),%eax
   0.00%  │││  0x00007f38d7005bb0:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.String::split@174 (line 3126)
   0.85%  │││  0x00007f38d7005bb2:   mov    %r13d,0x50(%rsp)
   0.00%  │││  0x00007f38d7005bb7:   mov    %eax,%r11d
   0.00%  │││  0x00007f38d7005bba:   mov    0x70(%rsp),%r13d
   0.01%  │││  0x00007f38d7005bbf:   mov    0x38(%rsp),%rsi              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.String::split@127 (line 3123)
   0.85%  │││  0x00007f38d7005bc4:   cmpb   $0x0,0x10(%rsi)
   0.01%  │││  0x00007f38d7005bc8:   je     0x00007f38d70058a0
          │││  0x00007f38d7005bce:   jmp    0x00007f38d70067cc           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.String::isLatin1@10 (line 4551)
          │││                                                            ; - java.lang.String::indexOf@1 (line 2421)
          │││                                                            ; - java.lang.String::split@131 (line 3123)
          │││  0x00007f38d7005bd3:   movabs $0x800b22690,%r8
          │││  0x00007f38d7005bdd:   data16 xchg %ax,%ax
          │╰│  0x00007f38d7005be0:   jmp    0x00007f38d7005b2f
          ↘ │  0x00007f38d7005be5:   mov    %rdx,0x20(%r11)
            ╰  0x00007f38d7005be9:   jmp    0x00007f38d7005b2f
               0x00007f38d7005bee:   mov    0x50(%rsp),%r13d
....................................................................................................
  10.33%  <total for region 3>

....[Hottest Regions]...............................................................................
  46.17%       jvmci, level 4  java.lang.String::split, version 4, compile id 792 
  25.32%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
  10.33%       jvmci, level 4  java.lang.String::split, version 4, compile id 792 
   4.01%         runtime stub  StubRoutines::checkcast_arraycopy 
   2.68%                       <unknown> 
   1.83%                       <unknown> 
   1.49%         runtime stub  StubRoutines::oop_disjoint_arraycopy 
   1.43%                       <unknown> 
   1.16%       jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 790 
   1.15%               kernel  [unknown] 
   0.81%       jvmci, level 4  java.lang.String::split, version 4, compile id 792 
   0.35%       jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 790 
   0.31%       jvmci, level 4  java.lang.String::split, version 4, compile id 792 
   0.30%            libjvm.so  G1BarrierSet::invalidate 
   0.22%       jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 790 
   0.15%       jvmci, level 4  java.lang.String::split, version 4, compile id 792 
   0.13%               kernel  [unknown] 
   0.10%            libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.09%       jvmci, level 4  java.util.ArrayList::grow, version 1, compile id 793 
   0.08%               kernel  [unknown] 
   1.89%  <...other 447 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  57.90%       jvmci, level 4  java.lang.String::split, version 4, compile id 792 
  25.32%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   6.06%                       <unknown> 
   4.03%         runtime stub  StubRoutines::checkcast_arraycopy 
   2.17%               kernel  [unknown] 
   1.73%       jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 790 
   1.50%         runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.30%            libjvm.so  G1BarrierSet::invalidate 
   0.10%            libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.09%       jvmci, level 4  java.util.ArrayList::grow, version 1, compile id 793 
   0.05%         libc-2.31.so  [unknown] 
   0.03%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  OtherRegionsTable::is_empty 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  SpinPause 
   0.57%  <...other 161 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  59.75%       jvmci, level 4
  30.85%         runtime stub
   6.06%                     
   2.17%               kernel
   0.93%            libjvm.so
   0.14%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.01%          interpreter
   0.00%          c1, level 1
   0.00%      perf-114793.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = __)

# Run progress: 75.00% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 390.735 us/op
# Warmup Iteration   2: 326.344 us/op
# Warmup Iteration   3: 325.253 us/op
# Warmup Iteration   4: 325.306 us/op
# Warmup Iteration   5: 323.976 us/op
Iteration   1: 323.023 us/op
Iteration   2: 324.965 us/op
Iteration   3: 324.534 us/op
Iteration   4: 323.660 us/op
Iteration   5: 324.083 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split":
  324.053 ±(99.9%) 2.907 us/op [Average]
  (min, avg, max) = (323.023, 324.053, 324.965), stdev = 0.755
  CI (99.9%): [321.146, 326.960] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:·asm":
PrintAssembly processed: 235038 total address lines.
Perf output processed (skipped 58.841 seconds):
 Column 1: cycles (51036 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.regex.Matcher::search, version 2, compile id 758 

              0x00007f2bbaffca8d:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@37 (line 4323)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
              0x00007f2bbaffca90:   cmp    %ebp,%edx
              0x00007f2bbaffca92:   jg     0x00007f2bbaffca60
              0x00007f2bbaffca94:   jmp    0x00007f2bbaffcead           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4322)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
   0.55%      0x00007f2bbaffca99:   mov    %eax,0x14(%rsp)
   0.23%      0x00007f2bbaffca9d:   mov    %r13d,0x4c(%rsp)
   0.72%      0x00007f2bbaffcaa2:   mov    0x10(,%rax,8),%r10d          ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$Slice::match@1 (line 4078)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
   0.01%      0x00007f2bbaffcaaa:   mov    %r10d,0x10(%rsp)             ; ImmutableOopMap {rsi=Oop r10=NarrowOop [16]=NarrowOop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop }
                                                                        ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3607)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
   0.67%      0x00007f2bbaffcaaf:   mov    0xc(,%r10,8),%r9d            ; implicit exception: dispatches to 0x00007f2bbaffd106
   0.32%      0x00007f2bbaffcab7:   mov    %r9d,0x48(%rsp)
   0.84%      0x00007f2bbaffcabc:   mov    0x50(%rsp),%edx
   0.01%      0x00007f2bbaffcac0:   mov    $0x0,%r11d
   0.55%  ╭   0x00007f2bbaffcac6:   jmp    0x00007f2bbaffcb64           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.regex.Pattern$Slice::match@14 (line 4080)
          │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
          │   0x00007f2bbaffcacb:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f2bbaffcad6:   data16 data16 xchg %ax,%ax
          │   0x00007f2bbaffcada:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.regex.Pattern$Slice::match@18 (line 4080)
          │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
   1.58%  │↗  0x00007f2bbaffcae0:   mov    %r11d,%ecx
          ││  0x00007f2bbaffcae3:   add    %edx,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@24 (line 4081)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          ││  0x00007f2bbaffcae5:   cmp    0x10(%rsi),%ecx
          ││  0x00007f2bbaffcae8:   jge    0x00007f2bbaffcbd8           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@29 (line 4081)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   1.07%  ││  0x00007f2bbaffcaee:   mov    %ecx,0x44(%rsp)
   1.56%  ││  0x00007f2bbaffcaf2:   mov    %r10d,%ecx
          ││  0x00007f2bbaffcaf5:   shl    $0x3,%rcx                    ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@1 (line 4078)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          ││  0x00007f2bbaffcaf9:   nopl   0x0(%rax)
   0.22%  ││  0x00007f2bbaffcb00:   cmp    %r11d,%r9d
          ││  0x00007f2bbaffcb03:   jbe    0x00007f2bbaffcfbc
   1.64%  ││  0x00007f2bbaffcb09:   mov    0x20(%rsp),%r10
          ││  0x00007f2bbaffcb0e:   mov    0x44(%rsp),%edx
   0.49%  ││  0x00007f2bbaffcb12:   mov    0x10(%rcx,%r11,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@43 (line 4085)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   0.03%  ││  0x00007f2bbaffcb17:   mov    %r10,%rsi                    ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4085)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   1.64%  ││  0x00007f2bbaffcb1a:   mov    %rcx,0x8(%rsp)
   0.05%  ││  0x00007f2bbaffcb1f:   mov    %r11d,0x44(%rsp)
   0.15%  ││  0x00007f2bbaffcb24:   mov    %r8d,0x40(%rsp)
   0.04%  ││  0x00007f2bbaffcb29:   movabs $0xffffffffffffffff,%rax
   1.62%  ││  0x00007f2bbaffcb33:   call   0x00007f2bb34ffd80           ; ImmutableOopMap {[8]=Oop [16]=NarrowOop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop }
          ││                                                            ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4085)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          ││                                                            ;   {virtual_call}
   6.20%  ││  0x00007f2bbaffcb38:   nop
   0.02%  ││  0x00007f2bbaffcb39:   mov    0x40(%rsp),%r8d
   0.31%  ││  0x00007f2bbaffcb3e:   xchg   %ax,%ax
   1.56%  ││  0x00007f2bbaffcb40:   cmp    %eax,%r8d
          ││  0x00007f2bbaffcb43:   jne    0x00007f2bbaffcbfa           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4085)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   1.70%  ││  0x00007f2bbaffcb49:   mov    0x44(%rsp),%r11d
   2.20%  ││  0x00007f2bbaffcb4e:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@59 (line 4080)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   0.22%  ││  0x00007f2bbaffcb51:   mov    0x48(%rsp),%r9d
   0.19%  ││  0x00007f2bbaffcb56:   mov    0x10(%rsp),%r10d
   0.04%  ││  0x00007f2bbaffcb5b:   mov    0x50(%rsp),%edx
          ││  0x00007f2bbaffcb5f:   mov    0x38(%rsp),%rsi              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@14 (line 4080)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
   0.43%  ↘│  0x00007f2bbaffcb64:   cmp    %r11d,%r9d
           ╰  0x00007f2bbaffcb67:   jg     0x00007f2bbaffcae0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$Slice::match@18 (line 4080)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
   0.14%      0x00007f2bbaffcb6d:   mov    0x14(%rsp),%eax
   0.05%      0x00007f2bbaffcb71:   mov    0xc(,%rax,8),%esi            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.regex.Pattern$Slice::match@65 (line 4088)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
   0.89%      0x00007f2bbaffcb78:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
                                                                        ; ImmutableOopMap {rsi=NarrowOop [24]=Oop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop }
   1.55%      0x00007f2bbaffcb7f:   shl    $0x3,%rsi                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$Slice::match@66 (line 4088)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
              0x00007f2bbaffcb83:   mov    0x48(%rsp),%r9d
              0x00007f2bbaffcb88:   add    0x50(%rsp),%r9d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$Slice::match@73 (line 4088)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
   0.00%      0x00007f2bbaffcb8d:   mov    0x38(%rsp),%rdx
   0.28%      0x00007f2bbaffcb92:   mov    %r9d,%ecx
              0x00007f2bbaffcb95:   mov    0x20(%rsp),%r8               ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$Slice::match@75 (line 4088)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
              0x00007f2bbaffcb9a:   data16 xchg %ax,%ax
              0x00007f2bbaffcb9d:   movabs $0xffffffffffffffff,%rax
   0.25%      0x00007f2bbaffcba7:   call   0x00007f2bb34ffd80           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop }
                                                                        ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$Slice::match@75 (line 4088)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                        ;   {virtual_call}
   0.40%      0x00007f2bbaffcbac:   nop
              0x00007f2bbaffcbad:   test   %eax,%eax
              0x00007f2bbaffcbaf:   jne    0x00007f2bbaffcdc5
              0x00007f2bbaffcbb5:   mov    0x4c(%rsp),%r13d
              0x00007f2bbaffcbba:   movabs $0x7fef39ee8,%rbx            ;   {oop([I{0x00000007fef39ee8})}
              0x00007f2bbaffcbc4:   mov    0x54(%rsp),%r8d
....................................................................................................
  30.42%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.regex.Pattern::split, version 4, compile id 801 

                                                                        ; - java.util.ArrayList::add@20 (line 467)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
              0x00007f2bbb0079ad:   mov    0x20(%rbx),%esi              ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::end@18 (line 523)
                                                                        ; - java.util.regex.Pattern::split@111 (line 1274)
              0x00007f2bbb0079b0:   mov    %esi,%r10d
              0x00007f2bbb0079b3:   mov    %r11d,%esi
              0x00007f2bbb0079b6:   jmp    0x00007f2bbb007d3e           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@29 (line 1265)
              0x00007f2bbb0079bb:   nopl   0x0(%rax,%rax,1)
   0.25%      0x00007f2bbb0079c0:   cmp    0xc(%rbx),%r10d
              0x00007f2bbb0079c4:   jl     0x00007f2bbb008d19           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@21 (line 736)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
              0x00007f2bbb0079ca:   cmp    0x10(%rbx),%r10d
              0x00007f2bbb0079ce:   jg     0x00007f2bbb008dc8           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@34 (line 740)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
              0x00007f2bbb0079d4:   mov    %rbx,%rsi
              0x00007f2bbb0079d7:   mov    %r10d,%edx                   ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.24%      0x00007f2bbb0079da:   mov    %r10d,0x5c(%rsp)
              0x00007f2bbb0079df:   nop
              0x00007f2bbb0079e0:   data16 xchg %ax,%ax
              0x00007f2bbb0079e3:   call   0x00007f2bbaffc7a0           ; ImmutableOopMap {[32]=Oop [72]=Oop [80]=Oop }
                                                                        ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                        ;   {optimized virtual_call}
   0.00%      0x00007f2bbb0079e8:   nop
   0.22%      0x00007f2bbb0079e9:   test   %eax,%eax
              0x00007f2bbb0079eb:   je     0x00007f2bbb007f7d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@34 (line 1265)
              0x00007f2bbb0079f1:   mov    0x50(%rsp),%rsi
   0.44%      0x00007f2bbb0079f6:   mov    0x1c(%rsi),%r10d             ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::start@1 (line 449)
                                                                        ; - java.util.regex.Pattern::split@60 (line 1267)
   0.88%      0x00007f2bbb0079fa:   nopw   0x0(%rax,%rax,1)
              0x00007f2bbb007a00:   test   %r10d,%r10d
              0x00007f2bbb007a03:   jl     0x00007f2bbb008cdf           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::start@4 (line 449)
                                                                        ; - java.util.regex.Pattern::split@86 (line 1272)
   0.23%      0x00007f2bbb007a09:   mov    0x5c(%rsp),%r11d
              0x00007f2bbb007a0e:   test   %r11d,%r11d
              0x00007f2bbb007a11:   jl     0x00007f2bbb008d93           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::checkBoundsBeginEnd@1 (line 4603)
                                                                        ; - java.lang.String::substring@8 (line 2707)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
              0x00007f2bbb007a17:   cmp    %r10d,%r11d
              0x00007f2bbb007a1a:   jg     0x00007f2bbb00915c           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::checkBoundsBeginEnd@6 (line 4603)
                                                                        ; - java.lang.String::substring@8 (line 2707)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.23%      0x00007f2bbb007a20:   mov    0x48(%rsp),%rdx
   0.01%      0x00007f2bbb007a25:   mov    0x14(%rdx),%r8d              ; ImmutableOopMap {rdx=Oop rsi=Oop r8=NarrowOop [32]=Oop [72]=Oop [80]=Oop }
                                                                        ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.regex.Matcher::find@68 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.01%      0x00007f2bbb007a29:   mov    0xc(,%r8,8),%r9d             ; implicit exception: dispatches to 0x00007f2bbb009226
   1.02%      0x00007f2bbb007a31:   movsbl 0x10(%rdx),%ebx              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::coder@7 (line 4543)
                                                                        ; - java.lang.String::length@6 (line 1479)
                                                                        ; - java.lang.String::substring@1 (line 2706)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.00%      0x00007f2bbb007a35:   mov    %ebx,%ecx
              0x00007f2bbb007a37:   mov    %r9d,%edi
              0x00007f2bbb007a3a:   shr    %cl,%edi                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::length@9 (line 1479)
                                                                        ; - java.lang.String::substring@1 (line 2706)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.48%      0x00007f2bbb007a3c:   nopl   0x0(%rax)
              0x00007f2bbb007a40:   cmp    %edi,%r10d
              0x00007f2bbb007a43:   jg     0x00007f2bbb008cc6           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::checkBoundsBeginEnd@11 (line 4603)
                                                                        ; - java.lang.String::substring@8 (line 2707)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
              0x00007f2bbb007a49:   test   %r11d,%r11d
              0x00007f2bbb007a4c:   je     0x00007f2bbb007f45           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@54 (line 1267)
   0.00%      0x00007f2bbb007a52:   test   %r11d,%r11d
              0x00007f2bbb007a55:   je     0x00007f2bbb007df4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::substring@12 (line 2708)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.22%      0x00007f2bbb007a5b:   nopl   0x0(%rax,%rax,1)
              0x00007f2bbb007a60:   test   %ebx,%ebx
              0x00007f2bbb007a62:   jne    0x00007f2bbb0090b9           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::isLatin1@10 (line 4551)
                                                                        ; - java.lang.String::substring@28 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
              0x00007f2bbb007a68:   cmp    %r11d,%r10d
              0x00007f2bbb007a6b:   je     0x00007f2bbb007f60           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::newString@1 (line 766)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.00%      0x00007f2bbb007a71:   mov    %r10d,%ebx
   0.27%      0x00007f2bbb007a74:   sub    %r11d,%ebx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::substring@24 (line 2711)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
              0x00007f2bbb007a77:   test   %ebx,%ebx
              0x00007f2bbb007a79:   jl     0x00007f2bbb008f08           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@5 (line 3820)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
              0x00007f2bbb007a7f:   mov    0x108(%r15),%rbp
   0.00%      0x00007f2bbb007a86:   mov    %ebx,%edi
   0.26%      0x00007f2bbb007a88:   lea    0x17(%rdi),%rdi
              0x00007f2bbb007a8c:   and    $0xfffffffffffffff8,%rdi
              0x00007f2bbb007a90:   mov    %rdi,%rcx
   0.00%      0x00007f2bbb007a93:   add    %rbp,%rcx
   0.27%      0x00007f2bbb007a96:   data16 nopw 0x0(%rax,%rax,1)
              0x00007f2bbb007aa0:   cmp    0x118(%r15),%rcx
              0x00007f2bbb007aa7:   ja     0x00007f2bbb007e57
              0x00007f2bbb007aad:   mov    %rcx,0x108(%r15)
   0.00%      0x00007f2bbb007ab4:   prefetchw 0xc0(%rdi,%rbp,1)
   0.24%      0x00007f2bbb007abc:   prefetchw 0x100(%rdi,%rbp,1)
   0.00%      0x00007f2bbb007ac4:   prefetchw 0x140(%rdi,%rbp,1)
   0.03%      0x00007f2bbb007acc:   prefetchw 0x180(%rdi,%rbp,1)
   0.50%      0x00007f2bbb007ad4:   movq   $0x1,0x0(%rbp)
   0.37%      0x00007f2bbb007adc:   movl   $0x6848,0x8(%rbp)            ;   {metadata({type array byte})}
              0x00007f2bbb007ae3:   mov    %ebx,0xc(%rbp)
   0.00%      0x00007f2bbb007ae6:   lea    -0x10(%rdi),%rcx
   0.02%      0x00007f2bbb007aea:   cmp    $0x800,%rcx
              0x00007f2bbb007af1:   jae    0x00007f2bbb007e85
   0.23%      0x00007f2bbb007af7:   mov    $0x10,%rcx
   0.00%      0x00007f2bbb007afe:   xchg   %ax,%ax
   0.01%  ╭   0x00007f2bbb007b00:   jmp    0x00007f2bbb007b2d
          │   0x00007f2bbb007b05:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f2bbb007b10:   data16 data16 xchg %ax,%ax
          │   0x00007f2bbb007b14:   nopl   0x0(%rax,%rax,1)
          │   0x00007f2bbb007b1c:   data16 data16 xchg %ax,%ax
   0.29%  │↗  0x00007f2bbb007b20:   movq   $0x0,0x0(%rbp,%rcx,1)
   0.02%  ││  0x00007f2bbb007b29:   lea    0x8(%rcx),%rcx
   0.03%  ↘│  0x00007f2bbb007b2d:   cmp    %rcx,%rdi
           ╰  0x00007f2bbb007b30:   ja     0x00007f2bbb007b20           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@41 (line 3822)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
              0x00007f2bbb007b32:   mov    %r9d,%edi
   0.20%      0x00007f2bbb007b35:   sub    %r11d,%edi                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@53 (line 3823)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.03%      0x00007f2bbb007b38:   cmp    %ebx,%edi
              0x00007f2bbb007b3a:   cmovg  %ebx,%edi                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.Math::min@2 (line 1649)
                                                                        ; - java.util.Arrays::copyOfRange@55 (line 3824)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
              0x00007f2bbb007b3d:   data16 xchg %ax,%ax
   0.20%      0x00007f2bbb007b40:   test   %edi,%edi
              0x00007f2bbb007b42:   jl     0x00007f2bbb008e6c
   0.03%      0x00007f2bbb007b48:   sub    %edi,%r9d
              0x00007f2bbb007b4b:   cmp    %r9d,%r11d
              0x00007f2bbb007b4e:   jg     0x00007f2bbb008f75
              0x00007f2bbb007b54:   cmp    %ebx,%edi
              0x00007f2bbb007b56:   jg     0x00007f2bbb008e00           ;* unwind (locked if synchronized)
                                                                        ; - java.lang.System::arraycopy@-3
                                                                        ; - java.util.Arrays::copyOfRange@58 (line 3823)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.19%      0x00007f2bbb007b5c:   shl    $0x3,%r8                     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::length@1 (line 1479)
                                                                        ; - java.lang.String::substring@1 (line 2706)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.02%      0x00007f2bbb007b60:   mov    %rbp,%r10
              0x00007f2bbb007b63:   mov    %edi,%r9d
              0x00007f2bbb007b66:   lea    0x10(%r8,%r11,1),%rdi
   0.37%      0x00007f2bbb007b6b:   lea    0x10(%r10),%rsi
   0.04%      0x00007f2bbb007b6f:   mov    %r9,%rdx                     ;* unwind (locked if synchronized)
                                                                        ; - java.lang.System::arraycopy@-3
                                                                        ; - java.util.Arrays::copyOfRange@58 (line 3823)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
              0x00007f2bbb007b72:   mov    %rbp,0x18(%rsp)
   0.04%      0x00007f2bbb007b77:   call   Stub::jbyte_arraycopy        ;   {runtime_call StubRoutines (2)}
   0.14%      0x00007f2bbb007b7c:   nop
   0.04%      0x00007f2bbb007b7d:   mov    0x108(%r15),%rsi
   0.35%      0x00007f2bbb007b84:   lea    0x18(%rsi),%rax
   0.17%      0x00007f2bbb007b88:   cmp    0x118(%r15),%rax
              0x00007f2bbb007b8f:   ja     0x00007f2bbb007e30
   0.36%      0x00007f2bbb007b95:   mov    %rax,0x108(%r15)
   0.14%      0x00007f2bbb007b9c:   prefetchw 0xd8(%rsi)
   0.35%      0x00007f2bbb007ba3:   movq   $0x1,(%rsi)
   0.75%      0x00007f2bbb007baa:   movl   $0xed30,0x8(%rsi)            ;   {metadata(&apos;java/lang/String&apos;)}
   0.11%      0x00007f2bbb007bb1:   movl   $0x0,0xc(%rsi)
   0.29%      0x00007f2bbb007bb8:   movq   $0x0,0x10(%rsi)
   0.03%      0x00007f2bbb007bc0:   mov    0x18(%rsp),%rbp
   0.13%      0x00007f2bbb007bc5:   shr    $0x3,%rbp
   0.12%      0x00007f2bbb007bc9:   mov    %ebp,0x14(%rsi)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::newString@7 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2712)
                                                                        ; - java.lang.String::subSequence@3 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.10%      0x00007f2bbb007bcc:   mov    0x20(%rsp),%r10
   0.07%      0x00007f2bbb007bd1:   mov    0x14(%r10),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop r10=Oop [32]=Oop [72]=Oop [80]=Oop }
                                                                        ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.lang.String::subSequence@6 (line 2745)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.09%      0x00007f2bbb007bd5:   mov    0xc(,%rax,8),%edx            ; implicit exception: dispatches to 0x00007f2bbb009246
   1.09%      0x00007f2bbb007bdc:   incl   0xc(%r10)                    ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@7 (line 466)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
   0.10%      0x00007f2bbb007be0:   mov    0x10(%r10),%r11d             ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@17 (line 467)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
   0.14%      0x00007f2bbb007be4:   cmp    %edx,%r11d
              0x00007f2bbb007be7:   je     0x00007f2bbb007ef8           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@3 (line 453)
                                                                        ; - java.util.ArrayList::add@20 (line 467)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
   0.00%      0x00007f2bbb007bed:   shl    $0x3,%rax                    ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@13 (line 467)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
              0x00007f2bbb007bf1:   mov    0x50(%rsp),%r13
   0.07%      0x00007f2bbb007bf6:   mov    0x1c(%r13),%r8d              ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::end@1 (line 521)
                                                                        ; - java.util.regex.Pattern::split@111 (line 1274)
   0.18%      0x00007f2bbb007bfa:   nopw   0x0(%rax,%rax,1)
              0x00007f2bbb007c00:   test   %r8d,%r8d
              0x00007f2bbb007c03:   jl     0x00007f2bbb0090cb           ; ImmutableOopMap {rax=Oop rsi=Oop r10=Oop r13=Oop [32]=Oop [72]=Oop [80]=Oop }
                                                                        ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.ArrayList::add@11 (line 455)
                                                                        ; - java.util.ArrayList::add@20 (line 467)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
   0.01%      0x00007f2bbb007c09:   mov    0xc(%rax),%edx               ; implicit exception: dispatches to 0x00007f2bbb009266
   0.05%      0x00007f2bbb007c0c:   mov    0x8(%rax),%ecx
   0.18%      0x00007f2bbb007c0f:   cmp    %r11d,%edx
              0x00007f2bbb007c12:   jbe    0x00007f2bbb00904c
              0x00007f2bbb007c18:   mov    0x68(%rsp),%r14
   0.01%      0x00007f2bbb007c1d:   movabs $0x800000000,%rdx
   0.06%      0x00007f2bbb007c27:   lea    (%rdx,%rcx,1),%rcx
   0.17%      0x00007f2bbb007c2b:   mov    0xe0(%rcx),%rdx
   0.75%      0x00007f2bbb007c32:   mov    0x14(%rdx),%ecx
   0.95%      0x00007f2bbb007c35:   movslq %ecx,%rdi
   0.22%      0x00007f2bbb007c38:   nopl   0x0(%rax,%rax,1)
   0.00%      0x00007f2bbb007c40:   cmp    (%r14,%rdi,1),%rdx
              0x00007f2bbb007c44:   je     0x00007f2bbb007ca5
              0x00007f2bbb007c4a:   cmp    $0x20,%ecx
              0x00007f2bbb007c4d:   jne    0x00007f2bbb008b7f
              0x00007f2bbb007c53:   cmp    %rdx,%r14
              0x00007f2bbb007c56:   je     0x00007f2bbb007d4e
              0x00007f2bbb007c5c:   mov    $0x0,%ecx
              0x00007f2bbb007c61:   movabs $0x800b22690,%r9
              0x00007f2bbb007c6b:   jmp    0x00007f2bbb007c9a
              0x00007f2bbb007c70:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f2bbb007c7b:   data16 data16 xchg %ax,%ax
....................................................................................................
  15.08%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.regex.Matcher::search, version 2, compile id 758 

                0x00007f2bbaffc7ef:   dec    %r8d
                0x00007f2bbaffc7f2:   movslq %r8d,%r8
   0.27%        0x00007f2bbaffc7f5:   mov    %r11d,%r9d
                0x00007f2bbaffc7f8:   nopl   0x0(%rax,%rax,1)
                0x00007f2bbaffc800:   cmp    %r8,%r9
          ╭     0x00007f2bbaffc803:   ja     0x00007f2bbaffc813
          │     0x00007f2bbaffc809:   cmp    $0x2,%r11d
          │     0x00007f2bbaffc80d:   jae    0x00007f2bbaffcfea
          ↘     0x00007f2bbaffc813:   movl   $0xffffffff,0x10(,%r10,8)    ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@61 (line 1722)
   0.30%        0x00007f2bbaffc81f:   cmp    $0x3,%r11d
                0x00007f2bbaffc823:   mov    $0x2,%r8d
                0x00007f2bbaffc829:   cmovb  %r11d,%r8d
   0.00%        0x00007f2bbaffc82d:   shl    $0x3,%r10                    ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@48 (line 1721)
   0.20%        0x00007f2bbaffc831:   mov    $0x1,%r9d
           ╭    0x00007f2bbaffc837:   jmp    0x00007f2bbaffc84c           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - java.util.regex.Matcher::search@46 (line 1721)
           │    0x00007f2bbaffc83c:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - java.util.regex.Matcher::search@52 (line 1721)
   0.24%   │↗   0x00007f2bbaffc840:   movl   $0xffffffff,0x10(%r10,%r9,4) ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                             ; - java.util.regex.Matcher::search@61 (line 1722)
           ││   0x00007f2bbaffc849:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││                                                             ; - java.util.regex.Matcher::search@62 (line 1721)
   0.00%   ↘│   0x00007f2bbaffc84c:   cmp    %r9d,%r8d
            │   0x00007f2bbaffc84f:   jle    0x00007f2bbaffcce8
            ╰   0x00007f2bbaffc855:   jmp    0x00007f2bbaffc840           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@52 (line 1721)
                0x00007f2bbaffc857:   mov    0x3c(%rsi),%r10d             ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@118 (line 1728)
                0x00007f2bbaffc85b:   mov    %r10d,0x34(%rsp)             ; ImmutableOopMap {rsi=Oop r10=NarrowOop [52]=NarrowOop [56]=Oop }
                                                                          ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.regex.Matcher::search@68 (line 1723)
   0.20%        0x00007f2bbaffc860:   cmpl   $0xed30,0x8(,%r10,8)         ; implicit exception: dispatches to 0x00007f2bbaffd026
                                                                          ;   {metadata(&apos;java/lang/String&apos;)}
   0.05%        0x00007f2bbaffc86c:   jne    0x00007f2bbaffceb6           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
                0x00007f2bbaffc872:   mov    0x44(%rsi),%r11d             ;*getfield localsPos {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@72 (line 1723)
   0.21%        0x00007f2bbaffc876:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {rsi=Oop r10=NarrowOop [52]=NarrowOop [56]=Oop }
                                                                          ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.regex.Matcher::search@68 (line 1723)
   0.04%        0x00007f2bbaffc880:   cmpl   $0x0,0xc(,%r11,8)            ; implicit exception: dispatches to 0x00007f2bbaffd046
   0.01%        0x00007f2bbaffc889:   jne    0x00007f2bbaffcf40           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@76 (line 1723)
   0.20%        0x00007f2bbaffc88f:   mov    0x34(%rsi),%r11d             ; ImmutableOopMap {rsi=Oop r10=NarrowOop [52]=NarrowOop [56]=Oop }
                                                                          ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.regex.Matcher::search@68 (line 1723)
   0.04%        0x00007f2bbaffc893:   mov    0x34(,%r11,8),%r11d          ; implicit exception: dispatches to 0x00007f2bbaffd066
   0.00%        0x00007f2bbaffc89b:   mov    %r11d,0x30(%rsp)             ; ImmutableOopMap {rsi=Oop r10=NarrowOop r11=NarrowOop [48]=NarrowOop [52]=NarrowOop [56]=Oop }
                                                                          ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.regex.Matcher::search@68 (line 1723)
   0.00%        0x00007f2bbaffc8a0:   cmpl   $0x2660c0,0x8(,%r11,8)       ; implicit exception: dispatches to 0x00007f2bbaffd086
                                                                          ;   {metadata(&apos;java/util/regex/Pattern$Start&apos;)}
   0.27%        0x00007f2bbaffc8ac:   jne    0x00007f2bbaffcf0d           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.03%        0x00007f2bbaffc8b2:   mov    0x10(%rsi),%r8d              ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@2 (line 3602)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.00%        0x00007f2bbaffc8b6:   sub    0x10(,%r11,8),%r8d           ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@9 (line 3602)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.13%        0x00007f2bbaffc8be:   mov    %r8d,0x54(%rsp)
   0.15%        0x00007f2bbaffc8c3:   cmp    %r8d,%edx
                0x00007f2bbaffc8c6:   jg     0x00007f2bbaffcfaa           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@10 (line 3602)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
                0x00007f2bbaffc8cc:   mov    %r8d,%r9d
   0.00%        0x00007f2bbaffc8cf:   sub    %edx,%r9d
   0.14%        0x00007f2bbaffc8d2:   inc    %r9d
   0.12%        0x00007f2bbaffc8d5:   movslq %r9d,%r9
                0x00007f2bbaffc8d8:   mov    %edx,%ecx
   0.00%        0x00007f2bbaffc8da:   add    %rcx,%r9
   0.22%        0x00007f2bbaffc8dd:   data16 xchg %ax,%ax
   0.01%        0x00007f2bbaffc8e0:   cmp    $0x1,%r9
                0x00007f2bbaffc8e4:   jl     0x00007f2bbaffcf7c           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.StringLatin1::charAt@1 (line 47)
                                                                          ; - java.lang.String::charAt@12 (line 1515)
                                                                          ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.11%        0x00007f2bbaffc8ea:   movl   $0x0,0x18(%rsi)              ;*putfield acceptMode {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@105 (line 1727)
                0x00007f2bbaffc8f1:   mov    %r11d,%r9d
   0.13%        0x00007f2bbaffc8f4:   shl    $0x3,%r9                     ;*getfield root {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@112 (line 1728)
   0.01%        0x00007f2bbaffc8f8:   mov    %r9,0x28(%rsp)
   0.11%        0x00007f2bbaffc8fd:   mov    %r10d,%ecx
   0.00%        0x00007f2bbaffc900:   shl    $0x3,%rcx                    ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@118 (line 1728)
   0.13%        0x00007f2bbaffc904:   mov    %rcx,0x20(%rsp)
   0.01%        0x00007f2bbaffc909:   movabs $0x7fef39ee8,%rbx            ;   {oop([I{0x00000007fef39ee8})}
   0.07%        0x00007f2bbaffc913:   mov    %edx,%r9d
                0x00007f2bbaffc916:   jmp    0x00007f2bbaffca3f           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@31 (line 3607)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
                0x00007f2bbaffc91b:   nopl   0x0(%rax,%rax,1)             ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@34 (line 3607)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.93%        0x00007f2bbaffc920:   mov    %r9d,0x50(%rsp)
   0.00%        0x00007f2bbaffc925:   mov    0xc(,%r11,8),%eax            ; ImmutableOopMap {rax=NarrowOop rbx=Oop rsi=Oop r10=NarrowOop r11=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop }
                                                                          ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3607)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.03%        0x00007f2bbaffc92d:   mov    0x8(,%rax,8),%edx            ; implicit exception: dispatches to 0x00007f2bbaffd0a6
   1.93%        0x00007f2bbaffc934:   movabs $0x800000000,%rbp
   0.21%        0x00007f2bbaffc93e:   lea    0x0(%rbp,%rdx,1),%rdx
   2.93%        0x00007f2bbaffc943:   mov    %eax,%ebp
   0.02%        0x00007f2bbaffc945:   shl    $0x3,%rbp                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@38 (line 3608)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
   0.29%        0x00007f2bbaffc949:   mov    %rbp,0x18(%rsp)
   0.26%        0x00007f2bbaffc94e:   mov    %r9d,%r13d
   1.05%        0x00007f2bbaffc951:   inc    %r13d
   0.01%        0x00007f2bbaffc954:   cmp    -0x1fb(%rip),%rdx        # 0x00007f2bbaffc760
                                                                          ;   {section_word}
   0.61%        0x00007f2bbaffc95b:   nopl   0x0(%rax,%rax,1)
   0.19%     ╭  0x00007f2bbaffc960:   je     0x00007f2bbaffc978
   1.03%     │  0x00007f2bbaffc966:   cmp    -0x205(%rip),%rdx        # 0x00007f2bbaffc768
             │                                                            ;   {section_word}
   0.03%     │  0x00007f2bbaffc96d:   je     0x00007f2bbaffca99
             │  0x00007f2bbaffc973:   jmp    0x00007f2bbaffced7
             ↘  0x00007f2bbaffc978:   mov    0x10(%rsi),%edx              ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@4 (line 4321)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1728)
                0x00007f2bbaffc97b:   nopl   0x0(%rax,%rax,1)
                0x00007f2bbaffc980:   cmp    %r9d,%edx
                0x00007f2bbaffc983:   jle    0x00007f2bbaffcf2e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4322)
....................................................................................................
  12.67%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, java.lang.String::charAt, version 2, compile id 202 

            JVMCI data     [0x00007f2bbafce670,0x00007f2bbafce680] = 16
           [Disassembly]
           --------------------------------------------------------------------------------
           [Constant Pool (empty)]
           --------------------------------------------------------------------------------
           [Entry Point]
             # {method} {0x000000080042e580} &apos;charAt&apos; &apos;(I)C&apos; in &apos;java/lang/String&apos;
             # this:     rsi:rsi   = &apos;java/lang/String&apos;
             # parm0:    rdx       = int
             #           [sp+0x20]  (sp of caller)
   0.20%     0x00007f2bbafce400:   mov    0x8(%rsi),%r10d
   0.02%     0x00007f2bbafce404:   movabs $0x800000000,%r12
   1.56%     0x00007f2bbafce40e:   add    %r12,%r10
   0.06%     0x00007f2bbafce411:   xor    %r12,%r12
   0.18%     0x00007f2bbafce414:   cmp    %r10,%rax
             0x00007f2bbafce417:   jne    0x00007f2bb34ff780           ;   {runtime_call ic_miss_stub}
   0.03%     0x00007f2bbafce41d:   nop
   1.66%     0x00007f2bbafce41e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.03%     0x00007f2bbafce420:   mov    %eax,-0x14000(%rsp)
   0.16%     0x00007f2bbafce427:   sub    $0x18,%rsp
   1.57%     0x00007f2bbafce42b:   mov    %rbp,0x10(%rsp)
   0.05%     0x00007f2bbafce430:   cmpb   $0x0,0x10(%rsi)
   0.17%  ╭  0x00007f2bbafce434:   jne    0x00007f2bbafce481           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.String::isLatin1@10 (line 4551)
          │                                                            ; - java.lang.String::charAt@1 (line 1514)
   0.03%  │  0x00007f2bbafce43a:   nopw   0x0(%rax,%rax,1)
   1.50%  │  0x00007f2bbafce440:   test   %edx,%edx
          │  0x00007f2bbafce442:   jl     0x00007f2bbafce4b5           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
          │                                                            ; - java.lang.String::charAt@12 (line 1515)
   0.07%  │  0x00007f2bbafce448:   mov    0x14(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
          │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) java.lang.String::charAt@0 (line 1514)
   0.11%  │  0x00007f2bbafce44b:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f2bbafce4d3
   0.43%  │  0x00007f2bbafce453:   cmp    %edx,%r10d
          │  0x00007f2bbafce456:   jle    0x00007f2bbafce4a6           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
          │                                                            ; - java.lang.String::charAt@12 (line 1515)
   2.01%  │  0x00007f2bbafce45c:   nopl   0x0(%rax)
   0.00%  │  0x00007f2bbafce460:   cmp    %edx,%r10d
          │  0x00007f2bbafce463:   jbe    0x00007f2bbafce4c4           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
          │                                                            ; - java.lang.String::charAt@12 (line 1515)
   0.19%  │  0x00007f2bbafce469:   movzbl 0x10(%rdx,%rax,8),%eax       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.StringLatin1::charAt@25 (line 50)
          │                                                            ; - java.lang.String::charAt@12 (line 1515)
   0.33%  │  0x00007f2bbafce46e:   mov    0x10(%rsp),%rbp
   1.60%  │  0x00007f2bbafce473:   add    $0x18,%rsp
          │  0x00007f2bbafce477:   mov    0x348(%r15),%rcx
   0.20%  │  0x00007f2bbafce47e:   test   %eax,(%rcx)                  ;   {poll_return}
   0.08%  │  0x00007f2bbafce480:   ret    
          ↘  0x00007f2bbafce481:   mov    $0x210,%r11
             0x00007f2bbafce488:   mov    $0xffffffed,%r10d
             0x00007f2bbafce48e:   mov    %r10d,0x370(%r15)
             0x00007f2bbafce495:   mov    %r11,0x378(%r15)             ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.StringLatin1::charAt@1 (line 47)
                                                                       ; - java.lang.String::charAt@12 (line 1515)
             0x00007f2bbafce49c:   nopl   0x0(%rax)
             0x00007f2bbafce4a0:   call   0x00007f2bb350527a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.lang.String::charAt@0 (line 1514)
....................................................................................................
  12.24%  <total for region 4>

....[Hottest Regions]...............................................................................
  30.42%       jvmci, level 4  java.util.regex.Matcher::search, version 2, compile id 758 
  15.08%       jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 801 
  12.67%       jvmci, level 4  java.util.regex.Matcher::search, version 2, compile id 758 
  12.24%       jvmci, level 4  java.lang.String::charAt, version 2, compile id 202 
   6.97%       jvmci, level 4  java.util.regex.Matcher::search, version 2, compile id 758 
   5.23%       jvmci, level 4  java.util.regex.Matcher::search, version 2, compile id 758 
   3.80%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.15%       jvmci, level 4  java.util.regex.Matcher::search, version 2, compile id 758 
   2.09%       jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 801 
   1.78%       jvmci, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 768 
   1.47%       jvmci, level 4  java.util.regex.Matcher::search, version 2, compile id 758 
   1.17%         runtime stub  StubRoutines::checkcast_arraycopy 
   0.80%               kernel  [unknown] 
   0.50%       jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 801 
   0.38%         runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.30%       jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 802 
   0.24%       jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 801 
   0.11%               kernel  [unknown] 
   0.09%       jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 802 
   0.08%            libjvm.so  G1BarrierSet::invalidate 
   2.42%  <...other 496 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  58.90%       jvmci, level 4  java.util.regex.Matcher::search, version 2, compile id 758 
  18.10%       jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 801 
  12.24%       jvmci, level 4  java.lang.String::charAt, version 2, compile id 202 
   3.80%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.11%               kernel  [unknown] 
   1.78%       jvmci, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 768 
   1.17%         runtime stub  StubRoutines::checkcast_arraycopy 
   0.49%       jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 802 
   0.43%         runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.12%                       <unknown> 
   0.08%            libjvm.so  G1BarrierSet::invalidate 
   0.05%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.05%       jvmci, level 4  java.util.regex.Pattern::compile, version 2, compile id 833 
   0.05%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.04%            libjvm.so  OtherRegionsTable::occupied 
   0.03%       jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 817 
   0.03%            libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.47%  <...other 149 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.60%       jvmci, level 4
   5.40%         runtime stub
   2.11%               kernel
   0.55%            libjvm.so
   0.12%                     
   0.10%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.02%       hsdis-amd64.so
   0.02%  libjvmcicompiler.so
   0.02%          interpreter
   0.01%          c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:28

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
StringPatternSplitBenchmark.pattern_split              _  avgt    5  160.033 ± 3.171  us/op
StringPatternSplitBenchmark.pattern_split:·asm         _  avgt           NaN            ---
StringPatternSplitBenchmark.pattern_split             __  avgt    5  320.991 ± 0.817  us/op
StringPatternSplitBenchmark.pattern_split:·asm        __  avgt           NaN            ---
StringPatternSplitBenchmark.string_split               _  avgt    5   90.775 ± 0.063  us/op
StringPatternSplitBenchmark.string_split:·asm          _  avgt           NaN            ---
StringPatternSplitBenchmark.string_split              __  avgt    5  324.053 ± 2.907  us/op
StringPatternSplitBenchmark.string_split:·asm         __  avgt           NaN            ---
