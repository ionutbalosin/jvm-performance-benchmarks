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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = _)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 516.998 us/op
# Warmup Iteration   2: 469.776 us/op
# Warmup Iteration   3: 469.482 us/op
# Warmup Iteration   4: 468.813 us/op
# Warmup Iteration   5: 469.334 us/op
Iteration   1: 468.970 us/op
                 gc.alloc.rate:      290.971 MB/sec
                 gc.alloc.rate.norm: 143088.324 B/op
                 gc.count:           1.000 counts
                 gc.time:            4.000 ms

Iteration   2: 469.125 us/op
                 gc.alloc.rate:      290.875 MB/sec
                 gc.alloc.rate.norm: 143088.326 B/op
                 gc.count:           2.000 counts
                 gc.time:            6.000 ms

Iteration   3: 469.362 us/op
                 gc.alloc.rate:      290.728 MB/sec
                 gc.alloc.rate.norm: 143088.324 B/op
                 gc.count:           1.000 counts
                 gc.time:            4.000 ms

Iteration   4: 474.179 us/op
                 gc.alloc.rate:      287.774 MB/sec
                 gc.alloc.rate.norm: 143088.328 B/op
                 gc.count:           1.000 counts
                 gc.time:            3.000 ms

Iteration   5: 473.881 us/op
                 gc.alloc.rate:      287.953 MB/sec
                 gc.alloc.rate.norm: 143088.329 B/op
                 gc.count:           1.000 counts
                 gc.time:            4.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split":
  471.104 ±(99.9%) 10.309 us/op [Average]
  (min, avg, max) = (468.970, 471.104, 474.179), stdev = 2.677
  CI (99.9%): [460.794, 481.413] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:asm":
PrintAssembly processed: 257966 total address lines.
Perf output processed (skipped 61.250 seconds):
 Column 1: cycles (51059 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.regex.Pattern$BmpCharProperty::match, version 2, compile id 1010 

               # parm2:    r8:r8     = &apos;java/lang/CharSequence&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007f61ff2434a0:   mov    0x8(%rsi),%r10d
               0x00007f61ff2434a4:   movabs $0x7f6183000000,%r12
               0x00007f61ff2434ae:   add    %r12,%r10
               0x00007f61ff2434b1:   xor    %r12,%r12
               0x00007f61ff2434b4:   cmp    %r10,%rax
               0x00007f61ff2434b7:   jne    0x00007f61fec2f080           ;   {runtime_call ic_miss_stub}
               0x00007f61ff2434bd:   data16 xchg %ax,%ax
             [Verified Entry Point]
  11.84%       0x00007f61ff2434c0:   mov    %eax,-0x14000(%rsp)
  14.39%       0x00007f61ff2434c7:   sub    $0x18,%rsp
   0.00%       0x00007f61ff2434cb:   nop
               0x00007f61ff2434cc:   cmpl   $0x1,0x20(%r15)
               0x00007f61ff2434d4:   jne    0x00007f61ff243665
   1.17%       0x00007f61ff2434da:   mov    %rbp,0x10(%rsp)
               0x00007f61ff2434df:   nop                                 ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop }
                                                                         ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.regex.Pattern$BmpCharProperty::match@0 (line 4132)
               0x00007f61ff2434e0:   cmp    0x10(%rdx),%ecx              ; implicit exception: dispatches to 0x00007f61ff243689
          ╭    0x00007f61ff2434e3:   jge    0x00007f61ff2435cd           ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop }
          │                                                              ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) java.util.regex.Pattern$BmpCharProperty::match@0 (line 4132)
   0.31%  │    0x00007f61ff2434e9:   cmpl   $0xe8d8,0x8(%r8)             ; implicit exception: dispatches to 0x00007f61ff2436ad
          │                                                              ;   {metadata(&apos;java/lang/String&apos;)}
   0.79%  │    0x00007f61ff2434f1:   jne    0x00007f61ff243640           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 4133)
          │    0x00007f61ff2434f7:   nopw   0x0(%rax,%rax,1)
          │    0x00007f61ff243500:   cmpb   $0x0,0x10(%r8)
   0.23%  │    0x00007f61ff243505:   jne    0x00007f61ff2435f5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.String::isLatin1@10 (line 4817)
          │                                                              ; - java.lang.String::charAt@1 (line 1554)
          │                                                              ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 4133)
   0.85%  │    0x00007f61ff24350b:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rdx=Oop rsi=Oop r8=Oop }
          │                                                              ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) java.util.regex.Pattern$BmpCharProperty::match@0 (line 4132)
          │    0x00007f61ff24350e:   cmpl   $0x3a47e8,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007f61ff2436d0
          │                                                              ;   {metadata(&apos;java/util/regex/Pattern$$Lambda+0x800000038&apos;)}
   3.87%  │    0x00007f61ff243519:   jne    0x00007f61ff24364f           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Pattern$BmpCharProperty::match@19 (line 4133)
   1.12%  │    0x00007f61ff24351f:   mov    0x14(%r8),%r10d              ; ImmutableOopMap {rax=NarrowOop rdx=Oop rsi=Oop r8=Oop r10=NarrowOop }
          │                                                              ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) java.util.regex.Pattern$BmpCharProperty::match@0 (line 4132)
          │    0x00007f61ff243523:   cmp    0xc(,%r10,8),%ecx            ; implicit exception: dispatches to 0x00007f61ff2436f3
          │    0x00007f61ff24352b:   jae    0x00007f61ff243631           ;* unwind (locked if synchronized)
          │                                                              ; - jdk.internal.util.Preconditions::checkIndex@-3
          │                                                              ; - java.lang.String::checkIndex@5 (line 4828)
          │                                                              ; - java.lang.StringLatin1::charAt@3 (line 46)
          │                                                              ; - java.lang.String::charAt@12 (line 1555)
          │                                                              ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 4133)
   1.11%  │    0x00007f61ff243531:   movzbl 0x10(%rcx,%r10,8),%r10d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.StringLatin1::charAt@8 (line 47)
          │                                                              ; - java.lang.String::charAt@12 (line 1555)
          │                                                              ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 4133)
   0.13%  │    0x00007f61ff243537:   nopw   0x0(%rax,%rax,1)
          │    0x00007f61ff243540:   cmp    0xc(,%rax,8),%r10d
          │╭   0x00007f61ff243548:   je     0x00007f61ff24356e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 4133)
   1.46%  ││   0x00007f61ff24354e:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@47 (line 4133)
   0.18%  ││↗  0x00007f61ff243553:   mov    0x10(%rsp),%rbp
   0.28%  │││  0x00007f61ff243558:   add    $0x18,%rsp
          │││  0x00007f61ff24355c:   nopl   0x0(%rax)
   0.94%  │││  0x00007f61ff243560:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f61ff243567:   ja     0x00007f61ff243675
   0.08%  │││  0x00007f61ff24356d:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 4133)
   1.58%  │↘│  0x00007f61ff24356e:   cmpl   $0x1,0x18(%rdx)
   1.54%  │ │  0x00007f61ff243572:   je     0x00007f61ff243613           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.regex.Pattern$LastNode::match@5 (line 3757)
          │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 4134)
   0.13%  │ │  0x00007f61ff243578:   mov    0xc(%rsi),%eax               ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@28 (line 4133)
          │ │  0x00007f61ff24357b:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop }
          │ │                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                            ; - (reexecute) java.util.regex.Pattern$BmpCharProperty::match@0 (line 4132)
   0.02%  │ │  0x00007f61ff243580:   cmpl   $0x35e028,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007f61ff243716
          │ │                                                            ;   {metadata(&apos;java/util/regex/Pattern$LastNode&apos;)}
   0.76%  │ │  0x00007f61ff24358b:   jne    0x00007f61ff243604           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 4134)
   0.18%  │ │  0x00007f61ff243591:   mov    0x38(%rdx),%eax              ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.regex.Pattern$LastNode::match@24 (line 3760)
          │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 4134)
          │ │  0x00007f61ff243594:   nopl   0x0(%rax,%rax,1)
          │ │  0x00007f61ff24359c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rax=NarrowOop rdx=Oop rsi=Oop r8=Oop }
          │ │                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                            ; - (reexecute) java.util.regex.Pattern$BmpCharProperty::match@0 (line 4132)
          │ │  0x00007f61ff2435a0:   cmpl   $0x2,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007f61ff243739
   0.58%  │ │  0x00007f61ff2435a8:   jb     0x00007f61ff243622           ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@2 (line 4132)
   0.13%  │ │  0x00007f61ff2435ae:   inc    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@34 (line 4133)
          │ │  0x00007f61ff2435b0:   mov    %ecx,0x20(%rdx)              ;*putfield last {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.regex.Pattern$LastNode::match@20 (line 3759)
          │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 4134)
   0.02%  │ │  0x00007f61ff2435b3:   mov    0x1c(%rdx),%r10d             ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.regex.Pattern$LastNode::match@29 (line 3760)
          │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 4134)
          │ │  0x00007f61ff2435b7:   mov    %r10d,0x10(,%rax,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.regex.Pattern$LastNode::match@32 (line 3760)
          │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 4134)
   0.15%  │ │  0x00007f61ff2435bf:   mov    %ecx,0x14(,%rax,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.regex.Pattern$LastNode::match@42 (line 3761)
          │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 4134)
          │ │  0x00007f61ff2435c6:   mov    $0x1,%eax
   0.03%  │ ╰  0x00007f61ff2435cb:   jmp    0x00007f61ff243553           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Pattern$BmpCharProperty::match@47 (line 4133)
          ↘    0x00007f61ff2435cd:   mov    $0x14,%r11
               0x00007f61ff2435d4:   mov    $0xffffffed,%r10d
               0x00007f61ff2435da:   mov    %r10d,0x484(%r15)            ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$BmpCharProperty::match@2 (line 4132)
               0x00007f61ff2435e1:   mov    %r11,0x490(%r15)
               0x00007f61ff2435e8:   call   0x00007f61fec3517a           ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop }
                                                                         ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.regex.Pattern$BmpCharProperty::match@0 (line 4132)
                                                                         ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  43.86%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.regex.Pattern$Start::match, version 3, compile id 1016 

                0x00007f61ff244162:   mov    %ecx,%r10d
          ╭     0x00007f61ff244165:   jmp    0x00007f61ff2441d8           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$Start::match@31 (line 3786)
          │     0x00007f61ff24416a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │     0x00007f61ff244175:   data16 data16 xchg %ax,%ax
          │     0x00007f61ff244179:   nopl   0x0(%rax)                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$Start::match@34 (line 3786)
          │ ↗   0x00007f61ff244180:   mov    0xc(%rsi),%ecx               ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rsi=Oop r8=Oop [0]=Oop [8]=Oop [16]=Oop }
          │ │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                             ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3786)
   3.14%  │ │   0x00007f61ff244183:   mov    0x8(,%rcx,8),%eax            ; implicit exception: dispatches to 0x00007f61ff244375
   4.70%  │ │   0x00007f61ff24418a:   movabs $0x7f6183000000,%r11
          │ │   0x00007f61ff244194:   lea    (%r11,%rax,1),%rax
   0.87%  │ │   0x00007f61ff244198:   mov    0x1f0(%rax),%rax
   4.65%  │ │   0x00007f61ff24419f:   mov    0x40(%rax),%r11              ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
   3.84%  │ │   0x00007f61ff2441a3:   shl    $0x3,%rcx                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - java.util.regex.Pattern$Start::match@38 (line 3787)
          │ │   0x00007f61ff2441a7:   mov    %rcx,%rsi
          │ │   0x00007f61ff2441aa:   mov    %rdx,%rdi
          │ │   0x00007f61ff2441ad:   mov    %r10d,%ecx
   0.99%  │ │   0x00007f61ff2441b0:   mov    %r8,%rbp
          │ │   0x00007f61ff2441b3:   mov    %rax,%rbx
          │ │   0x00007f61ff2441b6:   mov    %r11,%rax                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │ │                                                             ;   {no_reloc}
          │ │   0x00007f61ff2441b9:   mov    %r10d,0x1c(%rsp)
   0.92%  │ │   0x00007f61ff2441be:   call   *%rax                        ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop }
          │ │                                                             ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
   3.18%  │ │   0x00007f61ff2441c0:   nopl   0x0(%rax,%rax,1)
          │ │   0x00007f61ff2441c8:   test   %eax,%eax
          │╭│   0x00007f61ff2441ca:   jne    0x00007f61ff24420f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - java.util.regex.Pattern$Start::match@47 (line 3787)
   0.07%  │││   0x00007f61ff2441d0:   mov    0x1c(%rsp),%r10d
   2.01%  │││   0x00007f61ff2441d5:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - java.util.regex.Pattern$Start::match@77 (line 3786)
   0.91%  ↘││   0x00007f61ff2441d8:   mov    0x24(%rsp),%ebx
           ││   0x00007f61ff2441dc:   mov    (%rsp),%r8
   0.39%   ││   0x00007f61ff2441e0:   mov    0x8(%rsp),%rdx
           ││   0x00007f61ff2441e5:   mov    0x10(%rsp),%rsi
   0.57%   ││   0x00007f61ff2441ea:   cmp    %ebx,%r10d
           │╰   0x00007f61ff2441ed:   jle    0x00007f61ff244180           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - java.util.regex.Pattern$Start::match@34 (line 3786)
   0.00%   │    0x00007f61ff2441ef:   movb   $0x1,0x30(%rdx)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - java.util.regex.Pattern$Start::match@85 (line 3794)
   0.00%   │    0x00007f61ff2441f3:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - java.util.regex.Pattern$Start::match@89 (line 3795)
           │    0x00007f61ff2441f8:   mov    0x30(%rsp),%rbp
           │    0x00007f61ff2441fd:   add    $0x38,%rsp
           │    0x00007f61ff244201:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │    0x00007f61ff244208:   ja     0x00007f61ff244307
           │    0x00007f61ff24420e:   ret                                 ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - java.util.regex.Pattern$Start::match@31 (line 3786)
   0.15%   ↘    0x00007f61ff24420f:   mov    0x1c(%rsp),%r10d             ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@50 (line 3788)
   1.00%     ↗  0x00007f61ff244214:   mov    0x8(%rsp),%rdx
             │  0x00007f61ff244219:   mov    0x38(%rdx),%eax              ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Start::match@56 (line 3789)
   0.65%     │  0x00007f61ff24421c:   nopl   0x0(%rax)                    ; ImmutableOopMap {rax=NarrowOop rdx=Oop }
             │                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
             │                                                            ; - (reexecute) java.util.regex.Pattern$Start::match@50 (line 3788)
             │  0x00007f61ff244220:   cmpl   $0x2,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007f61ff244398
   0.93%     │  0x00007f61ff244228:   jb     0x00007f61ff2442d4           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Start::match@64 (line 3789)
   0.16%     │  0x00007f61ff24422e:   mov    %r10d,0x1c(%rdx)             ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Start::match@52 (line 3788)
             │  0x00007f61ff244232:   mov    %r10d,0x10(,%rax,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Start::match@64 (line 3789)
             │  0x00007f61ff24423a:   mov    0x20(%rdx),%r10d             ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Start::match@71 (line 3790)
             │  0x00007f61ff24423e:   mov    %r10d,0x14(,%rax,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Start::match@74 (line 3790)
   0.16%     │  0x00007f61ff244246:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Start::match@76 (line 3791)
             │  0x00007f61ff24424b:   mov    0x30(%rsp),%rbp
             │  0x00007f61ff244250:   add    $0x38,%rsp
             │  0x00007f61ff244254:   nopl   0x0(%rax,%rax,1)
   0.17%     │  0x00007f61ff24425c:   data16 data16 xchg %ax,%ax
             │  0x00007f61ff244260:   cmp    0x450(%r15),%rsp             ;   {poll_return}
             │  0x00007f61ff244267:   ja     0x00007f61ff24431b
             │  0x00007f61ff24426d:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Start::match@89 (line 3795)
             │  0x00007f61ff24426e:   mov    0x20(%rsp),%r10d
             ╰  0x00007f61ff244273:   jmp    0x00007f61ff244214           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@50 (line 3788)
                0x00007f61ff244275:   mov    (%rsp),%r8
                0x00007f61ff244279:   mov    0x20(%rsp),%ecx
                0x00007f61ff24427d:   mov    0x8(%rsp),%rdx
....................................................................................................
  29.48%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.regex.Pattern::split, version 4, compile id 1038 

                                                                              ; - java.util.regex.Matcher::search@46 (line 1731)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
                    0x00007f61ff24eee5:   data16 data16 nopw 0x0(%rax,%rax,1)
                    0x00007f61ff24eef0:   data16 data16 xchg %ax,%ax
                    0x00007f61ff24eef4:   nopl   0x0(%rax,%rax,1)
                    0x00007f61ff24eefc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@52 (line 1731)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
   0.19%  ↗         0x00007f61ff24ef00:   movl   $0xffffffff,0x10(%rcx,%r14,4);*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.regex.Matcher::search@61 (line 1732)
          │                                                                   ; - java.util.regex.Matcher::find@65 (line 758)
          │                                                                   ; - java.util.regex.Pattern::split@35 (line 1405)
          │         0x00007f61ff24ef09:   inc    %r14d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.regex.Matcher::search@62 (line 1731)
          │                                                                   ; - java.util.regex.Matcher::find@65 (line 758)
          │                                                                   ; - java.util.regex.Pattern::split@35 (line 1405)
          │         0x00007f61ff24ef0c:   cmp    %r14d,%r8d
          ╰         0x00007f61ff24ef0f:   jg     0x00007f61ff24ef00           ;   {no_reloc}
                    0x00007f61ff24ef11:   lea    -0x10(%r13),%r8d
   0.20%   ╭        0x00007f61ff24ef15:   jmp    0x00007f61ff24efda
           │        0x00007f61ff24ef1a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.regex.Matcher::search@52 (line 1731)
           │                                                                  ; - java.util.regex.Matcher::find@65 (line 758)
           │                                                                  ; - java.util.regex.Pattern::split@35 (line 1405)
   0.17%   │ ↗      0x00007f61ff24ef20:   movl   $0xffffffff,0x10(%rcx,%r14,4);*iastore {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                ; - java.util.regex.Matcher::search@61 (line 1732)
           │ │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
           │ │                                                                ; - java.util.regex.Pattern::split@35 (line 1405)
           │ │      0x00007f61ff24ef29:   inc    %r14d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                ; - java.util.regex.Matcher::search@62 (line 1731)
           │ │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
           │ │                                                                ; - java.util.regex.Pattern::split@35 (line 1405)
           │ │      0x00007f61ff24ef2c:   nopl   0x0(%rax)
   0.18%   │ │↗     0x00007f61ff24ef30:   cmp    %r14d,%r13d
           │╭││     0x00007f61ff24ef33:   jle    0x00007f61ff24efee
   0.18%   ││╰│     0x00007f61ff24ef39:   jmp    0x00007f61ff24ef20
           ││ │     0x00007f61ff24ef3b:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││ │                                                               ; - java.util.regex.Matcher::search@52 (line 1731)
           ││ │                                                               ; - java.util.regex.Matcher::find@65 (line 758)
           ││ │                                                               ; - java.util.regex.Pattern::split@35 (line 1405)
   0.15%   ││ │↗    0x00007f61ff24ef40:   movl   $0xffffffff,0x10(%rcx,%r14,4)
           ││ ││    0x00007f61ff24ef49:   movslq %r14d,%r10
           ││ ││    0x00007f61ff24ef4c:   movl   $0xffffffff,0x14(%rcx,%r10,4)
           ││ ││    0x00007f61ff24ef55:   movl   $0xffffffff,0x18(%rcx,%r10,4)
   0.19%   ││ ││    0x00007f61ff24ef5e:   movl   $0xffffffff,0x1c(%rcx,%r10,4)
   0.00%   ││ ││    0x00007f61ff24ef67:   movl   $0xffffffff,0x20(%rcx,%r10,4)
           ││ ││    0x00007f61ff24ef70:   movl   $0xffffffff,0x24(%rcx,%r10,4)
           ││ ││    0x00007f61ff24ef79:   movl   $0xffffffff,0x28(%rcx,%r10,4)
   0.15%   ││ ││    0x00007f61ff24ef82:   movl   $0xffffffff,0x2c(%rcx,%r10,4)
   0.00%   ││ ││    0x00007f61ff24ef8b:   movl   $0xffffffff,0x30(%rcx,%r10,4)
   0.01%   ││ ││    0x00007f61ff24ef94:   movl   $0xffffffff,0x34(%rcx,%r10,4)
           ││ ││    0x00007f61ff24ef9d:   movl   $0xffffffff,0x38(%rcx,%r10,4)
   0.16%   ││ ││    0x00007f61ff24efa6:   movl   $0xffffffff,0x3c(%rcx,%r10,4)
   0.00%   ││ ││    0x00007f61ff24efaf:   movl   $0xffffffff,0x40(%rcx,%r10,4)
   0.01%   ││ ││    0x00007f61ff24efb8:   movl   $0xffffffff,0x44(%rcx,%r10,4)
   0.01%   ││ ││    0x00007f61ff24efc1:   movl   $0xffffffff,0x48(%rcx,%r10,4)
   0.18%   ││ ││    0x00007f61ff24efca:   movl   $0xffffffff,0x4c(%rcx,%r10,4);*iastore {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                              ; - java.util.regex.Matcher::search@61 (line 1732)
           ││ ││                                                              ; - java.util.regex.Matcher::find@65 (line 758)
           ││ ││                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
   0.02%   ││ ││    0x00007f61ff24efd3:   lea    0x10(%r14),%r10d             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                              ; - java.util.regex.Matcher::search@62 (line 1731)
           ││ ││                                                              ; - java.util.regex.Matcher::find@65 (line 758)
           ││ ││                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
           ││ ││    0x00007f61ff24efd7:   mov    %r10d,%r14d                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                              ; - java.util.regex.Matcher::search@46 (line 1731)
           ││ ││                                                              ; - java.util.regex.Matcher::find@65 (line 758)
           ││ ││                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
           ↘│ ││    0x00007f61ff24efda:   nopw   0x0(%rax,%rax,1)
   0.15%    │ ││    0x00007f61ff24efe0:   cmp    %r14d,%r8d
            │ ╰│    0x00007f61ff24efe3:   jle    0x00007f61ff24ef30
            │  ╰    0x00007f61ff24efe9:   jmp    0x00007f61ff24ef40           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - java.util.regex.Matcher::search@52 (line 1731)
            │                                                                 ; - java.util.regex.Matcher::find@65 (line 758)
            │                                                                 ; - java.util.regex.Pattern::split@35 (line 1405)
            ↘       0x00007f61ff24efee:   mov    0x44(%rdx),%ecx              ; ImmutableOopMap {rdx=Oop [24]=Oop [56]=Oop [64]=Oop }
                                                                              ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) java.util.regex.Matcher::search@68 (line 1733)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
                    0x00007f61ff24eff1:   cmpl   $0x0,0xc(,%rcx,8)            ; implicit exception: dispatches to 0x00007f61ff2508a6
   0.14%            0x00007f61ff24eff9:   jne    0x00007f61ff2505d2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@76 (line 1733)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
                    0x00007f61ff24efff:   mov    0x34(%rdx),%ecx              ; ImmutableOopMap {rdx=Oop [24]=Oop [56]=Oop [64]=Oop }
                                                                              ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) java.util.regex.Matcher::search@68 (line 1733)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
                    0x00007f61ff24f002:   mov    0x34(,%rcx,8),%ecx           ; implicit exception: dispatches to 0x00007f61ff2508cd
                                                                              ; ImmutableOopMap {rcx=NarrowOop rdx=Oop [24]=Oop [56]=Oop [64]=Oop }
                                                                              ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) java.util.regex.Matcher::search@68 (line 1733)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
   0.00%            0x00007f61ff24f009:   cmpl   $0x356d60,0x8(,%rcx,8)       ; implicit exception: dispatches to 0x00007f61ff2508f0
                                                                              ;   {no_reloc}
   0.25%            0x00007f61ff24f014:   jne    0x00007f61ff250546           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
   0.06%            0x00007f61ff24f01a:   movl   $0x0,0x18(%rdx)              ;*putfield acceptMode {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@105 (line 1737)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
                    0x00007f61ff24f021:   mov    0x3c(%rdx),%r8d              ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@118 (line 1738)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
   0.12%            0x00007f61ff24f025:   shl    $0x3,%rcx                    ;*getfield root {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@112 (line 1738)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
                    0x00007f61ff24f029:   shl    $0x3,%r8                     ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@118 (line 1738)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
   0.06%            0x00007f61ff24f02d:   mov    %rcx,%rsi                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
                    0x00007f61ff24f030:   mov    %rdx,%r14
   0.10%            0x00007f61ff24f033:   mov    0x54(%rsp),%ecx
   0.00%            0x00007f61ff24f037:   call   0x00007f61ff2440c0           ; ImmutableOopMap {[24]=Oop [56]=Oop [64]=Oop }
                                                                              ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                              ;   {optimized virtual_call}
                    0x00007f61ff24f03c:   nopl   0x60009ac(%rax,%rax,1)       ;   {other}
   0.18%            0x00007f61ff24f044:   test   %eax,%eax
                    0x00007f61ff24f046:   je     0x00007f61ff24f605           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@126 (line 1739)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
                    0x00007f61ff24f04c:   mov    0x40(%rsp),%rdx              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@134 (line 1741)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
   0.51%            0x00007f61ff24f051:   mov    0x20(%rdx),%ecx              ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@136 (line 1741)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
   0.67%            0x00007f61ff24f054:   mov    %ecx,0x24(%rdx)              ;*putfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@139 (line 1741)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
   0.96%            0x00007f61ff24f057:   incl   0x2c(%rdx)                   ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@149 (line 1742)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
   0.00%            0x00007f61ff24f05a:   nopw   0x0(%rax,%rax,1)
   0.16%            0x00007f61ff24f060:   test   %eax,%eax
                    0x00007f61ff24f062:   je     0x00007f61ff24f680           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern::split@38 (line 1405)
                    0x00007f61ff24f068:   mov    0x5c(%rsp),%r10d
                    0x00007f61ff24f06d:   test   %r10d,%r10d
                    0x00007f61ff24f070:   je     0x00007f61ff24f620           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern::split@56 (line 1407)
   0.01%            0x00007f61ff24f076:   test   %r10d,%r10d
                    0x00007f61ff24f079:   jl     0x00007f61ff25045a           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.internal.util.Preconditions::checkFromToIndex@1 (line 348)
                                                                              ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                              ; - java.lang.String::substring@8 (line 2830)
                                                                              ; - java.lang.String::subSequence@3 (line 2868)
                                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
   0.17%            0x00007f61ff24f07f:   mov    0x1c(%rdx),%r11d             ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::hasMatch@1 (line 1850)
                                                                              ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                              ; - java.util.regex.Matcher::start@1 (line 466)
                                                                              ; - java.util.regex.Pattern::split@90 (line 1412)
   0.00%            0x00007f61ff24f083:   test   %r11d,%r11d
                    0x00007f61ff24f086:   jl     0x00007f61ff2507a3           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::hasMatch@4 (line 1850)
                                                                              ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                              ; - java.util.regex.Matcher::start@1 (line 466)
                                                                              ; - java.util.regex.Pattern::split@90 (line 1412)
                    0x00007f61ff24f08c:   cmp    %r11d,%r10d
                    0x00007f61ff24f08f:   jg     0x00007f61ff25069f           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.internal.util.Preconditions::checkFromToIndex@6 (line 348)
                                                                              ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                              ; - java.lang.String::substring@8 (line 2830)
                                                                              ; - java.lang.String::subSequence@3 (line 2868)
                                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
   0.01%            0x00007f61ff24f095:   mov    0x38(%rsp),%r8
   0.17%            0x00007f61ff24f09a:   mov    0x14(%r8),%r9d               ; ImmutableOopMap {rdx=Oop r8=Oop r9=NarrowOop [24]=Oop [56]=Oop [64]=Oop }
                                                                              ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) java.util.regex.Pattern::split@85 (line 1412)
   0.01%            0x00007f61ff24f09e:   mov    0xc(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007f61ff250913
   0.48%            0x00007f61ff24f0a6:   movsbl 0x10(%r8),%edi               ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.String::coder@7 (line 4809)
                                                                              ; - java.lang.String::length@6 (line 1519)
                                                                              ; - java.lang.String::substring@1 (line 2829)
                                                                              ; - java.lang.String::subSequence@3 (line 2868)
                                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
                    0x00007f61ff24f0ab:   mov    %edi,%ecx
   0.00%            0x00007f61ff24f0ad:   mov    %ebx,%esi
                    0x00007f61ff24f0af:   shr    %cl,%esi                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.String::length@9 (line 1519)
                                                                              ; - java.lang.String::substring@1 (line 2829)
                                                                              ; - java.lang.String::subSequence@3 (line 2868)
                                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
   0.32%            0x00007f61ff24f0b1:   cmp    %esi,%r11d
                    0x00007f61ff24f0b4:   jg     0x00007f61ff2506d2           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.internal.util.Preconditions::checkFromToIndex@11 (line 348)
                                                                              ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                              ; - java.lang.String::substring@8 (line 2830)
                                                                              ; - java.lang.String::subSequence@3 (line 2868)
                                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
                    0x00007f61ff24f0ba:   nopw   0x0(%rax,%rax,1)
                    0x00007f61ff24f0c0:   test   %r10d,%r10d
                    0x00007f61ff24f0c3:   je     0x00007f61ff24f453           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.String::substring@12 (line 2831)
                                                                              ; - java.lang.String::subSequence@3 (line 2868)
                                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
   0.00%            0x00007f61ff24f0c9:   test   %edi,%edi
                    0x00007f61ff24f0cb:   jne    0x00007f61ff250776           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.String::isLatin1@10 (line 4817)
                                                                              ; - java.lang.String::substring@28 (line 2835)
                                                                              ; - java.lang.String::subSequence@3 (line 2868)
                                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
   0.18%            0x00007f61ff24f0d1:   cmp    %r10d,%r11d
                    0x00007f61ff24f0d4:   je     0x00007f61ff24f66e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.StringLatin1::newString@1 (line 749)
                                                                              ; - java.lang.String::substring@41 (line 2835)
                                                                              ; - java.lang.String::subSequence@3 (line 2868)
                                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
                    0x00007f61ff24f0da:   shl    $0x3,%r9                     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.String::length@1 (line 1519)
                                                                              ; - java.lang.String::substring@1 (line 2829)
                                                                              ; - java.lang.String::subSequence@3 (line 2868)
                                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
                    0x00007f61ff24f0de:   xchg   %ax,%ax
                    0x00007f61ff24f0e0:   test   %r10d,%r10d
                    0x00007f61ff24f0e3:   je     0x00007f61ff24f435           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.Arrays::copyOfRange@1 (line 3853)
                                                                              ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                              ; - java.lang.String::substring@41 (line 2835)
                                                                              ; - java.lang.String::subSequence@3 (line 2868)
                                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
   0.19%            0x00007f61ff24f0e9:   mov    0x1b8(%r15),%rsi             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.Arrays::copyOfRangeByte@10 (line 3863)
                                                                              ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                              ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                              ; - java.lang.String::substring@41 (line 2835)
                                                                              ; - java.lang.String::subSequence@3 (line 2868)
                                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
   0.00%            0x00007f61ff24f0f0:   mov    %r11d,%ebp
                    0x00007f61ff24f0f3:   sub    %r10d,%ebp                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.String::substring@24 (line 2834)
                                                                              ; - java.lang.String::subSequence@3 (line 2868)
                                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
                    0x00007f61ff24f0f6:   mov    %ebp,%edi
   0.18%            0x00007f61ff24f0f8:   lea    0x17(%rdi),%rdi
                    0x00007f61ff24f0fc:   and    $0xfffffffffffffff8,%rdi
                    0x00007f61ff24f100:   mov    %rdi,%rcx
   0.00%            0x00007f61ff24f103:   add    %rsi,%rcx
   0.17%            0x00007f61ff24f106:   cmp    0x1c8(%r15),%rcx
                    0x00007f61ff24f10d:   ja     0x00007f61ff24f525
                    0x00007f61ff24f113:   mov    %rcx,0x1b8(%r15)
                    0x00007f61ff24f11a:   prefetchw 0xc0(%rdi,%rsi,1)
   0.01%            0x00007f61ff24f122:   prefetchw 0x100(%rdi,%rsi,1)
   0.15%            0x00007f61ff24f12a:   prefetchw 0x140(%rdi,%rsi,1)
   0.01%            0x00007f61ff24f132:   prefetchw 0x180(%rdi,%rsi,1)
   0.05%            0x00007f61ff24f13a:   movq   $0x1,(%rsi)                  ;   {no_reloc}
                    0x00007f61ff24f141:   movl   $0x22c0,0x8(%rsi)            ;   {metadata({type array byte})}
   0.15%            0x00007f61ff24f148:   mov    %ebp,0xc(%rsi)
   0.00%            0x00007f61ff24f14b:   lea    -0x10(%rdi),%rcx
   0.01%            0x00007f61ff24f14f:   cmp    $0x800,%rcx
                    0x00007f61ff24f156:   jae    0x00007f61ff24f54d
   0.00%            0x00007f61ff24f15c:   mov    $0x10,%rcx
   0.17%        ╭   0x00007f61ff24f163:   jmp    0x00007f61ff24f18c
                │   0x00007f61ff24f168:   data16 data16 nopw 0x0(%rax,%rax,1)
                │   0x00007f61ff24f173:   data16 data16 xchg %ax,%ax
                │   0x00007f61ff24f177:   nopw   0x0(%rax,%rax,1)
   0.19%        │↗  0x00007f61ff24f180:   movq   $0x0,(%rsi,%rcx,1)
                ││  0x00007f61ff24f188:   lea    0x8(%rcx),%rcx
   0.00%        ↘│  0x00007f61ff24f18c:   cmp    %rcx,%rdi
                 ╰  0x00007f61ff24f18f:   ja     0x00007f61ff24f180           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.Arrays::copyOfRangeByte@10 (line 3863)
                                                                              ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                              ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                              ; - java.lang.String::substring@41 (line 2835)
                                                                              ; - java.lang.String::subSequence@3 (line 2868)
                                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
   0.01%            0x00007f61ff24f191:   mov    %ebx,%edi
   0.14%            0x00007f61ff24f193:   sub    %r10d,%edi                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.Arrays::copyOfRangeByte@22 (line 3864)
                                                                              ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                              ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                              ; - java.lang.String::substring@41 (line 2835)
                                                                              ; - java.lang.String::subSequence@3 (line 2868)
                                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
   0.03%            0x00007f61ff24f196:   cmp    %ebp,%edi
   0.00%            0x00007f61ff24f198:   cmovg  %ebp,%edi                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.Math::min@2 (line 2115)
                                                                              ; - java.util.Arrays::copyOfRangeByte@24 (line 3865)
                                                                              ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                              ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                              ; - java.lang.String::substring@41 (line 2835)
                                                                              ; - java.lang.String::subSequence@3 (line 2868)
                                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
                    0x00007f61ff24f19b:   nopl   0x0(%rax,%rax,1)
   0.14%            0x00007f61ff24f1a0:   test   %edi,%edi
                    0x00007f61ff24f1a2:   jl     0x00007f61ff2502d5
                    0x00007f61ff24f1a8:   sub    %edi,%ebx
   0.00%            0x00007f61ff24f1aa:   cmp    %ebx,%r10d
                    0x00007f61ff24f1ad:   jg     0x00007f61ff2502d5
   0.01%            0x00007f61ff24f1b3:   cmp    %ebp,%edi
                    0x00007f61ff24f1b5:   jg     0x00007f61ff2502d5
   0.16%            0x00007f61ff24f1bb:   mov    %rsi,%r8
                    0x00007f61ff24f1be:   mov    %edi,%ecx
                    0x00007f61ff24f1c0:   lea    0x10(%r9,%r10,1),%rdi
                    0x00007f61ff24f1c5:   mov    %rsi,0x20(%rsp)
   0.15%            0x00007f61ff24f1ca:   lea    0x10(%r8),%rsi               ;* unwind (locked if synchronized)
                                                                              ; - java.lang.System::arraycopy@-3
                                                                              ; - java.util.Arrays::copyOfRangeByte@27 (line 3864)
                                                                              ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                              ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                              ; - java.lang.String::substring@41 (line 2835)
                                                                              ; - java.lang.String::subSequence@3 (line 2868)
                                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
                    0x00007f61ff24f1ce:   mov    %rcx,%rdx
                    0x00007f61ff24f1d1:   call   Stub::jbyte_arraycopy        ;   {runtime_call StubRoutines (final stubs)}
   0.09%            0x00007f61ff24f1d6:   nop
   0.01%            0x00007f61ff24f1d7:   mov    0x20(%rsp),%r10
   0.21%            0x00007f61ff24f1dc:   mov    0x1b8(%r15),%rdi
   0.05%            0x00007f61ff24f1e3:   lea    0x18(%rdi),%rsi
   0.02%            0x00007f61ff24f1e7:   cmp    0x1c8(%r15),%rsi
                    0x00007f61ff24f1ee:   ja     0x00007f61ff24f505
   0.12%            0x00007f61ff24f1f4:   mov    %rsi,0x1b8(%r15)
   0.09%            0x00007f61ff24f1fb:   prefetchw 0xd8(%rdi)
   0.14%            0x00007f61ff24f202:   movq   $0x1,(%rdi)
   0.10%            0x00007f61ff24f209:   movl   $0xe8d8,0x8(%rdi)            ;   {metadata(&apos;java/lang/String&apos;)}
   0.29%            0x00007f61ff24f210:   movl   $0x0,0xc(%rdi)
   0.09%            0x00007f61ff24f217:   movq   $0x0,0x10(%rdi)
   0.24%            0x00007f61ff24f21f:   shr    $0x3,%r10
   0.00%            0x00007f61ff24f223:   mov    %r10d,0x14(%rdi)             ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.StringLatin1::newString@7 (line 752)
                                                                              ; - java.lang.String::substring@41 (line 2835)
                                                                              ; - java.lang.String::subSequence@3 (line 2868)
                                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
   0.12%            0x00007f61ff24f227:   mov    0x18(%rsp),%rsi
   0.02%            0x00007f61ff24f22c:   mov    0x14(%rsi),%edx              ; ImmutableOopMap {rdx=NarrowOop rsi=Oop rdi=Oop [24]=Oop [56]=Oop [64]=Oop }
                                                                              ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) java.lang.String::subSequence@6 (line 2868)
                                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
   0.11%            0x00007f61ff24f22f:   mov    0xc(,%rdx,8),%r10d           ; implicit exception: dispatches to 0x00007f61ff250936
   0.60%            0x00007f61ff24f237:   incl   0xc(%rsi)                    ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.ArrayList::add@7 (line 495)
                                                                              ; - java.util.regex.Pattern::split@109 (line 1413)
   0.04%            0x00007f61ff24f23a:   mov    0x10(%rsi),%r11d             ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.ArrayList::add@17 (line 496)
                                                                              ; - java.util.regex.Pattern::split@109 (line 1413)
   0.15%            0x00007f61ff24f23e:   xchg   %ax,%ax
   0.01%            0x00007f61ff24f240:   cmp    %r10d,%r11d
                    0x00007f61ff24f243:   je     0x00007f61ff24f5a5           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.ArrayList::add@3 (line 482)
                                                                              ; - java.util.ArrayList::add@20 (line 496)
                                                                              ; - java.util.regex.Pattern::split@109 (line 1413)
   0.01%            0x00007f61ff24f249:   shl    $0x3,%rdx                    ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.ArrayList::add@13 (line 496)
                                                                              ; - java.util.regex.Pattern::split@109 (line 1413)
   0.04%            0x00007f61ff24f24d:   mov    %rdx,%r10
   0.12%            0x00007f61ff24f250:   mov    0x40(%rsp),%rdx              ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.ArrayList::add@11 (line 484)
                                                                              ; - java.util.ArrayList::add@20 (line 496)
                                                                              ; - java.util.regex.Pattern::split@109 (line 1413)
   0.02%            0x00007f61ff24f255:   cmpl   $0x0,0x1c(%rdx)
   0.02%            0x00007f61ff24f259:   jl     0x00007f61ff25074e           ; ImmutableOopMap {rdx=Oop rsi=Oop rdi=Oop r10=Oop [24]=Oop [56]=Oop [64]=Oop }
                                                                              ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) java.util.ArrayList::add@11 (line 484)
                                                                              ; - java.util.ArrayList::add@20 (line 496)
                                                                              ; - java.util.regex.Pattern::split@109 (line 1413)
   0.03%            0x00007f61ff24f25f:   mov    0xc(%r10),%r8d               ; implicit exception: dispatches to 0x00007f61ff250959
   0.15%            0x00007f61ff24f263:   mov    0x8(%r10),%r9d
   0.00%            0x00007f61ff24f267:   cmp    %r11d,%r8d
                    0x00007f61ff24f26a:   jbe    0x00007f61ff250508
   0.00%            0x00007f61ff24f270:   mov    0x68(%rsp),%r8
   0.04%            0x00007f61ff24f275:   movabs $0x7f6183000000,%rcx
   0.15%            0x00007f61ff24f27f:   lea    (%rcx,%r9,1),%r9
                    0x00007f61ff24f283:   mov    0xd0(%r9),%r9
   0.45%            0x00007f61ff24f28a:   mov    0x14(%r9),%ecx
   0.75%            0x00007f61ff24f28e:   movslq %ecx,%rbx
   0.13%            0x00007f61ff24f291:   cmp    (%r8,%rbx,1),%r9
                    0x00007f61ff24f295:   je     0x00007f61ff24f305
                    0x00007f61ff24f29b:   nopl   0x0(%rax,%rax,1)
                    0x00007f61ff24f2a0:   cmp    $0x20,%ecx
                    0x00007f61ff24f2a3:   jne    0x00007f61ff25034d
                    0x00007f61ff24f2a9:   cmp    %r9,%r8
                    0x00007f61ff24f2ac:   je     0x00007f61ff24f3b8
                    0x00007f61ff24f2b2:   mov    $0x0,%ecx
                    0x00007f61ff24f2b7:   movabs $0x7f6183626280,%rbx
                    0x00007f61ff24f2c1:   jmp    0x00007f61ff24f2fa
                    0x00007f61ff24f2c6:   data16 data16 nopw 0x0(%rax,%rax,1)
....................................................................................................
  12.90%  <total for region 3>

....[Hottest Regions]...............................................................................
  43.86%      jvmci, level 4  java.util.regex.Pattern$BmpCharProperty::match, version 2, compile id 1010 
  29.48%      jvmci, level 4  java.util.regex.Pattern$Start::match, version 3, compile id 1016 
  12.90%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1038 
   3.98%      jvmci, level 4  java.util.regex.Pattern$Start::match, version 3, compile id 1016 
   1.60%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.40%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1038 
   0.88%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1038 
   0.85%        runtime stub  StubRoutines::checkcast_arraycopy 
   0.55%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.49%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1038 
   0.35%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1038 
   0.32%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.31%              kernel  [unknown] 
   0.24%      jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1039 
   0.13%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   2.31%  <...other 532 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  43.86%      jvmci, level 4  java.util.regex.Pattern$BmpCharProperty::match, version 2, compile id 1010 
  33.46%      jvmci, level 4  java.util.regex.Pattern$Start::match, version 3, compile id 1016 
  16.18%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1038 
   2.15%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.98%              kernel  [unknown] 
   0.86%        runtime stub  StubRoutines::checkcast_arraycopy 
   0.36%      jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1039 
   0.34%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.10%                      <unknown> 
   0.04%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.04%          ld-2.31.so  __tls_get_addr 
   0.03%           libjvm.so  G1BarrierSet::invalidate 
   0.03%           libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.03%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  fileStream::write 
   0.45%  <...other 144 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.87%      jvmci, level 4
   3.35%        runtime stub
   1.98%              kernel
   0.41%           libjvm.so
   0.15%        libc-2.31.so
   0.10%                    
   0.05%  libpthread-2.31.so
   0.04%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.02%              [vdso]
   0.00%    perf-2130698.map
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.alloc.rate":
  289.660 ±(99.9%) 6.329 MB/sec [Average]
  (min, avg, max) = (287.774, 289.660, 290.971), stdev = 1.644
  CI (99.9%): [283.331, 295.989] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.alloc.rate.norm":
  143088.326 ±(99.9%) 0.008 B/op [Average]
  (min, avg, max) = (143088.324, 143088.326, 143088.329), stdev = 0.002
  CI (99.9%): [143088.318, 143088.334] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.count":
  6.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (1.000, 1.200, 2.000), stdev = 0.447
  CI (99.9%): [6.000, 6.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.time":
  21.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (3.000, 4.200, 6.000), stdev = 1.095
  CI (99.9%): [21.000, 21.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = __)

# Run progress: 25.00% complete, ETA 00:05:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 189.511 us/op
# Warmup Iteration   2: 167.011 us/op
# Warmup Iteration   3: 166.626 us/op
# Warmup Iteration   4: 166.395 us/op
# Warmup Iteration   5: 166.732 us/op
Iteration   1: 167.122 us/op
                 gc.alloc.rate:      816.509 MB/sec
                 gc.alloc.rate.norm: 143088.116 B/op
                 gc.count:           3.000 counts
                 gc.time:            7.000 ms

Iteration   2: 166.052 us/op
                 gc.alloc.rate:      821.770 MB/sec
                 gc.alloc.rate.norm: 143088.115 B/op
                 gc.count:           3.000 counts
                 gc.time:            6.000 ms

Iteration   3: 166.911 us/op
                 gc.alloc.rate:      817.537 MB/sec
                 gc.alloc.rate.norm: 143088.115 B/op
                 gc.count:           4.000 counts
                 gc.time:            8.000 ms

Iteration   4: 166.911 us/op
                 gc.alloc.rate:      817.540 MB/sec
                 gc.alloc.rate.norm: 143088.115 B/op
                 gc.count:           3.000 counts
                 gc.time:            6.000 ms

Iteration   5: 167.564 us/op
                 gc.alloc.rate:      814.342 MB/sec
                 gc.alloc.rate.norm: 143088.116 B/op
                 gc.count:           3.000 counts
                 gc.time:            6.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split":
  166.912 ±(99.9%) 2.118 us/op [Average]
  (min, avg, max) = (166.052, 166.912, 167.564), stdev = 0.550
  CI (99.9%): [164.795, 169.030] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:asm":
PrintAssembly processed: 254882 total address lines.
Perf output processed (skipped 61.003 seconds):
 Column 1: cycles (51154 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.regex.Pattern::split, version 4, compile id 1059 

                                                                        ; - java.util.regex.Pattern::split@115 (line 1414)
              0x00007f25ab24dbe5:   movl   $0x1,0x64(%rsp)
              0x00007f25ab24dbed:   mov    %esi,0x60(%rsp)
              0x00007f25ab24dbf1:   mov    %r10d,%esi
              0x00007f25ab24dbf4:   mov    0x60(%rsp),%r10d
              0x00007f25ab24dbf9:   jmp    0x00007f25ab24df6f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@33 (line 1405)
              0x00007f25ab24dbfe:   xchg   %ax,%ax                      ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@10 (line 745)
                                                                        ; - java.util.regex.Pattern::split@35 (line 1405)
   0.45%      0x00007f25ab24dc00:   cmp    0xc(%rbx),%r10d
              0x00007f25ab24dc04:   jl     0x00007f25ab24f3e1           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@21 (line 749)
                                                                        ; - java.util.regex.Pattern::split@35 (line 1405)
              0x00007f25ab24dc0a:   cmp    0x10(%rbx),%r10d
              0x00007f25ab24dc0e:   jg     0x00007f25ab24f2a1           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@34 (line 753)
                                                                        ; - java.util.regex.Pattern::split@35 (line 1405)
              0x00007f25ab24dc14:   mov    %rbx,%rsi
              0x00007f25ab24dc17:   mov    %r10d,%edx                   ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@65 (line 758)
                                                                        ; - java.util.regex.Pattern::split@35 (line 1405)
   0.43%      0x00007f25ab24dc1a:   nop                                 ;   {no_reloc}
   0.00%      0x00007f25ab24dc1b:   call   0x00007f25ab240e40           ; ImmutableOopMap {[32]=Oop [72]=Oop [80]=Oop }
                                                                        ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@65 (line 758)
                                                                        ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                        ;   {optimized virtual_call}
   0.07%      0x00007f25ab24dc20:   nopl   0x7000d10(%rax,%rax,1)       ;   {other}
   0.30%      0x00007f25ab24dc28:   test   %eax,%eax
              0x00007f25ab24dc2a:   je     0x00007f25ab24e277           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@38 (line 1405)
   0.04%      0x00007f25ab24dc30:   mov    0x60(%rsp),%r10d
   0.67%      0x00007f25ab24dc35:   test   %r10d,%r10d
              0x00007f25ab24dc38:   je     0x00007f25ab24e206           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@56 (line 1407)
   0.44%      0x00007f25ab24dc3e:   xchg   %ax,%ax
              0x00007f25ab24dc40:   test   %r10d,%r10d
              0x00007f25ab24dc43:   jl     0x00007f25ab24f514           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.util.Preconditions::checkFromToIndex@1 (line 348)
                                                                        ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                        ; - java.lang.String::substring@8 (line 2830)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.34%      0x00007f25ab24dc49:   mov    0x50(%rsp),%rsi              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@85 (line 1412)
   0.01%      0x00007f25ab24dc4e:   mov    0x1c(%rsi),%r11d             ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::hasMatch@1 (line 1850)
                                                                        ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                        ; - java.util.regex.Matcher::start@1 (line 466)
                                                                        ; - java.util.regex.Pattern::split@90 (line 1412)
   1.40%      0x00007f25ab24dc52:   test   %r11d,%r11d
              0x00007f25ab24dc55:   jl     0x00007f25ab24f707           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::hasMatch@4 (line 1850)
                                                                        ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                        ; - java.util.regex.Matcher::start@1 (line 466)
                                                                        ; - java.util.regex.Pattern::split@90 (line 1412)
   0.44%      0x00007f25ab24dc5b:   nopl   0x0(%rax,%rax,1)
   0.01%      0x00007f25ab24dc60:   cmp    %r11d,%r10d
              0x00007f25ab24dc63:   jg     0x00007f25ab24f221           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.util.Preconditions::checkFromToIndex@6 (line 348)
                                                                        ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                        ; - java.lang.String::substring@8 (line 2830)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.41%      0x00007f25ab24dc69:   mov    0x48(%rsp),%rdx
   0.05%      0x00007f25ab24dc6e:   mov    0x14(%rdx),%r8d              ; ImmutableOopMap {rdx=Oop rsi=Oop r8=NarrowOop [32]=Oop [72]=Oop [80]=Oop }
                                                                        ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.regex.Pattern::split@85 (line 1412)
   0.53%      0x00007f25ab24dc72:   mov    0xc(,%r8,8),%r9d             ; implicit exception: dispatches to 0x00007f25ab24f94d
   2.14%      0x00007f25ab24dc7a:   movsbl 0x10(%rdx),%ebx              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::coder@7 (line 4809)
                                                                        ; - java.lang.String::length@6 (line 1519)
                                                                        ; - java.lang.String::substring@1 (line 2829)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.01%      0x00007f25ab24dc7e:   mov    %ebx,%ecx
   0.01%      0x00007f25ab24dc80:   mov    %r9d,%edi
              0x00007f25ab24dc83:   shr    %cl,%edi                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::length@9 (line 1519)
                                                                        ; - java.lang.String::substring@1 (line 2829)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.93%      0x00007f25ab24dc85:   cmp    %edi,%r11d
              0x00007f25ab24dc88:   jg     0x00007f25ab24f575           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.util.Preconditions::checkFromToIndex@11 (line 348)
                                                                        ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                        ; - java.lang.String::substring@8 (line 2830)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.02%      0x00007f25ab24dc8e:   test   %r10d,%r10d
              0x00007f25ab24dc91:   je     0x00007f25ab24e0ce           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::substring@12 (line 2831)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.00%      0x00007f25ab24dc97:   test   %ebx,%ebx
              0x00007f25ab24dc99:   jne    0x00007f25ab24f1f0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::isLatin1@10 (line 4817)
                                                                        ; - java.lang.String::substring@28 (line 2835)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
              0x00007f25ab24dc9f:   nop
   0.43%      0x00007f25ab24dca0:   cmp    %r10d,%r11d
              0x00007f25ab24dca3:   je     0x00007f25ab24e265           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::newString@1 (line 749)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.02%      0x00007f25ab24dca9:   shl    $0x3,%r8                     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::length@1 (line 1519)
                                                                        ; - java.lang.String::substring@1 (line 2829)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.00%      0x00007f25ab24dcad:   test   %r10d,%r10d
              0x00007f25ab24dcb0:   je     0x00007f25ab24df9d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@1 (line 3853)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.01%      0x00007f25ab24dcb6:   mov    0x1b8(%r15),%rbx             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRangeByte@10 (line 3863)
                                                                        ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.43%      0x00007f25ab24dcbd:   mov    %r11d,%ebp
   0.02%      0x00007f25ab24dcc0:   sub    %r10d,%ebp                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::substring@24 (line 2834)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
              0x00007f25ab24dcc3:   mov    %ebp,%edi
   0.00%      0x00007f25ab24dcc5:   lea    0x17(%rdi),%rdi
   0.42%      0x00007f25ab24dcc9:   and    $0xfffffffffffffff8,%rdi
   0.02%      0x00007f25ab24dccd:   mov    %rdi,%rcx
              0x00007f25ab24dcd0:   add    %rbx,%rcx
   0.00%      0x00007f25ab24dcd3:   cmp    0x1c8(%r15),%rcx
              0x00007f25ab24dcda:   ja     0x00007f25ab24e119
   0.45%      0x00007f25ab24dce0:   mov    %rcx,0x1b8(%r15)
   0.02%      0x00007f25ab24dce7:   prefetchw 0xc0(%rdi,%rbx,1)
   0.01%      0x00007f25ab24dcef:   prefetchw 0x100(%rdi,%rbx,1)
   0.00%      0x00007f25ab24dcf7:   prefetchw 0x140(%rdi,%rbx,1)
   0.43%      0x00007f25ab24dcff:   prefetchw 0x180(%rdi,%rbx,1)
   0.18%      0x00007f25ab24dd07:   movq   $0x1,(%rbx)
   0.11%      0x00007f25ab24dd0e:   movl   $0x22c0,0x8(%rbx)            ;   {metadata({type array byte})}
              0x00007f25ab24dd15:   mov    %ebp,0xc(%rbx)
   0.39%      0x00007f25ab24dd18:   lea    -0x10(%rdi),%rcx
   0.02%      0x00007f25ab24dd1c:   nopl   0x0(%rax)
   0.06%      0x00007f25ab24dd20:   cmp    $0x800,%rcx
              0x00007f25ab24dd27:   jae    0x00007f25ab24e145
   0.00%      0x00007f25ab24dd2d:   mov    $0x10,%rcx
   0.40%  ╭   0x00007f25ab24dd34:   jmp    0x00007f25ab24dd4c
          │   0x00007f25ab24dd39:   nopl   0x0(%rax)
   0.53%  │↗  0x00007f25ab24dd40:   movq   $0x0,(%rbx,%rcx,1)
   0.19%  ││  0x00007f25ab24dd48:   lea    0x8(%rcx),%rcx
   0.04%  ↘│  0x00007f25ab24dd4c:   cmp    %rcx,%rdi
           ╰  0x00007f25ab24dd4f:   ja     0x00007f25ab24dd40           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRangeByte@10 (line 3863)
                                                                        ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
              0x00007f25ab24dd51:   mov    %r9d,%edi
   0.38%      0x00007f25ab24dd54:   sub    %r10d,%edi                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRangeByte@22 (line 3864)
                                                                        ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.09%      0x00007f25ab24dd57:   cmp    %ebp,%edi
   0.01%      0x00007f25ab24dd59:   cmovg  %ebp,%edi                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.Math::min@2 (line 2115)
                                                                        ; - java.util.Arrays::copyOfRangeByte@24 (line 3865)
                                                                        ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
              0x00007f25ab24dd5c:   nopl   0x0(%rax)
   0.35%      0x00007f25ab24dd60:   test   %edi,%edi
              0x00007f25ab24dd62:   jl     0x00007f25ab24f0f7
   0.09%      0x00007f25ab24dd68:   sub    %edi,%r9d
   0.00%      0x00007f25ab24dd6b:   cmp    %r9d,%r10d
              0x00007f25ab24dd6e:   jg     0x00007f25ab24f0f7
              0x00007f25ab24dd74:   cmp    %ebp,%edi
              0x00007f25ab24dd76:   jg     0x00007f25ab24f0f7
   0.32%      0x00007f25ab24dd7c:   mov    %rbx,%r11
   0.08%      0x00007f25ab24dd7f:   mov    %edi,%r9d
   0.01%      0x00007f25ab24dd82:   lea    0x10(%r8,%r10,1),%rdi
              0x00007f25ab24dd87:   lea    0x10(%r11),%rsi
   0.41%      0x00007f25ab24dd8b:   mov    %r9,%rdx                     ;* unwind (locked if synchronized)
                                                                        ; - java.lang.System::arraycopy@-3
                                                                        ; - java.util.Arrays::copyOfRangeByte@27 (line 3864)
                                                                        ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.09%      0x00007f25ab24dd8e:   mov    %rbx,0x18(%rsp)
   0.03%      0x00007f25ab24dd93:   call   Stub::jbyte_arraycopy        ;   {runtime_call StubRoutines (final stubs)}
   0.47%      0x00007f25ab24dd98:   nop
   0.03%      0x00007f25ab24dd99:   mov    0x18(%rsp),%rbx
   0.90%      0x00007f25ab24dd9e:   mov    0x1b8(%r15),%rdi
   0.06%      0x00007f25ab24dda5:   lea    0x18(%rdi),%rsi
   0.02%      0x00007f25ab24dda9:   cmp    0x1c8(%r15),%rsi
              0x00007f25ab24ddb0:   ja     0x00007f25ab24e0fd
   0.59%      0x00007f25ab24ddb6:   mov    %rsi,0x1b8(%r15)
   0.29%      0x00007f25ab24ddbd:   prefetchw 0xd8(%rdi)
   0.61%      0x00007f25ab24ddc4:   movq   $0x1,(%rdi)
   0.42%      0x00007f25ab24ddcb:   movl   $0xe8d8,0x8(%rdi)            ;   {metadata(&apos;java/lang/String&apos;)}
   0.49%      0x00007f25ab24ddd2:   movl   $0x0,0xc(%rdi)
   1.44%      0x00007f25ab24ddd9:   movq   $0x0,0x10(%rdi)
   0.08%      0x00007f25ab24dde1:   shr    $0x3,%rbx
              0x00007f25ab24dde5:   mov    %ebx,0x14(%rdi)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::newString@7 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.03%      0x00007f25ab24dde8:   mov    0x20(%rsp),%r10
   0.42%      0x00007f25ab24dded:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop rdi=Oop r10=Oop [32]=Oop [72]=Oop [80]=Oop }
                                                                        ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.lang.String::subSequence@6 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.10%      0x00007f25ab24ddf1:   mov    0xc(,%rsi,8),%edx            ; implicit exception: dispatches to 0x00007f25ab24f970
   1.69%      0x00007f25ab24ddf8:   incl   0xc(%r10)                    ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@7 (line 495)
                                                                        ; - java.util.regex.Pattern::split@109 (line 1413)
   0.05%      0x00007f25ab24ddfc:   mov    0x10(%r10),%r11d             ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@17 (line 496)
                                                                        ; - java.util.regex.Pattern::split@109 (line 1413)
   0.44%      0x00007f25ab24de00:   cmp    %edx,%r11d
              0x00007f25ab24de03:   je     0x00007f25ab24e1b3           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@3 (line 482)
                                                                        ; - java.util.ArrayList::add@20 (line 496)
                                                                        ; - java.util.regex.Pattern::split@109 (line 1413)
   0.01%      0x00007f25ab24de09:   shl    $0x3,%rsi                    ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@13 (line 496)
                                                                        ; - java.util.regex.Pattern::split@109 (line 1413)
   0.00%      0x00007f25ab24de0d:   mov    %rsi,%r8                     ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@11 (line 484)
                                                                        ; - java.util.ArrayList::add@20 (line 496)
                                                                        ; - java.util.regex.Pattern::split@109 (line 1413)
   0.02%      0x00007f25ab24de10:   mov    0x50(%rsp),%rsi
   0.44%      0x00007f25ab24de15:   mov    0x1c(%rsi),%r9d              ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::hasMatch@1 (line 1850)
                                                                        ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                        ; - java.util.regex.Matcher::end@1 (line 535)
                                                                        ; - java.util.regex.Pattern::split@115 (line 1414)
   0.03%      0x00007f25ab24de19:   nopl   0x0(%rax)
   0.00%      0x00007f25ab24de20:   test   %r9d,%r9d
              0x00007f25ab24de23:   jl     0x00007f25ab24f6de           ; ImmutableOopMap {rsi=Oop rdi=Oop r8=Oop r10=Oop [32]=Oop [72]=Oop [80]=Oop }
                                                                        ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.ArrayList::add@11 (line 484)
                                                                        ; - java.util.ArrayList::add@20 (line 496)
                                                                        ; - java.util.regex.Pattern::split@109 (line 1413)
   0.04%      0x00007f25ab24de29:   mov    0xc(%r8),%edx                ; implicit exception: dispatches to 0x00007f25ab24f993
   0.40%      0x00007f25ab24de2d:   mov    0x8(%r8),%ecx
   0.01%      0x00007f25ab24de31:   cmp    %r11d,%edx
              0x00007f25ab24de34:   jbe    0x00007f25ab24f477
   0.00%      0x00007f25ab24de3a:   mov    0x70(%rsp),%rax
   0.03%      0x00007f25ab24de3f:   movabs $0x7f252f000000,%rdx
   0.42%      0x00007f25ab24de49:   lea    (%rdx,%rcx,1),%rcx
              0x00007f25ab24de4d:   mov    0xd0(%rcx),%rdx
   1.34%      0x00007f25ab24de54:   mov    0x14(%rdx),%ecx
   1.99%      0x00007f25ab24de57:   movslq %ecx,%rbx
   0.45%      0x00007f25ab24de5a:   nopw   0x0(%rax,%rax,1)
              0x00007f25ab24de60:   cmp    (%rax,%rbx,1),%rdx
              0x00007f25ab24de64:   je     0x00007f25ab24dec5
              0x00007f25ab24de6a:   cmp    $0x20,%ecx
              0x00007f25ab24de6d:   jne    0x00007f25ab24f155
              0x00007f25ab24de73:   cmp    %rdx,%rax
              0x00007f25ab24de76:   je     0x00007f25ab24df85
              0x00007f25ab24de7c:   mov    $0x0,%ecx
              0x00007f25ab24de81:   movabs $0x7f252f626280,%rbp
              0x00007f25ab24de8b:   jmp    0x00007f25ab24debb
              0x00007f25ab24de90:   data16 data16 nopw 0x0(%rax,%rax,1)
....................................................................................................
  28.08%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.regex.Matcher::search, version 4, compile id 1031 

   0.00%          0x00007f25ab240eac:   dec    %eax
   0.47%          0x00007f25ab240eae:   movslq %eax,%rax
                  0x00007f25ab240eb1:   mov    %r11d,%r8d
   0.00%          0x00007f25ab240eb4:   cmp    %rax,%r8
          ╭       0x00007f25ab240eb7:   ja     0x00007f25ab240eca
          │       0x00007f25ab240ebd:   data16 xchg %ax,%ax
          │       0x00007f25ab240ec0:   cmp    $0x2,%r11d
          │       0x00007f25ab240ec4:   jae    0x00007f25ab241626
          ↘       0x00007f25ab240eca:   movl   $0xffffffff,0x10(,%r10,8)    ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Matcher::search@61 (line 1732)
   0.40%          0x00007f25ab240ed6:   cmp    $0x3,%r11d
   0.00%          0x00007f25ab240eda:   mov    $0x2,%eax
                  0x00007f25ab240edf:   cmovb  %r11d,%eax
                  0x00007f25ab240ee3:   mov    %r10d,%r8d
   0.48%          0x00007f25ab240ee6:   shl    $0x3,%r8                     ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Matcher::search@48 (line 1731)
   0.01%          0x00007f25ab240eea:   mov    $0x1,%r9d
           ╭      0x00007f25ab240ef0:   jmp    0x00007f25ab240f0c           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - java.util.regex.Matcher::search@46 (line 1731)
           │      0x00007f25ab240ef5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - java.util.regex.Matcher::search@52 (line 1731)
   0.01%   │↗     0x00007f25ab240f00:   movl   $0xffffffff,0x10(%r8,%r9,4)  ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                               ; - java.util.regex.Matcher::search@61 (line 1732)
           ││     0x00007f25ab240f09:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││                                                               ; - java.util.regex.Matcher::search@62 (line 1731)
           ↘│     0x00007f25ab240f0c:   cmp    %r9d,%eax
            │     0x00007f25ab240f0f:   jle    0x00007f25ab241296
   0.41%    ╰     0x00007f25ab240f15:   jmp    0x00007f25ab240f00           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Matcher::search@52 (line 1731)
                  0x00007f25ab240f17:   mov    0x3c(%rsi),%eax              ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Matcher::search@118 (line 1738)
                  0x00007f25ab240f1a:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=NarrowOop rsi=Oop [28]=NarrowOop [32]=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.regex.Matcher::search@68 (line 1733)
   0.34%          0x00007f25ab240f20:   cmpl   $0xe8d8,0x8(,%rax,8)         ; implicit exception: dispatches to 0x00007f25ab241781
                                                                            ;   {metadata(&apos;java/lang/String&apos;)}
   0.23%          0x00007f25ab240f2b:   jne    0x00007f25ab2415b0           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
                                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.01%          0x00007f25ab240f31:   cmpb   $0x0,0x10(,%rax,8)
   0.41%          0x00007f25ab240f39:   jne    0x00007f25ab2414d4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::isLatin1@10 (line 4817)
                                                                            ; - java.lang.String::charAt@1 (line 1554)
                                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
                                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.02%          0x00007f25ab240f3f:   mov    0x14(,%rax,8),%r8d           ; ImmutableOopMap {rax=NarrowOop rsi=Oop r8=NarrowOop [28]=NarrowOop [32]=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.regex.Matcher::search@68 (line 1733)
   0.01%          0x00007f25ab240f47:   mov    0xc(,%r8,8),%r9d             ; implicit exception: dispatches to 0x00007f25ab2417a4
   0.45%          0x00007f25ab240f4f:   mov    0x44(%rsi),%ecx              ; ImmutableOopMap {rax=NarrowOop rsi=Oop r8=NarrowOop [28]=NarrowOop [32]=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.regex.Matcher::search@68 (line 1733)
   0.14%          0x00007f25ab240f52:   cmpl   $0x0,0xc(,%rcx,8)            ; implicit exception: dispatches to 0x00007f25ab2417c7
   0.00%          0x00007f25ab240f5a:   jne    0x00007f25ab241614           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Matcher::search@76 (line 1733)
   0.31%          0x00007f25ab240f60:   mov    0x34(%rsi),%ecx              ; ImmutableOopMap {rax=NarrowOop rsi=Oop r8=NarrowOop [28]=NarrowOop [32]=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.regex.Matcher::search@68 (line 1733)
   0.13%          0x00007f25ab240f63:   mov    0x34(,%rcx,8),%ecx           ; implicit exception: dispatches to 0x00007f25ab2417ed
                                                                            ; ImmutableOopMap {rax=NarrowOop rcx=NarrowOop rsi=Oop r8=NarrowOop [28]=NarrowOop [32]=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.regex.Matcher::search@68 (line 1733)
   0.01%          0x00007f25ab240f6a:   cmpl   $0x356d60,0x8(,%rcx,8)       ; implicit exception: dispatches to 0x00007f25ab241810
                                                                            ;   {metadata(&apos;java/util/regex/Pattern$Start&apos;)}
   0.49%          0x00007f25ab240f75:   jne    0x00007f25ab241697           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.17%          0x00007f25ab240f7b:   mov    0x10(%rsi),%ebx              ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$Start::match@2 (line 3781)
                                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.01%          0x00007f25ab240f7e:   mov    %ebx,%edi
   0.01%          0x00007f25ab240f80:   sub    0x10(,%rcx,8),%edi           ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$Start::match@9 (line 3781)
                                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.33%          0x00007f25ab240f87:   mov    %edi,0x3c(%rsp)
   0.28%          0x00007f25ab240f8b:   cmp    %edi,%edx
                  0x00007f25ab240f8d:   jg     0x00007f25ab2415f2           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$Start::match@10 (line 3781)
                                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                  0x00007f25ab240f93:   mov    0xc(,%rcx,8),%ebp            ; ImmutableOopMap {rax=NarrowOop rcx=NarrowOop rbp=NarrowOop rsi=Oop r8=NarrowOop [28]=NarrowOop [32]=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.regex.Matcher::search@68 (line 1733)
   0.00%          0x00007f25ab240f9a:   mov    0x8(,%rbp,8),%r13d           ; implicit exception: dispatches to 0x00007f25ab241833
   0.50%          0x00007f25ab240fa2:   movl   $0x0,0x18(%rsi)              ;*putfield acceptMode {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Matcher::search@105 (line 1737)
   0.04%          0x00007f25ab240fa9:   movabs $0x7f252f000000,%r14
                  0x00007f25ab240fb3:   lea    (%r14,%r13,1),%r13
   0.26%          0x00007f25ab240fb7:   mov    %r13,0x30(%rsp)
   0.77%          0x00007f25ab240fbc:   mov    %ebp,%r14d
                  0x00007f25ab240fbf:   shl    $0x3,%r14                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$Start::match@38 (line 3787)
                                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                  0x00007f25ab240fc3:   mov    %r14,0x10(%rsp)
   0.00%          0x00007f25ab240fc8:   shl    $0x3,%rcx                    ;*getfield root {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Matcher::search@112 (line 1738)
   0.49%          0x00007f25ab240fcc:   mov    %rcx,0x8(%rsp)
                  0x00007f25ab240fd1:   shl    $0x3,%rax                    ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Matcher::search@118 (line 1738)
   0.00%          0x00007f25ab240fd5:   mov    %rax,(%rsp)
   0.00%          0x00007f25ab240fd9:   mov    %edx,%ecx
   0.48%          0x00007f25ab240fdb:   nopl   0x0(%rax,%rax,1)             ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$Start::match@31 (line 3786)
                                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.81%       ↗  0x00007f25ab240fe0:   cmp    %edi,%ecx
               │  0x00007f25ab240fe2:   jg     0x00007f25ab241472           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Start::match@34 (line 3786)
               │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.69%       │  0x00007f25ab240fe8:   mov    %ecx,%eax
   0.81%       │  0x00007f25ab240fea:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Start::match@77 (line 3786)
               │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.81%       │  0x00007f25ab240fec:   mov    %eax,0x2c(%rsp)
   0.73%       │  0x00007f25ab240ff0:   cmp    -0x1f7(%rip),%r13        # 0x00007f25ab240e00
               │                                                            ;   {section_word}
   0.64%     ╭ │  0x00007f25ab240ff7:   je     0x00007f25ab24100f
             │ │  0x00007f25ab240ffd:   cmp    -0x1fc(%rip),%r13        # 0x00007f25ab240e08
             │ │                                                            ;   {section_word}
             │╭│  0x00007f25ab241004:   je     0x00007f25ab24105c
             │││  0x00007f25ab24100a:   jmp    0x00007f25ab2414bc
   0.82%     ↘││  0x00007f25ab24100f:   mov    0x10(,%rbp,8),%r14d          ; ImmutableOopMap {rbp=NarrowOop r8=NarrowOop r14=NarrowOop [0]=Oop [8]=Oop [16]=Oop [28]=NarrowOop [32]=Oop }
              ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
              ││                                                            ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3786)
              ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.86%      ││  0x00007f25ab241017:   mov    0xc(,%r14,8),%r10d           ; implicit exception: dispatches to 0x00007f25ab241856
   0.95%      ││  0x00007f25ab24101f:   nop
   0.62%      ││  0x00007f25ab241020:   test   %r10d,%r10d
              ││  0x00007f25ab241023:   je     0x00007f25ab241365           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
              ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
              ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.81%      ││  0x00007f25ab241029:   cmp    %ecx,%ebx
              ││  0x00007f25ab24102b:   jle    0x00007f25ab241486           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - java.util.regex.Pattern$Slice::match@29 (line 4261)
              ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
              ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.84%      ││  0x00007f25ab241031:   cmp    %ecx,%r9d
              ││  0x00007f25ab241034:   jbe    0x00007f25ab2416c5           ;* unwind (locked if synchronized)
              ││                                                            ; - jdk.internal.util.Preconditions::checkIndex@-3
              ││                                                            ; - java.lang.String::checkIndex@5 (line 4828)
              ││                                                            ; - java.lang.StringLatin1::charAt@3 (line 46)
              ││                                                            ; - java.lang.String::charAt@12 (line 1555)
              ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
              ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
              ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.84%      ││  0x00007f25ab24103a:   movzbl 0x10(%rcx,%r8,8),%edx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - java.lang.StringLatin1::charAt@8 (line 47)
              ││                                                            ; - java.lang.String::charAt@12 (line 1555)
              ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
              ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
              ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.73%      ││  0x00007f25ab241040:   cmp    0x10(,%r14,8),%edx
              ││  0x00007f25ab241048:   je     0x00007f25ab241109           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
              ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
              ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   2.36%      ││  0x00007f25ab24104e:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rbp=NarrowOop r8=NarrowOop [0]=Oop [8]=Oop [16]=Oop [28]=NarrowOop [32]=Oop }
              ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
              ││                                                            ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3786)
              ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   2.10%      ││  0x00007f25ab241055:   test   %eax,(%r10)                  ;   {poll}
   1.74%      ││  0x00007f25ab241058:   mov    %eax,%ecx
   0.46%      │╰  0x00007f25ab24105a:   jmp    0x00007f25ab240fe0           ;*iconst_0 {reexecute=0 rethrow=0 return_oop=0}
              │                                                             ; - java.util.regex.Pattern$Slice::match@57 (line 4266)
              │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
              │                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
              ↘   0x00007f25ab24105c:   nopl   0x0(%rax)
                  0x00007f25ab241060:   cmp    %ecx,%ebx
                  0x00007f25ab241062:   jle    0x00007f25ab241289           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4502)
                                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                  0x00007f25ab241068:   cmp    %ecx,%r9d
....................................................................................................
  24.84%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.regex.Matcher::search, version 4, compile id 1031 

                0x00007f25ab241284:   jmp    0x00007f25ab2410de           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@54 (line 4508)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
                0x00007f25ab241289:   mov    $0x0,%r11d
                0x00007f25ab24128f:   mov    %ecx,%edi
                0x00007f25ab241291:   jmp    0x00007f25ab2410d6           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@43 (line 4505)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.46%        0x00007f25ab241296:   lea    -0x10(%r11),%eax
          ╭     0x00007f25ab24129a:   jmp    0x00007f25ab241357
          │     0x00007f25ab24129f:   nop                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Matcher::search@52 (line 1731)
   0.17%  │↗    0x00007f25ab2412a0:   movl   $0xffffffff,0x10(%r8,%r9,4)  ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - java.util.regex.Matcher::search@61 (line 1732)
          ││    0x00007f25ab2412a9:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - java.util.regex.Matcher::search@62 (line 1731)
   0.35%  ││    0x00007f25ab2412ac:   nopl   0x0(%rax)
   0.43%  ││↗   0x00007f25ab2412b0:   cmp    %r9d,%r11d
          │││   0x00007f25ab2412b3:   jle    0x00007f25ab240f17
   0.45%  │╰│   0x00007f25ab2412b9:   jmp    0x00007f25ab2412a0
          │ │   0x00007f25ab2412bb:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - java.util.regex.Matcher::search@52 (line 1731)
   0.44%  │ │↗  0x00007f25ab2412c0:   movl   $0xffffffff,0x10(%r8,%r9,4)
          │ ││  0x00007f25ab2412c9:   movslq %r9d,%rcx
          │ ││  0x00007f25ab2412cc:   movl   $0xffffffff,0x14(%r8,%rcx,4)
   0.00%  │ ││  0x00007f25ab2412d5:   movl   $0xffffffff,0x18(%r8,%rcx,4)
   0.47%  │ ││  0x00007f25ab2412de:   movl   $0xffffffff,0x1c(%r8,%rcx,4)
          │ ││  0x00007f25ab2412e7:   movl   $0xffffffff,0x20(%r8,%rcx,4)
   0.00%  │ ││  0x00007f25ab2412f0:   movl   $0xffffffff,0x24(%r8,%rcx,4)
   0.00%  │ ││  0x00007f25ab2412f9:   movl   $0xffffffff,0x28(%r8,%rcx,4)
   0.48%  │ ││  0x00007f25ab241302:   movl   $0xffffffff,0x2c(%r8,%rcx,4)
          │ ││  0x00007f25ab24130b:   movl   $0xffffffff,0x30(%r8,%rcx,4)
   0.01%  │ ││  0x00007f25ab241314:   movl   $0xffffffff,0x34(%r8,%rcx,4)
   0.02%  │ ││  0x00007f25ab24131d:   movl   $0xffffffff,0x38(%r8,%rcx,4)
   0.40%  │ ││  0x00007f25ab241326:   movl   $0xffffffff,0x3c(%r8,%rcx,4)
   0.01%  │ ││  0x00007f25ab24132f:   movl   $0xffffffff,0x40(%r8,%rcx,4)
   0.02%  │ ││  0x00007f25ab241338:   movl   $0xffffffff,0x44(%r8,%rcx,4)
   0.03%  │ ││  0x00007f25ab241341:   movl   $0xffffffff,0x48(%r8,%rcx,4)
   0.48%  │ ││  0x00007f25ab24134a:   movl   $0xffffffff,0x4c(%r8,%rcx,4) ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Matcher::search@61 (line 1732)
   0.16%  │ ││  0x00007f25ab241353:   lea    0x10(%r9),%r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Matcher::search@62 (line 1731)
   0.51%  ↘ ││  0x00007f25ab241357:   cmp    %r9d,%eax
            ╰│  0x00007f25ab24135a:   jle    0x00007f25ab2412b0
             ╰  0x00007f25ab241360:   jmp    0x00007f25ab2412c0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@52 (line 1731)
                0x00007f25ab241365:   mov    0x20(%rsp),%rsi
   0.74%        0x00007f25ab24136a:   mov    0xc(,%rbp,8),%eax            ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Slice::match@66 (line 4268)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                          ;   {no_reloc}
   0.26%        0x00007f25ab241371:   data16 data16 nopw 0x0(%rax,%rax,1)
                0x00007f25ab24137c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [28]=NarrowOop }
                                                                          ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.regex.Pattern$Slice::match@65 (line 4268)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
                0x00007f25ab241380:   cmpl   $0x35e028,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007f25ab24189c
                                                                          ;   {metadata(&apos;java/util/regex/Pattern$LastNode&apos;)}
   2.44%        0x00007f25ab24138b:   jne    0x00007f25ab241556           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.41%        0x00007f25ab241391:   cmpl   $0x2,0x40(%rsp)
                0x00007f25ab241396:   jb     0x00007f25ab241685           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$LastNode::match@32 (line 3760)
                                                                          ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.09%        0x00007f25ab24139c:   mov    0x1c(%rsp),%r8d
   0.07%        0x00007f25ab2413a1:   mov    0x44(%rsp),%edx
   0.35%        0x00007f25ab2413a5:   add    %ecx,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Slice::match@73 (line 4268)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
                0x00007f25ab2413a8:   mov    %r10d,0x20(%rsi)             ;*putfield last {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$LastNode::match@20 (line 3759)
                                                                          ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.18%        0x00007f25ab2413ac:   mov    %edx,0x10(,%r8,8)            ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$LastNode::match@32 (line 3760)
                                                                          ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   2.46%        0x00007f25ab2413b4:   mov    %r10d,0x14(,%r8,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$LastNode::match@42 (line 3761)
                                                                          ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.31%        0x00007f25ab2413bc:   nopl   0x0(%rax)
                0x00007f25ab2413c0:   cmpl   $0x2,0x40(%rsp)
                0x00007f25ab2413c5:   jb     0x00007f25ab241524           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@64 (line 3789)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.39%        0x00007f25ab2413cb:   mov    %ecx,0x1c(%rsi)              ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@52 (line 3788)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.14%        0x00007f25ab2413ce:   mov    %ecx,0x10(,%r8,8)            ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@64 (line 3789)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.08%        0x00007f25ab2413d6:   mov    %r10d,0x14(,%r8,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@74 (line 3790)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.09%        0x00007f25ab2413de:   mov    $0x1,%r10d
   0.30%        0x00007f25ab2413e4:   test   %r10d,%r10d
                0x00007f25ab2413e7:   je     0x00007f25ab241466           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@126 (line 1739)
   0.08%        0x00007f25ab2413ed:   mov    0x20(%rsi),%eax              ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@136 (line 1741)
   0.05%        0x00007f25ab2413f0:   mov    %eax,0x24(%rsi)              ;*putfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@139 (line 1741)
   0.11%        0x00007f25ab2413f3:   incl   0x2c(%rsi)                   ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@149 (line 1742)
   0.43%        0x00007f25ab2413f6:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@153 (line 1743)
   0.05%        0x00007f25ab2413f9:   mov    0x50(%rsp),%rbp
   0.25%        0x00007f25ab2413fe:   add    $0x58,%rsp
   0.05%        0x00007f25ab241402:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                0x00007f25ab241409:   ja     0x00007f25ab24174a
   0.13%        0x00007f25ab24140f:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@47 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
                0x00007f25ab241410:   mov    0x1c(%rsp),%r8d
                0x00007f25ab241415:   mov    0x44(%rsp),%edx
                0x00007f25ab241419:   mov    0x20(%rsp),%rsi
                0x00007f25ab24141e:   mov    0xc(,%rbp,8),%eax            ; ImmutableOopMap {rsi=Oop r8=NarrowOop [0]=Oop [8]=Oop [16]=Oop }
                                                                          ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.regex.Pattern$BmpCharPropertyGreedy::match@54 (line 4508)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
....................................................................................................
  14.34%  <total for region 3>

....[Hottest Regions]...............................................................................
  28.08%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1059 
  24.84%      jvmci, level 4  java.util.regex.Matcher::search, version 4, compile id 1031 
  14.34%      jvmci, level 4  java.util.regex.Matcher::search, version 4, compile id 1031 
   9.36%      jvmci, level 4  java.util.regex.Matcher::search, version 4, compile id 1031 
   4.68%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.72%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1059 
   3.49%      jvmci, level 4  java.util.regex.Matcher::search, version 4, compile id 1031 
   2.39%        runtime stub  StubRoutines::checkcast_arraycopy 
   1.57%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.41%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1059 
   0.76%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.71%              kernel  [unknown] 
   0.63%      jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1058 
   0.47%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1059 
   0.25%      jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1058 
   0.19%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1059 
   0.14%              kernel  [unknown] 
   0.14%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1059 
   0.13%           libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.10%              kernel  [unknown] 
   2.61%  <...other 468 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.04%      jvmci, level 4  java.util.regex.Matcher::search, version 4, compile id 1031 
  34.15%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1059 
   6.24%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.40%        runtime stub  StubRoutines::checkcast_arraycopy 
   2.21%              kernel  [unknown] 
   1.00%      jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1058 
   0.85%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.14%                      <unknown> 
   0.13%           libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.10%           libjvm.so  G1BarrierSet::invalidate 
   0.09%          ld-2.31.so  __tls_get_addr 
   0.04%      jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1061 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%        libc-2.31.so  __strchrnul_avx2 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.45%  <...other 137 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  87.24%      jvmci, level 4
   9.49%        runtime stub
   2.21%              kernel
   0.60%           libjvm.so
   0.14%        libc-2.31.so
   0.14%                    
   0.10%          ld-2.31.so
   0.04%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%    perf-2130770.map
   0.00%         c1, level 3
   0.00%      libz.so.1.2.11
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.alloc.rate":
  817.540 ±(99.9%) 10.402 MB/sec [Average]
  (min, avg, max) = (814.342, 817.540, 821.770), stdev = 2.701
  CI (99.9%): [807.138, 827.941] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.alloc.rate.norm":
  143088.116 ±(99.9%) 0.002 B/op [Average]
  (min, avg, max) = (143088.115, 143088.116, 143088.116), stdev = 0.001
  CI (99.9%): [143088.114, 143088.117] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.count":
  16.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (3.000, 3.200, 4.000), stdev = 0.447
  CI (99.9%): [16.000, 16.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.time":
  33.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (6.000, 6.600, 8.000), stdev = 0.894
  CI (99.9%): [33.000, 33.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = _)

# Run progress: 50.00% complete, ETA 00:03:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 95.879 us/op
# Warmup Iteration   2: 87.197 us/op
# Warmup Iteration   3: 87.043 us/op
# Warmup Iteration   4: 86.921 us/op
# Warmup Iteration   5: 86.943 us/op
Iteration   1: 86.920 us/op
                 gc.alloc.rate:      1567.625 MB/sec
                 gc.alloc.rate.norm: 142880.060 B/op
                 gc.count:           6.000 counts
                 gc.time:            12.000 ms

Iteration   2: 86.926 us/op
                 gc.alloc.rate:      1567.520 MB/sec
                 gc.alloc.rate.norm: 142880.060 B/op
                 gc.count:           6.000 counts
                 gc.time:            12.000 ms

Iteration   3: 86.947 us/op
                 gc.alloc.rate:      1567.128 MB/sec
                 gc.alloc.rate.norm: 142880.060 B/op
                 gc.count:           7.000 counts
                 gc.time:            13.000 ms

Iteration   4: 86.939 us/op
                 gc.alloc.rate:      1567.284 MB/sec
                 gc.alloc.rate.norm: 142880.060 B/op
                 gc.count:           6.000 counts
                 gc.time:            12.000 ms

Iteration   5: 86.957 us/op
                 gc.alloc.rate:      1566.948 MB/sec
                 gc.alloc.rate.norm: 142880.060 B/op
                 gc.count:           7.000 counts
                 gc.time:            13.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split":
  86.938 ±(99.9%) 0.058 us/op [Average]
  (min, avg, max) = (86.920, 86.938, 86.957), stdev = 0.015
  CI (99.9%): [86.880, 86.996] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:asm":
PrintAssembly processed: 253440 total address lines.
Perf output processed (skipped 61.179 seconds):
 Column 1: cycles (50932 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.lang.String::split, version 4, compile id 1033 

                                                                        ; - java.util.ArrayList::add@20 (line 496)
                                                                        ; - java.lang.String::split@77 (line 3367)
              0x00007f2b13249774:   movl   $0x1,0x10(%r11)              ;*putfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@19 (line 485)
                                                                        ; - java.util.ArrayList::add@20 (line 496)
                                                                        ; - java.lang.String::split@77 (line 3367)
              0x00007f2b1324977c:   mov    0x54(%rsp),%eax
              0x00007f2b13249780:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::split@96 (line 3371)
              0x00007f2b13249782:   movl   $0x1,0x50(%rsp)
   0.00%      0x00007f2b1324978a:   mov    0x74(%rsp),%edx
              0x00007f2b1324978e:   mov    0x38(%rsp),%rsi
              0x00007f2b13249793:   mov    %eax,%r11d
              0x00007f2b13249796:   jmp    0x00007f2b13249aeb           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::split@40 (line 3365)
              0x00007f2b1324979b:   nopl   0x0(%rax,%rax,1)             ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::isLatin1@10 (line 4817)
                                                                        ; - java.lang.String::indexOf@1 (line 2457)
                                                                        ; - java.lang.String::split@44 (line 3365)
   0.88%      0x00007f2b132497a0:   mov    0x14(%rsi),%edi              ; ImmutableOopMap {rsi=Oop rdi=NarrowOop [32]=Oop [56]=Oop }
                                                                        ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.lang.String::split@40 (line 3365)
              0x00007f2b132497a3:   mov    0xc(,%rdi,8),%r13d           ; implicit exception: dispatches to 0x00007f2b1324abe4
   0.01%      0x00007f2b132497ab:   test   %r11d,%r11d
              0x00007f2b132497ae:   mov    $0x0,%eax
   0.89%      0x00007f2b132497b3:   mov    %r11d,%r14d
              0x00007f2b132497b6:   cmovl  %eax,%r14d                   ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.Math::max@2 (line 2020)
                                                                        ; - java.lang.StringLatin1::indexOf@11 (line 199)
                                                                        ; - java.lang.String::indexOf@17 (line 2457)
                                                                        ; - java.lang.String::split@44 (line 3365)
   0.00%      0x00007f2b132497ba:   shl    $0x3,%rdi                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::indexOf@8 (line 2457)
                                                                        ; - java.lang.String::split@44 (line 3365)
   0.00%      0x00007f2b132497be:   xchg   %ax,%ax
   0.88%      0x00007f2b132497c0:   cmp    %r14d,%r13d
              0x00007f2b132497c3:   jbe    0x00007f2b13249d49           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::indexOf@24 (line 201)
                                                                        ; - java.lang.String::indexOf@17 (line 2457)
                                                                        ; - java.lang.String::split@44 (line 3365)
              0x00007f2b132497c9:   mov    %rdi,%rsi
   0.01%      0x00007f2b132497cc:   mov    %edx,%ebx
              0x00007f2b132497ce:   mov    $0x10,%rdx
   0.85%      0x00007f2b132497d5:   mov    %r13d,%ecx
              0x00007f2b132497d8:   mov    %r14d,%r8d
   0.01%      0x00007f2b132497db:   mov    %ebx,%r9d                    ;* unwind (locked if synchronized)
                                                                        ; - java.lang.StringLatin1::indexOfChar@-3
                                                                        ; - java.lang.StringLatin1::indexOf@33 (line 204)
                                                                        ; - java.lang.String::indexOf@17 (line 2457)
                                                                        ; - java.lang.String::split@44 (line 3365)
              0x00007f2b132497de:   mov    %rdi,0x18(%rsp)
   0.90%      0x00007f2b132497e3:   call   0x00007f2b12dbe700           ;   {runtime_call Stub&lt;IntrinsicStubsGen.indexOf1S1&gt;}
   0.01%      0x00007f2b132497e8:   nop
   0.13%      0x00007f2b132497e9:   cmp    $0xffffffff,%eax
              0x00007f2b132497ec:   je     0x00007f2b13249dac           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::split@51 (line 3365)
   0.01%      0x00007f2b132497f2:   test   %r11d,%r11d
              0x00007f2b132497f5:   jl     0x00007f2b1324a7d9           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.util.Preconditions::checkFromToIndex@1 (line 348)
                                                                        ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                        ; - java.lang.String::substring@8 (line 2830)
                                                                        ; - java.lang.String::split@74 (line 3367)
   0.75%      0x00007f2b132497fb:   nopl   0x0(%rax,%rax,1)
              0x00007f2b13249800:   cmp    %eax,%r11d
              0x00007f2b13249803:   jg     0x00007f2b1324a7d9           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.util.Preconditions::checkFromToIndex@6 (line 348)
                                                                        ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                        ; - java.lang.String::substring@8 (line 2830)
                                                                        ; - java.lang.String::split@74 (line 3367)
   0.18%      0x00007f2b13249809:   cmp    %r13d,%eax
              0x00007f2b1324980c:   jg     0x00007f2b1324a7d9           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.util.Preconditions::checkFromToIndex@11 (line 348)
                                                                        ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                        ; - java.lang.String::substring@8 (line 2830)
                                                                        ; - java.lang.String::split@74 (line 3367)
   0.54%      0x00007f2b13249812:   test   %r11d,%r11d
              0x00007f2b13249815:   je     0x00007f2b13249bb8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::substring@12 (line 2831)
                                                                        ; - java.lang.String::split@74 (line 3367)
   0.64%      0x00007f2b1324981b:   nopl   0x0(%rax,%rax,1)
              0x00007f2b13249820:   cmp    %eax,%r11d
              0x00007f2b13249823:   je     0x00007f2b13249d91           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::newString@1 (line 749)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::split@74 (line 3367)
   0.01%      0x00007f2b13249829:   test   %r11d,%r11d
              0x00007f2b1324982c:   je     0x00007f2b13249b8c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@1 (line 3853)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::split@74 (line 3367)
   0.27%      0x00007f2b13249832:   mov    0x1b8(%r15),%r10             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRangeByte@10 (line 3863)
                                                                        ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::split@74 (line 3367)
   0.51%      0x00007f2b13249839:   mov    %eax,%r8d
              0x00007f2b1324983c:   sub    %r11d,%r8d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::substring@24 (line 2834)
                                                                        ; - java.lang.String::split@74 (line 3367)
   0.01%      0x00007f2b1324983f:   mov    %r8d,%edi
   0.28%      0x00007f2b13249842:   lea    0x17(%rdi),%rdi
   0.60%      0x00007f2b13249846:   and    $0xfffffffffffffff8,%rdi
              0x00007f2b1324984a:   mov    %rdi,%rsi
   0.01%      0x00007f2b1324984d:   add    %r10,%rsi
   0.58%      0x00007f2b13249850:   cmp    0x1c8(%r15),%rsi
              0x00007f2b13249857:   ja     0x00007f2b13249c88
   0.67%      0x00007f2b1324985d:   mov    %rsi,0x1b8(%r15)
   0.04%      0x00007f2b13249864:   prefetchw 0xc0(%rdi,%r10,1)
   0.53%      0x00007f2b1324986d:   prefetchw 0x100(%rdi,%r10,1)
   0.24%      0x00007f2b13249876:   prefetchw 0x140(%rdi,%r10,1)
   0.51%      0x00007f2b1324987f:   prefetchw 0x180(%rdi,%r10,1)
   0.44%      0x00007f2b13249888:   movq   $0x1,(%r10)
   0.21%      0x00007f2b1324988f:   movl   $0x22c0,0x8(%r10)            ;   {metadata({type array byte})}
   0.10%      0x00007f2b13249897:   mov    %r8d,0xc(%r10)
   0.59%      0x00007f2b1324989b:   lea    -0x10(%rdi),%r9
   0.11%      0x00007f2b1324989f:   nop
   0.11%      0x00007f2b132498a0:   cmp    $0x800,%r9
              0x00007f2b132498a7:   jae    0x00007f2b13249caf
   0.08%      0x00007f2b132498ad:   mov    $0x10,%rsi
   0.59%  ╭   0x00007f2b132498b4:   jmp    0x00007f2b132498cc
          │   0x00007f2b132498b9:   nopl   0x0(%rax)
   1.39%  │↗  0x00007f2b132498c0:   movq   $0x0,(%r10,%rsi,1)
   1.34%  ││  0x00007f2b132498c8:   lea    0x8(%rsi),%rsi
   0.12%  ↘│  0x00007f2b132498cc:   cmp    %rsi,%rdi
           ╰  0x00007f2b132498cf:   ja     0x00007f2b132498c0           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRangeByte@10 (line 3863)
                                                                        ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::split@74 (line 3367)
   0.02%      0x00007f2b132498d1:   mov    %r13d,%edi
   0.77%      0x00007f2b132498d4:   sub    %r11d,%edi                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRangeByte@22 (line 3864)
                                                                        ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::split@74 (line 3367)
   0.17%      0x00007f2b132498d7:   cmp    %r8d,%edi
   0.02%      0x00007f2b132498da:   cmovg  %r8d,%edi                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.Math::min@2 (line 2115)
                                                                        ; - java.util.Arrays::copyOfRangeByte@24 (line 3865)
                                                                        ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::split@74 (line 3367)
              0x00007f2b132498de:   xchg   %ax,%ax
   0.77%      0x00007f2b132498e0:   test   %edi,%edi
              0x00007f2b132498e2:   jl     0x00007f2b1324a80d
   0.15%      0x00007f2b132498e8:   sub    %edi,%r13d
   0.01%      0x00007f2b132498eb:   cmp    %r13d,%r11d
              0x00007f2b132498ee:   jg     0x00007f2b1324a80d
   0.00%      0x00007f2b132498f4:   cmp    %r8d,%edi
              0x00007f2b132498f7:   jg     0x00007f2b1324a80d
   0.72%      0x00007f2b132498fd:   mov    %eax,0x4c(%rsp)
   0.48%      0x00007f2b13249901:   mov    0x18(%rsp),%rsi
   0.01%      0x00007f2b13249906:   mov    %r10,%rcx
   0.75%      0x00007f2b13249909:   mov    %edi,%ebx
   0.01%      0x00007f2b1324990b:   lea    0x10(%rsi,%r11,1),%rdi
   0.26%      0x00007f2b13249910:   lea    0x10(%rcx),%rsi
              0x00007f2b13249914:   mov    %rbx,%rdx                    ;* unwind (locked if synchronized)
                                                                        ; - java.lang.System::arraycopy@-3
                                                                        ; - java.util.Arrays::copyOfRangeByte@27 (line 3864)
                                                                        ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::split@74 (line 3367)
   0.74%      0x00007f2b13249917:   mov    %r10,0x10(%rsp)
   0.04%      0x00007f2b1324991c:   nopl   0x0(%rax)
   0.09%      0x00007f2b13249920:   call   Stub::jbyte_arraycopy        ;   {runtime_call StubRoutines (final stubs)}
   1.18%      0x00007f2b13249925:   nop
   0.03%      0x00007f2b13249926:   mov    0x10(%rsp),%r10
   4.40%      0x00007f2b1324992b:   mov    0x1b8(%r15),%rdi
   0.05%      0x00007f2b13249932:   lea    0x18(%rdi),%rsi
   0.05%      0x00007f2b13249936:   data16 nopw 0x0(%rax,%rax,1)
   0.10%      0x00007f2b13249940:   cmp    0x1c8(%r15),%rsi
              0x00007f2b13249947:   ja     0x00007f2b13249c6c
   1.45%      0x00007f2b1324994d:   mov    %rsi,0x1b8(%r15)
   0.07%      0x00007f2b13249954:   prefetchw 0xd8(%rdi)
   1.30%      0x00007f2b1324995b:   movq   $0x1,(%rdi)
   1.31%      0x00007f2b13249962:   movl   $0xe8d8,0x8(%rdi)            ;   {metadata(&apos;java/lang/String&apos;)}
   1.88%      0x00007f2b13249969:   movl   $0x0,0xc(%rdi)
   0.15%      0x00007f2b13249970:   movq   $0x0,0x10(%rdi)
   0.59%      0x00007f2b13249978:   shr    $0x3,%r10
   0.10%      0x00007f2b1324997c:   mov    %r10d,0x14(%rdi)             ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::newString@7 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::split@74 (line 3367)
   0.36%      0x00007f2b13249980:   mov    0x20(%rsp),%r10
   0.09%      0x00007f2b13249985:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop rdi=Oop r10=Oop [32]=Oop [56]=Oop }
                                                                        ;*invokevirtual add {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.lang.String::split@77 (line 3367)
   0.63%      0x00007f2b13249989:   mov    0xc(,%rsi,8),%edx            ; implicit exception: dispatches to 0x00007f2b1324ac07
   2.85%      0x00007f2b13249990:   incl   0xc(%r10)                    ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@7 (line 495)
                                                                        ; - java.lang.String::split@77 (line 3367)
   0.18%      0x00007f2b13249994:   mov    0x10(%r10),%r11d             ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@17 (line 496)
                                                                        ; - java.lang.String::split@77 (line 3367)
   0.78%      0x00007f2b13249998:   nopl   0x0(%rax,%rax,1)
   0.03%      0x00007f2b132499a0:   cmp    %edx,%r11d
              0x00007f2b132499a3:   je     0x00007f2b13249d09           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@3 (line 482)
                                                                        ; - java.util.ArrayList::add@20 (line 496)
                                                                        ; - java.lang.String::split@77 (line 3367)
   0.02%      0x00007f2b132499a9:   shl    $0x3,%rsi                    ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@13 (line 496)
                                                                        ; - java.lang.String::split@77 (line 3367)
   0.04%      0x00007f2b132499ad:   mov    %rsi,%r8                     ; ImmutableOopMap {rdi=Oop r8=Oop r10=Oop [32]=Oop [56]=Oop }
                                                                        ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.ArrayList::add@11 (line 484)
                                                                        ; - java.util.ArrayList::add@20 (line 496)
                                                                        ; - java.lang.String::split@77 (line 3367)
   0.75%      0x00007f2b132499b0:   mov    0xc(%r8),%esi                ; implicit exception: dispatches to 0x00007f2b1324ac2d
   0.07%      0x00007f2b132499b4:   mov    0x8(%r8),%edx
   0.05%      0x00007f2b132499b8:   nopl   0x0(%rax,%rax,1)
   0.06%      0x00007f2b132499c0:   cmp    %r11d,%esi
              0x00007f2b132499c3:   jbe    0x00007f2b1324a934
   0.77%      0x00007f2b132499c9:   mov    0x60(%rsp),%r9
   0.08%      0x00007f2b132499ce:   movabs $0x7f2a93000000,%rsi
   0.06%      0x00007f2b132499d8:   lea    (%rsi,%rdx,1),%rdx
   0.06%      0x00007f2b132499dc:   mov    0xd0(%rdx),%rsi
   3.85%      0x00007f2b132499e3:   mov    0x14(%rsi),%edx
   3.43%      0x00007f2b132499e6:   movslq %edx,%rcx
   0.88%      0x00007f2b132499e9:   cmp    (%r9,%rcx,1),%rsi
              0x00007f2b132499ed:   je     0x00007f2b13249a45
              0x00007f2b132499f3:   cmp    $0x20,%edx
              0x00007f2b132499f6:   jne    0x00007f2b1324a84d
              0x00007f2b132499fc:   nopl   0x0(%rax)
              0x00007f2b13249a00:   cmp    %rsi,%r9
              0x00007f2b13249a03:   je     0x00007f2b13249afa
              0x00007f2b13249a09:   mov    $0x0,%edx
              0x00007f2b13249a0e:   movabs $0x7f2a93626280,%rcx
              0x00007f2b13249a18:   jmp    0x00007f2b13249a3a
              0x00007f2b13249a1d:   data16 xchg %ax,%ax
....................................................................................................
  48.75%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::jbyte_disjoint_arraycopy 

                --------------------------------------------------------------------------------
                - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                StubRoutines::jbyte_disjoint_arraycopy [0x00007f2b12c13d40, 0x00007f2b12c13df7] (183 bytes)
                --------------------------------------------------------------------------------
                  0x00007f2b12c13d40:   push   %rbp
                  0x00007f2b12c13d41:   mov    %rsp,%rbp
   0.01%          0x00007f2b12c13d44:   mov    %rdx,%rcx
   0.76%          0x00007f2b12c13d47:   shr    $0x3,%rdx
   0.13%          0x00007f2b12c13d4b:   lea    -0x8(%rdi,%rdx,8),%rdi
   0.01%          0x00007f2b12c13d50:   lea    -0x8(%rsi,%rdx,8),%rsi
   0.00%          0x00007f2b12c13d55:   neg    %rdx
   0.81%  ╭       0x00007f2b12c13d58:   jmp    0x00007f2b12c13dc8
   0.30%  │↗      0x00007f2b12c13d5d:   mov    0x8(%rdi,%rdx,8),%rax
   0.49%  ││      0x00007f2b12c13d62:   mov    %rax,0x8(%rsi,%rdx,8)
   0.29%  ││      0x00007f2b12c13d67:   inc    %rdx
          │╰      0x00007f2b12c13d6a:   jne    0x00007f2b12c13d5d
   0.66%  │       0x00007f2b12c13d6c:   test   $0x4,%cl
          │ ╭     0x00007f2b12c13d6f:   je     0x00007f2b12c13d7f
   0.18%  │ │     0x00007f2b12c13d71:   mov    0x8(%rdi),%eax
   0.33%  │ │     0x00007f2b12c13d74:   mov    %eax,0x8(%rsi)
   0.11%  │ │     0x00007f2b12c13d77:   add    $0x4,%rdi
   0.43%  │ │     0x00007f2b12c13d7b:   add    $0x4,%rsi
   0.76%  │ ↘     0x00007f2b12c13d7f:   test   $0x2,%cl
          │  ╭    0x00007f2b12c13d82:   je     0x00007f2b12c13d94
   1.41%  │  │    0x00007f2b12c13d84:   mov    0x8(%rdi),%ax
   2.29%  │  │    0x00007f2b12c13d88:   mov    %ax,0x8(%rsi)
   0.61%  │  │    0x00007f2b12c13d8c:   add    $0x2,%rdi
   0.09%  │  │    0x00007f2b12c13d90:   add    $0x2,%rsi
   0.53%  │  ↘    0x00007f2b12c13d94:   test   $0x1,%cl
          │   ╭   0x00007f2b12c13d97:   je     0x00007f2b12c13d9f
   1.22%  │   │   0x00007f2b12c13d99:   mov    0x8(%rdi),%al
   2.03%  │   │   0x00007f2b12c13d9c:   mov    %al,0x8(%rsi)
   1.81%  │   ↘   0x00007f2b12c13d9f:   xor    %rax,%rax
   0.29%  │       0x00007f2b12c13da2:   vzeroupper 
   0.92%  │       0x00007f2b12c13da5:   leave  
   2.40%  │       0x00007f2b12c13da6:   ret    
          │       0x00007f2b12c13da7:   nopw   0x0(%rax,%rax,1)
          │    ↗  0x00007f2b12c13db0:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
          │    │  0x00007f2b12c13db6:   vmovdqu %ymm0,-0x38(%rsi,%rdx,8)
          │    │  0x00007f2b12c13dbc:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
          │    │  0x00007f2b12c13dc2:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
   0.11%  ↘    │  0x00007f2b12c13dc8:   add    $0x8,%rdx
               ╰  0x00007f2b12c13dcc:   jle    0x00007f2b12c13db0
   0.00%          0x00007f2b12c13dce:   sub    $0x4,%rdx
                  0x00007f2b12c13dd2:   jg     0x00007f2b12c13de8
                  0x00007f2b12c13dd8:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
....................................................................................................
  18.88%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.lang.String::split, version 4, compile id 1033 

                0x00007f2b13249a25:   lea    0x8(%rbx),%ebx
                0x00007f2b13249a28:   movslq %ebx,%rbx
                0x00007f2b13249a2b:   mov    (%rcx,%rbx,1),%rbx
                0x00007f2b13249a2f:   cmp    %rbx,%rsi
          ╭     0x00007f2b13249a32:   je     0x00007f2b13249b09
          │     0x00007f2b13249a38:   inc    %edx
          │     0x00007f2b13249a3a:   cmp    $0x5,%edx
          │     0x00007f2b13249a3d:   jl     0x00007f2b13249a20
          │     0x00007f2b13249a3f:   nop
          │     0x00007f2b13249a40:   jmp    0x00007f2b1324a84d
   5.08%  │     0x00007f2b13249a45:   movabs $0x7f2a93626280,%rcx
   0.00%  │ ↗↗  0x00007f2b13249a4f:   cmpb   $0x0,0x40(%r15)
          │╭││  0x00007f2b13249a54:   jne    0x00007f2b13249b12
   0.00%  ││││  0x00007f2b13249a5a:   mov    %rdi,%rsi
   0.93%  ││││  0x00007f2b13249a5d:   shr    $0x3,%rsi
          ││││  0x00007f2b13249a61:   mov    %esi,0x10(%r8,%r11,4)        ;   {no_reloc}
          ││││  0x00007f2b13249a66:   lea    0x10(%r8,%r11,4),%rsi
          ││││  0x00007f2b13249a6b:   xor    %rdi,%rsi
   1.00%  ││││  0x00007f2b13249a6e:   test   $0xffffffffffe00000,%rsi
          ││││  0x00007f2b13249a75:   je     0x00007f2b13249b4f
          ││││  0x00007f2b13249a7b:   nopl   0x0(%rax,%rax,1)
          ││││  0x00007f2b13249a80:   test   %rdi,%rdi
          ││││  0x00007f2b13249a83:   je     0x00007f2b13249b5e
          ││││  0x00007f2b13249a89:   mov    0x68(%rsp),%r10
   0.01%  ││││  0x00007f2b13249a8e:   lea    0x10(%r8,%r11,4),%rsi
          ││││  0x00007f2b13249a93:   shr    $0x9,%rsi
          ││││  0x00007f2b13249a97:   nopw   0x0(%rax,%rax,1)
          ││││  0x00007f2b13249aa0:   cmpb   $0x2,(%rsi,%r10,1)
   0.00%  ││││  0x00007f2b13249aa5:   jne    0x00007f2b13249b6d
          ││││  0x00007f2b13249aab:   mov    %r11d,0x48(%rsp)
          ││││  0x00007f2b13249ab0:   mov    %rdi,0x10(%rsp)              ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.util.ArrayList::add@14 (line 484)
          ││││                                                            ; - java.util.ArrayList::add@20 (line 496)
          ││││                                                            ; - java.lang.String::split@77 (line 3367)
   0.84%  ││││  0x00007f2b13249ab5:   mov    0x20(%rsp),%r9
   0.00%  ││││  0x00007f2b13249aba:   mov    0x48(%rsp),%r11d
   0.04%  ││││  0x00007f2b13249abf:   inc    %r11d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.util.ArrayList::add@18 (line 485)
          ││││                                                            ; - java.util.ArrayList::add@20 (line 496)
          ││││                                                            ; - java.lang.String::split@77 (line 3367)
          ││││  0x00007f2b13249ac2:   mov    %r11d,0x10(%r9)              ;*putfield size {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.util.ArrayList::add@19 (line 485)
          ││││                                                            ; - java.util.ArrayList::add@20 (line 496)
          ││││                                                            ; - java.lang.String::split@77 (line 3367)
   0.88%  ││││  0x00007f2b13249ac6:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r8=Oop r9=Oop [16]=Oop [32]=Oop [56]=Oop }
          ││││                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          ││││                                                            ; - (reexecute) java.util.ArrayList::add@22 (line 486)
          ││││                                                            ; - java.util.ArrayList::add@20 (line 496)
          ││││                                                            ; - java.lang.String::split@77 (line 3367)
          ││││  0x00007f2b13249acd:   test   %eax,(%rsi)                  ;   {poll}
   0.00%  ││││  0x00007f2b13249acf:   mov    0x4c(%rsp),%eax
          ││││  0x00007f2b13249ad3:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.lang.String::split@96 (line 3371)
   0.88%  ││││  0x00007f2b13249ad5:   mov    0x50(%rsp),%esi
          ││││  0x00007f2b13249ad9:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.lang.String::split@99 (line 3372)
   0.00%  ││││  0x00007f2b13249adb:   mov    %esi,0x50(%rsp)
   0.00%  ││││  0x00007f2b13249adf:   mov    %eax,%r11d
   0.95%  ││││  0x00007f2b13249ae2:   mov    0x74(%rsp),%edx
          ││││  0x00007f2b13249ae6:   mov    0x38(%rsp),%rsi              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.lang.String::split@40 (line 3365)
   0.00%  ││││  0x00007f2b13249aeb:   cmpb   $0x0,0x10(%rsi)
   0.00%  ││││  0x00007f2b13249aef:   je     0x00007f2b132497a0
          ││││  0x00007f2b13249af5:   jmp    0x00007f2b1324aaf6           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.lang.String::isLatin1@10 (line 4817)
          ││││                                                            ; - java.lang.String::indexOf@1 (line 2457)
          ││││                                                            ; - java.lang.String::split@44 (line 3365)
          ││││  0x00007f2b13249afa:   movabs $0x7f2a93626280,%rcx
          ││╰│  0x00007f2b13249b04:   jmp    0x00007f2b13249a4f
          ↘│ │  0x00007f2b13249b09:   mov    %rsi,0x20(%r9)
           │ ╰  0x00007f2b13249b0d:   jmp    0x00007f2b13249a4f
           ↘    0x00007f2b13249b12:   lea    0x10(%r8,%r11,4),%rsi
                0x00007f2b13249b17:   mov    (%rsi),%esi
....................................................................................................
  10.64%  <total for region 3>

....[Hottest Regions]...............................................................................
  48.75%       jvmci, level 4  java.lang.String::split, version 4, compile id 1033 
  18.88%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
  10.64%       jvmci, level 4  java.lang.String::split, version 4, compile id 1033 
   4.66%         runtime stub  StubRoutines::checkcast_arraycopy 
   2.89%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.81%                       <unknown> 
   2.28%                       <unknown> 
   1.76%                       <unknown> 
   1.54%         runtime stub  StubRoutines::oop_disjoint_arraycopy 
   1.12%       jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1028 
   0.43%       jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1028 
   0.37%       jvmci, level 4  java.lang.String::split, version 4, compile id 1033 
   0.29%               kernel  [unknown] 
   0.23%       jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1028 
   0.17%           ld-2.31.so  __tls_get_addr 
   0.14%            libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.14%               kernel  [unknown] 
   0.13%       jvmci, level 4  java.lang.String::split, version 4, compile id 1033 
   0.12%            libjvm.so  G1BarrierSet::invalidate 
   0.09%               kernel  [unknown] 
   2.56%  <...other 506 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  60.08%       jvmci, level 4  java.lang.String::split, version 4, compile id 1033 
  21.77%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   6.99%                       <unknown> 
   4.68%         runtime stub  StubRoutines::checkcast_arraycopy 
   1.82%       jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1028 
   1.68%               kernel  [unknown] 
   1.54%         runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.17%           ld-2.31.so  __tls_get_addr 
   0.16%            libjvm.so  G1BarrierSet::invalidate 
   0.14%            libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.08%       jvmci, level 4  java.util.ArrayList::grow, version 1, compile id 1037 
   0.04%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%         libc-2.31.so  __memset_avx2_erms 
   0.03%            libjvm.so  G1CardSet::reset_table_scanner 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  G1FromCardCache::clear 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  fileStream::write 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.jmh_generated.StringPatternSplitBenchmark_string_split_jmhTest::string_split_avgt_jmhStub, version 4, compile id 1077 
   0.01%            libjvm.so  HeapRegionClaimer::claim_region 
   0.68%  <...other 197 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  62.00%       jvmci, level 4
  27.99%         runtime stub
   6.99%                     
   1.68%               kernel
   0.87%            libjvm.so
   0.18%         libc-2.31.so
   0.17%           ld-2.31.so
   0.03%   libpthread-2.31.so
   0.03%  libjvmcicompiler.so
   0.02%          interpreter
   0.01%       hsdis-amd64.so
   0.01%          c1, level 3
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.alloc.rate":
  1567.301 ±(99.9%) 1.068 MB/sec [Average]
  (min, avg, max) = (1566.948, 1567.301, 1567.625), stdev = 0.277
  CI (99.9%): [1566.233, 1568.369] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.alloc.rate.norm":
  142880.060 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (142880.060, 142880.060, 142880.060), stdev = 0.001
  CI (99.9%): [142880.060, 142880.061] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.count":
  32.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (6.000, 6.400, 7.000), stdev = 0.548
  CI (99.9%): [32.000, 32.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.time":
  62.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (12.000, 12.400, 13.000), stdev = 0.548
  CI (99.9%): [62.000, 62.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = __)

# Run progress: 75.00% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 251.107 us/op
# Warmup Iteration   2: 209.713 us/op
# Warmup Iteration   3: 209.327 us/op
# Warmup Iteration   4: 209.268 us/op
# Warmup Iteration   5: 209.246 us/op
Iteration   1: 209.373 us/op
                 gc.alloc.rate:      653.996 MB/sec
                 gc.alloc.rate.norm: 143584.145 B/op
                 gc.count:           3.000 counts
                 gc.time:            9.000 ms

Iteration   2: 209.243 us/op
                 gc.alloc.rate:      654.404 MB/sec
                 gc.alloc.rate.norm: 143584.145 B/op
                 gc.count:           3.000 counts
                 gc.time:            7.000 ms

Iteration   3: 209.328 us/op
                 gc.alloc.rate:      654.133 MB/sec
                 gc.alloc.rate.norm: 143584.145 B/op
                 gc.count:           2.000 counts
                 gc.time:            4.000 ms

Iteration   4: 209.385 us/op
                 gc.alloc.rate:      653.961 MB/sec
                 gc.alloc.rate.norm: 143584.145 B/op
                 gc.count:           3.000 counts
                 gc.time:            6.000 ms

Iteration   5: 209.309 us/op
                 gc.alloc.rate:      654.189 MB/sec
                 gc.alloc.rate.norm: 143584.145 B/op
                 gc.count:           3.000 counts
                 gc.time:            6.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split":
  209.327 ±(99.9%) 0.218 us/op [Average]
  (min, avg, max) = (209.243, 209.327, 209.385), stdev = 0.057
  CI (99.9%): [209.109, 209.546] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:asm":
PrintAssembly processed: 277526 total address lines.
Perf output processed (skipped 61.099 seconds):
 Column 1: cycles (51359 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.regex.Matcher::search, version 4, compile id 1005 

                0x00007f1aff23f237:   cmp    %r11d,%r13d
                0x00007f1aff23f23a:   jle    0x00007f1aff23f49f           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@46 (line 4505)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
                0x00007f1aff23f240:   cmp    0x10(,%r8,8),%r10d
                0x00007f1aff23f248:   jge    0x00007f1aff23f5a5           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@60 (line 4508)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   2.34%  ↗ ↗   0x00007f1aff23f24e:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=NarrowOop [28]=NarrowOop [32]=Oop }
          │ │                                                             ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                             ; - (reexecute) java.util.regex.Pattern$Start::match@47 (line 3787)
          │ │                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
   0.56%  │ │   0x00007f1aff23f255:   test   %eax,(%rsi)                  ;   {poll}
   0.56%  │ │   0x00007f1aff23f257:   mov    0x30(%rsp),%r9d
   0.56%  │ │   0x00007f1aff23f25c:   mov    0x34(%rsp),%ecx
   1.20%  │ │   0x00007f1aff23f260:   mov    0x18(%rsp),%r11d
   0.11%  │ │   0x00007f1aff23f265:   mov    0x1c(%rsp),%r10d
   0.23%  │ │   0x00007f1aff23f26a:   mov    0x20(%rsp),%rsi              ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - java.util.regex.Pattern$Start::match@31 (line 3786)
          │ │                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
   0.77%  │ │   0x00007f1aff23f26f:   cmp    %ecx,%r9d
          │ │   0x00007f1aff23f272:   jle    0x00007f1aff23f140
          │ │   0x00007f1aff23f278:   jmp    0x00007f1aff23f698           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - java.util.regex.Pattern$Start::match@34 (line 3786)
          │ │                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
   0.69%  │ │   0x00007f1aff23f27d:   mov    0x10(,%r8,8),%edx            ; ImmutableOopMap {rax=NarrowOop rdx=NarrowOop rsi=Oop r8=NarrowOop [0]=Oop [8]=Oop [16]=Oop [24]=NarrowOop [28]=NarrowOop [32]=Oop }
          │ │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                             ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3786)
          │ │                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
   0.60%  │ │   0x00007f1aff23f285:   mov    0xc(,%rdx,8),%r10d           ; implicit exception: dispatches to 0x00007f1aff23fa62
   2.82%  │ │   0x00007f1aff23f28d:   test   %r10d,%r10d
          │ │   0x00007f1aff23f290:   je     0x00007f1aff23f47a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
          │ │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │ │                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
   1.58%  │ │   0x00007f1aff23f296:   cmp    %r9d,%r13d
          │ │   0x00007f1aff23f299:   jle    0x00007f1aff23f793           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - java.util.regex.Pattern$Slice::match@29 (line 4261)
          │ │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │ │                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
   0.18%  │ │   0x00007f1aff23f29f:   nop
   0.20%  │ │   0x00007f1aff23f2a0:   test   %bpl,%bpl
          │ │   0x00007f1aff23f2a3:   jne    0x00007f1aff23f784           ; ImmutableOopMap {rax=NarrowOop rdx=NarrowOop rsi=Oop r8=NarrowOop [0]=Oop [8]=Oop [16]=Oop [24]=NarrowOop [28]=NarrowOop [32]=Oop }
          │ │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                             ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3786)
          │ │                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
   0.65%  │ │   0x00007f1aff23f2a9:   mov    0xc(,%rax,8),%r11d           ; implicit exception: dispatches to 0x00007f1aff23fa85
   1.43%  │ │   0x00007f1aff23f2b1:   cmp    %r9d,%r11d
          │ │   0x00007f1aff23f2b4:   jbe    0x00007f1aff23f775           ;* unwind (locked if synchronized)
          │ │                                                             ; - jdk.internal.util.Preconditions::checkIndex@-3
          │ │                                                             ; - java.lang.String::checkIndex@5 (line 4828)
          │ │                                                             ; - java.lang.StringLatin1::charAt@3 (line 46)
          │ │                                                             ; - java.lang.String::charAt@12 (line 1555)
          │ │                                                             ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
          │ │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │ │                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
   0.13%  │ │   0x00007f1aff23f2ba:   movzbl 0x10(%r9,%rax,8),%edi        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - java.lang.StringLatin1::charAt@8 (line 47)
          │ │                                                             ; - java.lang.String::charAt@12 (line 1555)
          │ │                                                             ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
          │ │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │ │                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
   0.27%  │ │   0x00007f1aff23f2c0:   cmp    0x10(,%rdx,8),%edi
          ╰ │   0x00007f1aff23f2c7:   jne    0x00007f1aff23f24e           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
            │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
            │                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
   3.08%    │   0x00007f1aff23f2c9:   mov    $0x1,%ecx
   2.51%   ╭│   0x00007f1aff23f2ce:   jmp    0x00007f1aff23f31a           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                             ; - java.util.regex.Pattern$Slice::match@14 (line 4260)
           ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           ││   0x00007f1aff23f2d3:   nopw   0x0(%rax,%rax,1)
           ││   0x00007f1aff23f2dc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││                                                             ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
           ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
   0.31%   ││↗  0x00007f1aff23f2e0:   mov    %ecx,%esi
           │││  0x00007f1aff23f2e2:   add    %r9d,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - java.util.regex.Pattern$Slice::match@24 (line 4261)
           │││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.56%   │││  0x00007f1aff23f2e5:   mov    %edx,%ebx
   0.04%   │││  0x00007f1aff23f2e7:   shl    $0x3,%rbx                    ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - java.util.regex.Pattern$Slice::match@1 (line 4258)
           │││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.07%   │││  0x00007f1aff23f2eb:   cmp    %esi,%r13d
           │││  0x00007f1aff23f2ee:   jle    0x00007f1aff23f6da           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - java.util.regex.Pattern$Slice::match@29 (line 4261)
           │││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.07%   │││  0x00007f1aff23f2f4:   cmp    %ecx,%r10d
           │││  0x00007f1aff23f2f7:   jbe    0x00007f1aff23f6ad           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - java.util.regex.Pattern$Slice::match@43 (line 4265)
           │││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.51%   │││  0x00007f1aff23f2fd:   data16 xchg %ax,%ax
   0.03%   │││  0x00007f1aff23f300:   cmp    %esi,%r11d
           │││  0x00007f1aff23f303:   jbe    0x00007f1aff23f8b4           ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.util.Preconditions::checkIndex@-3
           │││                                                            ; - java.lang.String::checkIndex@5 (line 4828)
           │││                                                            ; - java.lang.StringLatin1::charAt@3 (line 46)
           │││                                                            ; - java.lang.String::charAt@12 (line 1555)
           │││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
           │││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.06%   │││  0x00007f1aff23f309:   movzbl 0x10(%rsi,%rax,8),%esi       ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - java.lang.StringLatin1::charAt@8 (line 47)
           │││                                                            ; - java.lang.String::charAt@12 (line 1555)
           │││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
           │││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.58%   │││  0x00007f1aff23f30e:   cmp    0x10(%rbx,%rcx,4),%esi
           │╰│  0x00007f1aff23f312:   jne    0x00007f1aff23f24e           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
           │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.62%   │ │  0x00007f1aff23f318:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                            ; - java.util.regex.Pattern$Slice::match@59 (line 4260)
           │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.01%   ↘ │  0x00007f1aff23f31a:   nopw   0x0(%rax,%rax,1)
   0.01%     │  0x00007f1aff23f320:   cmp    %ecx,%r10d
             │  0x00007f1aff23f323:   jle    0x00007f1aff23f41c
   0.03%     ╰  0x00007f1aff23f329:   jmp    0x00007f1aff23f2e0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
                0x00007f1aff23f32b:   mov    %r14d,%r11d
                0x00007f1aff23f32e:   mov    $0x1,%r10d
                0x00007f1aff23f334:   nopl   0x0(%rax,%rax,1)
                0x00007f1aff23f33c:   data16 data16 xchg %ax,%ax          ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@9 (line 4502)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
....................................................................................................
  23.41%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.regex.Pattern::split, version 4, compile id 1047 

                                                                        ; - java.util.regex.Pattern::split@115 (line 1414)
              0x00007f1aff24bca5:   movl   $0x1,0x54(%rsp)
              0x00007f1aff24bcad:   mov    %esi,0x50(%rsp)
              0x00007f1aff24bcb1:   mov    %r10d,%esi
              0x00007f1aff24bcb4:   mov    0x50(%rsp),%r10d
              0x00007f1aff24bcb9:   jmp    0x00007f1aff24c02e           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@33 (line 1405)
              0x00007f1aff24bcbe:   xchg   %ax,%ax                      ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@10 (line 745)
                                                                        ; - java.util.regex.Pattern::split@35 (line 1405)
   0.36%      0x00007f1aff24bcc0:   cmp    0xc(%rbx),%r10d
              0x00007f1aff24bcc4:   jl     0x00007f1aff24d2db           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@21 (line 749)
                                                                        ; - java.util.regex.Pattern::split@35 (line 1405)
   0.00%      0x00007f1aff24bcca:   cmp    0x10(%rbx),%r10d
              0x00007f1aff24bcce:   jg     0x00007f1aff24d891           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@34 (line 753)
                                                                        ; - java.util.regex.Pattern::split@35 (line 1405)
              0x00007f1aff24bcd4:   mov    %rbx,%rsi                    ;   {no_reloc}
   0.00%      0x00007f1aff24bcd7:   mov    %r10d,%edx                   ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@65 (line 758)
                                                                        ; - java.util.regex.Pattern::split@35 (line 1405)
   0.40%      0x00007f1aff24bcda:   nop
   0.00%      0x00007f1aff24bcdb:   call   0x00007f1afec2f380           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop }
                                                                        ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@65 (line 758)
                                                                        ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                        ;   {optimized virtual_call}
   0.38%      0x00007f1aff24bce0:   nopl   0x7000c50(%rax,%rax,1)       ;   {other}
   0.00%      0x00007f1aff24bce8:   test   %eax,%eax
              0x00007f1aff24bcea:   je     0x00007f1aff24c35f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@38 (line 1405)
              0x00007f1aff24bcf0:   mov    0x50(%rsp),%r10d
   0.36%      0x00007f1aff24bcf5:   test   %r10d,%r10d
              0x00007f1aff24bcf8:   je     0x00007f1aff24c2e5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@56 (line 1407)
   0.02%      0x00007f1aff24bcfe:   xchg   %ax,%ax
              0x00007f1aff24bd00:   test   %r10d,%r10d
              0x00007f1aff24bd03:   jl     0x00007f1aff24d771           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.util.Preconditions::checkFromToIndex@1 (line 348)
                                                                        ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                        ; - java.lang.String::substring@8 (line 2830)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.01%      0x00007f1aff24bd09:   mov    0x40(%rsp),%rsi              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@85 (line 1412)
   0.32%      0x00007f1aff24bd0e:   mov    0x1c(%rsi),%r11d             ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::hasMatch@1 (line 1850)
                                                                        ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                        ; - java.util.regex.Matcher::start@1 (line 466)
                                                                        ; - java.util.regex.Pattern::split@90 (line 1412)
   0.74%      0x00007f1aff24bd12:   test   %r11d,%r11d
              0x00007f1aff24bd15:   jl     0x00007f1aff24d7a2           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::hasMatch@4 (line 1850)
                                                                        ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                        ; - java.util.regex.Matcher::start@1 (line 466)
                                                                        ; - java.util.regex.Pattern::split@90 (line 1412)
   0.39%      0x00007f1aff24bd1b:   nopl   0x0(%rax,%rax,1)
   0.00%      0x00007f1aff24bd20:   cmp    %r11d,%r10d
              0x00007f1aff24bd23:   jg     0x00007f1aff24d30d           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.util.Preconditions::checkFromToIndex@6 (line 348)
                                                                        ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                        ; - java.lang.String::substring@8 (line 2830)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.35%      0x00007f1aff24bd29:   mov    0x38(%rsp),%rdx
   0.00%      0x00007f1aff24bd2e:   mov    0x14(%rdx),%r8d              ; ImmutableOopMap {rdx=Oop rsi=Oop r8=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                        ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.regex.Pattern::split@85 (line 1412)
   0.21%      0x00007f1aff24bd32:   mov    0xc(,%r8,8),%r9d             ; implicit exception: dispatches to 0x00007f1aff24d97b
   1.76%      0x00007f1aff24bd3a:   movsbl 0x10(%rdx),%ebx              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::coder@7 (line 4809)
                                                                        ; - java.lang.String::length@6 (line 1519)
                                                                        ; - java.lang.String::substring@1 (line 2829)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.00%      0x00007f1aff24bd3e:   mov    %ebx,%ecx
              0x00007f1aff24bd40:   mov    %r9d,%edi
              0x00007f1aff24bd43:   shr    %cl,%edi                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::length@9 (line 1519)
                                                                        ; - java.lang.String::substring@1 (line 2829)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.74%      0x00007f1aff24bd45:   cmp    %edi,%r11d
              0x00007f1aff24bd48:   jg     0x00007f1aff24d71d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.util.Preconditions::checkFromToIndex@11 (line 348)
                                                                        ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                        ; - java.lang.String::substring@8 (line 2830)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.01%      0x00007f1aff24bd4e:   test   %r10d,%r10d
              0x00007f1aff24bd51:   je     0x00007f1aff24c109           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::substring@12 (line 2831)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
              0x00007f1aff24bd57:   test   %ebx,%ebx
              0x00007f1aff24bd59:   jne    0x00007f1aff24d24f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::isLatin1@10 (line 4817)
                                                                        ; - java.lang.String::substring@28 (line 2835)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.00%      0x00007f1aff24bd5f:   nop
   0.32%      0x00007f1aff24bd60:   cmp    %r10d,%r11d
              0x00007f1aff24bd63:   je     0x00007f1aff24c345           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::newString@1 (line 749)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.01%      0x00007f1aff24bd69:   shl    $0x3,%r8                     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::length@1 (line 1519)
                                                                        ; - java.lang.String::substring@1 (line 2829)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
              0x00007f1aff24bd6d:   test   %r10d,%r10d
              0x00007f1aff24bd70:   je     0x00007f1aff24c0e9           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@1 (line 3853)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
              0x00007f1aff24bd76:   mov    0x1b8(%r15),%rbx             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRangeByte@10 (line 3863)
                                                                        ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.33%      0x00007f1aff24bd7d:   mov    %r11d,%ebp
   0.01%      0x00007f1aff24bd80:   sub    %r10d,%ebp                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::substring@24 (line 2834)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
              0x00007f1aff24bd83:   mov    %ebp,%edi
   0.00%      0x00007f1aff24bd85:   lea    0x17(%rdi),%rdi
   0.30%      0x00007f1aff24bd89:   and    $0xfffffffffffffff8,%rdi
   0.01%      0x00007f1aff24bd8d:   mov    %rdi,%rcx
              0x00007f1aff24bd90:   add    %rbx,%rcx
   0.01%      0x00007f1aff24bd93:   cmp    0x1c8(%r15),%rcx
              0x00007f1aff24bd9a:   ja     0x00007f1aff24c15d
   0.32%      0x00007f1aff24bda0:   mov    %rcx,0x1b8(%r15)
   0.01%      0x00007f1aff24bda7:   prefetchw 0xc0(%rdi,%rbx,1)
   0.01%      0x00007f1aff24bdaf:   prefetchw 0x100(%rdi,%rbx,1)
   0.01%      0x00007f1aff24bdb7:   prefetchw 0x140(%rdi,%rbx,1)
   0.28%      0x00007f1aff24bdbf:   prefetchw 0x180(%rdi,%rbx,1)
   0.20%      0x00007f1aff24bdc7:   movq   $0x1,(%rbx)
   0.03%      0x00007f1aff24bdce:   movl   $0x22c0,0x8(%rbx)            ;   {metadata({type array byte})}
              0x00007f1aff24bdd5:   mov    %ebp,0xc(%rbx)
   0.33%      0x00007f1aff24bdd8:   lea    -0x10(%rdi),%rcx
   0.06%      0x00007f1aff24bddc:   nopl   0x0(%rax)
   0.02%      0x00007f1aff24bde0:   cmp    $0x800,%rcx
              0x00007f1aff24bde7:   jae    0x00007f1aff24c190
   0.00%      0x00007f1aff24bded:   mov    $0x10,%rcx
   0.27%  ╭   0x00007f1aff24bdf4:   jmp    0x00007f1aff24be0c
          │   0x00007f1aff24bdf9:   nopl   0x0(%rax)
   0.45%  │↗  0x00007f1aff24be00:   movq   $0x0,(%rbx,%rcx,1)
   0.19%  ││  0x00007f1aff24be08:   lea    0x8(%rcx),%rcx
   0.06%  ↘│  0x00007f1aff24be0c:   cmp    %rcx,%rdi
           ╰  0x00007f1aff24be0f:   ja     0x00007f1aff24be00           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRangeByte@10 (line 3863)
                                                                        ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
              0x00007f1aff24be11:   mov    %r9d,%edi
   0.27%      0x00007f1aff24be14:   sub    %r10d,%edi                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRangeByte@22 (line 3864)
                                                                        ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.06%      0x00007f1aff24be17:   cmp    %ebp,%edi
   0.00%      0x00007f1aff24be19:   cmovg  %ebp,%edi                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.Math::min@2 (line 2115)
                                                                        ; - java.util.Arrays::copyOfRangeByte@24 (line 3865)
                                                                        ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
              0x00007f1aff24be1c:   nopl   0x0(%rax)
   0.31%      0x00007f1aff24be20:   test   %edi,%edi
              0x00007f1aff24be22:   jl     0x00007f1aff24d15f
   0.07%      0x00007f1aff24be28:   sub    %edi,%r9d
              0x00007f1aff24be2b:   cmp    %r9d,%r10d
              0x00007f1aff24be2e:   jg     0x00007f1aff24d15f
              0x00007f1aff24be34:   cmp    %ebp,%edi
              0x00007f1aff24be36:   jg     0x00007f1aff24d15f
   0.33%      0x00007f1aff24be3c:   mov    %rbx,%r11
   0.07%      0x00007f1aff24be3f:   mov    %edi,%r9d
   0.01%      0x00007f1aff24be42:   lea    0x10(%r8,%r10,1),%rdi
              0x00007f1aff24be47:   lea    0x10(%r11),%rsi
   0.29%      0x00007f1aff24be4b:   mov    %r9,%rdx                     ;* unwind (locked if synchronized)
                                                                        ; - java.lang.System::arraycopy@-3
                                                                        ; - java.util.Arrays::copyOfRangeByte@27 (line 3864)
                                                                        ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.07%      0x00007f1aff24be4e:   mov    %rbx,0x18(%rsp)
   0.03%      0x00007f1aff24be53:   call   Stub::jbyte_arraycopy        ;   {runtime_call StubRoutines (final stubs)}
   0.22%      0x00007f1aff24be58:   nop
   0.04%      0x00007f1aff24be59:   mov    0x18(%rsp),%rbx
   0.35%      0x00007f1aff24be5e:   mov    0x1b8(%r15),%rsi
   0.13%      0x00007f1aff24be65:   lea    0x18(%rsi),%rax
   0.04%      0x00007f1aff24be69:   cmp    0x1c8(%r15),%rax
              0x00007f1aff24be70:   ja     0x00007f1aff24c134
   0.17%      0x00007f1aff24be76:   mov    %rax,0x1b8(%r15)
   0.19%      0x00007f1aff24be7d:   prefetchw 0xd8(%rsi)
   0.23%      0x00007f1aff24be84:   movq   $0x1,(%rsi)
   0.27%      0x00007f1aff24be8b:   movl   $0xe8d8,0x8(%rsi)            ;   {metadata(&apos;java/lang/String&apos;)}
   0.40%      0x00007f1aff24be92:   movl   $0x0,0xc(%rsi)
   0.82%      0x00007f1aff24be99:   movq   $0x0,0x10(%rsi)
   0.19%      0x00007f1aff24bea1:   shr    $0x3,%rbx
   0.01%      0x00007f1aff24bea5:   mov    %ebx,0x14(%rsi)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::newString@7 (line 752)
                                                                        ; - java.lang.String::substring@41 (line 2835)
                                                                        ; - java.lang.String::subSequence@3 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.08%      0x00007f1aff24bea8:   mov    0x30(%rsp),%r10
   0.27%      0x00007f1aff24bead:   mov    0x14(%r10),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop r10=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                        ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.lang.String::subSequence@6 (line 2868)
                                                                        ; - java.util.regex.Pattern::split@93 (line 1412)
   0.18%      0x00007f1aff24beb1:   mov    0xc(,%rax,8),%edx            ; implicit exception: dispatches to 0x00007f1aff24d99e
   1.31%      0x00007f1aff24beb8:   incl   0xc(%r10)                    ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@7 (line 495)
                                                                        ; - java.util.regex.Pattern::split@109 (line 1413)
   0.06%      0x00007f1aff24bebc:   mov    0x10(%r10),%r11d             ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@17 (line 496)
                                                                        ; - java.util.regex.Pattern::split@109 (line 1413)
   0.35%      0x00007f1aff24bec0:   cmp    %edx,%r11d
              0x00007f1aff24bec3:   je     0x00007f1aff24c205           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@3 (line 482)
                                                                        ; - java.util.ArrayList::add@20 (line 496)
                                                                        ; - java.util.regex.Pattern::split@109 (line 1413)
   0.00%      0x00007f1aff24bec9:   shl    $0x3,%rax                    ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@13 (line 496)
                                                                        ; - java.util.regex.Pattern::split@109 (line 1413)
   0.01%      0x00007f1aff24becd:   mov    0x40(%rsp),%r13
   0.04%      0x00007f1aff24bed2:   mov    0x1c(%r13),%r8d              ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::hasMatch@1 (line 1850)
                                                                        ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                        ; - java.util.regex.Matcher::end@1 (line 535)
                                                                        ; - java.util.regex.Pattern::split@115 (line 1414)
   0.36%      0x00007f1aff24bed6:   test   %r8d,%r8d
              0x00007f1aff24bed9:   jl     0x00007f1aff24d733           ; ImmutableOopMap {rax=Oop rsi=Oop r10=Oop r13=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                        ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.ArrayList::add@11 (line 484)
                                                                        ; - java.util.ArrayList::add@20 (line 496)
                                                                        ; - java.util.regex.Pattern::split@109 (line 1413)
   0.01%      0x00007f1aff24bedf:   mov    0xc(%rax),%edx               ; implicit exception: dispatches to 0x00007f1aff24d9c1
   0.00%      0x00007f1aff24bee2:   mov    0x8(%rax),%ecx
   0.02%      0x00007f1aff24bee5:   cmp    %r11d,%edx
              0x00007f1aff24bee8:   jbe    0x00007f1aff24d869
   0.35%      0x00007f1aff24beee:   mov    0x60(%rsp),%r14
   0.03%      0x00007f1aff24bef3:   movabs $0x7f1a83000000,%rdx
   0.01%      0x00007f1aff24befd:   lea    (%rdx,%rcx,1),%rcx
   0.01%      0x00007f1aff24bf01:   mov    0xd0(%rcx),%rdx
   1.42%      0x00007f1aff24bf08:   mov    0x14(%rdx),%ecx
   1.52%      0x00007f1aff24bf0b:   movslq %ecx,%rdi
   0.38%      0x00007f1aff24bf0e:   cmp    (%r14,%rdi,1),%rdx
              0x00007f1aff24bf12:   je     0x00007f1aff24bf85
              0x00007f1aff24bf18:   nopl   0x0(%rax,%rax,1)
              0x00007f1aff24bf20:   cmp    $0x20,%ecx
              0x00007f1aff24bf23:   jne    0x00007f1aff24d1c6
              0x00007f1aff24bf29:   cmp    %rdx,%r14
              0x00007f1aff24bf2c:   je     0x00007f1aff24c045
              0x00007f1aff24bf32:   mov    $0x0,%ecx
              0x00007f1aff24bf37:   movabs $0x7f1a83626280,%r9
              0x00007f1aff24bf41:   jmp    0x00007f1aff24bf7a
              0x00007f1aff24bf46:   data16 data16 nopw 0x0(%rax,%rax,1)
....................................................................................................
  20.26%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.regex.Matcher::search, version 4, compile id 1005 

                                                                         ; - java.util.regex.Matcher::search@48 (line 1731)
   0.38%       0x00007f1aff23f056:   mov    $0x1,%r11d
               0x00007f1aff23f05c:   nopl   0x0(%rax)
          ╭    0x00007f1aff23f060:   jmp    0x00007f1aff23f08c           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Matcher::search@46 (line 1731)
          │    0x00007f1aff23f065:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007f1aff23f070:   data16 data16 xchg %ax,%ax
          │    0x00007f1aff23f074:   nopl   0x0(%rax,%rax,1)
          │    0x00007f1aff23f07c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Matcher::search@52 (line 1731)
   0.00%  │↗   0x00007f1aff23f080:   movl   $0xffffffff,0x10(%rcx,%r11,4);*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - java.util.regex.Matcher::search@61 (line 1732)
          ││   0x00007f1aff23f089:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - java.util.regex.Matcher::search@62 (line 1731)
   0.00%  ↘│   0x00007f1aff23f08c:   cmp    %r11d,%r10d
           │   0x00007f1aff23f08f:   jle    0x00007f1aff23f4c0
   0.36%   ╰   0x00007f1aff23f095:   jmp    0x00007f1aff23f080           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Matcher::search@52 (line 1731)
               0x00007f1aff23f097:   mov    0x3c(%rsi),%r10d             ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Matcher::search@118 (line 1738)
               0x00007f1aff23f09b:   mov    %r10d,0x1c(%rsp)             ; ImmutableOopMap {rsi=Oop r10=NarrowOop [28]=NarrowOop [32]=Oop }
                                                                         ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.regex.Matcher::search@68 (line 1733)
   0.33%       0x00007f1aff23f0a0:   cmpl   $0xe8d8,0x8(,%r10,8)         ; implicit exception: dispatches to 0x00007f1aff23f96d
                                                                         ;   {metadata(&apos;java/lang/String&apos;)}
   0.07%       0x00007f1aff23f0ac:   jne    0x00007f1aff23f890           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
                                                                         ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
   0.01%       0x00007f1aff23f0b2:   mov    0x44(%rsi),%ecx              ;*getfield localsPos {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Matcher::search@72 (line 1733)
   0.34%       0x00007f1aff23f0b5:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rsi=Oop r10=NarrowOop [28]=NarrowOop [32]=Oop }
                                                                         ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.regex.Matcher::search@68 (line 1733)
   0.06%       0x00007f1aff23f0c0:   cmpl   $0x0,0xc(,%rcx,8)            ; implicit exception: dispatches to 0x00007f1aff23f990
   0.01%       0x00007f1aff23f0c8:   jne    0x00007f1aff23f6e9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Matcher::search@76 (line 1733)
   0.33%       0x00007f1aff23f0ce:   mov    0x34(%rsi),%ecx              ; ImmutableOopMap {rsi=Oop r10=NarrowOop [28]=NarrowOop [32]=Oop }
                                                                         ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.regex.Matcher::search@68 (line 1733)
   0.04%       0x00007f1aff23f0d1:   mov    0x34(,%rcx,8),%r11d          ; implicit exception: dispatches to 0x00007f1aff23f9b3
   0.01%       0x00007f1aff23f0d9:   mov    %r11d,0x18(%rsp)
   0.01%       0x00007f1aff23f0de:   xchg   %ax,%ax                      ; ImmutableOopMap {rsi=Oop r10=NarrowOop r11=NarrowOop [24]=NarrowOop [28]=NarrowOop [32]=Oop }
                                                                         ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.regex.Matcher::search@68 (line 1733)
   0.34%       0x00007f1aff23f0e0:   cmpl   $0x356d60,0x8(,%r11,8)       ; implicit exception: dispatches to 0x00007f1aff23f9d6
                                                                         ;   {metadata(&apos;java/util/regex/Pattern$Start&apos;)}
   0.11%       0x00007f1aff23f0ec:   jne    0x00007f1aff23f7f1           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
   0.09%       0x00007f1aff23f0f2:   mov    0x10(%rsi),%ecx              ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$Start::match@2 (line 3781)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
   0.30%       0x00007f1aff23f0f5:   sub    0x10(,%r11,8),%ecx           ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$Start::match@9 (line 3781)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
   0.03%       0x00007f1aff23f0fd:   mov    %ecx,0x34(%rsp)
   0.21%       0x00007f1aff23f101:   cmp    %ecx,%edx
               0x00007f1aff23f103:   jg     0x00007f1aff23f7df           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$Start::match@10 (line 3781)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
   0.00%       0x00007f1aff23f109:   movl   $0x0,0x18(%rsi)              ;*putfield acceptMode {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Matcher::search@105 (line 1737)
   0.26%       0x00007f1aff23f110:   mov    %r11d,%r9d
   0.01%       0x00007f1aff23f113:   shl    $0x3,%r9                     ;*getfield root {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Matcher::search@112 (line 1738)
   0.13%       0x00007f1aff23f117:   mov    %r9,0x10(%rsp)
   0.01%       0x00007f1aff23f11c:   mov    %r10d,%ebx
   0.29%       0x00007f1aff23f11f:   shl    $0x3,%rbx                    ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Matcher::search@118 (line 1738)
   0.01%       0x00007f1aff23f123:   mov    %rbx,0x8(%rsp)
   0.15%       0x00007f1aff23f128:   mov    %edx,%r9d
   0.00%       0x00007f1aff23f12b:   jmp    0x00007f1aff23f26f           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$Start::match@31 (line 3786)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
               0x00007f1aff23f130:   data16 data16 nopw 0x0(%rax,%rax,1)
               0x00007f1aff23f13b:   data16 data16 xchg %ax,%ax
               0x00007f1aff23f13f:   nop                                 ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$Start::match@34 (line 3786)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
   1.64%       0x00007f1aff23f140:   mov    0xc(,%r11,8),%r8d            ; ImmutableOopMap {rsi=Oop r8=NarrowOop r10=NarrowOop [8]=Oop [16]=Oop [24]=NarrowOop [28]=NarrowOop [32]=Oop }
                                                                         ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3786)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
   0.14%       0x00007f1aff23f148:   mov    0x8(,%r8,8),%edx             ; implicit exception: dispatches to 0x00007f1aff23f9f9
   1.25%       0x00007f1aff23f150:   mov    0x14(,%r10,8),%eax           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::charAt@8 (line 1555)
                                                                         ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
                                                                         ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
   0.44%       0x00007f1aff23f158:   movsbl 0x10(,%r10,8),%ebp           ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::isLatin1@7 (line 4817)
                                                                         ; - java.lang.String::charAt@1 (line 1554)
                                                                         ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
                                                                         ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
   1.12%       0x00007f1aff23f161:   mov    0x10(%rsi),%r13d             ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@4 (line 4501)
                                                                         ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
   0.07%       0x00007f1aff23f165:   movabs $0x7f1a83000000,%r14
   0.81%       0x00007f1aff23f16f:   lea    (%r14,%rdx,1),%rdx
   0.37%       0x00007f1aff23f173:   mov    %r8d,%r14d
   1.28%       0x00007f1aff23f176:   shl    $0x3,%r14                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$Start::match@38 (line 3787)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
   0.06%       0x00007f1aff23f17a:   mov    %r14,(%rsp)
   0.87%       0x00007f1aff23f17e:   mov    %r9d,%r14d
   0.40%       0x00007f1aff23f181:   inc    %r14d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$Start::match@77 (line 3786)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
   1.18%       0x00007f1aff23f184:   mov    %r14d,0x30(%rsp)
   0.09%       0x00007f1aff23f189:   cmp    -0x210(%rip),%rdx        # 0x00007f1aff23ef80
                                                                         ;   {section_word}
   0.89%    ╭  0x00007f1aff23f190:   je     0x00007f1aff23f1ab
   0.59%    │  0x00007f1aff23f196:   cmp    -0x215(%rip),%rdx        # 0x00007f1aff23ef88
            │                                                            ;   {section_word}
   1.13%    │  0x00007f1aff23f19d:   data16 xchg %ax,%ax
   0.06%    │  0x00007f1aff23f1a0:   je     0x00007f1aff23f27d
            │  0x00007f1aff23f1a6:   jmp    0x00007f1aff23f8ff
            ↘  0x00007f1aff23f1ab:   cmp    %r9d,%r13d
               0x00007f1aff23f1ae:   jle    0x00007f1aff23f4b2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4502)
                                                                         ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
               0x00007f1aff23f1b4:   test   %bpl,%bpl
               0x00007f1aff23f1b7:   jne    0x00007f1aff23f711           ; ImmutableOopMap {rax=NarrowOop rsi=Oop r8=NarrowOop [0]=Oop [8]=Oop [16]=Oop [24]=NarrowOop [28]=NarrowOop [32]=Oop }
                                                                         ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3786)
....................................................................................................
  15.89%  <total for region 3>

....[Hottest Regions]...............................................................................
  23.41%      jvmci, level 4  java.util.regex.Matcher::search, version 4, compile id 1005 
  20.26%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1047 
  15.89%      jvmci, level 4  java.util.regex.Matcher::search, version 4, compile id 1005 
   7.36%      jvmci, level 4  java.util.regex.Matcher::search, version 4, compile id 1005 
   4.74%      jvmci, level 4  java.util.regex.Pattern$LastNode::match, version 3, compile id 1019 
   4.71%      jvmci, level 4  java.util.regex.Matcher::search, version 4, compile id 1005 
   4.42%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1047 
   3.77%      jvmci, level 4  java.util.regex.Matcher::search, version 4, compile id 1005 
   3.62%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.91%      jvmci, level 4  java.util.regex.Matcher::search, version 4, compile id 1005 
   1.82%        runtime stub  StubRoutines::checkcast_arraycopy 
   1.33%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.94%              kernel  [unknown] 
   0.60%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.47%      jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1068 
   0.36%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1047 
   0.28%              kernel  [unknown] 
   0.17%      jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1068 
   0.14%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1047 
   0.13%              kernel  [unknown] 
   2.66%  <...other 511 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  58.05%      jvmci, level 4  java.util.regex.Matcher::search, version 4, compile id 1005 
  25.38%      jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1047 
   4.95%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   4.74%      jvmci, level 4  java.util.regex.Pattern$LastNode::match, version 3, compile id 1019 
   2.59%              kernel  [unknown] 
   1.82%        runtime stub  StubRoutines::checkcast_arraycopy 
   0.72%      jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1068 
   0.67%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.10%           libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.08%                      <unknown> 
   0.07%      jvmci, level 4  java.util.regex.Pattern::compile, version 2, compile id 1094 
   0.07%          ld-2.31.so  __tls_get_addr 
   0.05%           libjvm.so  G1BarrierSet::invalidate 
   0.04%        libc-2.31.so  __memset_avx2_erms 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  fileStream::write 
   0.02%      jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1069 
   0.02%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.55%  <...other 163 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  89.00%      jvmci, level 4
   7.45%        runtime stub
   2.59%              kernel
   0.55%           libjvm.so
   0.18%        libc-2.31.so
   0.08%                    
   0.07%          ld-2.31.so
   0.03%  libpthread-2.31.so
   0.02%         interpreter
   0.02%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.alloc.rate":
  654.137 ±(99.9%) 0.681 MB/sec [Average]
  (min, avg, max) = (653.961, 654.137, 654.404), stdev = 0.177
  CI (99.9%): [653.456, 654.817] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.alloc.rate.norm":
  143584.145 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (143584.145, 143584.145, 143584.145), stdev = 0.001
  CI (99.9%): [143584.144, 143584.146] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.count":
  14.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (2.000, 2.800, 3.000), stdev = 0.447
  CI (99.9%): [14.000, 14.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.time":
  32.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (4.000, 6.400, 9.000), stdev = 1.817
  CI (99.9%): [32.000, 32.000] (assumes normal distribution)


# Run complete. Total time: 00:07:39

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

Benchmark                                                     (regexp)  Mode  Cnt       Score    Error   Units
StringPatternSplitBenchmark.pattern_split                            _  avgt    5     471.104 ± 10.309   us/op
StringPatternSplitBenchmark.pattern_split:asm                        _  avgt              NaN              ---
StringPatternSplitBenchmark.pattern_split:gc.alloc.rate              _  avgt    5     289.660 ±  6.329  MB/sec
StringPatternSplitBenchmark.pattern_split:gc.alloc.rate.norm         _  avgt    5  143088.326 ±  0.008    B/op
StringPatternSplitBenchmark.pattern_split:gc.count                   _  avgt    5       6.000           counts
StringPatternSplitBenchmark.pattern_split:gc.time                    _  avgt    5      21.000               ms
StringPatternSplitBenchmark.pattern_split                           __  avgt    5     166.912 ±  2.118   us/op
StringPatternSplitBenchmark.pattern_split:asm                       __  avgt              NaN              ---
StringPatternSplitBenchmark.pattern_split:gc.alloc.rate             __  avgt    5     817.540 ± 10.402  MB/sec
StringPatternSplitBenchmark.pattern_split:gc.alloc.rate.norm        __  avgt    5  143088.116 ±  0.002    B/op
StringPatternSplitBenchmark.pattern_split:gc.count                  __  avgt    5      16.000           counts
StringPatternSplitBenchmark.pattern_split:gc.time                   __  avgt    5      33.000               ms
StringPatternSplitBenchmark.string_split                             _  avgt    5      86.938 ±  0.058   us/op
StringPatternSplitBenchmark.string_split:asm                         _  avgt              NaN              ---
StringPatternSplitBenchmark.string_split:gc.alloc.rate               _  avgt    5    1567.301 ±  1.068  MB/sec
StringPatternSplitBenchmark.string_split:gc.alloc.rate.norm          _  avgt    5  142880.060 ±  0.001    B/op
StringPatternSplitBenchmark.string_split:gc.count                    _  avgt    5      32.000           counts
StringPatternSplitBenchmark.string_split:gc.time                     _  avgt    5      62.000               ms
StringPatternSplitBenchmark.string_split                            __  avgt    5     209.327 ±  0.218   us/op
StringPatternSplitBenchmark.string_split:asm                        __  avgt              NaN              ---
StringPatternSplitBenchmark.string_split:gc.alloc.rate              __  avgt    5     654.137 ±  0.681  MB/sec
StringPatternSplitBenchmark.string_split:gc.alloc.rate.norm         __  avgt    5  143584.145 ±  0.001    B/op
StringPatternSplitBenchmark.string_split:gc.count                   __  avgt    5      14.000           counts
StringPatternSplitBenchmark.string_split:gc.time                    __  avgt    5      32.000               ms
