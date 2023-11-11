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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = _)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 258.946 us/op
# Warmup Iteration   2: 227.397 us/op
# Warmup Iteration   3: 225.562 us/op
# Warmup Iteration   4: 225.654 us/op
# Warmup Iteration   5: 225.510 us/op
Iteration   1: 225.612 us/op
                 gc.alloc.rate:      604.963 MB/sec
                 gc.alloc.rate.norm: 143120.233 B/op
                 gc.count:           3.000 counts
                 gc.time:            9.000 ms

Iteration   2: 225.330 us/op
                 gc.alloc.rate:      605.721 MB/sec
                 gc.alloc.rate.norm: 143120.156 B/op
                 gc.count:           2.000 counts
                 gc.time:            4.000 ms

Iteration   3: 225.450 us/op
                 gc.alloc.rate:      605.397 MB/sec
                 gc.alloc.rate.norm: 143120.156 B/op
                 gc.count:           3.000 counts
                 gc.time:            6.000 ms

Iteration   4: 225.240 us/op
                 gc.alloc.rate:      605.960 MB/sec
                 gc.alloc.rate.norm: 143120.156 B/op
                 gc.count:           2.000 counts
                 gc.time:            4.000 ms

Iteration   5: 225.454 us/op
                 gc.alloc.rate:      605.386 MB/sec
                 gc.alloc.rate.norm: 143120.157 B/op
                 gc.count:           3.000 counts
                 gc.time:            7.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split":
  225.417 ±(99.9%) 0.543 us/op [Average]
  (min, avg, max) = (225.240, 225.417, 225.612), stdev = 0.141
  CI (99.9%): [224.874, 225.960] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:asm":
PrintAssembly processed: 165088 total address lines.
Perf output processed (skipped 56.694 seconds):
 Column 1: cycles (51091 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.regex.Matcher::search, version 4, compile id 633 

                       # parm0:    rdx       = int
                       #           [sp+0x80]  (sp of caller)
                       0x00007f2034640860:   mov    0x8(%rsi),%r10d
                       0x00007f2034640864:   movabs $0x7f1fbb000000,%r11
                       0x00007f203464086e:   add    %r11,%r10
                       0x00007f2034640871:   cmp    %r10,%rax
                       0x00007f2034640874:   jne    0x00007f20340c4080           ;   {runtime_call ic_miss_stub}
                       0x00007f203464087a:   xchg   %ax,%ax
                       0x00007f203464087c:   nopl   0x0(%rax)
                     [Verified Entry Point]
   0.01%               0x00007f2034640880:   mov    %eax,-0x14000(%rsp)
   0.36%               0x00007f2034640887:   push   %rbp
                       0x00007f2034640888:   sub    $0x70,%rsp
   0.30%               0x00007f203464088c:   cmpl   $0x1,0x20(%r15)
   0.05%               0x00007f2034640894:   jne    0x00007f2034641422           ;*synchronization entry
                                                                                 ; - java.util.regex.Matcher::search@-1 (line 1726)
   0.00%               0x00007f203464089a:   mov    %rsi,%r10
   0.01%               0x00007f203464089d:   mov    %r12b,0x31(%rsi)             ;*putfield requireEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Matcher::search@7 (line 1727)
   0.28%               0x00007f20346408a1:   mov    %r12b,0x30(%rsi)             ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Matcher::search@2 (line 1726)
   0.04%               0x00007f20346408a5:   test   %edx,%edx
                       0x00007f20346408a7:   jl     0x00007f203464119c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Matcher::search@11 (line 1728)
                       0x00007f20346408ad:   mov    0x24(%rsi),%r11d             ;*getfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Matcher::search@27 (line 1730)
   0.02%               0x00007f20346408b1:   test   %r11d,%r11d
                       0x00007f20346408b4:   jl     0x00007f2034640d5e
   0.33%               0x00007f20346408ba:   mov    %r11d,0x24(%rsi)             ;*putfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Matcher::search@41 (line 1730)
   0.07%               0x00007f20346408be:   mov    %edx,0x1c(%rsi)              ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Matcher::search@22 (line 1729)
   0.02%               0x00007f20346408c1:   mov    0x38(%rsi),%r11d             ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Matcher::search@48 (line 1731)
   0.02%               0x00007f20346408c5:   mov    0xc(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007f2034641366
                                                                                 ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Matcher::search@51 (line 1731)
   0.33%               0x00007f20346408ca:   test   %r9d,%r9d
          ╭            0x00007f20346408cd:   jbe    0x00007f203464099d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - java.util.regex.Matcher::search@52 (line 1731)
   0.08%  │            0x00007f20346408d3:   mov    %r9d,%r8d
          │            0x00007f20346408d6:   dec    %r8d
   0.00%  │            0x00007f20346408d9:   cmp    %r9d,%r8d
   0.35%  │            0x00007f20346408dc:   nopl   0x0(%rax)
   0.00%  │            0x00007f20346408e0:   jae    0x00007f2034641024
   0.07%  │            0x00007f20346408e6:   lea    (%r12,%r11,8),%rbx
   0.01%  │            0x00007f20346408ea:   mov    %ebx,%r8d
   0.24%  │            0x00007f20346408ed:   shr    $0x2,%r8d
   0.01%  │            0x00007f20346408f1:   and    $0x3,%r8d
   0.08%  │            0x00007f20346408f5:   mov    $0xffffffff,%r11d
   0.01%  │            0x00007f20346408fb:   sub    %r8d,%r11d
   0.22%  │            0x00007f20346408fe:   and    $0x3,%r11d
   0.00%  │            0x00007f2034640902:   inc    %r11d
   0.08%  │            0x00007f2034640905:   cmp    %r9d,%r11d
   0.01%  │            0x00007f2034640908:   cmovg  %r9d,%r11d
   0.24%  │            0x00007f203464090c:   xor    %r8d,%r8d                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - java.util.regex.Matcher::search@55 (line 1732)
   0.29%  │ ↗          0x00007f203464090f:   movl   $0xffffffff,0x10(%rbx,%r8,4) ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                    ; - java.util.regex.Matcher::search@61 (line 1732)
   0.23%  │ │          0x00007f2034640918:   mov    %r8d,%ecx
   0.18%  │ │          0x00007f203464091b:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                    ; - java.util.regex.Matcher::search@62 (line 1731)
   0.28%  │ │          0x00007f203464091d:   data16 xchg %ax,%ax
   0.27%  │ │          0x00007f2034640920:   cmp    %r11d,%ecx
          │╭│          0x00007f2034640923:   jge    0x00007f203464092a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                    ; - java.util.regex.Matcher::search@52 (line 1731)
   0.24%  │││          0x00007f2034640925:   mov    %ecx,%r8d
   0.06%  ││╰          0x00007f2034640928:   jmp    0x00007f203464090f
   0.01%  │↘           0x00007f203464092a:   lea    -0x3(%r9),%edi
   0.15%  │            0x00007f203464092e:   cmp    %edi,%ecx
          │            0x00007f2034640930:   jge    0x00007f2034641044
   0.01%  │            0x00007f2034640936:   inc    %r8d
   0.16%  │            0x00007f2034640939:   mov    $0xfa0,%eax
   0.02%  │            0x00007f203464093e:   vpcmpeqd %xmm0,%xmm0,%xmm0
   0.15%  │   ↗        0x00007f2034640942:   mov    %r9d,%ecx
   0.00%  │   │        0x00007f2034640945:   sub    %r8d,%ecx
   0.19%  │   │        0x00007f2034640948:   add    $0xfffffffd,%ecx
   0.01%  │   │        0x00007f203464094b:   xor    %esi,%esi
   0.15%  │   │        0x00007f203464094d:   cmp    %r8d,%edi
          │   │        0x00007f2034640950:   cmovl  %esi,%ecx
   0.17%  │   │        0x00007f2034640953:   cmp    $0xfa0,%ecx
   0.01%  │   │        0x00007f2034640959:   cmova  %eax,%ecx
   0.14%  │   │        0x00007f203464095c:   add    %r8d,%ecx
   0.18%  │   │        0x00007f203464095f:   nop                                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                                  ; - java.util.regex.Matcher::search@55 (line 1732)
   0.66%  │  ↗│        0x00007f2034640960:   vmovdqu %xmm0,0x10(%rbx,%r8,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                                  ; - java.util.regex.Matcher::search@61 (line 1732)
   0.26%  │  ││        0x00007f2034640967:   add    $0x4,%r8d                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                                  ; - java.util.regex.Matcher::search@62 (line 1731)
   0.19%  │  ││        0x00007f203464096b:   cmp    %ecx,%r8d
          │  ╰│        0x00007f203464096e:   jl     0x00007f2034640960           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                                  ; - java.util.regex.Matcher::search@65 (line 1731)
   0.03%  │   │        0x00007f2034640970:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r10=Oop rbx=Oop }
          │   │                                                                  ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │   │                                                                  ; - (reexecute) java.util.regex.Matcher::search@65 (line 1731)
          │   │                                                                  ;   {no_reloc}
   0.28%  │   │        0x00007f2034640977:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                                  ; - java.util.regex.Matcher::search@65 (line 1731)
          │   │                                                                  ;   {poll}
   0.11%  │   │        0x00007f203464097a:   nopw   0x0(%rax,%rax,1)
   0.01%  │   │        0x00007f2034640980:   cmp    %edi,%r8d
          │   ╰        0x00007f2034640983:   jl     0x00007f2034640942
   0.02%  │            0x00007f2034640985:   cmp    %r9d,%r8d
          │    ╭       0x00007f2034640988:   jge    0x00007f203464099d
   0.14%  │    │       0x00007f203464098a:   xchg   %ax,%ax                      ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                 ; - java.util.regex.Matcher::search@55 (line 1732)
   0.16%  │    │↗      0x00007f203464098c:   movl   $0xffffffff,0x10(%rbx,%r8,4) ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                                ; - java.util.regex.Matcher::search@61 (line 1732)
   0.03%  │    ││      0x00007f2034640995:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                                ; - java.util.regex.Matcher::search@62 (line 1731)
   0.03%  │    ││      0x00007f2034640998:   cmp    %r9d,%r8d
          │    │╰      0x00007f203464099b:   jl     0x00007f203464098c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                 ; - java.util.regex.Matcher::search@52 (line 1731)
   0.14%  ↘    ↘       0x00007f203464099d:   mov    0x44(%r10),%r8d              ;*getfield localsPos {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Matcher::search@72 (line 1733)
   0.17%               0x00007f20346409a1:   mov    0xc(%r12,%r8,8),%ebp         ; implicit exception: dispatches to 0x00007f2034641378
                                                                                 ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Matcher::search@75 (line 1733)
   0.03%               0x00007f20346409a6:   test   %ebp,%ebp
                       0x00007f20346409a8:   ja     0x00007f20346411b4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Matcher::search@76 (line 1733)
   0.04%               0x00007f20346409ae:   mov    %r12d,0x18(%r10)             ;*putfield acceptMode {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Matcher::search@105 (line 1737)
   0.14%               0x00007f20346409b2:   mov    0x34(%r10),%r8d              ;*getfield parentPattern {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Matcher::search@109 (line 1738)
   0.12%               0x00007f20346409b6:   data16 nopw 0x0(%rax,%rax,1)
   0.02%               0x00007f20346409c0:   mov    0x34(%r12,%r8,8),%ecx        ; implicit exception: dispatches to 0x00007f203464138c
                                                                                 ;*getfield root {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Matcher::search@112 (line 1738)
   0.11%               0x00007f20346409c5:   mov    0x3c(%r10),%r8d              ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Matcher::search@118 (line 1738)
   0.13%               0x00007f20346409c9:   mov    0x8(%r12,%rcx,8),%r11d       ; implicit exception: dispatches to 0x00007f20346413a0
   0.57%               0x00007f20346409ce:   cmp    $0x338000,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$Start&apos;)}
                       0x00007f20346409d5:   jne    0x00007f2034640fb4
   0.26%               0x00007f20346409db:   mov    0x10(%r10),%r9d
   0.00%               0x00007f20346409df:   shl    $0x3,%rcx                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Matcher::search@121 (line 1738)
   0.02%               0x00007f20346409e3:   sub    0x10(%rcx),%r9d              ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Pattern$Start::match@9 (line 3781)
                                                                                 ; - java.util.regex.Matcher::search@121 (line 1738)
   0.33%               0x00007f20346409e7:   cmp    %r9d,%edx
                       0x00007f20346409ea:   jg     0x00007f20346411d0           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Pattern$Start::match@10 (line 3781)
                                                                                 ; - java.util.regex.Matcher::search@121 (line 1738)
   0.29%               0x00007f20346409f0:   mov    0x8(%r12,%r8,8),%ebx         ; implicit exception: dispatches to 0x00007f2034640fd8
   0.00%               0x00007f20346409f5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.01%               0x00007f2034640a00:   cmp    $0xe8d8,%ebx                 ;   {metadata(&apos;java/lang/String&apos;)}
                       0x00007f2034640a06:   jne    0x00007f2034640fd8
   0.02%               0x00007f2034640a0c:   cmp    $0x7ffffffe,%r9d
                       0x00007f2034640a13:   jg     0x00007f2034640f89
   0.34%               0x00007f2034640a19:   mov    %r9d,%esi
   0.01%               0x00007f2034640a1c:   inc    %esi
   0.02%               0x00007f2034640a1e:   lea    (%r12,%r8,8),%rdi            ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 4133)
                                                                                 ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                                 ; - java.util.regex.Matcher::search@121 (line 1738)
   0.03%               0x00007f2034640a22:   mov    %edx,%r13d
   0.30%               0x00007f2034640a25:   mov    $0x1,%eax
   0.01%         ╭     0x00007f2034640a2a:   jmp    0x00007f2034640a6b
   1.39%         │ ↗   0x00007f2034640a2c:   xor    %r8d,%r8d                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                 │ │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                 │ │                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
   0.12%         │ │↗  0x00007f2034640a2f:   mov    0x28(%rsp),%r10
   1.20%         │ ││  0x00007f2034640a34:   mov    0x20(%r10),%r11d             ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
                 │ ││                                                            ; - java.util.regex.Pattern$Start::match@71 (line 3790)
                 │ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   1.30%         │ ││  0x00007f2034640a38:   test   %r8d,%r8d
   1.12%         │ ││  0x00007f2034640a3b:   nopl   0x0(%rax,%rax,1)
   0.08%         │ ││  0x00007f2034640a40:   jne    0x00007f2034640c71           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                 │ ││                                                            ; - java.util.regex.Pattern$Start::match@47 (line 3787)
                 │ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.74%         │ ││  0x00007f2034640a46:   mov    0x30(%rsp),%r13d
   0.13%         │ ││  0x00007f2034640a4b:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │ ││                                                            ; - java.util.regex.Pattern$Start::match@77 (line 3786)
                 │ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   1.02%         │ ││  0x00007f2034640a4e:   cmp    %esi,%r13d
                 │ ││  0x00007f2034640a51:   jge    0x00007f2034640d66           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                 │ ││                                                            ; - java.util.regex.Pattern$Start::match@34 (line 3786)
                 │ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.08%         │ ││  0x00007f2034640a57:   mov    0x48(%rsp),%r8d
   0.76%         │ ││  0x00007f2034640a5c:   mov    0x4c(%rsp),%r9d
   0.10%         │ ││  0x00007f2034640a61:   mov    0x8(%rsp),%rcx
   1.07%         │ ││  0x00007f2034640a66:   mov    0x40(%rsp),%rdi              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                 │ ││                                                            ; - java.util.regex.Pattern$Start::match@37 (line 3787)
                 │ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.10%         ↘ ││  0x00007f2034640a6b:   mov    0xc(%rcx),%r11d              ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - java.util.regex.Pattern$Start::match@38 (line 3787)
                   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.72%           ││  0x00007f2034640a6f:   mov    0x8(%r12,%r11,8),%ebx        ; implicit exception: dispatches to 0x00007f2034641300
                   ││                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   1.15%           ││  0x00007f2034640a74:   mov    %rcx,0x8(%rsp)
   0.96%           ││  0x00007f2034640a79:   mov    %r9d,0x4c(%rsp)
   0.09%           ││  0x00007f2034640a7e:   mov    %r8d,0x48(%rsp)
   0.73%           ││  0x00007f2034640a83:   mov    0x14(%rdi),%r9d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - java.lang.String::charAt@8 (line 1555)
                   ││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 4133)
                   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.58%           ││  0x00007f2034640a87:   mov    %rdi,0x40(%rsp)
   0.84%           ││  0x00007f2034640a8c:   mov    0x10(%r10),%r8d              ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@4 (line 4501)
                   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.11%           ││  0x00007f2034640a90:   mov    %r10,0x28(%rsp)
   0.78%           ││  0x00007f2034640a95:   movsbl 0x10(%rdi),%r10d             ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - java.lang.String::isLatin1@7 (line 4817)
                   ││                                                            ; - java.lang.String::charAt@1 (line 1554)
                   ││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 4133)
                   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.65%           ││  0x00007f2034640a9a:   lea    (%r12,%r11,8),%rdi
   1.00%           ││  0x00007f2034640a9e:   xchg   %ax,%ax
   0.07%           ││  0x00007f2034640aa0:   cmp    $0x33c1f0,%ebx               ;   {metadata(&apos;java/util/regex/Pattern$BmpCharProperty&apos;)}
                  ╭││  0x00007f2034640aa6:   jne    0x00007f2034640b78           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                  │││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.70%          │││  0x00007f2034640aac:   mov    %r13d,%ecx
   0.60%          │││  0x00007f2034640aaf:   cmp    %r8d,%r13d
                  │││  0x00007f2034640ab2:   jge    0x00007f2034640e94           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@5 (line 4132)
                  │││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                  │││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.90%          │││  0x00007f2034640ab8:   mov    %rdi,%r8                     ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                  │││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.08%          │││  0x00007f2034640abb:   mov    0x10(%r8),%ebx               ;*getfield predicate {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@9 (line 4133)
                  │││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                  │││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.67%          │││  0x00007f2034640abf:   nop
   0.66%          │││  0x00007f2034640ac0:   test   %r10d,%r10d
                  │││  0x00007f2034640ac3:   jne    0x00007f2034640e48           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - java.lang.String::isLatin1@10 (line 4817)
                  │││                                                            ; - java.lang.String::charAt@1 (line 1554)
                  │││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 4133)
                  │││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                  │││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.89%          │││  0x00007f2034640ac9:   mov    0xc(%r12,%r9,8),%r11d        ; implicit exception: dispatches to 0x00007f2034641320
                  │││                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - java.lang.StringLatin1::charAt@2 (line 46)
                  │││                                                            ; - java.lang.String::charAt@12 (line 1555)
                  │││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 4133)
                  │││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                  │││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.07%          │││  0x00007f2034640ace:   cmp    %r11d,%r13d
                  │││  0x00007f2034640ad1:   jae    0x00007f2034640d7a
   0.78%          │││  0x00007f2034640ad7:   mov    %r8,%rdi
   0.51%          │││  0x00007f2034640ada:   mov    %r13d,0x30(%rsp)             ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - java.lang.String::checkIndex@5 (line 4828)
                  │││                                                            ; - java.lang.StringLatin1::charAt@3 (line 46)
                  │││                                                            ; - java.lang.String::charAt@12 (line 1555)
                  │││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 4133)
                  │││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                  │││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.90%          │││  0x00007f2034640adf:   nop
   0.07%          │││  0x00007f2034640ae0:   cmp    %r11d,%ecx
                  │││  0x00007f2034640ae3:   jae    0x00007f2034640dcc
   0.68%          │││  0x00007f2034640ae9:   lea    (%r12,%r9,8),%r10
   0.65%          │││  0x00007f2034640aed:   movzbl 0x10(%r10,%rcx,1),%r10d      ;*iand {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - java.lang.StringLatin1::charAt@12 (line 47)
                  │││                                                            ; - java.lang.String::charAt@12 (line 1555)
                  │││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 4133)
                  │││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                  │││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   1.00%          │││  0x00007f2034640af3:   mov    0x8(%r12,%rbx,8),%r11d       ; implicit exception: dispatches to 0x00007f2034641334
   0.22%          │││  0x00007f2034640af8:   nopl   0x0(%rax,%rax,1)
   0.68%          │││  0x00007f2034640b00:   cmp    $0x3a9708,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$$Lambda+0x80000002a&apos;)}
                  │││  0x00007f2034640b07:   jne    0x00007f2034640e10
   0.62%          │││  0x00007f2034640b0d:   lea    (%r12,%rbx,8),%r11           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@19 (line 4133)
                  │││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                  │││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.97%          │││  0x00007f2034640b11:   mov    0xc(%r11),%r8d
   0.08%          │││  0x00007f2034640b15:   cmp    %r8d,%r10d
                  │╰│  0x00007f2034640b18:   jne    0x00007f2034640a2c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                  │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 4133)
                  │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                  │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   2.51%          │ │  0x00007f2034640b1e:   mov    0xc(%rdi),%ebp               ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                  │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@28 (line 4133)
                  │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                  │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   2.85%          │ │  0x00007f2034640b21:   inc    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                  │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@34 (line 4133)
                  │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                  │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.03%          │ │  0x00007f2034640b23:   mov    0x8(%r12,%rbp,8),%r10d       ; implicit exception: dispatches to 0x00007f20346413d4
   1.42%          │ │  0x00007f2034640b28:   cmp    $0x33f2c8,%r10d              ;   {metadata(&apos;java/util/regex/Pattern$LastNode&apos;)}
                  │ │  0x00007f2034640b2f:   jne    0x00007f203464104c           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                  │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 4134)
                  │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                  │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.31%          │ │  0x00007f2034640b35:   mov    %eax,0x4(%rsp)
   0.01%          │ │  0x00007f2034640b39:   mov    %esi,(%rsp)                  ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
                  │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@19 (line 4133)
                  │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                  │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.04%          │ │  0x00007f2034640b3c:   lea    (%r12,%rbp,8),%rsi
   0.00%          │ │  0x00007f2034640b40:   mov    0x28(%rsp),%rdx
   0.27%          │ │  0x00007f2034640b45:   mov    0x40(%rsp),%r8
                  │ │  0x00007f2034640b4a:   nop
   0.05%          │ │  0x00007f2034640b4b:   call   0x00007f202cc0e6e0           ; ImmutableOopMap {[8]=Oop [40]=Oop [64]=Oop [72]=NarrowOop }
                  │ │                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                  │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 4134)
                  │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                  │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                  │ │                                                            ;   {optimized virtual_call}
   0.99%          │ │  0x00007f2034640b50:   nopl   0x1000540(%rax,%rax,1)       ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                  │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 4134)
                  │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                  │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                  │ │                                                            ;   {other}
   0.01%          │ │  0x00007f2034640b58:   test   %eax,%eax
   0.02%          │ │  0x00007f2034640b5a:   nopw   0x0(%rax,%rax,1)
                  │ │  0x00007f2034640b60:   je     0x00007f20346411f0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                  │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@39 (line 4134)
                  │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                  │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.33%          │ │  0x00007f2034640b66:   mov    $0x1,%r8d
   0.01%          │ │  0x00007f2034640b6c:   mov    (%rsp),%esi
   0.55%          │ │  0x00007f2034640b6f:   mov    0x4(%rsp),%eax
   0.33%          │ ╰  0x00007f2034640b73:   jmp    0x00007f2034640a2f
                  ↘    0x00007f2034640b78:   nopl   0x0(%rax,%rax,1)
                       0x00007f2034640b80:   cmp    $0x33ea88,%ebx               ;   {metadata(&apos;java/util/regex/Pattern$BmpCharPropertyGreedy&apos;)}
                       0x00007f2034640b86:   jne    0x00007f2034640f54
                       0x00007f2034640b8c:   mov    %rdi,%rcx                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                                 ; - java.util.regex.Matcher::search@121 (line 1738)
                       0x00007f2034640b8f:   mov    %r13d,%r11d
                       0x00007f2034640b92:   cmp    %r8d,%r13d
                       0x00007f2034640b95:   jge    0x00007f2034641114           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4502)
....................................................................................................
  49.47%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.regex.Pattern::split, version 4, compile id 650 

                                                                         ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                         ;   {other}
               0x00007f203464ce70:   test   %eax,%eax
               0x00007f203464ce72:   je     0x00007f203464e6c8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern::split@38 (line 1405)
               0x00007f203464ce78:   mov    0x20(%rsp),%r10
               0x00007f203464ce7d:   data16 xchg %ax,%ax
               0x00007f203464ce80:   mov    0x8(%r10),%r11d              ; implicit exception: dispatches to 0x00007f203464ea35
               0x00007f203464ce84:   cmp    $0xe8d8,%r11d                ;   {metadata(&apos;java/lang/String&apos;)}
               0x00007f203464ce8b:   jne    0x00007f203464ea35
   0.00%       0x00007f203464ce91:   mov    0xc(%rsp),%r11d
               0x00007f203464ce96:   test   %r11d,%r11d
               0x00007f203464ce99:   jne    0x00007f203464ea35           ;*invokeinterface subSequence {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern::split@93 (line 1412)
               0x00007f203464ce9f:   mov    %r10,0x30(%rsp)
               0x00007f203464cea4:   xor    %r11d,%r11d
               0x00007f203464cea7:   xor    %ebx,%ebx
          ╭    0x00007f203464cea9:   jmp    0x00007f203464d10e
          │    0x00007f203464ceae:   xchg   %ax,%ax
   0.37%  │    0x00007f203464ceb0:   sub    %r11d,%r10d                  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.Arrays::copyOfRange@10 (line 3854)
          │                                                              ; - java.lang.StringLatin1::newString@16 (line 752)
          │                                                              ; - java.lang.String::substring@41 (line 2835)
          │                                                              ; - java.lang.String::subSequence@3 (line 2868)
          │                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
          │    0x00007f203464ceb3:   nopw   0x0(%rax,%rax,1)
          │    0x00007f203464cebc:   data16 data16 xchg %ax,%ax
          │    0x00007f203464cec0:   cmp    $0x100000,%r10d
          │    0x00007f203464cec7:   ja     0x00007f203464df74
   0.36%  │    0x00007f203464cecd:   movslq %r10d,%r9                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.Arrays::copyOfRangeByte@10 (line 3863)
          │                                                              ; - java.util.Arrays::copyOfRange@13 (line 3854)
          │                                                              ; - java.lang.StringLatin1::newString@16 (line 752)
          │                                                              ; - java.lang.String::substring@41 (line 2835)
          │                                                              ; - java.lang.String::subSequence@3 (line 2868)
          │                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
          │    0x00007f203464ced0:   test   %r11d,%r11d
          │    0x00007f203464ced3:   jl     0x00007f203464dfe8           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.Arrays::copyOfRangeByte@27 (line 3864)
          │                                                              ; - java.util.Arrays::copyOfRange@13 (line 3854)
          │                                                              ; - java.lang.StringLatin1::newString@16 (line 752)
          │                                                              ; - java.lang.String::substring@41 (line 2835)
          │                                                              ; - java.lang.String::subSequence@3 (line 2868)
          │                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
          │    0x00007f203464ced9:   mov    %esi,%ebp
          │    0x00007f203464cedb:   sub    %r11d,%ebp
   0.35%  │    0x00007f203464cede:   cmp    %r10d,%ebp
          │    0x00007f203464cee1:   cmovg  %r10d,%ebp                   ;*invokestatic min {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.Arrays::copyOfRangeByte@24 (line 3865)
          │                                                              ; - java.util.Arrays::copyOfRange@13 (line 3854)
          │                                                              ; - java.lang.StringLatin1::newString@16 (line 752)
          │                                                              ; - java.lang.String::substring@41 (line 2835)
          │                                                              ; - java.lang.String::subSequence@3 (line 2868)
          │                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
          │    0x00007f203464cee5:   lea    (%r11,%rbp,1),%edx
          │    0x00007f203464cee9:   cmp    %edx,%esi
          │    0x00007f203464ceeb:   jb     0x00007f203464dfe8
   0.36%  │    0x00007f203464cef1:   cmp    %ebp,%r10d
          │    0x00007f203464cef4:   jb     0x00007f203464dfe8
          │    0x00007f203464cefa:   test   %ebp,%ebp
          │    0x00007f203464cefc:   nopl   0x0(%rax)
          │    0x00007f203464cf00:   jl     0x00007f203464dfe8           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.Arrays::copyOfRangeByte@27 (line 3864)
          │                                                              ; - java.util.Arrays::copyOfRange@13 (line 3854)
          │                                                              ; - java.lang.StringLatin1::newString@16 (line 752)
          │                                                              ; - java.lang.String::substring@41 (line 2835)
          │                                                              ; - java.lang.String::subSequence@3 (line 2868)
          │                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
   0.38%  │    0x00007f203464cf06:   add    $0x17,%r9                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.Arrays::copyOfRangeByte@10 (line 3863)
          │                                                              ; - java.util.Arrays::copyOfRange@13 (line 3854)
          │                                                              ; - java.lang.StringLatin1::newString@16 (line 752)
          │                                                              ; - java.lang.String::substring@41 (line 2835)
          │                                                              ; - java.lang.String::subSequence@3 (line 2868)
          │                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
          │    0x00007f203464cf0a:   cmp    $0x100000,%r10d
          │    0x00007f203464cf11:   ja     0x00007f203464dc6d
          │    0x00007f203464cf17:   mov    0x1b8(%r15),%r14
   0.01%  │    0x00007f203464cf1e:   mov    %r9,%rcx
   0.39%  │    0x00007f203464cf21:   and    $0xfffffffffffffff8,%rcx
          │    0x00007f203464cf25:   mov    %r14,%rdi
          │    0x00007f203464cf28:   add    %rcx,%rdi
   0.00%  │    0x00007f203464cf2b:   cmp    0x1c8(%r15),%rdi
          │    0x00007f203464cf32:   jae    0x00007f203464dc6d           ;*putfield groups {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Matcher::&lt;init&gt;@65 (line 251)
          │                                                              ; - java.util.regex.Pattern::matcher@38 (line 1180)
          │                                                              ; - java.util.regex.Pattern::split@28 (line 1402)
   0.65%  │    0x00007f203464cf38:   mov    %rdi,0x1b8(%r15)
          │    0x00007f203464cf3f:   prefetchw 0xc0(%rdi)
   0.02%  │    0x00007f203464cf46:   movq   $0x1,(%r14)
          │    0x00007f203464cf4d:   prefetchw 0x100(%rdi)
   0.30%  │    0x00007f203464cf54:   movl   $0x22c0,0x8(%r14)            ;   {metadata({type array byte})}
   0.01%  │    0x00007f203464cf5c:   mov    %r10d,0xc(%r14)
   1.03%  │    0x00007f203464cf60:   prefetchw 0x140(%rdi)
          │    0x00007f203464cf67:   prefetchw 0x180(%rdi)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.Arrays::copyOfRangeByte@10 (line 3863)
          │                                                              ; - java.util.Arrays::copyOfRange@13 (line 3854)
          │                                                              ; - java.lang.StringLatin1::newString@16 (line 752)
          │                                                              ; - java.lang.String::substring@41 (line 2835)
          │                                                              ; - java.lang.String::subSequence@3 (line 2868)
          │                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
   0.28%  │    0x00007f203464cf6e:   mov    %r14,%rsi
          │    0x00007f203464cf71:   add    $0x10,%rsi
   0.24%  │    0x00007f203464cf75:   shr    $0x3,%r9
          │    0x00007f203464cf79:   test   %ebp,%ebp
   0.10%  │    0x00007f203464cf7b:   nopl   0x0(%rax,%rax,1)
          │    0x00007f203464cf80:   je     0x00007f203464df7c
   0.28%  │    0x00007f203464cf86:   lea    0x10(%r8,%r11,1),%r11
          │    0x00007f203464cf8b:   movslq %ebp,%rdx
   0.09%  │    0x00007f203464cf8e:   cmp    %r10d,%ebp
          │    0x00007f203464cf91:   jl     0x00007f203464d4b0
          │    0x00007f203464cf97:   mov    %r11,%rdi
   0.27%  │    0x00007f203464cf9a:   vzeroupper 
   0.32%  │    0x00007f203464cf9d:   movabs $0x7f20340a9080,%r10
          │    0x00007f203464cfa7:   call   *%r10
   0.48%  │    0x00007f203464cfaa:   nopl   0x0(%rax,%rax,1)             ;*putfield groups {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Matcher::&lt;init&gt;@65 (line 251)
          │                                                              ; - java.util.regex.Pattern::matcher@38 (line 1180)
          │                                                              ; - java.util.regex.Pattern::split@28 (line 1402)
          │                                                              ;   {other}
   0.00%  │    0x00007f203464cfb2:   cmpb   $0x0,0x40(%r15)
   1.40%  │    0x00007f203464cfb7:   jne    0x00007f203464d425
   0.39%  │    0x00007f203464cfbd:   mov    %r13,%r10
          │    0x00007f203464cfc0:   mov    %r14,%r11
          │    0x00007f203464cfc3:   shr    $0x3,%r11
   0.00%  │    0x00007f203464cfc7:   mov    %r11d,0x14(%r13)
   0.75%  │    0x00007f203464cfcb:   mov    %r14,%r11
   0.00%  │    0x00007f203464cfce:   xor    %r10,%r11
          │    0x00007f203464cfd1:   shr    $0x15,%r11
   0.00%  │    0x00007f203464cfd5:   test   %r11,%r11
          │╭   0x00007f203464cfd8:   je     0x00007f203464cff4
          ││   0x00007f203464cfda:   shr    $0x9,%r10
          ││   0x00007f203464cfde:   movabs $0x7f204528d000,%rdi
          ││   0x00007f203464cfe8:   add    %r10,%rdi
          ││   0x00007f203464cfeb:   cmpb   $0x2,(%rdi)
          ││   0x00007f203464cfee:   jne    0x00007f203464d45f           ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - java.lang.String::&lt;init&gt;@6 (line 4804)
          ││                                                             ; - java.lang.StringLatin1::newString@20 (line 752)
          ││                                                             ; - java.lang.String::substring@41 (line 2835)
          ││                                                             ; - java.lang.String::subSequence@3 (line 2868)
          ││                                                             ; - java.util.regex.Pattern::split@93 (line 1412)
   0.36%  │↘   0x00007f203464cff4:   mov    %r12b,0x10(%r13)             ;*invokevirtual substring {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.String::subSequence@3 (line 2868)
          │                                                              ; - java.util.regex.Pattern::split@93 (line 1412)
   0.28%  │    0x00007f203464cff8:   mov    0x38(%rsp),%r10
   0.34%  │    0x00007f203464cffd:   incl   0xc(%r10)                    ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.ArrayList::add@7 (line 495)
          │                                                              ; - java.util.regex.Pattern::split@109 (line 1413)
   2.77%  │    0x00007f203464d001:   mov    0x14(%r10),%r11d             ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.ArrayList::add@13 (line 496)
          │                                                              ; - java.util.regex.Pattern::split@109 (line 1413)
   0.01%  │    0x00007f203464d005:   mov    0xc(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007f203464f16c
          │                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.ArrayList::add@2 (line 482)
          │                                                              ; - java.util.ArrayList::add@20 (line 496)
          │                                                              ; - java.util.regex.Pattern::split@109 (line 1413)
   0.33%  │    0x00007f203464d00a:   mov    0x38(%rsp),%r8
          │    0x00007f203464d00f:   mov    0x10(%r8),%ebp               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.ArrayList::add@17 (line 496)
          │                                                              ; - java.util.regex.Pattern::split@109 (line 1413)
          │    0x00007f203464d013:   cmp    %r10d,%ebp
          │    0x00007f203464d016:   je     0x00007f203464d365           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.ArrayList::add@3 (line 482)
          │                                                              ; - java.util.ArrayList::add@20 (line 496)
          │                                                              ; - java.util.regex.Pattern::split@109 (line 1413)
   0.33%  │    0x00007f203464d01c:   lea    (%r12,%r11,8),%rax           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.ArrayList::add@11 (line 484)
          │                                                              ; - java.util.ArrayList::add@20 (line 496)
          │                                                              ; - java.util.regex.Pattern::split@109 (line 1413)
          │    0x00007f203464d020:   mov    0xc(%rax),%r10d
   0.01%  │    0x00007f203464d024:   cmp    %r10d,%ebp
          │    0x00007f203464d027:   jae    0x00007f203464def4
   0.35%  │    0x00007f203464d02d:   mov    0x8(%rax),%r10d
          │    0x00007f203464d031:   cmp    $0x1258,%r10d                ;   {metadata(&apos;java/lang/Object&apos;[])}
          │    0x00007f203464d038:   jne    0x00007f203464df34
   0.33%  │    0x00007f203464d03e:   lea    0x10(%rax,%rbp,4),%r14       ;*putfield groups {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Matcher::&lt;init&gt;@65 (line 251)
          │                                                              ; - java.util.regex.Pattern::matcher@38 (line 1180)
          │                                                              ; - java.util.regex.Pattern::split@28 (line 1402)
          │    0x00007f203464d043:   cmpb   $0x0,0x40(%r15)
   0.01%  │    0x00007f203464d048:   jne    0x00007f203464d39a
   0.00%  │    0x00007f203464d04e:   mov    %r14,%r10
   0.29%  │    0x00007f203464d051:   mov    %r13,%r11
          │    0x00007f203464d054:   shr    $0x3,%r11
   0.00%  │    0x00007f203464d058:   mov    %r11d,(%r14)
   0.69%  │    0x00007f203464d05b:   inc    %ebp
          │    0x00007f203464d05d:   mov    %r13,%r11
          │    0x00007f203464d060:   xor    %r10,%r11
          │    0x00007f203464d063:   shr    $0x15,%r11
   0.34%  │    0x00007f203464d067:   test   %r11,%r11
          │ ╭  0x00007f203464d06a:   je     0x00007f203464d089
          │ │  0x00007f203464d06c:   shr    $0x9,%r10
   0.00%  │ │  0x00007f203464d070:   movabs $0x7f204528d000,%rdi
          │ │  0x00007f203464d07a:   add    %r10,%rdi
          │ │  0x00007f203464d07d:   data16 xchg %ax,%ax
          │ │  0x00007f203464d080:   cmpb   $0x2,(%rdi)
          │ │  0x00007f203464d083:   jne    0x00007f203464d3d3           ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.ArrayList::add@14 (line 484)
          │ │                                                            ; - java.util.ArrayList::add@20 (line 496)
          │ │                                                            ; - java.util.regex.Pattern::split@109 (line 1413)
   0.00%  │ ↘  0x00007f203464d089:   mov    0x38(%rsp),%r10
   0.01%  │    0x00007f203464d08e:   mov    %ebp,0x10(%r10)              ;*putfield size {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.ArrayList::add@19 (line 485)
          │                                                              ; - java.util.ArrayList::add@20 (line 496)
          │                                                              ; - java.util.regex.Pattern::split@109 (line 1413)
   0.17%  │    0x00007f203464d092:   mov    0x28(%rsp),%r10
   0.26%  │    0x00007f203464d097:   mov    0x1c(%r10),%r10d             ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Matcher::hasMatch@1 (line 1850)
          │                                                              ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
          │                                                              ; - java.util.regex.Matcher::end@1 (line 535)
          │                                                              ; - java.util.regex.Pattern::split@115 (line 1414)
   0.01%  │    0x00007f203464d09b:   nopl   0x0(%rax,%rax,1)
   0.00%  │    0x00007f203464d0a0:   test   %r10d,%r10d
          │    0x00007f203464d0a3:   jl     0x00007f203464e280           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Matcher::hasMatch@4 (line 1850)
          │                                                              ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
          │                                                              ; - java.util.regex.Matcher::end@1 (line 535)
          │                                                              ; - java.util.regex.Pattern::split@115 (line 1414)
   0.08%  │    0x00007f203464d0a9:   mov    0x28(%rsp),%r11
   0.25%  │    0x00007f203464d0ae:   mov    0x20(%r11),%ebp              ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Matcher::end@5 (line 536)
          │                                                              ; - java.util.regex.Pattern::split@115 (line 1414)
   0.01%  │    0x00007f203464d0b2:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Pattern::split@148 (line 1418)
   0.01%  │    0x00007f203464d0b4:   cmp    %r10d,%ebp
          │    0x00007f203464d0b7:   je     0x00007f203464e5f4           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Matcher::find@10 (line 745)
          │                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
   0.11%  │    0x00007f203464d0bd:   mov    0xc(%r11),%r11d              ;*getfield from {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Matcher::find@18 (line 749)
          │                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
   0.23%  │    0x00007f203464d0c1:   cmp    %r11d,%ebp
          │    0x00007f203464d0c4:   jl     0x00007f203464e628           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Matcher::find@21 (line 749)
          │                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
   0.00%  │    0x00007f203464d0ca:   mov    0x28(%rsp),%r10
   0.00%  │    0x00007f203464d0cf:   mov    0x10(%r10),%r11d             ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Matcher::find@31 (line 753)
          │                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
   0.09%  │    0x00007f203464d0d3:   cmp    %r11d,%ebp
          │    0x00007f203464d0d6:   jg     0x00007f203464e65c
   0.25%  │    0x00007f203464d0dc:   mov    %ebp,(%rsp)
          │    0x00007f203464d0df:   mov    %ebx,%ebp                    ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Matcher::find@34 (line 753)
          │                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
          │    0x00007f203464d0e1:   mov    0x28(%rsp),%rsi
   0.10%  │    0x00007f203464d0e6:   mov    (%rsp),%edx
   0.44%  │    0x00007f203464d0e9:   data16 xchg %ax,%ax
          │    0x00007f203464d0ec:   vzeroupper 
   0.35%  │    0x00007f203464d0ef:   call   0x00007f2034640880           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop [56]=Oop }
          │                                                              ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Matcher::find@65 (line 758)
          │                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
          │                                                              ;   {optimized virtual_call}
   0.01%  │    0x00007f203464d0f4:   nopl   0x3000ce4(%rax,%rax,1)       ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Matcher::find@65 (line 758)
          │                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
          │                                                              ;   {other}
   0.00%  │    0x00007f203464d0fc:   nopl   0x0(%rax)
          │    0x00007f203464d100:   test   %eax,%eax
          │    0x00007f203464d102:   je     0x00007f203464d547           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Pattern::split@38 (line 1405)
   0.36%  │    0x00007f203464d108:   mov    (%rsp),%r11d
   1.29%  │    0x00007f203464d10c:   mov    %ebp,%ebx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Pattern::split@41 (line 1406)
          ↘    0x00007f203464d10e:   mov    0x28(%rsp),%r10
   0.02%       0x00007f203464d113:   mov    0x1c(%r10),%r10d             ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Matcher::hasMatch@1 (line 1850)
                                                                         ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                         ; - java.util.regex.Matcher::start@1 (line 466)
                                                                         ; - java.util.regex.Pattern::split@63 (line 1407)
   1.33%       0x00007f203464d117:   test   %r11d,%r11d
               0x00007f203464d11a:   nopw   0x0(%rax,%rax,1)
               0x00007f203464d120:   je     0x00007f203464d52d           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern::split@66 (line 1407)
   0.01%       0x00007f203464d126:   test   %r10d,%r10d
               0x00007f203464d129:   jl     0x00007f203464e1c8           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Matcher::hasMatch@4 (line 1850)
                                                                         ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                         ; - java.util.regex.Matcher::start@1 (line 466)
                                                                         ; - java.util.regex.Pattern::split@90 (line 1412)
   0.32%       0x00007f203464d12f:   mov    0x30(%rsp),%r8
   0.02%       0x00007f203464d134:   mov    0x14(%r8),%ecx               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::length@1 (line 1519)
                                                                         ; - java.lang.String::substring@1 (line 2829)
                                                                         ; - java.lang.String::subSequence@3 (line 2868)
                                                                         ; - java.util.regex.Pattern::split@93 (line 1412)
   0.35%       0x00007f203464d138:   nopl   0x0(%rax,%rax,1)
   0.01%       0x00007f203464d140:   mov    0xc(%r12,%rcx,8),%esi        ; implicit exception: dispatches to 0x00007f203464f154
                                                                         ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::length@4 (line 1519)
                                                                         ; - java.lang.String::substring@1 (line 2829)
                                                                         ; - java.lang.String::subSequence@3 (line 2868)
                                                                         ; - java.util.regex.Pattern::split@93 (line 1412)
   1.61%       0x00007f203464d145:   movsbl 0x10(%r8),%r9d               ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::coder@7 (line 4809)
                                                                         ; - java.lang.String::length@6 (line 1519)
                                                                         ; - java.lang.String::substring@1 (line 2829)
                                                                         ; - java.lang.String::subSequence@3 (line 2868)
                                                                         ; - java.util.regex.Pattern::split@93 (line 1412)
   0.00%       0x00007f203464d14a:   sarx   %r9d,%esi,%edi               ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::length@9 (line 1519)
                                                                         ; - java.lang.String::substring@1 (line 2829)
                                                                         ; - java.lang.String::subSequence@3 (line 2868)
                                                                         ; - java.util.regex.Pattern::split@93 (line 1412)
   0.33%       0x00007f203464d14f:   test   %r11d,%r11d
               0x00007f203464d152:   jl     0x00007f203464e210           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.util.Preconditions::checkFromToIndex@1 (line 348)
                                                                         ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                         ; - java.lang.String::substring@8 (line 2830)
                                                                         ; - java.lang.String::subSequence@3 (line 2868)
                                                                         ; - java.util.regex.Pattern::split@93 (line 1412)
   0.00%       0x00007f203464d158:   cmp    %r10d,%r11d
   0.00%       0x00007f203464d15b:   nopl   0x0(%rax,%rax,1)
               0x00007f203464d160:   jg     0x00007f203464e50c           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.util.Preconditions::checkFromToIndex@6 (line 348)
                                                                         ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                         ; - java.lang.String::substring@8 (line 2830)
                                                                         ; - java.lang.String::subSequence@3 (line 2868)
                                                                         ; - java.util.regex.Pattern::split@93 (line 1412)
   0.30%       0x00007f203464d166:   cmp    %edi,%r10d
               0x00007f203464d169:   jg     0x00007f203464e580           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.util.Preconditions::checkFromToIndex@11 (line 348)
                                                                         ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                         ; - java.lang.String::substring@8 (line 2830)
                                                                         ; - java.lang.String::subSequence@3 (line 2868)
                                                                         ; - java.util.regex.Pattern::split@93 (line 1412)
   0.00%       0x00007f203464d16f:   test   %r11d,%r11d
               0x00007f203464d172:   je     0x00007f203464d348           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::substring@12 (line 2831)
                                                                         ; - java.lang.String::subSequence@3 (line 2868)
                                                                         ; - java.util.regex.Pattern::split@93 (line 1412)
   0.01%       0x00007f203464d178:   mov    %r10d,%r8d
               0x00007f203464d17b:   sub    %r11d,%r8d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::substring@24 (line 2834)
                                                                         ; - java.lang.String::subSequence@3 (line 2868)
                                                                         ; - java.util.regex.Pattern::split@93 (line 1412)
   0.30%       0x00007f203464d17e:   xchg   %ax,%ax
   0.00%       0x00007f203464d180:   test   %r9d,%r9d
               0x00007f203464d183:   jne    0x00007f203464e31e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::isLatin1@10 (line 4817)
                                                                         ; - java.lang.String::substring@28 (line 2835)
                                                                         ; - java.lang.String::subSequence@3 (line 2868)
                                                                         ; - java.util.regex.Pattern::split@93 (line 1412)
   0.00%       0x00007f203464d189:   cmp    %r11d,%r10d
               0x00007f203464d18c:   je     0x00007f203464e684
               0x00007f203464d192:   mov    0x1b8(%r15),%r13
   0.34%       0x00007f203464d199:   mov    %r13,%r9
   0.01%       0x00007f203464d19c:   add    $0x18,%r9
   0.01%       0x00007f203464d1a0:   cmp    0x1c8(%r15),%r9
               0x00007f203464d1a7:   jae    0x00007f203464dc1d           ;*putfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Matcher::&lt;init&gt;@65 (line 251)
                                                                         ; - java.util.regex.Pattern::matcher@38 (line 1180)
                                                                         ; - java.util.regex.Pattern::split@28 (line 1402)
               0x00007f203464d1ad:   mov    %r9,0x1b8(%r15)
   0.32%       0x00007f203464d1b4:   prefetchw 0xc0(%r9)
   0.02%       0x00007f203464d1bc:   movq   $0x1,0x0(%r13)
   0.04%       0x00007f203464d1c4:   movl   $0xe8d8,0x8(%r13)            ;   {metadata(&apos;java/lang/String&apos;)}
   0.79%       0x00007f203464d1cc:   mov    %r12d,0xc(%r13)
   0.02%       0x00007f203464d1d0:   mov    %r12,0x10(%r13)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.StringLatin1::newString@7 (line 752)
                                                                         ; - java.lang.String::substring@41 (line 2835)
                                                                         ; - java.lang.String::subSequence@3 (line 2868)
                                                                         ; - java.util.regex.Pattern::split@93 (line 1412)
   0.14%       0x00007f203464d1d4:   lea    (%r12,%rcx,8),%r8            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::length@1 (line 1519)
                                                                         ; - java.lang.String::substring@1 (line 2829)
                                                                         ; - java.lang.String::subSequence@3 (line 2868)
                                                                         ; - java.util.regex.Pattern::split@93 (line 1412)
               0x00007f203464d1d8:   test   %r11d,%r11d
   0.27%       0x00007f203464d1db:   nopl   0x0(%rax,%rax,1)
   0.00%       0x00007f203464d1e0:   jne    0x00007f203464d2cd           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Arrays::copyOfRange@1 (line 3853)
                                                                         ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                         ; - java.lang.String::substring@41 (line 2835)
                                                                         ; - java.lang.String::subSequence@3 (line 2868)
                                                                         ; - java.util.regex.Pattern::split@93 (line 1412)
               0x00007f203464d1e6:   cmp    %esi,%r10d
               0x00007f203464d1e9:   jne    0x00007f203464d2c5
               0x00007f203464d1ef:   movslq %esi,%r9
               0x00007f203464d1f2:   add    $0x17,%r9
               0x00007f203464d1f6:   and    $0xfffffffffffffff8,%r9      ;*invokevirtual clone {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  25.88%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.47%         c2, level 4  java.util.regex.Matcher::search, version 4, compile id 633 
  25.88%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 650 
   5.95%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   5.42%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.99%         c2, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 637 
   3.02%         c2, level 4  java.util.regex.Matcher::search, version 4, compile id 633 
   1.73%        runtime stub  StubRoutines::checkcast_arraycopy 
   0.66%              kernel  [unknown] 
   0.65%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.39%         c2, level 4  java.util.ArrayList::grow, version 2, compile id 666 
   0.20%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 650 
   0.12%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.10%         c2, level 4  java.util.ArrayList::grow, version 2, compile id 666 
   0.08%              kernel  [unknown] 
   0.08%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 650 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 650 
   0.07%              kernel  [unknown] 
   1.85%  <...other 473 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.50%         c2, level 4  java.util.regex.Matcher::search, version 4, compile id 633 
  26.32%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 650 
  11.37%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.99%         c2, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 637 
   2.11%              kernel  [unknown] 
   1.76%        runtime stub  StubRoutines::checkcast_arraycopy 
   0.65%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.52%         c2, level 4  java.util.ArrayList::grow, version 2, compile id 666 
   0.07%                      <unknown> 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%        libc-2.31.so  __memset_avx2_erms 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%         c2, level 4  java.lang.String::length, version 2, compile id 278 
   0.01%           libjvm.so  G1CardSet::reset_table_scanner 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.51%  <...other 169 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  83.36%         c2, level 4
  13.77%        runtime stub
   2.11%              kernel
   0.45%           libjvm.so
   0.15%        libc-2.31.so
   0.07%                    
   0.03%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.00%       libdl-2.31.so
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.alloc.rate":
  605.485 ±(99.9%) 1.456 MB/sec [Average]
  (min, avg, max) = (604.963, 605.485, 605.960), stdev = 0.378
  CI (99.9%): [604.030, 606.941] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.alloc.rate.norm":
  143120.172 ±(99.9%) 0.133 B/op [Average]
  (min, avg, max) = (143120.156, 143120.172, 143120.233), stdev = 0.034
  CI (99.9%): [143120.039, 143120.304] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.count":
  13.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (2.000, 2.600, 3.000), stdev = 0.548
  CI (99.9%): [13.000, 13.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.time":
  30.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (4.000, 6.000, 9.000), stdev = 2.121
  CI (99.9%): [30.000, 30.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = __)

# Run progress: 25.00% complete, ETA 00:05:32
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 425.299 us/op
# Warmup Iteration   2: 368.617 us/op
# Warmup Iteration   3: 367.964 us/op
# Warmup Iteration   4: 367.554 us/op
# Warmup Iteration   5: 367.477 us/op
Iteration   1: 367.685 us/op
                 gc.alloc.rate:      371.205 MB/sec
                 gc.alloc.rate.norm: 143120.254 B/op
                 gc.count:           1.000 counts
                 gc.time:            2.000 ms

Iteration   2: 368.418 us/op
                 gc.alloc.rate:      370.468 MB/sec
                 gc.alloc.rate.norm: 143120.256 B/op
                 gc.count:           2.000 counts
                 gc.time:            6.000 ms

Iteration   3: 367.840 us/op
                 gc.alloc.rate:      371.050 MB/sec
                 gc.alloc.rate.norm: 143120.254 B/op
                 gc.count:           1.000 counts
                 gc.time:            3.000 ms

Iteration   4: 367.886 us/op
                 gc.alloc.rate:      371.002 MB/sec
                 gc.alloc.rate.norm: 143120.254 B/op
                 gc.count:           2.000 counts
                 gc.time:            6.000 ms

Iteration   5: 367.586 us/op
                 gc.alloc.rate:      371.303 MB/sec
                 gc.alloc.rate.norm: 143120.255 B/op
                 gc.count:           1.000 counts
                 gc.time:            3.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split":
  367.883 ±(99.9%) 1.241 us/op [Average]
  (min, avg, max) = (367.586, 367.883, 368.418), stdev = 0.322
  CI (99.9%): [366.642, 369.124] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:asm":
PrintAssembly processed: 164418 total address lines.
Perf output processed (skipped 56.669 seconds):
 Column 1: cycles (50712 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.regex.Matcher::search, version 3, compile id 620 

                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1738)
              0x00007fe12463d279:   cmp    %ebx,%eax
              0x00007fe12463d27b:   nopl   0x0(%rax,%rax,1)
              0x00007fe12463d280:   jge    0x00007fe12463d7f8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4502)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1738)
              0x00007fe12463d286:   mov    %eax,%esi
              0x00007fe12463d288:   jmp    0x00007fe12463d126
   1.31%      0x00007fe12463d28d:   cmp    $0x3389f0,%r10d              ;   {metadata(&apos;java/util/regex/Pattern$Slice&apos;)}
              0x00007fe12463d294:   jne    0x00007fe12463d774           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1738)
   0.33%      0x00007fe12463d29a:   mov    0x10(%rdx),%r10d             ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$Slice::match@1 (line 4258)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1738)
   0.10%      0x00007fe12463d29e:   xchg   %ax,%ax
   0.08%      0x00007fe12463d2a0:   mov    0xc(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007fe12463d984
                                                                        ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$Slice::match@8 (line 4259)
                                                                        ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1738)
   6.27%      0x00007fe12463d2a5:   test   %r8d,%r8d
          ╭   0x00007fe12463d2a8:   jbe    0x00007fe12463d372           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
          │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
   1.27%  │   0x00007fe12463d2ae:   mov    %r8d,0x2c(%rsp)
   1.39%  │   0x00007fe12463d2b3:   mov    %r10d,0x28(%rsp)
          │   0x00007fe12463d2b8:   mov    %rdx,0x18(%rsp)
   0.03%  │   0x00007fe12463d2bd:   mov    %esi,0x4(%rsp)
   0.00%  │   0x00007fe12463d2c1:   mov    %rdi,0x30(%rsp)
   1.46%  │   0x00007fe12463d2c6:   mov    %rax,0x10(%rsp)
          │   0x00007fe12463d2cb:   mov    %r11d,(%rsp)
   0.03%  │   0x00007fe12463d2cf:   mov    %rbx,0x8(%rsp)
   0.01%  │   0x00007fe12463d2d4:   mov    %ecx,0x54(%rsp)
   1.36%  │   0x00007fe12463d2d8:   mov    %r9d,0x50(%rsp)
   0.00%  │   0x00007fe12463d2dd:   mov    %r13,0x20(%rsp)
   0.03%  │   0x00007fe12463d2e2:   shl    $0x3,%r10                    ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.regex.Pattern$Slice::match@1 (line 4258)
          │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
          │   0x00007fe12463d2e6:   mov    %r10,0x40(%rsp)
   1.43%  │   0x00007fe12463d2eb:   mov    %r9,%r10
          │   0x00007fe12463d2ee:   shl    $0x3,%r10                    ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.regex.Matcher::search@118 (line 1738)
   0.04%  │   0x00007fe12463d2f2:   mov    %r10,0x48(%rsp)
   0.01%  │   0x00007fe12463d2f7:   xor    %r10d,%r10d
   1.53%  │   0x00007fe12463d2fa:   mov    %r10d,0x6c(%rsp)
          │   0x00007fe12463d2ff:   nop                                 ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.regex.Pattern$Slice::match@21 (line 4261)
          │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
   0.02%  │↗  0x00007fe12463d300:   mov    0x20(%rsp),%r10
   0.12%  ││  0x00007fe12463d305:   mov    0x10(%r10),%r10d
   2.08%  ││  0x00007fe12463d309:   mov    0x6c(%rsp),%edx
   0.56%  ││  0x00007fe12463d30d:   add    0x38(%rsp),%edx              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@24 (line 4261)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.27%  ││  0x00007fe12463d311:   cmp    %r10d,%edx
          ││  0x00007fe12463d314:   jge    0x00007fe12463d3e6
   0.32%  ││  0x00007fe12463d31a:   mov    0x6c(%rsp),%r11d
   1.59%  ││  0x00007fe12463d31f:   nop
          ││  0x00007fe12463d320:   cmp    0x2c(%rsp),%r11d
          ││  0x00007fe12463d325:   jae    0x00007fe12463d65c           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@29 (line 4261)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.14%  ││  0x00007fe12463d32b:   mov    0x40(%rsp),%r10
   0.20%  ││  0x00007fe12463d330:   mov    0x10(%r10,%r11,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@43 (line 4265)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   2.01%  ││  0x00007fe12463d335:   mov    0x48(%rsp),%rsi
   0.00%  ││  0x00007fe12463d33a:   data16 xchg %ax,%ax
   0.03%  ││  0x00007fe12463d33d:   movabs $0x7fe0a700e8d8,%rax
   0.09%  ││  0x00007fe12463d347:   call   0x00007fe12460eea0           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=NarrowOop [48]=Oop [64]=Oop [72]=Oop [80]=NarrowOop }
          ││                                                            ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          ││                                                            ;   {virtual_call}
   1.83%  ││  0x00007fe12463d34c:   nopl   0x200073c(%rax,%rax,1)       ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          ││                                                            ;   {other}
   0.04%  ││  0x00007fe12463d354:   cmp    %eax,%ebp
          ││  0x00007fe12463d356:   jne    0x00007fe12463d3f7           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   1.37%  ││  0x00007fe12463d35c:   mov    0x6c(%rsp),%r11d
   2.82%  ││  0x00007fe12463d361:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.regex.Pattern$Slice::match@59 (line 4260)
          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.32%  ││  0x00007fe12463d364:   mov    %r11d,0x6c(%rsp)
   0.71%  ││  0x00007fe12463d369:   cmp    0x2c(%rsp),%r11d
          │╰  0x00007fe12463d36e:   jl     0x00007fe12463d300
   0.00%  │   0x00007fe12463d370:   jmp    0x00007fe12463d3a1
          ↘   0x00007fe12463d372:   mov    %r13,0x20(%rsp)
              0x00007fe12463d377:   mov    %r9d,0x50(%rsp)
              0x00007fe12463d37c:   mov    %ecx,0x54(%rsp)
              0x00007fe12463d380:   mov    %rbx,0x8(%rsp)
              0x00007fe12463d385:   mov    %r11d,(%rsp)
              0x00007fe12463d389:   mov    %rax,0x10(%rsp)
              0x00007fe12463d38e:   mov    %rdi,0x30(%rsp)
              0x00007fe12463d393:   mov    %esi,0x4(%rsp)
              0x00007fe12463d397:   mov    %rdx,0x18(%rsp)
              0x00007fe12463d39c:   mov    %r8d,0x2c(%rsp)              ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  31.20%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.regex.Matcher::search, version 3, compile id 620 

                    # parm0:    rdx       = int
                    #           [sp+0x90]  (sp of caller)
                    0x00007fe12463ce40:   mov    0x8(%rsi),%r10d
                    0x00007fe12463ce44:   movabs $0x7fe0a7000000,%r11
                    0x00007fe12463ce4e:   add    %r11,%r10
                    0x00007fe12463ce51:   cmp    %r10,%rax
                    0x00007fe12463ce54:   jne    0x00007fe1240c4080           ;   {runtime_call ic_miss_stub}
                    0x00007fe12463ce5a:   xchg   %ax,%ax
                    0x00007fe12463ce5c:   nopl   0x0(%rax)
                  [Verified Entry Point]
   0.21%            0x00007fe12463ce60:   mov    %eax,-0x14000(%rsp)
   0.01%            0x00007fe12463ce67:   push   %rbp
   0.00%            0x00007fe12463ce68:   sub    $0x80,%rsp
   0.21%            0x00007fe12463ce6f:   nop
   0.00%            0x00007fe12463ce70:   cmpl   $0x1,0x20(%r15)
                    0x00007fe12463ce78:   jne    0x00007fe12463d9ae           ;*synchronization entry
                                                                              ; - java.util.regex.Matcher::search@-1 (line 1726)
   0.19%            0x00007fe12463ce7e:   mov    %rsi,%r13
                    0x00007fe12463ce81:   mov    %r12b,0x31(%rsi)             ;*putfield requireEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@7 (line 1727)
                    0x00007fe12463ce85:   mov    %r12b,0x30(%rsi)             ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@2 (line 1726)
   0.00%            0x00007fe12463ce89:   test   %edx,%edx
                    0x00007fe12463ce8b:   jl     0x00007fe12463d7a4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@11 (line 1728)
   0.18%            0x00007fe12463ce91:   mov    0x24(%rsi),%r10d             ;*getfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@27 (line 1730)
   0.00%            0x00007fe12463ce95:   test   %r10d,%r10d
                    0x00007fe12463ce98:   jl     0x00007fe12463d405
                    0x00007fe12463ce9e:   mov    %r10d,0x24(%rsi)             ;*putfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@41 (line 1730)
                    0x00007fe12463cea2:   mov    %edx,0x1c(%rsi)              ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@22 (line 1729)
   0.21%            0x00007fe12463cea5:   mov    0x38(%rsi),%r10d             ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@48 (line 1731)
                    0x00007fe12463cea9:   mov    0xc(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007fe12463d8fb
                                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@51 (line 1731)
   0.00%            0x00007fe12463ceae:   test   %r8d,%r8d
          ╭         0x00007fe12463ceb1:   jbe    0x00007fe12463cf8d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.regex.Matcher::search@52 (line 1731)
   0.01%  │         0x00007fe12463ceb7:   mov    %r8d,%r11d
   0.18%  │         0x00007fe12463ceba:   dec    %r11d
          │         0x00007fe12463cebd:   data16 xchg %ax,%ax
          │         0x00007fe12463cec0:   cmp    %r8d,%r11d
          │         0x00007fe12463cec3:   jae    0x00007fe12463d71c
   0.00%  │         0x00007fe12463cec9:   lea    (%r12,%r10,8),%rcx
   0.23%  │         0x00007fe12463cecd:   mov    %ecx,%r11d
   0.01%  │         0x00007fe12463ced0:   shr    $0x2,%r11d
          │         0x00007fe12463ced4:   and    $0x3,%r11d
   0.00%  │         0x00007fe12463ced8:   mov    $0xffffffff,%r10d
   0.19%  │         0x00007fe12463cede:   sub    %r11d,%r10d
   0.00%  │         0x00007fe12463cee1:   and    $0x3,%r10d
          │         0x00007fe12463cee5:   inc    %r10d
   0.00%  │         0x00007fe12463cee8:   cmp    %r8d,%r10d
   0.20%  │         0x00007fe12463ceeb:   cmovg  %r8d,%r10d
   0.00%  │         0x00007fe12463ceef:   xor    %r11d,%r11d                  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.regex.Matcher::search@55 (line 1732)
   0.31%  │ ↗       0x00007fe12463cef2:   movl   $0xffffffff,0x10(%rcx,%r11,4);*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                 ; - java.util.regex.Matcher::search@61 (line 1732)
   0.02%  │ │       0x00007fe12463cefb:   mov    %r11d,%r9d
   0.32%  │ │       0x00007fe12463cefe:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                 ; - java.util.regex.Matcher::search@62 (line 1731)
   0.01%  │ │       0x00007fe12463cf01:   cmp    %r10d,%r9d
          │╭│       0x00007fe12463cf04:   jge    0x00007fe12463cf0b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                 ; - java.util.regex.Matcher::search@52 (line 1731)
   0.10%  │││       0x00007fe12463cf06:   mov    %r9d,%r11d
   0.00%  ││╰       0x00007fe12463cf09:   jmp    0x00007fe12463cef2
   0.20%  │↘        0x00007fe12463cf0b:   lea    -0x3(%r8),%ebx
   0.01%  │         0x00007fe12463cf0f:   cmp    %ebx,%r9d
          │         0x00007fe12463cf12:   jge    0x00007fe12463d73c
   0.00%  │         0x00007fe12463cf18:   inc    %r11d
   0.01%  │         0x00007fe12463cf1b:   mov    $0xfa0,%esi
   0.21%  │         0x00007fe12463cf20:   vpcmpeqd %xmm0,%xmm0,%xmm0
   0.01%  │   ↗     0x00007fe12463cf24:   mov    %r8d,%r9d
   0.00%  │   │     0x00007fe12463cf27:   sub    %r11d,%r9d
   0.01%  │   │     0x00007fe12463cf2a:   add    $0xfffffffd,%r9d
   0.21%  │   │     0x00007fe12463cf2e:   xor    %edi,%edi
   0.01%  │   │     0x00007fe12463cf30:   cmp    %r11d,%ebx
          │   │     0x00007fe12463cf33:   cmovl  %edi,%r9d
          │   │     0x00007fe12463cf37:   cmp    $0xfa0,%r9d
   0.23%  │   │     0x00007fe12463cf3e:   cmova  %esi,%r9d
   0.01%  │   │     0x00007fe12463cf42:   add    %r11d,%r9d
   0.00%  │   │     0x00007fe12463cf45:   data16 data16 nopw 0x0(%rax,%rax,1) ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                               ; - java.util.regex.Matcher::search@55 (line 1732)
   0.87%  │  ↗│     0x00007fe12463cf50:   vmovdqu %xmm0,0x10(%rcx,%r11,4)     ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                               ; - java.util.regex.Matcher::search@61 (line 1732)
          │  ││                                                               ;   {no_reloc}
   0.03%  │  ││     0x00007fe12463cf57:   add    $0x4,%r11d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                               ; - java.util.regex.Matcher::search@62 (line 1731)
          │  ││     0x00007fe12463cf5b:   nopl   0x0(%rax,%rax,1)
   0.01%  │  ││     0x00007fe12463cf60:   cmp    %r9d,%r11d
          │  ╰│     0x00007fe12463cf63:   jl     0x00007fe12463cf50           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                               ; - java.util.regex.Matcher::search@65 (line 1731)
   0.18%  │   │     0x00007fe12463cf65:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rcx=Oop r13=Oop }
          │   │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │   │                                                               ; - (reexecute) java.util.regex.Matcher::search@65 (line 1731)
   0.01%  │   │     0x00007fe12463cf6c:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                               ; - java.util.regex.Matcher::search@65 (line 1731)
          │   │                                                               ;   {poll}
   0.03%  │   │     0x00007fe12463cf6f:   cmp    %ebx,%r11d
          │   ╰     0x00007fe12463cf72:   jl     0x00007fe12463cf24
   0.00%  │         0x00007fe12463cf74:   cmp    %r8d,%r11d
          │    ╭    0x00007fe12463cf77:   jge    0x00007fe12463cf8d
   0.09%  │    │    0x00007fe12463cf79:   data16 xchg %ax,%ax                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                              ; - java.util.regex.Matcher::search@55 (line 1732)
   0.10%  │    │↗   0x00007fe12463cf7c:   movl   $0xffffffff,0x10(%rcx,%r11,4);*iastore {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                             ; - java.util.regex.Matcher::search@61 (line 1732)
   0.00%  │    ││   0x00007fe12463cf85:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                             ; - java.util.regex.Matcher::search@62 (line 1731)
   0.01%  │    ││   0x00007fe12463cf88:   cmp    %r8d,%r11d
          │    │╰   0x00007fe12463cf8b:   jl     0x00007fe12463cf7c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                              ; - java.util.regex.Matcher::search@52 (line 1731)
   0.12%  ↘    ↘    0x00007fe12463cf8d:   mov    0x44(%r13),%r11d             ;*getfield localsPos {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@72 (line 1733)
   0.09%            0x00007fe12463cf91:   mov    0xc(%r12,%r11,8),%ebp        ; implicit exception: dispatches to 0x00007fe12463d910
                                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@75 (line 1733)
   0.02%            0x00007fe12463cf96:   test   %ebp,%ebp
                    0x00007fe12463cf98:   ja     0x00007fe12463d7bc           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@76 (line 1733)
   0.02%            0x00007fe12463cf9e:   mov    %r12d,0x18(%r13)             ;*putfield acceptMode {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@105 (line 1737)
   0.10%            0x00007fe12463cfa2:   mov    0x34(%r13),%r11d             ;*getfield parentPattern {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@109 (line 1738)
   0.14%            0x00007fe12463cfa6:   mov    0x34(%r12,%r11,8),%r8d       ; implicit exception: dispatches to 0x00007fe12463d924
                                                                              ;*getfield root {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@112 (line 1738)
   0.02%            0x00007fe12463cfab:   mov    0x3c(%r13),%r9d              ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@118 (line 1738)
   0.01%            0x00007fe12463cfaf:   mov    0x8(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007fe12463d938
   0.22%            0x00007fe12463cfb4:   nopl   0x0(%rax,%rax,1)
   0.07%            0x00007fe12463cfbc:   data16 data16 xchg %ax,%ax
   0.00%            0x00007fe12463cfc0:   cmp    $0x338000,%r10d              ;   {metadata(&apos;java/util/regex/Pattern$Start&apos;)}
                    0x00007fe12463cfc7:   jne    0x00007fe12463d6b8
   0.04%            0x00007fe12463cfcd:   mov    0x10(%r13),%ecx
   0.09%            0x00007fe12463cfd1:   lea    (%r12,%r8,8),%rbx            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
   0.11%            0x00007fe12463cfd5:   sub    0x10(%rbx),%ecx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$Start::match@9 (line 3781)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
   0.05%            0x00007fe12463cfd8:   cmp    %ecx,%edx
   0.05%            0x00007fe12463cfda:   nopw   0x0(%rax,%rax,1)
   0.08%            0x00007fe12463cfe0:   jg     0x00007fe12463d7d8           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$Start::match@10 (line 3781)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
   0.11%            0x00007fe12463cfe6:   mov    0x8(%r12,%r9,8),%r11d        ; implicit exception: dispatches to 0x00007fe12463d6dc
   0.00%            0x00007fe12463cfeb:   cmp    $0xe8d8,%r11d                ;   {metadata(&apos;java/lang/String&apos;)}
                    0x00007fe12463cff2:   jne    0x00007fe12463d6dc
   0.00%            0x00007fe12463cff8:   nopl   0x0(%rax,%rax,1)
   0.07%            0x00007fe12463d000:   cmp    $0x7ffffffe,%ecx
                    0x00007fe12463d006:   jg     0x00007fe12463d690
   0.15%            0x00007fe12463d00c:   mov    %ecx,%r11d
   0.00%            0x00007fe12463d00f:   inc    %r11d
   0.00%            0x00007fe12463d012:   lea    (%r12,%r9,8),%rax            ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@118 (line 1738)
   0.06%            0x00007fe12463d016:   mov    %rax,%rdi                    ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
                                                                              ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
   0.13%            0x00007fe12463d019:   mov    %edx,0x38(%rsp)
   0.00%            0x00007fe12463d01d:   mov    $0x1,%esi
   0.00%         ╭  0x00007fe12463d022:   jmp    0x00007fe12463d06f
                 │  0x00007fe12463d024:   xor    %eax,%eax
                 │  0x00007fe12463d026:   mov    0x28(%rsp),%r13              ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.00%         │  0x00007fe12463d02b:   mov    0x20(%r13),%r8d              ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Pattern$Start::match@71 (line 3790)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   1.66%         │  0x00007fe12463d02f:   test   %eax,%eax
                 │  0x00007fe12463d031:   jne    0x00007fe12463d206           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Pattern$Start::match@47 (line 3787)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.02%         │  0x00007fe12463d037:   mov    0x38(%rsp),%r10d
   0.78%         │  0x00007fe12463d03c:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Pattern$Start::match@77 (line 3786)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                 │  0x00007fe12463d03f:   nop
   0.48%         │  0x00007fe12463d040:   cmp    (%rsp),%r10d
                 │  0x00007fe12463d044:   jge    0x00007fe12463d40d           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Pattern$Start::match@34 (line 3786)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.02%         │  0x00007fe12463d04a:   mov    0x50(%rsp),%r9d
   0.67%         │  0x00007fe12463d04f:   mov    0x54(%rsp),%ecx
                 │  0x00007fe12463d053:   mov    0x8(%rsp),%rbx
   0.44%         │  0x00007fe12463d058:   mov    (%rsp),%r11d
   0.01%         │  0x00007fe12463d05c:   mov    0x10(%rsp),%rax
   0.68%         │  0x00007fe12463d061:   mov    0x30(%rsp),%rdi
                 │  0x00007fe12463d066:   mov    0x4(%rsp),%esi
   0.48%         │  0x00007fe12463d06a:   mov    %r10d,0x38(%rsp)             ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Pattern$Start::match@37 (line 3787)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.11%         ↘  0x00007fe12463d06f:   mov    0xc(%rbx),%r8d               ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$Start::match@38 (line 3787)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
   0.95%            0x00007fe12463d073:   mov    0x8(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007fe12463d8cf
   4.83%            0x00007fe12463d078:   lea    (%r12,%r8,8),%rdx
   0.02%            0x00007fe12463d07c:   nopl   0x0(%rax)
   0.06%            0x00007fe12463d080:   cmp    $0x33ea88,%r10d              ;   {metadata(&apos;java/util/regex/Pattern$BmpCharPropertyGreedy&apos;)}
                    0x00007fe12463d087:   jne    0x00007fe12463d28d           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
                    0x00007fe12463d08d:   mov    0x10(%r13),%r8d              ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@4 (line 4501)
                                                                              ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
                    0x00007fe12463d091:   mov    0x38(%rsp),%r10d
                    0x00007fe12463d096:   cmp    %r8d,%r10d
                    0x00007fe12463d099:   jge    0x00007fe12463d5b4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  17.88%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, java.lang.String::charAt, version 2, compile id 83 

            nul chk table  [0x00007fe12460f190,0x00007fe12460f1a0] = 16
           [Disassembly]
           --------------------------------------------------------------------------------
           [Constant Pool (empty)]
           --------------------------------------------------------------------------------
           [Entry Point]
             # {method} {0x00007fe0a700ef30} &apos;charAt&apos; &apos;(I)C&apos; in &apos;java/lang/String&apos;
             # this:     rsi:rsi   = &apos;java/lang/String&apos;
             # parm0:    rdx       = int
             #           [sp+0x30]  (sp of caller)
   1.30%     0x00007fe12460eea0:   mov    0x8(%rsi),%r10d
   0.03%     0x00007fe12460eea4:   movabs $0x7fe0a7000000,%r11
   0.13%     0x00007fe12460eeae:   add    %r11,%r10
   1.51%     0x00007fe12460eeb1:   cmp    %r10,%rax
             0x00007fe12460eeb4:   jne    0x00007fe1240c4080           ;   {runtime_call ic_miss_stub}
   0.03%     0x00007fe12460eeba:   xchg   %ax,%ax
   0.02%     0x00007fe12460eebc:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.16%     0x00007fe12460eec0:   mov    %eax,-0x14000(%rsp)
   1.53%     0x00007fe12460eec7:   push   %rbp
   0.03%     0x00007fe12460eec8:   sub    $0x20,%rsp
   1.58%     0x00007fe12460eecc:   cmpl   $0x1,0x20(%r15)
   0.03%     0x00007fe12460eed4:   jne    0x00007fe12460ef96           ;*synchronization entry
                                                                       ; - java.lang.String::charAt@-1 (line 1554)
   0.03%     0x00007fe12460eeda:   movsbl 0x10(%rsi),%r10d             ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::isLatin1@7 (line 4817)
                                                                       ; - java.lang.String::charAt@1 (line 1554)
   0.13%     0x00007fe12460eedf:   nop
   1.41%     0x00007fe12460eee0:   test   %r10d,%r10d
             0x00007fe12460eee3:   jne    0x00007fe12460ef4c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::isLatin1@10 (line 4817)
                                                                       ; - java.lang.String::charAt@1 (line 1554)
   0.04%     0x00007fe12460eee9:   mov    0x14(%rsi),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::charAt@8 (line 1555)
   0.03%     0x00007fe12460eeed:   mov    0xc(%r12,%r11,8),%ebp        ; implicit exception: dispatches to 0x00007fe12460ef6c
                                                                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.StringLatin1::charAt@2 (line 46)
                                                                       ; - java.lang.String::charAt@12 (line 1555)
   0.28%     0x00007fe12460eef2:   cmp    %ebp,%edx
          ╭  0x00007fe12460eef4:   jae    0x00007fe12460ef17           ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.String::checkIndex@5 (line 4828)
          │                                                            ; - java.lang.StringLatin1::charAt@3 (line 46)
          │                                                            ; - java.lang.String::charAt@12 (line 1555)
   1.54%  │  0x00007fe12460eef6:   cmp    %ebp,%edx
          │  0x00007fe12460eef8:   jae    0x00007fe12460ef34
   0.18%  │  0x00007fe12460eefa:   lea    (%r12,%r11,8),%r10
   0.03%  │  0x00007fe12460eefe:   movzbl 0x10(%r10,%rdx,1),%eax       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.StringLatin1::charAt@12 (line 47)
          │                                                            ; - java.lang.String::charAt@12 (line 1555)
   0.37%  │  0x00007fe12460ef04:   add    $0x20,%rsp
   1.36%  │  0x00007fe12460ef08:   pop    %rbp
   0.30%  │  0x00007fe12460ef09:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fe12460ef10:   ja     0x00007fe12460ef80
   0.18%  │  0x00007fe12460ef16:   ret    
          ↘  0x00007fe12460ef17:   mov    $0xffffffe4,%esi
             0x00007fe12460ef1c:   mov    %edx,0x4(%rsp)
             0x00007fe12460ef20:   mov    %r11d,0x8(%rsp)
             0x00007fe12460ef25:   xchg   %ax,%ax
             0x00007fe12460ef27:   call   0x00007fe1240c9f00           ; ImmutableOopMap {[8]=NarrowOop }
                                                                       ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::checkIndex@5 (line 4828)
                                                                       ; - java.lang.StringLatin1::charAt@3 (line 46)
                                                                       ; - java.lang.String::charAt@12 (line 1555)
                                                                       ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  12.23%  <total for region 3>

....[Hottest Region 4]..............................................................................
c2, level 4, java.util.regex.Pattern::split, version 5, compile id 659 

             0x00007fe124651e5a:   shr    $0x9,%r10
             0x00007fe124651e5e:   movabs $0x7fe11823e000,%rdi
             0x00007fe124651e68:   add    %r10,%rdi
             0x00007fe124651e6b:   cmpb   $0x2,(%rdi)
             0x00007fe124651e6e:   jne    0x00007fe1246522df           ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::&lt;init&gt;@6 (line 4804)
                                                                       ; - java.lang.StringLatin1::newString@20 (line 752)
                                                                       ; - java.lang.String::substring@41 (line 2835)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   0.21%     0x00007fe124651e74:   mov    %r12b,0x10(%r13)             ;*invokevirtual substring {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   0.24%     0x00007fe124651e78:   mov    0x38(%rsp),%r10
   0.24%     0x00007fe124651e7d:   incl   0xc(%r10)                    ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::add@7 (line 495)
                                                                       ; - java.util.regex.Pattern::split@109 (line 1413)
   1.57%     0x00007fe124651e81:   mov    0x14(%r10),%r11d             ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::add@13 (line 496)
                                                                       ; - java.util.regex.Pattern::split@109 (line 1413)
   0.00%     0x00007fe124651e85:   mov    0xc(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007fe124653fec
                                                                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::add@2 (line 482)
                                                                       ; - java.util.ArrayList::add@20 (line 496)
                                                                       ; - java.util.regex.Pattern::split@109 (line 1413)
   0.22%     0x00007fe124651e8a:   mov    0x38(%rsp),%r8
             0x00007fe124651e8f:   mov    0x10(%r8),%ebp               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::add@17 (line 496)
                                                                       ; - java.util.regex.Pattern::split@109 (line 1413)
             0x00007fe124651e93:   cmp    %r10d,%ebp
             0x00007fe124651e96:   je     0x00007fe1246521e5           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::add@3 (line 482)
                                                                       ; - java.util.ArrayList::add@20 (line 496)
                                                                       ; - java.util.regex.Pattern::split@109 (line 1413)
   0.23%     0x00007fe124651e9c:   lea    (%r12,%r11,8),%rax           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::add@11 (line 484)
                                                                       ; - java.util.ArrayList::add@20 (line 496)
                                                                       ; - java.util.regex.Pattern::split@109 (line 1413)
             0x00007fe124651ea0:   mov    0xc(%rax),%r10d
   0.01%     0x00007fe124651ea4:   cmp    %r10d,%ebp
             0x00007fe124651ea7:   jae    0x00007fe124652d74
   0.23%     0x00007fe124651ead:   mov    0x8(%rax),%r10d
   0.00%     0x00007fe124651eb1:   cmp    $0x1258,%r10d                ;   {metadata(&apos;java/lang/Object&apos;[])}
             0x00007fe124651eb8:   jne    0x00007fe124652db4
   0.20%     0x00007fe124651ebe:   lea    0x10(%rax,%rbp,4),%r14       ;*putfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::&lt;init&gt;@65 (line 251)
                                                                       ; - java.util.regex.Pattern::matcher@38 (line 1180)
                                                                       ; - java.util.regex.Pattern::split@28 (line 1402)
             0x00007fe124651ec3:   cmpb   $0x0,0x40(%r15)
   0.00%     0x00007fe124651ec8:   jne    0x00007fe12465221a
             0x00007fe124651ece:   mov    %r14,%r10
   0.21%     0x00007fe124651ed1:   mov    %r13,%r11
             0x00007fe124651ed4:   shr    $0x3,%r11
             0x00007fe124651ed8:   mov    %r11d,(%r14)
   0.39%     0x00007fe124651edb:   inc    %ebp
   0.00%     0x00007fe124651edd:   mov    %r13,%r11
             0x00007fe124651ee0:   xor    %r10,%r11
             0x00007fe124651ee3:   shr    $0x15,%r11
   0.24%     0x00007fe124651ee7:   test   %r11,%r11
          ╭  0x00007fe124651eea:   je     0x00007fe124651f09
   0.00%  │  0x00007fe124651eec:   shr    $0x9,%r10
          │  0x00007fe124651ef0:   movabs $0x7fe11823e000,%rdi
          │  0x00007fe124651efa:   add    %r10,%rdi
          │  0x00007fe124651efd:   data16 xchg %ax,%ax
          │  0x00007fe124651f00:   cmpb   $0x2,(%rdi)
   0.00%  │  0x00007fe124651f03:   jne    0x00007fe124652253           ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.ArrayList::add@14 (line 484)
          │                                                            ; - java.util.ArrayList::add@20 (line 496)
          │                                                            ; - java.util.regex.Pattern::split@109 (line 1413)
   0.00%  ↘  0x00007fe124651f09:   mov    0x38(%rsp),%r10
   0.01%     0x00007fe124651f0e:   mov    %ebp,0x10(%r10)              ;*putfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::add@19 (line 485)
                                                                       ; - java.util.ArrayList::add@20 (line 496)
                                                                       ; - java.util.regex.Pattern::split@109 (line 1413)
   1.52%     0x00007fe124651f12:   mov    0x28(%rsp),%r10
   0.00%     0x00007fe124651f17:   mov    0x1c(%r10),%r10d             ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::hasMatch@1 (line 1850)
                                                                       ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                       ; - java.util.regex.Matcher::end@1 (line 535)
                                                                       ; - java.util.regex.Pattern::split@115 (line 1414)
             0x00007fe124651f1b:   nopl   0x0(%rax,%rax,1)
             0x00007fe124651f20:   test   %r10d,%r10d
             0x00007fe124651f23:   jl     0x00007fe124653100           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::hasMatch@4 (line 1850)
                                                                       ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                       ; - java.util.regex.Matcher::end@1 (line 535)
                                                                       ; - java.util.regex.Pattern::split@115 (line 1414)
   0.20%     0x00007fe124651f29:   mov    0x28(%rsp),%r11
             0x00007fe124651f2e:   mov    0x20(%r11),%ebp              ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::end@5 (line 536)
                                                                       ; - java.util.regex.Pattern::split@115 (line 1414)
   0.01%     0x00007fe124651f32:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@148 (line 1418)
             0x00007fe124651f34:   cmp    %r10d,%ebp
             0x00007fe124651f37:   je     0x00007fe124653474           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::find@10 (line 745)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
   0.20%     0x00007fe124651f3d:   mov    0xc(%r11),%r11d              ;*getfield from {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::find@18 (line 749)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
   0.00%     0x00007fe124651f41:   cmp    %r11d,%ebp
             0x00007fe124651f44:   jl     0x00007fe1246534a8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::find@21 (line 749)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
   0.00%     0x00007fe124651f4a:   mov    0x28(%rsp),%r10
             0x00007fe124651f4f:   mov    0x10(%r10),%r11d             ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::find@31 (line 753)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
   0.23%     0x00007fe124651f53:   cmp    %r11d,%ebp
             0x00007fe124651f56:   jg     0x00007fe1246534dc
   0.00%     0x00007fe124651f5c:   mov    %ebp,(%rsp)
             0x00007fe124651f5f:   mov    %ebx,%ebp                    ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::find@34 (line 753)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
             0x00007fe124651f61:   mov    0x28(%rsp),%rsi
   0.19%     0x00007fe124651f66:   mov    (%rsp),%edx
   0.00%     0x00007fe124651f69:   data16 xchg %ax,%ax
             0x00007fe124651f6c:   vzeroupper 
   0.23%     0x00007fe124651f6f:   call   0x00007fe12463ce60           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop [56]=Oop }
                                                                       ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                       ;   {optimized virtual_call}
   0.01%     0x00007fe124651f74:   nopl   0x3000ce4(%rax,%rax,1)       ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                       ;   {other}
   0.03%     0x00007fe124651f7c:   nopl   0x0(%rax)
   0.14%     0x00007fe124651f80:   test   %eax,%eax
             0x00007fe124651f82:   je     0x00007fe1246523c7           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@38 (line 1405)
             0x00007fe124651f88:   mov    (%rsp),%r11d
   0.92%     0x00007fe124651f8c:   mov    %ebp,%ebx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@41 (line 1406)
             0x00007fe124651f8e:   mov    0x28(%rsp),%r10
   0.00%     0x00007fe124651f93:   mov    0x1c(%r10),%r10d             ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::hasMatch@1 (line 1850)
                                                                       ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                       ; - java.util.regex.Matcher::start@1 (line 466)
                                                                       ; - java.util.regex.Pattern::split@63 (line 1407)
   0.76%     0x00007fe124651f97:   test   %r11d,%r11d
             0x00007fe124651f9a:   nopw   0x0(%rax,%rax,1)
             0x00007fe124651fa0:   je     0x00007fe1246523ad           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@66 (line 1407)
             0x00007fe124651fa6:   test   %r10d,%r10d
             0x00007fe124651fa9:   jl     0x00007fe124653048           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::hasMatch@4 (line 1850)
                                                                       ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                       ; - java.util.regex.Matcher::start@1 (line 466)
                                                                       ; - java.util.regex.Pattern::split@90 (line 1412)
   0.22%     0x00007fe124651faf:   mov    0x30(%rsp),%r8
   0.01%     0x00007fe124651fb4:   mov    0x14(%r8),%ecx               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::length@1 (line 1519)
                                                                       ; - java.lang.String::substring@1 (line 2829)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   0.19%     0x00007fe124651fb8:   nopl   0x0(%rax,%rax,1)
             0x00007fe124651fc0:   mov    0xc(%r12,%rcx,8),%esi        ; implicit exception: dispatches to 0x00007fe124653fd4
                                                                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::length@4 (line 1519)
                                                                       ; - java.lang.String::substring@1 (line 2829)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   1.10%     0x00007fe124651fc5:   movsbl 0x10(%r8),%r9d               ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::coder@7 (line 4809)
                                                                       ; - java.lang.String::length@6 (line 1519)
                                                                       ; - java.lang.String::substring@1 (line 2829)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
             0x00007fe124651fca:   sarx   %r9d,%esi,%edi               ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::length@9 (line 1519)
                                                                       ; - java.lang.String::substring@1 (line 2829)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   0.25%     0x00007fe124651fcf:   test   %r11d,%r11d
             0x00007fe124651fd2:   jl     0x00007fe124653090           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.util.Preconditions::checkFromToIndex@1 (line 348)
                                                                       ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                       ; - java.lang.String::substring@8 (line 2830)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
             0x00007fe124651fd8:   cmp    %r10d,%r11d
             0x00007fe124651fdb:   nopl   0x0(%rax,%rax,1)
             0x00007fe124651fe0:   jg     0x00007fe12465338c           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.util.Preconditions::checkFromToIndex@6 (line 348)
                                                                       ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                       ; - java.lang.String::substring@8 (line 2830)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   0.22%     0x00007fe124651fe6:   cmp    %edi,%r10d
             0x00007fe124651fe9:   jg     0x00007fe124653400           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.util.Preconditions::checkFromToIndex@11 (line 348)
                                                                       ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                       ; - java.lang.String::substring@8 (line 2830)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
             0x00007fe124651fef:   test   %r11d,%r11d
             0x00007fe124651ff2:   je     0x00007fe1246521c8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::substring@12 (line 2831)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
             0x00007fe124651ff8:   mov    %r10d,%r8d
             0x00007fe124651ffb:   sub    %r11d,%r8d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::substring@24 (line 2834)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   0.20%     0x00007fe124651ffe:   xchg   %ax,%ax
   0.00%     0x00007fe124652000:   test   %r9d,%r9d
             0x00007fe124652003:   jne    0x00007fe12465319e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::isLatin1@10 (line 4817)
                                                                       ; - java.lang.String::substring@28 (line 2835)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   0.00%     0x00007fe124652009:   cmp    %r11d,%r10d
             0x00007fe12465200c:   je     0x00007fe124653504
             0x00007fe124652012:   mov    0x1b8(%r15),%r13
   0.22%     0x00007fe124652019:   mov    %r13,%r9
   0.00%     0x00007fe12465201c:   add    $0x18,%r9
             0x00007fe124652020:   cmp    0x1c8(%r15),%r9
             0x00007fe124652027:   jae    0x00007fe124652a9d           ;*putfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::&lt;init&gt;@65 (line 251)
                                                                       ; - java.util.regex.Pattern::matcher@38 (line 1180)
                                                                       ; - java.util.regex.Pattern::split@28 (line 1402)
             0x00007fe12465202d:   mov    %r9,0x1b8(%r15)
   0.21%     0x00007fe124652034:   prefetchw 0xc0(%r9)
   0.00%     0x00007fe12465203c:   movq   $0x1,0x0(%r13)
   0.03%     0x00007fe124652044:   movl   $0xe8d8,0x8(%r13)            ;   {metadata(&apos;java/lang/String&apos;)}
   0.51%     0x00007fe12465204c:   mov    %r12d,0xc(%r13)
             0x00007fe124652050:   mov    %r12,0x10(%r13)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.StringLatin1::newString@7 (line 752)
                                                                       ; - java.lang.String::substring@41 (line 2835)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   0.06%     0x00007fe124652054:   lea    (%r12,%rcx,8),%r8            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::length@1 (line 1519)
                                                                       ; - java.lang.String::substring@1 (line 2829)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
             0x00007fe124652058:   test   %r11d,%r11d
   0.13%     0x00007fe12465205b:   nopl   0x0(%rax,%rax,1)
   0.00%     0x00007fe124652060:   jne    0x00007fe12465214d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Arrays::copyOfRange@1 (line 3853)
                                                                       ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                       ; - java.lang.String::substring@41 (line 2835)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
             0x00007fe124652066:   cmp    %esi,%r10d
             0x00007fe124652069:   jne    0x00007fe124652145
             0x00007fe12465206f:   movslq %esi,%r9
             0x00007fe124652072:   add    $0x17,%r9
             0x00007fe124652076:   and    $0xfffffffffffffff8,%r9      ;*invokevirtual clone {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  11.82%  <total for region 4>

....[Hottest Regions]...............................................................................
  31.20%         c2, level 4  java.util.regex.Matcher::search, version 3, compile id 620 
  17.88%         c2, level 4  java.util.regex.Matcher::search, version 3, compile id 620 
  12.23%         c2, level 4  java.lang.String::charAt, version 2, compile id 83 
  11.82%         c2, level 4  java.util.regex.Pattern::split, version 5, compile id 659 
   5.51%         c2, level 4  java.util.regex.Pattern::split, version 5, compile id 659 
   4.26%         c2, level 4  java.util.regex.Matcher::search, version 3, compile id 620 
   3.73%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.53%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.74%         c2, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 633 
   2.56%         c2, level 4  java.util.regex.Matcher::search, version 3, compile id 620 
   1.07%        runtime stub  StubRoutines::checkcast_arraycopy 
   0.41%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.23%         c2, level 4  java.util.ArrayList::grow, version 2, compile id 661 
   0.22%              kernel  [unknown] 
   0.15%         c2, level 4  java.util.regex.Pattern::split, version 5, compile id 659 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   2.06%  <...other 485 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  55.90%         c2, level 4  java.util.regex.Matcher::search, version 3, compile id 620 
  17.64%         c2, level 4  java.util.regex.Pattern::split, version 5, compile id 659 
  12.23%         c2, level 4  java.lang.String::charAt, version 2, compile id 83 
   7.27%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.74%         c2, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 633 
   1.73%              kernel  [unknown] 
   1.07%        runtime stub  StubRoutines::checkcast_arraycopy 
   0.41%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.34%         c2, level 4  java.util.ArrayList::grow, version 2, compile id 661 
   0.06%                      <unknown> 
   0.04%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.02%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  G1CardSet::reset_table_scanner 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.41%  <...other 137 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.86%         c2, level 4
   8.75%        runtime stub
   1.73%              kernel
   0.38%           libjvm.so
   0.12%        libc-2.31.so
   0.06%                    
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.02%         interpreter
   0.01%              [vdso]
   0.00%         c1, level 3
   0.00%    perf-1957573.map
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.alloc.rate":
  371.005 ±(99.9%) 1.246 MB/sec [Average]
  (min, avg, max) = (370.468, 371.005, 371.303), stdev = 0.324
  CI (99.9%): [369.759, 372.252] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.alloc.rate.norm":
  143120.255 ±(99.9%) 0.003 B/op [Average]
  (min, avg, max) = (143120.254, 143120.255, 143120.256), stdev = 0.001
  CI (99.9%): [143120.252, 143120.258] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.count":
  7.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (1.000, 1.400, 2.000), stdev = 0.548
  CI (99.9%): [7.000, 7.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.time":
  20.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (2.000, 4.000, 6.000), stdev = 1.871
  CI (99.9%): [20.000, 20.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = _)

# Run progress: 50.00% complete, ETA 00:03:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 113.614 us/op
# Warmup Iteration   2: 102.749 us/op
# Warmup Iteration   3: 102.674 us/op
# Warmup Iteration   4: 102.487 us/op
# Warmup Iteration   5: 102.517 us/op
Iteration   1: 102.626 us/op
                 gc.alloc.rate:      1328.010 MB/sec
                 gc.alloc.rate.norm: 142912.071 B/op
                 gc.count:           5.000 counts
                 gc.time:            10.000 ms

Iteration   2: 102.631 us/op
                 gc.alloc.rate:      1327.951 MB/sec
                 gc.alloc.rate.norm: 142912.071 B/op
                 gc.count:           6.000 counts
                 gc.time:            11.000 ms

Iteration   3: 102.522 us/op
                 gc.alloc.rate:      1329.358 MB/sec
                 gc.alloc.rate.norm: 142912.071 B/op
                 gc.count:           5.000 counts
                 gc.time:            10.000 ms

Iteration   4: 102.555 us/op
                 gc.alloc.rate:      1328.920 MB/sec
                 gc.alloc.rate.norm: 142912.071 B/op
                 gc.count:           6.000 counts
                 gc.time:            12.000 ms

Iteration   5: 102.595 us/op
                 gc.alloc.rate:      1328.397 MB/sec
                 gc.alloc.rate.norm: 142912.071 B/op
                 gc.count:           5.000 counts
                 gc.time:            9.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split":
  102.586 ±(99.9%) 0.180 us/op [Average]
  (min, avg, max) = (102.522, 102.586, 102.631), stdev = 0.047
  CI (99.9%): [102.406, 102.766] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:asm":
PrintAssembly processed: 160276 total address lines.
Perf output processed (skipped 56.736 seconds):
 Column 1: cycles (51164 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.lang.String::split, version 4, compile id 642 

                0x00007f09f46471ea:   shr    $0x9,%r10
                0x00007f09f46471ee:   movabs $0x7f09e7d39000,%rdi
                0x00007f09f46471f8:   add    %r10,%rdi
                0x00007f09f46471fb:   nopl   0x0(%rax,%rax,1)
                0x00007f09f4647200:   cmpb   $0x2,(%rdi)
                0x00007f09f4647203:   jne    0x00007f09f4647df0           ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::&lt;init&gt;@6 (line 4804)
                                                                          ; - java.lang.StringLatin1::newString@20 (line 752)
                                                                          ; - java.lang.String::substring@41 (line 2835)
                                                                          ; - java.lang.String::split@74 (line 3367)
   0.79%        0x00007f09f4647209:   mov    0x30(%rsp),%r10
   0.00%        0x00007f09f464720e:   mov    %r12b,0x10(%r10)             ;*invokevirtual substring {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::split@74 (line 3367)
   1.41%        0x00007f09f4647212:   mov    0x58(%rsp),%r10
   0.00%        0x00007f09f4647217:   incl   0xc(%r10)                    ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.ArrayList::add@7 (line 495)
                                                                          ; - java.lang.String::split@77 (line 3367)
   1.67%        0x00007f09f464721b:   mov    0x14(%r10),%r10d             ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.ArrayList::add@13 (line 496)
                                                                          ; - java.lang.String::split@77 (line 3367)
   0.01%        0x00007f09f464721f:   nop
                0x00007f09f4647220:   mov    0xc(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f09f4648cc0
                                                                          ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.ArrayList::add@2 (line 482)
                                                                          ; - java.util.ArrayList::add@20 (line 496)
                                                                          ; - java.lang.String::split@77 (line 3367)
   0.73%        0x00007f09f4647225:   mov    0x58(%rsp),%r11
   0.40%        0x00007f09f464722a:   mov    0x10(%r11),%ebx              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.ArrayList::add@17 (line 496)
                                                                          ; - java.lang.String::split@77 (line 3367)
   0.01%        0x00007f09f464722e:   cmp    %r8d,%ebx
                0x00007f09f4647231:   je     0x00007f09f4647cd4           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.ArrayList::add@3 (line 482)
                                                                          ; - java.util.ArrayList::add@20 (line 496)
                                                                          ; - java.lang.String::split@77 (line 3367)
   0.40%        0x00007f09f4647237:   lea    (%r12,%r10,8),%rax           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.ArrayList::add@11 (line 484)
                                                                          ; - java.util.ArrayList::add@20 (line 496)
                                                                          ; - java.lang.String::split@77 (line 3367)
                0x00007f09f464723b:   mov    0xc(%rax),%r11d
   0.33%        0x00007f09f464723f:   nop
                0x00007f09f4647240:   cmp    %r11d,%ebx
                0x00007f09f4647243:   jae    0x00007f09f46483cd
   0.44%        0x00007f09f4647249:   mov    0x8(%rax),%r11d
   0.01%        0x00007f09f464724d:   cmp    $0x1258,%r11d                ;   {metadata(&apos;java/lang/Object&apos;[])}
                0x00007f09f4647254:   jne    0x00007f09f464847c
   0.67%        0x00007f09f464725a:   lea    0x10(%rax,%rbx,4),%rbp       ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::&lt;init&gt;@6 (line 4804)
                                                                          ; - java.lang.StringLatin1::newString@20 (line 752)
                                                                          ; - java.lang.String::substring@41 (line 2835)
                                                                          ; - java.lang.String::split@74 (line 3367)
   0.01%        0x00007f09f464725f:   nop
   0.03%        0x00007f09f4647260:   cmpb   $0x0,0x40(%r15)
   0.01%        0x00007f09f4647265:   jne    0x00007f09f4647d28           ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.ArrayList::add@14 (line 484)
                                                                          ; - java.util.ArrayList::add@20 (line 496)
                                                                          ; - java.lang.String::split@77 (line 3367)
   0.73%        0x00007f09f464726b:   mov    0x30(%rsp),%r10
   0.01%        0x00007f09f4647270:   inc    %r14d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::split@99 (line 3372)
   0.02%        0x00007f09f4647273:   inc    %r13d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::split@96 (line 3371)
                0x00007f09f4647276:   mov    0x30(%rsp),%r11
   0.74%        0x00007f09f464727b:   mov    %r11,%r8
   0.01%        0x00007f09f464727e:   shr    $0x3,%r8
   0.02%        0x00007f09f4647282:   mov    %r8d,0x0(%rbp)
   0.63%        0x00007f09f4647286:   inc    %ebx
   0.19%        0x00007f09f4647288:   mov    %rbp,%r11
                0x00007f09f464728b:   xor    %r11,%r10
                0x00007f09f464728e:   shr    $0x15,%r10
   0.57%        0x00007f09f4647292:   test   %r10,%r10
          ╭     0x00007f09f4647295:   je     0x00007f09f46472b1
   0.00%  │     0x00007f09f4647297:   shr    $0x9,%r11
          │     0x00007f09f464729b:   movabs $0x7f09e7d39000,%rdi
          │     0x00007f09f46472a5:   add    %r11,%rdi
          │     0x00007f09f46472a8:   cmpb   $0x2,(%rdi)
          │     0x00007f09f46472ab:   jne    0x00007f09f4647d5f           ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.ArrayList::add@14 (line 484)
          │                                                               ; - java.util.ArrayList::add@20 (line 496)
          │                                                               ; - java.lang.String::split@77 (line 3367)
   0.21%  ↘     0x00007f09f46472b1:   mov    0x58(%rsp),%r10
   0.01%        0x00007f09f46472b6:   mov    %ebx,0x10(%r10)              ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::split@102 (line 3372)
   0.09%        0x00007f09f46472ba:   mov    0x20(%rsp),%r10
   0.58%        0x00007f09f46472bf:   movsbl 0x10(%r10),%r8d              ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::&lt;init&gt;@6 (line 4804)
                                                                          ; - java.lang.StringLatin1::newString@20 (line 752)
                                                                          ; - java.lang.String::substring@41 (line 2835)
                                                                          ; - java.lang.String::split@74 (line 3367)
   0.17%        0x00007f09f46472c4:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[32]=Oop [88]=Oop }
                                                                          ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.lang.String::split@102 (line 3372)
   0.01%        0x00007f09f46472cb:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::split@102 (line 3372)
                                                                          ;   {poll}
   0.13%        0x00007f09f46472ce:   test   %r8d,%r8d
                0x00007f09f46472d1:   jne    0x00007f09f464860c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::isLatin1@10 (line 4817)
                                                                          ; - java.lang.String::indexOf@1 (line 2457)
                                                                          ; - java.lang.String::split@44 (line 3365)
   0.56%        0x00007f09f46472d7:   mov    0x20(%rsp),%r10
   0.12%        0x00007f09f46472dc:   mov    0x14(%r10),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::indexOf@8 (line 2457)
                                                                          ; - java.lang.String::split@44 (line 3365)
   0.01%        0x00007f09f46472e0:   mov    0xc(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007f09f4648cd8
                                                                          ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::length@4 (line 1519)
                                                                          ; - java.lang.String::indexOf@14 (line 2457)
                                                                          ; - java.lang.String::split@44 (line 3365)
   0.66%        0x00007f09f46472e5:   sarx   %r8d,%r10d,%ebp
   0.78%        0x00007f09f46472ea:   xor    %r8d,%r8d
   0.00%        0x00007f09f46472ed:   mov    %r13d,%r9d
                0x00007f09f46472f0:   xor    %ecx,%ecx
   0.01%        0x00007f09f46472f2:   cmp    %r8d,%r13d
   1.34%        0x00007f09f46472f5:   cmovl  %ecx,%r9d                    ;*invokestatic max {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.StringLatin1::indexOf@11 (line 199)
                                                                          ; - java.lang.String::indexOf@17 (line 2457)
                                                                          ; - java.lang.String::split@44 (line 3365)
   0.01%        0x00007f09f46472f9:   cmp    %r10d,%ebp
                0x00007f09f46472fc:   cmovg  %r10d,%ebp                   ;*invokestatic min {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.StringLatin1::indexOf@18 (line 200)
                                                                          ; - java.lang.String::indexOf@17 (line 2457)
                                                                          ; - java.lang.String::split@44 (line 3365)
                0x00007f09f4647300:   cmp    %ebp,%r9d
                0x00007f09f4647303:   jge    0x00007f09f464760a           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.StringLatin1::indexOf@24 (line 201)
                                                                          ; - java.lang.String::indexOf@17 (line 2457)
                                                                          ; - java.lang.String::split@44 (line 3365)
   0.73%        0x00007f09f4647309:   test   %r9d,%r9d
                0x00007f09f464730c:   jl     0x00007f09f46484b8
   0.01%        0x00007f09f4647312:   mov    %ebp,%edx
                0x00007f09f4647314:   sub    %r9d,%edx
                0x00007f09f4647317:   test   %edx,%edx
                0x00007f09f4647319:   jl     0x00007f09f46484b8
   0.81%        0x00007f09f464731f:   nop
   0.01%        0x00007f09f4647320:   cmp    %ebp,%r10d
                0x00007f09f4647323:   jb     0x00007f09f46484b8           ;*invokestatic indexOfChar {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.StringLatin1::indexOf@33 (line 204)
                                                                          ; - java.lang.String::indexOf@17 (line 2457)
                                                                          ; - java.lang.String::split@44 (line 3365)
   0.70%        0x00007f09f4647329:   lea    (%r12,%r11,8),%r10           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::indexOf@8 (line 2457)
                                                                          ; - java.lang.String::split@44 (line 3365)
   0.01%        0x00007f09f464732d:   lea    0x10(%r10,%r9,1),%rdi
   0.04%        0x00007f09f4647332:   mov    0x28(%rsp),%eax
   0.02%        0x00007f09f4647336:   mov    %rdi,%rbx
   0.67%        0x00007f09f4647339:   cmp    $0x10,%edx
                0x00007f09f464733c:   jl     0x00007f09f46473bb
   0.00%        0x00007f09f4647342:   cmp    $0x20,%edx
           ╭    0x00007f09f4647345:   jl     0x00007f09f4647381
   0.71%   │    0x00007f09f464734b:   vmovd  %eax,%xmm1
   0.01%   │    0x00007f09f464734f:   vpbroadcastb %xmm1,%ymm1
   0.01%   │    0x00007f09f4647354:   vpxor  %ymm0,%ymm0,%ymm0
   0.01%   │    0x00007f09f4647358:   mov    %edx,%ecx
   0.82%   │    0x00007f09f464735a:   and    $0xffffffe0,%ecx
   0.01%   │    0x00007f09f464735d:   and    $0x1f,%edx
   0.00%   │↗   0x00007f09f4647360:   vmovdqu (%rbx),%ymm2
   1.21%   ││   0x00007f09f4647364:   vpcmpeqb %ymm1,%ymm2,%ymm2
   3.61%   ││   0x00007f09f4647368:   vptest %ymm2,%ymm0
   1.20%   ││   0x00007f09f464736d:   jae    0x00007f09f46473dc
           ││   0x00007f09f4647373:   add    $0x20,%rbx
           ││   0x00007f09f4647377:   sub    $0x20,%ecx
           │╰   0x00007f09f464737a:   jne    0x00007f09f4647360
           │ ╭  0x00007f09f464737c:   jmp    0x00007f09f464738e
   0.01%   ↘ │  0x00007f09f4647381:   vmovd  %eax,%xmm1
   0.00%     │  0x00007f09f4647385:   vpxor  %xmm0,%xmm0,%xmm0
             │  0x00007f09f4647389:   vpshufb %xmm0,%xmm1,%xmm1
             ↘  0x00007f09f464738e:   cmp    $0x10,%edx
                0x00007f09f4647391:   jl     0x00007f09f46473bb
                0x00007f09f4647397:   mov    %edx,%ecx
                0x00007f09f4647399:   and    $0xfffffff0,%ecx
                0x00007f09f464739c:   and    $0xf,%edx
                0x00007f09f464739f:   vmovdqu (%rbx),%xmm2
                0x00007f09f46473a3:   vpcmpeqb %xmm1,%xmm2,%xmm2
   0.00%        0x00007f09f46473a7:   vptest %xmm2,%xmm0
                0x00007f09f46473ac:   jae    0x00007f09f46473dc
....................................................................................................
  25.15%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.lang.String::split, version 4, compile id 642 

            0x00007f09f464707d:   vpmovmskb %ymm2,%ecx
            0x00007f09f4647081:   bsf    %ecx,%eax
            0x00007f09f4647084:   add    %rax,%rbx
            0x00007f09f4647087:   sub    %rdi,%rbx                    ;*invokestatic indexOfChar {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.StringLatin1::indexOf@33 (line 204)
                                                                      ; - java.lang.String::indexOf@17 (line 2457)
                                                                      ; - java.lang.String::split@44 (line 3365)
            0x00007f09f464708a:   cmp    $0xffffffff,%ebx
            0x00007f09f464708d:   je     0x00007f09f46475f9           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::split@51 (line 3365)
   0.00%    0x00007f09f4647093:   mov    %ebx,%r13d
            0x00007f09f4647096:   xor    %r8d,%r8d
            0x00007f09f4647099:   xor    %r14d,%r14d
            0x00007f09f464709c:   movabs $0x7f09e7d39000,%r10
            0x00007f09f46470a6:   mov    %r10,(%rsp)
            0x00007f09f46470aa:   jmp    0x00007f09f4647407
            0x00007f09f46470af:   nop
   0.75%    0x00007f09f46470b0:   mov    %r13d,%r10d
   0.02%    0x00007f09f46470b3:   sub    %r8d,%r10d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::copyOfRange@10 (line 3854)
                                                                      ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                      ; - java.lang.String::substring@41 (line 2835)
                                                                      ; - java.lang.String::split@74 (line 3367)
   0.01%    0x00007f09f46470b6:   data16 nopw 0x0(%rax,%rax,1)
   0.00%    0x00007f09f46470c0:   cmp    $0x100000,%r10d
            0x00007f09f46470c7:   ja     0x00007f09f4648408
   0.81%    0x00007f09f46470cd:   movslq %r10d,%r9                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::copyOfRangeByte@10 (line 3863)
                                                                      ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                      ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                      ; - java.lang.String::substring@41 (line 2835)
                                                                      ; - java.lang.String::split@74 (line 3367)
   0.01%    0x00007f09f46470d0:   test   %r8d,%r8d
            0x00007f09f46470d3:   jl     0x00007f09f46484ec           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::copyOfRangeByte@27 (line 3864)
                                                                      ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                      ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                      ; - java.lang.String::substring@41 (line 2835)
                                                                      ; - java.lang.String::split@74 (line 3367)
   0.02%    0x00007f09f46470d9:   mov    %ebx,%ebp
   0.01%    0x00007f09f46470db:   sub    %r8d,%ebp
   0.72%    0x00007f09f46470de:   cmp    %r10d,%ebp
   0.02%    0x00007f09f46470e1:   cmovg  %r10d,%ebp                   ;*invokestatic min {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::copyOfRangeByte@24 (line 3865)
                                                                      ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                      ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                      ; - java.lang.String::substring@41 (line 2835)
                                                                      ; - java.lang.String::split@74 (line 3367)
   0.01%    0x00007f09f46470e5:   lea    (%r8,%rbp,1),%edx
   0.01%    0x00007f09f46470e9:   cmp    %edx,%ebx
            0x00007f09f46470eb:   jb     0x00007f09f46484ec
   0.70%    0x00007f09f46470f1:   cmp    %ebp,%r10d
            0x00007f09f46470f4:   jb     0x00007f09f46484ec
   0.01%    0x00007f09f46470fa:   test   %ebp,%ebp
   0.01%    0x00007f09f46470fc:   nopl   0x0(%rax)
   0.02%    0x00007f09f4647100:   jl     0x00007f09f46484ec           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::copyOfRangeByte@27 (line 3864)
                                                                      ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                      ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                      ; - java.lang.String::substring@41 (line 2835)
                                                                      ; - java.lang.String::split@74 (line 3367)
   0.69%    0x00007f09f4647106:   add    $0x17,%r9                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::copyOfRangeByte@10 (line 3863)
                                                                      ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                      ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                      ; - java.lang.String::substring@41 (line 2835)
                                                                      ; - java.lang.String::split@74 (line 3367)
   0.03%    0x00007f09f464710a:   cmp    $0x100000,%r10d
            0x00007f09f4647111:   ja     0x00007f09f4647f94
   0.01%    0x00007f09f4647117:   mov    0x1b8(%r15),%rbx
   0.01%    0x00007f09f464711e:   mov    %r9,%r11
   0.69%    0x00007f09f4647121:   and    $0xfffffffffffffff8,%r11
   0.02%    0x00007f09f4647125:   mov    %rbx,%rdi
   0.01%    0x00007f09f4647128:   add    %r11,%rdi
   0.02%    0x00007f09f464712b:   cmp    0x1c8(%r15),%rdi
            0x00007f09f4647132:   jae    0x00007f09f4647f94           ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::&lt;init&gt;@6 (line 4804)
                                                                      ; - java.lang.StringLatin1::newString@20 (line 752)
                                                                      ; - java.lang.String::substring@41 (line 2835)
                                                                      ; - java.lang.String::split@74 (line 3367)
   0.76%    0x00007f09f4647138:   mov    %rdi,0x1b8(%r15)
   0.02%    0x00007f09f464713f:   prefetchw 0xc0(%rdi)
   0.02%    0x00007f09f4647146:   movq   $0x1,(%rbx)
   0.02%    0x00007f09f464714d:   prefetchw 0x100(%rdi)
   0.64%    0x00007f09f4647154:   movl   $0x22c0,0x8(%rbx)            ;   {metadata({type array byte})}
   0.02%    0x00007f09f464715b:   mov    %r10d,0xc(%rbx)
   0.09%    0x00007f09f464715f:   prefetchw 0x140(%rdi)
   0.01%    0x00007f09f4647166:   prefetchw 0x180(%rdi)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::copyOfRangeByte@10 (line 3863)
                                                                      ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                      ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                      ; - java.lang.String::substring@41 (line 2835)
                                                                      ; - java.lang.String::split@74 (line 3367)
   0.91%    0x00007f09f464716d:   mov    %rbx,%r11
   0.01%    0x00007f09f4647170:   add    $0x10,%r11
   0.04%    0x00007f09f4647174:   shr    $0x3,%r9
   0.01%    0x00007f09f4647178:   test   %ebp,%ebp
   0.67%    0x00007f09f464717a:   nopw   0x0(%rax,%rax,1)
   0.02%    0x00007f09f4647180:   je     0x00007f09f4648410
   0.04%    0x00007f09f4647186:   lea    0x10(%rcx,%r8,1),%r8
   0.01%    0x00007f09f464718b:   movslq %ebp,%rdx
   0.76%    0x00007f09f464718e:   cmp    %r10d,%ebp
            0x00007f09f4647191:   jl     0x00007f09f4647e4d
   0.02%    0x00007f09f4647197:   mov    %r8,%rdi
   0.04%    0x00007f09f464719a:   mov    %r11,%rsi
   0.01%    0x00007f09f464719d:   vzeroupper 
   0.73%    0x00007f09f46471a0:   movabs $0x7f09f40a9080,%r10
   0.69%    0x00007f09f46471aa:   call   *%r10
   1.20%    0x00007f09f46471ad:   nopl   0x0(%rax,%rax,1)             ;   {other}
   0.01%    0x00007f09f46471b5:   cmpb   $0x0,0x40(%r15)
   3.43%    0x00007f09f46471ba:   nopw   0x0(%rax,%rax,1)
   0.00%    0x00007f09f46471c0:   jne    0x00007f09f4647db0
   0.74%    0x00007f09f46471c6:   mov    0x30(%rsp),%r10
   2.16%    0x00007f09f46471cb:   mov    %rbx,%r8
            0x00007f09f46471ce:   shr    $0x3,%r8
            0x00007f09f46471d2:   mov    0x30(%rsp),%r11
   0.00%    0x00007f09f46471d7:   mov    %r8d,0x14(%r11)
   4.51%    0x00007f09f46471db:   mov    %rbx,%r11
            0x00007f09f46471de:   xor    %r10,%r11
            0x00007f09f46471e1:   shr    $0x15,%r11
            0x00007f09f46471e5:   test   %r11,%r11
            0x00007f09f46471e8:   je     0x00007f09f4647209
            0x00007f09f46471ea:   shr    $0x9,%r10
            0x00007f09f46471ee:   movabs $0x7f09e7d39000,%rdi
            0x00007f09f46471f8:   add    %r10,%rdi
            0x00007f09f46471fb:   nopl   0x0(%rax,%rax,1)
            0x00007f09f4647200:   cmpb   $0x2,(%rdi)
            0x00007f09f4647203:   jne    0x00007f09f4647df0           ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  22.17%  <total for region 2>

....[Hottest Region 3]..............................................................................
runtime stub, StubRoutines::jbyte_disjoint_arraycopy 

                --------------------------------------------------------------------------------
                - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                StubRoutines::jbyte_disjoint_arraycopy [0x00007f09f40a8fc0, 0x00007f09f40a9077] (183 bytes)
                --------------------------------------------------------------------------------
                  0x00007f09f40a8fc0:   push   %rbp
                  0x00007f09f40a8fc1:   mov    %rsp,%rbp
                  0x00007f09f40a8fc4:   mov    %rdx,%rcx
   0.00%          0x00007f09f40a8fc7:   shr    $0x3,%rdx
   0.76%          0x00007f09f40a8fcb:   lea    -0x8(%rdi,%rdx,8),%rdi
   0.19%          0x00007f09f40a8fd0:   lea    -0x8(%rsi,%rdx,8),%rsi
   0.23%          0x00007f09f40a8fd5:   neg    %rdx
   0.00%  ╭       0x00007f09f40a8fd8:   jmp    0x00007f09f40a9048
   1.32%  │↗      0x00007f09f40a8fdd:   mov    0x8(%rdi,%rdx,8),%rax
   1.63%  ││      0x00007f09f40a8fe2:   mov    %rax,0x8(%rsi,%rdx,8)
   0.39%  ││      0x00007f09f40a8fe7:   inc    %rdx
          │╰      0x00007f09f40a8fea:   jne    0x00007f09f40a8fdd
   1.09%  │       0x00007f09f40a8fec:   test   $0x4,%cl
          │ ╭     0x00007f09f40a8fef:   je     0x00007f09f40a8fff
   0.29%  │ │     0x00007f09f40a8ff1:   mov    0x8(%rdi),%eax
   1.48%  │ │     0x00007f09f40a8ff4:   mov    %eax,0x8(%rsi)
   0.69%  │ │     0x00007f09f40a8ff7:   add    $0x4,%rdi
   0.04%  │ │     0x00007f09f40a8ffb:   add    $0x4,%rsi
   1.15%  │ ↘     0x00007f09f40a8fff:   test   $0x2,%cl
          │  ╭    0x00007f09f40a9002:   je     0x00007f09f40a9014
   1.33%  │  │    0x00007f09f40a9004:   mov    0x8(%rdi),%ax
   2.14%  │  │    0x00007f09f40a9008:   mov    %ax,0x8(%rsi)
   0.74%  │  │    0x00007f09f40a900c:   add    $0x2,%rdi
   0.01%  │  │    0x00007f09f40a9010:   add    $0x2,%rsi
   0.57%  │  ↘    0x00007f09f40a9014:   test   $0x1,%cl
          │   ╭   0x00007f09f40a9017:   je     0x00007f09f40a901f
   1.16%  │   │   0x00007f09f40a9019:   mov    0x8(%rdi),%al
   1.80%  │   │   0x00007f09f40a901c:   mov    %al,0x8(%rsi)
   1.86%  │   ↘   0x00007f09f40a901f:   xor    %rax,%rax
   0.26%  │       0x00007f09f40a9022:   vzeroupper 
   0.78%  │       0x00007f09f40a9025:   leave  
   2.17%  │       0x00007f09f40a9026:   ret    
          │       0x00007f09f40a9027:   nopw   0x0(%rax,%rax,1)
          │    ↗  0x00007f09f40a9030:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
          │    │  0x00007f09f40a9036:   vmovdqu %ymm0,-0x38(%rsi,%rdx,8)
          │    │  0x00007f09f40a903c:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
          │    │  0x00007f09f40a9042:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
   0.50%  ↘    │  0x00007f09f40a9048:   add    $0x8,%rdx
               ╰  0x00007f09f40a904c:   jle    0x00007f09f40a9030
   0.24%          0x00007f09f40a904e:   sub    $0x4,%rdx
                  0x00007f09f40a9052:   jg     0x00007f09f40a9068
                  0x00007f09f40a9058:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
....................................................................................................
  22.08%  <total for region 3>

....[Hottest Region 4]..............................................................................
runtime stub, StubRoutines::jbyte_disjoint_arraycopy 

   1.80%      0x00007f09f40a901c:   mov    %al,0x8(%rsi)
   1.86%      0x00007f09f40a901f:   xor    %rax,%rax
   0.26%      0x00007f09f40a9022:   vzeroupper 
   0.78%      0x00007f09f40a9025:   leave  
   2.17%      0x00007f09f40a9026:   ret    
              0x00007f09f40a9027:   nopw   0x0(%rax,%rax,1)
          ↗   0x00007f09f40a9030:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
          │   0x00007f09f40a9036:   vmovdqu %ymm0,-0x38(%rsi,%rdx,8)
          │   0x00007f09f40a903c:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
          │   0x00007f09f40a9042:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
   0.50%  │   0x00007f09f40a9048:   add    $0x8,%rdx
          ╰   0x00007f09f40a904c:   jle    0x00007f09f40a9030
   0.24%      0x00007f09f40a904e:   sub    $0x4,%rdx
           ╭  0x00007f09f40a9052:   jg     0x00007f09f40a9068
           │  0x00007f09f40a9058:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
           │  0x00007f09f40a905e:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
           │  0x00007f09f40a9064:   add    $0x4,%rdx
   1.39%   ↘  0x00007f09f40a9068:   sub    $0x4,%rdx
              0x00007f09f40a906c:   jl     0x00007f09f40a8fdd
   0.09%      0x00007f09f40a9072:   jmp    0x00007f09f40a8fec
            --------------------------------------------------------------------------------
            - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            StubRoutines::jbyte_arraycopy [0x00007f09f40a9080, 0x00007f09f40a9142] (194 bytes)
            --------------------------------------------------------------------------------
   0.65%      0x00007f09f40a9080:   push   %rbp
   7.38%      0x00007f09f40a9081:   mov    %rsp,%rbp
   0.10%      0x00007f09f40a9084:   cmp    %rdi,%rsi
              0x00007f09f40a9087:   lea    (%rdi,%rdx,1),%rax
....................................................................................................
  11.06%  <total for region 4>

....[Hottest Regions]...............................................................................
  25.15%         c2, level 4  java.lang.String::split, version 4, compile id 642 
  22.17%         c2, level 4  java.lang.String::split, version 4, compile id 642 
  22.08%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
  11.06%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   9.27%         c2, level 4  java.lang.String::split, version 4, compile id 642 
   3.91%        runtime stub  StubRoutines::checkcast_arraycopy 
   1.43%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.81%              kernel  [unknown] 
   0.43%         c2, level 4  java.util.ArrayList::grow, version 1, compile id 646 
   0.39%         c2, level 4  java.lang.String::split, version 4, compile id 642 
   0.28%         c2, level 4  java.util.ArrayList::grow, version 1, compile id 646 
   0.15%              kernel  [unknown] 
   0.15%         c2, level 4  java.lang.String::split, version 4, compile id 642 
   0.12%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  java.lang.String::split, version 4, compile id 642 
   2.22%  <...other 555 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  57.26%         c2, level 4  java.lang.String::split, version 4, compile id 642 
  33.14%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.93%        runtime stub  StubRoutines::checkcast_arraycopy 
   2.43%              kernel  [unknown] 
   1.43%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.73%         c2, level 4  java.util.ArrayList::grow, version 1, compile id 646 
   0.10%                      <unknown> 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%        libc-2.31.so  __memset_avx2_erms 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%           libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 650 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%        libc-2.31.so  __strchr_avx2 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%           libjvm.so  fileStream::write 
   0.02%           libjvm.so  defaultStream::write 
   0.65%  <...other 191 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  58.03%         c2, level 4
  38.50%        runtime stub
   2.43%              kernel
   0.61%           libjvm.so
   0.19%        libc-2.31.so
   0.10%                    
   0.04%  libpthread-2.31.so
   0.04%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.01%              [vdso]
....................................................................................................
  99.99%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.alloc.rate":
  1328.527 ±(99.9%) 2.327 MB/sec [Average]
  (min, avg, max) = (1327.951, 1328.527, 1329.358), stdev = 0.604
  CI (99.9%): [1326.200, 1330.854] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.alloc.rate.norm":
  142912.071 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (142912.071, 142912.071, 142912.071), stdev = 0.001
  CI (99.9%): [142912.070, 142912.072] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.count":
  27.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (5.000, 5.400, 6.000), stdev = 0.548
  CI (99.9%): [27.000, 27.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.time":
  52.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (9.000, 10.400, 12.000), stdev = 1.140
  CI (99.9%): [52.000, 52.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = __)

# Run progress: 75.00% complete, ETA 00:01:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 317.877 us/op
# Warmup Iteration   2: 258.246 us/op
# Warmup Iteration   3: 257.582 us/op
# Warmup Iteration   4: 257.505 us/op
# Warmup Iteration   5: 257.516 us/op
Iteration   1: 257.463 us/op
                 gc.alloc.rate:      531.960 MB/sec
                 gc.alloc.rate.norm: 143616.178 B/op
                 gc.count:           2.000 counts
                 gc.time:            6.000 ms

Iteration   2: 257.617 us/op
                 gc.alloc.rate:      531.642 MB/sec
                 gc.alloc.rate.norm: 143616.179 B/op
                 gc.count:           2.000 counts
                 gc.time:            6.000 ms

Iteration   3: 257.678 us/op
                 gc.alloc.rate:      531.516 MB/sec
                 gc.alloc.rate.norm: 143616.178 B/op
                 gc.count:           2.000 counts
                 gc.time:            4.000 ms

Iteration   4: 257.580 us/op
                 gc.alloc.rate:      531.715 MB/sec
                 gc.alloc.rate.norm: 143616.178 B/op
                 gc.count:           2.000 counts
                 gc.time:            4.000 ms

Iteration   5: 257.564 us/op
                 gc.alloc.rate:      531.744 MB/sec
                 gc.alloc.rate.norm: 143616.179 B/op
                 gc.count:           3.000 counts
                 gc.time:            6.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split":
  257.580 ±(99.9%) 0.305 us/op [Average]
  (min, avg, max) = (257.463, 257.580, 257.678), stdev = 0.079
  CI (99.9%): [257.276, 257.885] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:asm":
PrintAssembly processed: 178533 total address lines.
Perf output processed (skipped 56.580 seconds):
 Column 1: cycles (50935 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.regex.Matcher::search, version 2, compile id 607 

                    # parm0:    rdx       = int
                    #           [sp+0x80]  (sp of caller)
                    0x00007f15c063b5c0:   mov    0x8(%rsi),%r10d
                    0x00007f15c063b5c4:   movabs $0x7f1547000000,%r11
                    0x00007f15c063b5ce:   add    %r11,%r10
                    0x00007f15c063b5d1:   cmp    %r10,%rax
                    0x00007f15c063b5d4:   jne    0x00007f15c00c4080           ;   {runtime_call ic_miss_stub}
                    0x00007f15c063b5da:   xchg   %ax,%ax
                    0x00007f15c063b5dc:   nopl   0x0(%rax)
                  [Verified Entry Point]
   0.05%            0x00007f15c063b5e0:   mov    %eax,-0x14000(%rsp)
   0.27%            0x00007f15c063b5e7:   push   %rbp
   0.03%            0x00007f15c063b5e8:   sub    $0x70,%rsp
   0.01%            0x00007f15c063b5ec:   cmpl   $0x1,0x20(%r15)
   0.27%            0x00007f15c063b5f4:   jne    0x00007f15c063c15e           ;*synchronization entry
                                                                              ; - java.util.regex.Matcher::search@-1 (line 1726)
   0.03%            0x00007f15c063b5fa:   mov    %rsi,%r10
   0.00%            0x00007f15c063b5fd:   mov    %r12b,0x31(%rsi)             ;*putfield requireEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@7 (line 1727)
   0.03%            0x00007f15c063b601:   mov    %r12b,0x30(%rsi)             ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@2 (line 1726)
   0.28%            0x00007f15c063b605:   test   %edx,%edx
                    0x00007f15c063b607:   jl     0x00007f15c063bef0           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@11 (line 1728)
   0.02%            0x00007f15c063b60d:   mov    0x24(%rsi),%r11d             ;*getfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@27 (line 1730)
   0.00%            0x00007f15c063b611:   test   %r11d,%r11d
                    0x00007f15c063b614:   jl     0x00007f15c063bbb9
   0.02%            0x00007f15c063b61a:   mov    %r11d,0x24(%rsi)             ;*putfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@41 (line 1730)
   0.22%            0x00007f15c063b61e:   mov    %edx,0x1c(%rsi)              ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@22 (line 1729)
   0.02%            0x00007f15c063b621:   mov    0x38(%rsi),%r11d             ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@48 (line 1731)
   0.00%            0x00007f15c063b625:   mov    0xc(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007f15c063c0a8
                                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@51 (line 1731)
   0.03%            0x00007f15c063b62a:   test   %r9d,%r9d
          ╭         0x00007f15c063b62d:   jbe    0x00007f15c063b6fd           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.regex.Matcher::search@52 (line 1731)
   0.27%  │         0x00007f15c063b633:   mov    %r9d,%r8d
   0.01%  │         0x00007f15c063b636:   dec    %r8d
          │         0x00007f15c063b639:   cmp    %r9d,%r8d
   0.05%  │         0x00007f15c063b63c:   nopl   0x0(%rax)
   0.22%  │         0x00007f15c063b640:   jae    0x00007f15c063bea0
   0.06%  │         0x00007f15c063b646:   lea    (%r12,%r11,8),%rbx
          │         0x00007f15c063b64a:   mov    %ebx,%r8d
   0.00%  │         0x00007f15c063b64d:   shr    $0x2,%r8d
   0.26%  │         0x00007f15c063b651:   and    $0x3,%r8d
   0.05%  │         0x00007f15c063b655:   mov    $0xffffffff,%r11d
          │         0x00007f15c063b65b:   sub    %r8d,%r11d
          │         0x00007f15c063b65e:   and    $0x3,%r11d
   0.25%  │         0x00007f15c063b662:   inc    %r11d
   0.05%  │         0x00007f15c063b665:   cmp    %r9d,%r11d
   0.00%  │         0x00007f15c063b668:   cmovg  %r9d,%r11d
          │         0x00007f15c063b66c:   xor    %r8d,%r8d                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.regex.Matcher::search@55 (line 1732)
   0.28%  │ ↗       0x00007f15c063b66f:   movl   $0xffffffff,0x10(%rbx,%r8,4) ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                 ; - java.util.regex.Matcher::search@61 (line 1732)
   0.26%  │ │       0x00007f15c063b678:   mov    %r8d,%ecx
   0.21%  │ │       0x00007f15c063b67b:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                 ; - java.util.regex.Matcher::search@62 (line 1731)
   0.16%  │ │       0x00007f15c063b67d:   data16 xchg %ax,%ax
   0.27%  │ │       0x00007f15c063b680:   cmp    %r11d,%ecx
          │╭│       0x00007f15c063b683:   jge    0x00007f15c063b68a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                 ; - java.util.regex.Matcher::search@52 (line 1731)
   0.19%  │││       0x00007f15c063b685:   mov    %ecx,%r8d
   0.18%  ││╰       0x00007f15c063b688:   jmp    0x00007f15c063b66f
   0.09%  │↘        0x00007f15c063b68a:   lea    -0x3(%r9),%edi
   0.03%  │         0x00007f15c063b68e:   cmp    %edi,%ecx
          │         0x00007f15c063b690:   jge    0x00007f15c063bec0
   0.13%  │         0x00007f15c063b696:   inc    %r8d
   0.03%  │         0x00007f15c063b699:   mov    $0xfa0,%eax
   0.12%  │         0x00007f15c063b69e:   vpcmpeqd %xmm0,%xmm0,%xmm0
   0.04%  │   ↗     0x00007f15c063b6a2:   mov    %r9d,%ecx
   0.14%  │   │     0x00007f15c063b6a5:   sub    %r8d,%ecx
   0.02%  │   │     0x00007f15c063b6a8:   add    $0xfffffffd,%ecx
   0.10%  │   │     0x00007f15c063b6ab:   xor    %ebp,%ebp
   0.04%  │   │     0x00007f15c063b6ad:   cmp    %r8d,%edi
   0.16%  │   │     0x00007f15c063b6b0:   cmovl  %ebp,%ecx
   0.02%  │   │     0x00007f15c063b6b3:   cmp    $0xfa0,%ecx
   0.09%  │   │     0x00007f15c063b6b9:   cmova  %eax,%ecx
   0.16%  │   │     0x00007f15c063b6bc:   add    %r8d,%ecx
   0.03%  │   │     0x00007f15c063b6bf:   nop                                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                               ; - java.util.regex.Matcher::search@55 (line 1732)
   0.46%  │  ↗│     0x00007f15c063b6c0:   vmovdqu %xmm0,0x10(%rbx,%r8,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                               ; - java.util.regex.Matcher::search@61 (line 1732)
   0.23%  │  ││     0x00007f15c063b6c7:   add    $0x4,%r8d                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                               ; - java.util.regex.Matcher::search@62 (line 1731)
   0.28%  │  ││     0x00007f15c063b6cb:   cmp    %ecx,%r8d
          │  ╰│     0x00007f15c063b6ce:   jl     0x00007f15c063b6c0           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                               ; - java.util.regex.Matcher::search@65 (line 1731)
   0.10%  │   │     0x00007f15c063b6d0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r10=Oop rbx=Oop }
          │   │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │   │                                                               ; - (reexecute) java.util.regex.Matcher::search@65 (line 1731)
          │   │                                                               ;   {no_reloc}
   0.18%  │   │     0x00007f15c063b6d7:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                               ; - java.util.regex.Matcher::search@65 (line 1731)
          │   │                                                               ;   {poll}
   0.12%  │   │     0x00007f15c063b6da:   nopw   0x0(%rax,%rax,1)
   0.00%  │   │     0x00007f15c063b6e0:   cmp    %edi,%r8d
          │   ╰     0x00007f15c063b6e3:   jl     0x00007f15c063b6a2
   0.12%  │         0x00007f15c063b6e5:   cmp    %r9d,%r8d
          │    ╭    0x00007f15c063b6e8:   jge    0x00007f15c063b6fd
   0.01%  │    │    0x00007f15c063b6ea:   xchg   %ax,%ax                      ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                              ; - java.util.regex.Matcher::search@55 (line 1732)
   0.02%  │    │↗   0x00007f15c063b6ec:   movl   $0xffffffff,0x10(%rbx,%r8,4) ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                             ; - java.util.regex.Matcher::search@61 (line 1732)
   0.04%  │    ││   0x00007f15c063b6f5:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                             ; - java.util.regex.Matcher::search@62 (line 1731)
   0.07%  │    ││   0x00007f15c063b6f8:   cmp    %r9d,%r8d
          │    │╰   0x00007f15c063b6fb:   jl     0x00007f15c063b6ec           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                              ; - java.util.regex.Matcher::search@52 (line 1731)
   0.20%  ↘    ↘    0x00007f15c063b6fd:   mov    0x44(%r10),%r8d              ;*getfield localsPos {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@72 (line 1733)
   0.04%            0x00007f15c063b701:   mov    0xc(%r12,%r8,8),%ebp         ; implicit exception: dispatches to 0x00007f15c063c0bc
                                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@75 (line 1733)
   0.03%            0x00007f15c063b706:   test   %ebp,%ebp
                    0x00007f15c063b708:   ja     0x00007f15c063bf08           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@76 (line 1733)
   0.03%            0x00007f15c063b70e:   mov    %r12d,0x18(%r10)             ;*putfield acceptMode {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@105 (line 1737)
   0.19%            0x00007f15c063b712:   mov    0x34(%r10),%r8d              ;*getfield parentPattern {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@109 (line 1738)
   0.03%            0x00007f15c063b716:   data16 nopw 0x0(%rax,%rax,1)
   0.03%            0x00007f15c063b720:   mov    0x34(%r12,%r8,8),%ebx        ; implicit exception: dispatches to 0x00007f15c063c0d0
                                                                              ;*getfield root {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@112 (line 1738)
   0.04%            0x00007f15c063b725:   mov    0x3c(%r10),%ecx              ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@118 (line 1738)
   0.21%            0x00007f15c063b729:   mov    0x8(%r12,%rbx,8),%r11d       ; implicit exception: dispatches to 0x00007f15c063c0e4
   0.37%            0x00007f15c063b72e:   cmp    $0x338000,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$Start&apos;)}
                    0x00007f15c063b735:   jne    0x00007f15c063be3c
   0.19%            0x00007f15c063b73b:   mov    0x10(%r10),%r9d
   0.00%            0x00007f15c063b73f:   shl    $0x3,%rbx                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
   0.08%            0x00007f15c063b743:   sub    0x10(%rbx),%r9d              ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$Start::match@9 (line 3781)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
   0.19%            0x00007f15c063b747:   cmp    %r9d,%edx
                    0x00007f15c063b74a:   jg     0x00007f15c063bf24           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$Start::match@10 (line 3781)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
   0.28%            0x00007f15c063b750:   mov    0x8(%r12,%rcx,8),%r8d        ; implicit exception: dispatches to 0x00007f15c063be60
   0.01%            0x00007f15c063b755:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.04%            0x00007f15c063b760:   cmp    $0xe8d8,%r8d                 ;   {metadata(&apos;java/lang/String&apos;)}
                    0x00007f15c063b767:   jne    0x00007f15c063be60
   0.02%            0x00007f15c063b76d:   cmp    $0x7ffffffe,%r9d
                    0x00007f15c063b774:   jg     0x00007f15c063bdd8
   0.24%            0x00007f15c063b77a:   mov    %r9d,%esi
                    0x00007f15c063b77d:   inc    %esi
   0.02%            0x00007f15c063b77f:   lea    (%r12,%rcx,8),%rdi           ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@118 (line 1738)
   0.01%            0x00007f15c063b783:   mov    %rdi,%rbp                    ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
                                                                              ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
   0.24%            0x00007f15c063b786:   mov    %edx,0x40(%rsp)
                    0x00007f15c063b78a:   mov    $0x1,%eax
   0.04%         ╭  0x00007f15c063b78f:   jmp    0x00007f15c063b7de
                 │  0x00007f15c063b791:   xor    %eax,%eax                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   2.16%         │  0x00007f15c063b793:   mov    0x28(%rsp),%r10
   0.74%         │  0x00007f15c063b798:   mov    0x20(%r10),%r9d              ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Pattern$Start::match@71 (line 3790)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   1.31%         │  0x00007f15c063b79c:   nopl   0x0(%rax)
   0.05%         │  0x00007f15c063b7a0:   test   %eax,%eax
                 │  0x00007f15c063b7a2:   jne    0x00007f15c063bab8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Pattern$Start::match@47 (line 3787)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   1.69%         │  0x00007f15c063b7a8:   mov    0x40(%rsp),%r11d
                 │  0x00007f15c063b7ad:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Pattern$Start::match@77 (line 3786)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.07%         │  0x00007f15c063b7b0:   cmp    (%rsp),%r11d
                 │  0x00007f15c063b7b4:   jge    0x00007f15c063bbc5           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Pattern$Start::match@34 (line 3786)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.02%         │  0x00007f15c063b7ba:   mov    0x50(%rsp),%ecx
   1.68%         │  0x00007f15c063b7be:   mov    0x54(%rsp),%r9d
                 │  0x00007f15c063b7c3:   mov    0x8(%rsp),%rbx
   0.06%         │  0x00007f15c063b7c8:   mov    (%rsp),%esi
   0.02%         │  0x00007f15c063b7cb:   mov    0x10(%rsp),%rdi
   1.67%         │  0x00007f15c063b7d0:   mov    0x30(%rsp),%rbp
                 │  0x00007f15c063b7d5:   mov    0x4(%rsp),%eax
   0.05%         │  0x00007f15c063b7d9:   mov    %r11d,0x40(%rsp)             ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Pattern$Start::match@37 (line 3787)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.03%         ↘  0x00007f15c063b7de:   mov    0xc(%rbx),%r8d               ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$Start::match@38 (line 3787)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
   1.91%            0x00007f15c063b7e2:   mov    0x8(%r12,%r8,8),%r11d        ; implicit exception: dispatches to 0x00007f15c063c068
                                                                              ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
   0.70%            0x00007f15c063b7e7:   mov    %eax,0x4(%rsp)
   0.01%            0x00007f15c063b7eb:   mov    %rbp,0x30(%rsp)
   0.06%            0x00007f15c063b7f0:   mov    %rdi,0x10(%rsp)
   1.57%            0x00007f15c063b7f5:   mov    %esi,(%rsp)
   0.39%            0x00007f15c063b7f8:   mov    %rbx,0x8(%rsp)
   0.02%            0x00007f15c063b7fd:   mov    %r9d,0x54(%rsp)
   0.05%            0x00007f15c063b802:   mov    %ecx,0x50(%rsp)
   1.52%            0x00007f15c063b806:   mov    %r10,0x28(%rsp)
   0.40%            0x00007f15c063b80b:   mov    0x14(%rbp),%r10d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.String::charAt@8 (line 1555)
                                                                              ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
                                                                              ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
   0.02%            0x00007f15c063b80f:   mov    0x28(%rsp),%r9
   0.16%            0x00007f15c063b814:   mov    0x10(%r9),%r9d               ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@4 (line 4501)
                                                                              ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
   2.54%            0x00007f15c063b818:   movsbl 0x10(%rbp),%ebx              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.String::isLatin1@7 (line 4817)
                                                                              ; - java.lang.String::charAt@1 (line 1554)
                                                                              ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
                                                                              ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
   0.10%            0x00007f15c063b81c:   lea    (%r12,%r8,8),%rdi
   0.01%            0x00007f15c063b820:   movslq %r9d,%rcx
   0.89%            0x00007f15c063b823:   cmp    $0x33ea88,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$BmpCharPropertyGreedy&apos;)}
                    0x00007f15c063b82a:   jne    0x00007f15c063b985           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1738)
                    0x00007f15c063b830:   mov    %rdi,0x20(%rsp)
                    0x00007f15c063b835:   mov    0x40(%rsp),%r8d
                    0x00007f15c063b83a:   nopw   0x0(%rax,%rax,1)
                    0x00007f15c063b840:   cmp    %r9d,%r8d
                    0x00007f15c063b843:   jge    0x00007f15c063bd20           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4502)
                                                                              ; - java.util.regex.Pattern$Start::match@44 (line 3787)
....................................................................................................
  29.29%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.regex.Matcher::search, version 2, compile id 607 

                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                          ;   {other}
                0x00007f15c063b970:   test   %eax,%eax
                0x00007f15c063b972:   je     0x00007f15c063bf9f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@73 (line 4509)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
                0x00007f15c063b978:   mov    $0x1,%eax
                0x00007f15c063b97d:   data16 xchg %ax,%ax
                0x00007f15c063b980:   jmp    0x00007f15c063b793
   1.05%        0x00007f15c063b985:   cmp    $0x3389f0,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$Slice&apos;)}
                0x00007f15c063b98c:   jne    0x00007f15c063bda8           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.09%        0x00007f15c063b992:   mov    %rdi,%r13
   0.01%        0x00007f15c063b995:   mov    0x10(%rdi),%r8d              ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Slice::match@1 (line 4258)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   1.33%        0x00007f15c063b999:   nopl   0x0(%rax)
   1.08%        0x00007f15c063b9a0:   mov    0xc(%r12,%r8,8),%r14d        ; implicit exception: dispatches to 0x00007f15c063c096
                                                                          ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Slice::match@8 (line 4259)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.32%        0x00007f15c063b9a5:   test   %r14d,%r14d
                0x00007f15c063b9a8:   jbe    0x00007f15c063bb7a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.34%        0x00007f15c063b9ae:   mov    %r14d,%edi
   0.73%        0x00007f15c063b9b1:   dec    %edi
   0.99%        0x00007f15c063b9b3:   cmp    %r14d,%edi
                0x00007f15c063b9b6:   jae    0x00007f15c063be00
   0.33%        0x00007f15c063b9bc:   nopl   0x0(%rax)
   0.05%        0x00007f15c063b9c0:   test   %ebx,%ebx
                0x00007f15c063b9c2:   jne    0x00007f15c063be00
   0.69%        0x00007f15c063b9c8:   mov    0xc(%r12,%r10,8),%ebx        ; implicit exception: dispatches to 0x00007f15c063be00
                                                                          ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.StringLatin1::charAt@2 (line 46)
                                                                          ; - java.lang.String::charAt@12 (line 1555)
                                                                          ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.89%        0x00007f15c063b9cd:   mov    0x40(%rsp),%r11d
   0.30%        0x00007f15c063b9d2:   cmp    %ebx,%r11d
                0x00007f15c063b9d5:   jae    0x00007f15c063be00
   0.05%        0x00007f15c063b9db:   movslq %ebx,%r11
   0.75%        0x00007f15c063b9de:   movslq 0x40(%rsp),%rdx              ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.StringLatin1::charAt@8 (line 47)
                                                                          ; - java.lang.String::charAt@12 (line 1555)
                                                                          ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   1.01%        0x00007f15c063b9e3:   movslq %r14d,%rax
   0.30%        0x00007f15c063b9e6:   lea    (%rdx,%rax,1),%rbx
   0.05%        0x00007f15c063b9ea:   dec    %rbx
   0.70%        0x00007f15c063b9ed:   cmp    %r11,%rbx
                0x00007f15c063b9f0:   jae    0x00007f15c063be00
   1.04%        0x00007f15c063b9f6:   mov    0x40(%rsp),%ebx
   0.27%        0x00007f15c063b9fa:   nopw   0x0(%rax,%rax,1)
   0.07%        0x00007f15c063ba00:   cmp    %r9d,%ebx
                0x00007f15c063ba03:   jge    0x00007f15c063bf44           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Slice::match@29 (line 4261)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.73%        0x00007f15c063ba09:   mov    0x10(%r12,%r8,8),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Slice::match@43 (line 4265)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.95%        0x00007f15c063ba0e:   lea    (%r12,%r10,8),%rdi
   0.25%        0x00007f15c063ba12:   movzbl 0x10(%rdi,%rdx,1),%r10d      ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.StringLatin1::charAt@12 (line 47)
                                                                          ; - java.lang.String::charAt@12 (line 1555)
                                                                          ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
                                                                          ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.13%        0x00007f15c063ba18:   cmp    %r10d,%ebx
   0.72%        0x00007f15c063ba1b:   nopl   0x0(%rax,%rax,1)
   0.99%  ╭     0x00007f15c063ba20:   jne    0x00007f15c063bab1           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
          │                                                               ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                                                               ; - java.util.regex.Matcher::search@121 (line 1738)
   1.53%  │     0x00007f15c063ba26:   sub    %rdx,%rcx
   2.08%  │     0x00007f15c063ba29:   lea    (%r12,%r8,8),%rsi            ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$Slice::match@1 (line 4258)
          │                                                               ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                                                               ; - java.util.regex.Matcher::search@121 (line 1738)
   0.03%  │     0x00007f15c063ba2d:   mov    $0xffffffff80000000,%r10
   0.04%  │     0x00007f15c063ba34:   cmp    $0xffffffff80000000,%rcx
   0.00%  │     0x00007f15c063ba3b:   cmovl  %r10,%rcx
   0.30%  │     0x00007f15c063ba3f:   cmp    %rax,%rcx
   0.78%  │     0x00007f15c063ba42:   cmovl  %rcx,%rax
   0.02%  │     0x00007f15c063ba46:   mov    %eax,%r10d
          │     0x00007f15c063ba49:   cmp    $0x1,%r10d
          │     0x00007f15c063ba4d:   jle    0x00007f15c063bb35
   0.02%  │     0x00007f15c063ba53:   mov    $0x1,%r11d
   0.25%  │  ↗  0x00007f15c063ba59:   mov    %r11d,%r8d
   0.03%  │  │  0x00007f15c063ba5c:   nopl   0x0(%rax)                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Pattern$Slice::match@21 (line 4261)
          │  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │  │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.01%  │ ↗│  0x00007f15c063ba60:   movslq %r8d,%rcx
   0.03%  │ ││  0x00007f15c063ba63:   mov    0x10(%rsi,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Pattern$Slice::match@43 (line 4265)
          │ ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.52%  │ ││  0x00007f15c063ba67:   add    %rdx,%rcx
   0.01%  │ ││  0x00007f15c063ba6a:   movzbl 0x10(%rdi,%rcx,1),%ecx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.lang.StringLatin1::charAt@12 (line 47)
          │ ││                                                            ; - java.lang.String::charAt@12 (line 1555)
          │ ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
          │ ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.32%  │ ││  0x00007f15c063ba6f:   cmp    %ecx,%ebx
          │╭││  0x00007f15c063ba71:   jne    0x00007f15c063bab1           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
          ││││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          ││││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.25%  ││││  0x00007f15c063ba73:   mov    %r10d,%eax
   0.02%  ││││  0x00007f15c063ba76:   sub    %r11d,%eax
   0.02%  ││││  0x00007f15c063ba79:   xor    %ebx,%ebx
          ││││  0x00007f15c063ba7b:   cmp    %r11d,%r10d
   0.28%  ││││  0x00007f15c063ba7e:   cmovl  %ebx,%eax
   0.03%  ││││  0x00007f15c063ba81:   cmp    $0x3e8,%eax                  ;   {no_reloc}
   0.04%  ││││  0x00007f15c063ba86:   mov    $0x3e8,%ecx
   0.01%  ││││  0x00007f15c063ba8b:   cmova  %ecx,%eax
   0.28%  ││││  0x00007f15c063ba8e:   add    %r11d,%eax
   0.02%  ││││  0x00007f15c063ba91:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.util.regex.Pattern$Slice::match@59 (line 4260)
          ││││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          ││││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          ││││  0x00007f15c063ba94:   cmp    %eax,%r8d
          ││╰│  0x00007f15c063ba97:   jl     0x00007f15c063ba60           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.regex.Matcher::search@65 (line 1731)
   0.27%  ││ │  0x00007f15c063ba99:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rdi=Oop rsi=Oop r13=Oop [8]=Oop [16]=Oop [40]=Oop [48]=Oop [80]=NarrowOop }
          ││ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││ │                                                            ; - (reexecute) java.util.regex.Pattern$Slice::match@62 (line 4260)
          ││ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          ││ │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
   0.01%  ││ │  0x00007f15c063baa0:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.regex.Pattern$Slice::match@62 (line 4260)
          ││ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          ││ │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          ││ │                                                            ;   {poll}
   0.52%  ││ │  0x00007f15c063baa3:   cmp    %r10d,%r8d
          ││ │  0x00007f15c063baa6:   jge    0x00007f15c063bb3b
          ││ │  0x00007f15c063baac:   mov    %r8d,%r11d
          ││ ╰  0x00007f15c063baaf:   jmp    0x00007f15c063ba59
   0.62%  ↘↘    0x00007f15c063bab1:   xor    %eax,%eax
   0.07%        0x00007f15c063bab3:   jmp    0x00007f15c063b793
                0x00007f15c063bab8:   mov    0x40(%rsp),%r11d
                0x00007f15c063babd:   mov    %r11d,0x1c(%r10)             ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@52 (line 3788)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.46%        0x00007f15c063bac1:   mov    0x38(%r10),%ebp              ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@56 (line 3789)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.03%        0x00007f15c063bac5:   mov    0xc(%r12,%rbp,8),%r8d        ; implicit exception: dispatches to 0x00007f15c063c100
   1.31%        0x00007f15c063baca:   cmp    $0x1,%r8d
                0x00007f15c063bace:   jbe    0x00007f15c063be88
   0.27%        0x00007f15c063bad4:   mov    %r11d,0x10(%r12,%rbp,8)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@64 (line 3789)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.90%        0x00007f15c063bad9:   mov    %r9d,0x14(%r12,%rbp,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Start::match@74 (line 3790)
                                                                          ; - java.util.regex.Matcher::search@121 (line 1738)
   0.10%        0x00007f15c063bade:   mov    0x4(%rsp),%eax               ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@134 (line 1741)
                0x00007f15c063bae2:   mov    %r9d,0x24(%r10)              ;*putfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@139 (line 1741)
                0x00007f15c063bae6:   incl   0x2c(%r10)                   ;*putfield requireEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::search@7 (line 1727)
   0.32%        0x00007f15c063baea:   add    $0x70,%rsp
                0x00007f15c063baee:   pop    %rbp
   0.23%        0x00007f15c063baef:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                0x00007f15c063baf6:   ja     0x00007f15c063c148
   0.05%        0x00007f15c063bafc:   ret    
                0x00007f15c063bafd:   mov    %r9d,%r11d
                0x00007f15c063bb00:   sub    %r8d,%r11d
                0x00007f15c063bb03:   xor    %r10d,%r10d
                0x00007f15c063bb06:   cmp    %r8d,%r9d
                0x00007f15c063bb09:   cmovl  %r10d,%r11d
                0x00007f15c063bb0d:   cmp    $0x3e8,%r11d
                0x00007f15c063bb14:   mov    $0x3e8,%r10d
                0x00007f15c063bb1a:   cmova  %r10d,%r11d
                0x00007f15c063bb1e:   add    %r8d,%r11d
                0x00007f15c063bb21:   mov    %esi,%edx
....................................................................................................
  28.27%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, java.util.regex.Pattern::split, version 5, compile id 648 

             0x00007f15c06507ba:   shr    $0x9,%r10
             0x00007f15c06507be:   movabs $0x7f15b4b3f000,%rdi
             0x00007f15c06507c8:   add    %r10,%rdi
             0x00007f15c06507cb:   cmpb   $0x2,(%rdi)
             0x00007f15c06507ce:   jne    0x00007f15c0650c27           ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::&lt;init&gt;@6 (line 4804)
                                                                       ; - java.lang.StringLatin1::newString@20 (line 752)
                                                                       ; - java.lang.String::substring@41 (line 2835)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   0.30%     0x00007f15c06507d4:   mov    %r12b,0x10(%r13)             ;*invokevirtual substring {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   0.26%     0x00007f15c06507d8:   mov    0x40(%rsp),%r10
   0.32%     0x00007f15c06507dd:   incl   0xc(%r10)                    ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::add@7 (line 495)
                                                                       ; - java.util.regex.Pattern::split@109 (line 1413)
   2.41%     0x00007f15c06507e1:   mov    0x14(%r10),%r10d             ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::add@13 (line 496)
                                                                       ; - java.util.regex.Pattern::split@109 (line 1413)
             0x00007f15c06507e5:   mov    0xc(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f15c0652c68
                                                                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::add@2 (line 482)
                                                                       ; - java.util.ArrayList::add@20 (line 496)
                                                                       ; - java.util.regex.Pattern::split@109 (line 1413)
   0.26%     0x00007f15c06507ea:   mov    0x40(%rsp),%r11
             0x00007f15c06507ef:   mov    0x10(%r11),%ebp              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::add@17 (line 496)
                                                                       ; - java.util.regex.Pattern::split@109 (line 1413)
   0.00%     0x00007f15c06507f3:   cmp    %r8d,%ebp
             0x00007f15c06507f6:   je     0x00007f15c0650b1d           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::add@3 (line 482)
                                                                       ; - java.util.ArrayList::add@20 (line 496)
                                                                       ; - java.util.regex.Pattern::split@109 (line 1413)
   0.29%     0x00007f15c06507fc:   lea    (%r12,%r10,8),%rax           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::add@11 (line 484)
                                                                       ; - java.util.ArrayList::add@20 (line 496)
                                                                       ; - java.util.regex.Pattern::split@109 (line 1413)
             0x00007f15c0650800:   mov    0xc(%rax),%r11d
   0.00%     0x00007f15c0650804:   cmp    %r11d,%ebp
             0x00007f15c0650807:   jae    0x00007f15c0651934
   0.32%     0x00007f15c065080d:   mov    0x8(%rax),%r11d
             0x00007f15c0650811:   cmp    $0x1258,%r11d                ;   {metadata(&apos;java/lang/Object&apos;[])}
             0x00007f15c0650818:   jne    0x00007f15c0651984
   0.31%     0x00007f15c065081e:   lea    0x10(%rax,%rbp,4),%r14       ;*putfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::&lt;init&gt;@65 (line 251)
                                                                       ; - java.util.regex.Pattern::matcher@38 (line 1180)
                                                                       ; - java.util.regex.Pattern::split@28 (line 1402)
             0x00007f15c0650823:   cmpb   $0x0,0x40(%r15)
   0.00%     0x00007f15c0650828:   jne    0x00007f15c0650b65
   0.00%     0x00007f15c065082e:   mov    %r14,%r10
   0.28%     0x00007f15c0650831:   mov    %r13,%r8
             0x00007f15c0650834:   shr    $0x3,%r8
   0.01%     0x00007f15c0650838:   mov    %r8d,(%r14)
   0.63%     0x00007f15c065083b:   inc    %ebp
             0x00007f15c065083d:   mov    %r13,%r11
             0x00007f15c0650840:   xor    %r10,%r11
   0.00%     0x00007f15c0650843:   shr    $0x15,%r11
   0.29%     0x00007f15c0650847:   test   %r11,%r11
          ╭  0x00007f15c065084a:   je     0x00007f15c0650869
          │  0x00007f15c065084c:   shr    $0x9,%r10
   0.00%  │  0x00007f15c0650850:   movabs $0x7f15b4b3f000,%rdi
          │  0x00007f15c065085a:   add    %r10,%rdi
          │  0x00007f15c065085d:   data16 xchg %ax,%ax
          │  0x00007f15c0650860:   cmpb   $0x2,(%rdi)
          │  0x00007f15c0650863:   jne    0x00007f15c0650b9f           ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.ArrayList::add@14 (line 484)
          │                                                            ; - java.util.ArrayList::add@20 (line 496)
          │                                                            ; - java.util.regex.Pattern::split@109 (line 1413)
   0.00%  ↘  0x00007f15c0650869:   mov    0x40(%rsp),%r10
   0.00%     0x00007f15c065086e:   mov    %ebp,0x10(%r10)              ;*putfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::add@19 (line 485)
                                                                       ; - java.util.ArrayList::add@20 (line 496)
                                                                       ; - java.util.regex.Pattern::split@109 (line 1413)
   0.23%     0x00007f15c0650872:   mov    0x20(%rsp),%r10
   0.13%     0x00007f15c0650877:   mov    0x1c(%r10),%r10d             ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::hasMatch@1 (line 1850)
                                                                       ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                       ; - java.util.regex.Matcher::end@1 (line 535)
                                                                       ; - java.util.regex.Pattern::split@115 (line 1414)
   0.01%     0x00007f15c065087b:   nopl   0x0(%rax,%rax,1)
   0.00%     0x00007f15c0650880:   test   %r10d,%r10d
             0x00007f15c0650883:   jl     0x00007f15c0651cb8           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::hasMatch@4 (line 1850)
                                                                       ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                       ; - java.util.regex.Matcher::end@1 (line 535)
                                                                       ; - java.util.regex.Pattern::split@115 (line 1414)
   0.22%     0x00007f15c0650889:   mov    0x20(%rsp),%r11
   0.11%     0x00007f15c065088e:   mov    0x20(%r11),%ebp              ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::end@5 (line 536)
                                                                       ; - java.util.regex.Pattern::split@115 (line 1414)
   0.01%     0x00007f15c0650892:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@148 (line 1418)
   0.00%     0x00007f15c0650894:   cmp    %r10d,%ebp
             0x00007f15c0650897:   je     0x00007f15c0652030           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::find@10 (line 745)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
   0.21%     0x00007f15c065089d:   mov    0xc(%r11),%r10d              ;*getfield from {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::find@18 (line 749)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
   0.09%     0x00007f15c06508a1:   cmp    %r10d,%ebp
             0x00007f15c06508a4:   jl     0x00007f15c065206c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::find@21 (line 749)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
   0.01%     0x00007f15c06508aa:   mov    0x10(%r11),%r10d             ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::find@31 (line 753)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
   0.01%     0x00007f15c06508ae:   cmp    %r10d,%ebp
             0x00007f15c06508b1:   jg     0x00007f15c06520a8
   0.24%     0x00007f15c06508b7:   mov    %ebp,(%rsp)
   0.11%     0x00007f15c06508ba:   mov    %ebx,%ebp                    ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::find@34 (line 753)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
   0.00%     0x00007f15c06508bc:   mov    0x20(%rsp),%rsi
   0.01%     0x00007f15c06508c1:   mov    (%rsp),%edx
   0.46%     0x00007f15c06508c4:   vzeroupper 
   0.31%     0x00007f15c06508c7:   call   0x00007f15c00c4380           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop [64]=Oop }
                                                                       ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                       ;   {optimized virtual_call}
   0.01%     0x00007f15c06508cc:   nopl   0x3000dbc(%rax,%rax,1)       ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                       ;   {other}
   0.23%     0x00007f15c06508d4:   test   %eax,%eax
             0x00007f15c06508d6:   je     0x00007f15c0650d11           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@38 (line 1405)
   0.06%     0x00007f15c06508dc:   mov    (%rsp),%r11d
   0.15%     0x00007f15c06508e0:   mov    %ebp,%ebx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@41 (line 1406)
   0.20%     0x00007f15c06508e2:   mov    0x20(%rsp),%r10
   0.01%     0x00007f15c06508e7:   mov    0x1c(%r10),%r10d             ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::hasMatch@1 (line 1850)
                                                                       ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                       ; - java.util.regex.Matcher::start@1 (line 466)
                                                                       ; - java.util.regex.Pattern::split@63 (line 1407)
   0.69%     0x00007f15c06508eb:   test   %r11d,%r11d
             0x00007f15c06508ee:   je     0x00007f15c0650cf5           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@66 (line 1407)
   0.00%     0x00007f15c06508f4:   test   %r10d,%r10d
             0x00007f15c06508f7:   jl     0x00007f15c0651c19           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::hasMatch@4 (line 1850)
                                                                       ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                       ; - java.util.regex.Matcher::start@1 (line 466)
                                                                       ; - java.util.regex.Pattern::split@90 (line 1412)
   0.32%     0x00007f15c06508fd:   mov    0x30(%rsp),%r8
   0.02%     0x00007f15c0650902:   mov    0x14(%r8),%edi               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::length@1 (line 1519)
                                                                       ; - java.lang.String::substring@1 (line 2829)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   0.64%     0x00007f15c0650906:   mov    0xc(%r12,%rdi,8),%ecx        ; implicit exception: dispatches to 0x00007f15c0652c50
                                                                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::length@4 (line 1519)
                                                                       ; - java.lang.String::substring@1 (line 2829)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   1.43%     0x00007f15c065090b:   movsbl 0x10(%r8),%r9d               ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::coder@7 (line 4809)
                                                                       ; - java.lang.String::length@6 (line 1519)
                                                                       ; - java.lang.String::substring@1 (line 2829)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
             0x00007f15c0650910:   sarx   %r9d,%ecx,%r8d               ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::length@9 (line 1519)
                                                                       ; - java.lang.String::substring@1 (line 2829)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   0.30%     0x00007f15c0650915:   test   %r11d,%r11d
             0x00007f15c0650918:   jl     0x00007f15c0651c54           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.util.Preconditions::checkFromToIndex@1 (line 348)
                                                                       ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                       ; - java.lang.String::substring@8 (line 2830)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
             0x00007f15c065091e:   xchg   %ax,%ax
             0x00007f15c0650920:   cmp    %r10d,%r11d
             0x00007f15c0650923:   jg     0x00007f15c0651f47           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.util.Preconditions::checkFromToIndex@6 (line 348)
                                                                       ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                       ; - java.lang.String::substring@8 (line 2830)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
             0x00007f15c0650929:   cmp    %r8d,%r10d
             0x00007f15c065092c:   jg     0x00007f15c0651fbc           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.util.Preconditions::checkFromToIndex@11 (line 348)
                                                                       ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                       ; - java.lang.String::substring@8 (line 2830)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   0.30%     0x00007f15c0650932:   test   %r11d,%r11d
             0x00007f15c0650935:   je     0x00007f15c0650b0d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::substring@12 (line 2831)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
             0x00007f15c065093b:   mov    %r10d,%r8d
             0x00007f15c065093e:   sub    %r11d,%r8d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::substring@24 (line 2834)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   0.00%     0x00007f15c0650941:   test   %r9d,%r9d
             0x00007f15c0650944:   jne    0x00007f15c0651d56           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::isLatin1@10 (line 4817)
                                                                       ; - java.lang.String::substring@28 (line 2835)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   0.31%     0x00007f15c065094a:   cmp    %r11d,%r10d
             0x00007f15c065094d:   je     0x00007f15c06520d8
             0x00007f15c0650953:   mov    0x1b8(%r15),%r13
             0x00007f15c065095a:   mov    %r13,%r9
   0.00%     0x00007f15c065095d:   add    $0x18,%r9
   0.29%     0x00007f15c0650961:   cmp    0x1c8(%r15),%r9
             0x00007f15c0650968:   jae    0x00007f15c0651672           ;*putfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::&lt;init&gt;@65 (line 251)
                                                                       ; - java.util.regex.Pattern::matcher@38 (line 1180)
                                                                       ; - java.util.regex.Pattern::split@28 (line 1402)
   0.01%     0x00007f15c065096e:   mov    %r9,0x1b8(%r15)
   0.00%     0x00007f15c0650975:   prefetchw 0xc0(%r9)
   0.01%     0x00007f15c065097d:   movq   $0x1,0x0(%r13)
   0.30%     0x00007f15c0650985:   movl   $0xe8d8,0x8(%r13)            ;   {metadata(&apos;java/lang/String&apos;)}
   0.44%     0x00007f15c065098d:   mov    %r12d,0xc(%r13)
             0x00007f15c0650991:   mov    %r12,0x10(%r13)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.StringLatin1::newString@7 (line 752)
                                                                       ; - java.lang.String::substring@41 (line 2835)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   0.09%     0x00007f15c0650995:   lea    (%r12,%rdi,8),%r9            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::length@1 (line 1519)
                                                                       ; - java.lang.String::substring@1 (line 2829)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   0.01%     0x00007f15c0650999:   test   %r11d,%r11d
   0.25%     0x00007f15c065099c:   nopl   0x0(%rax)
             0x00007f15c06509a0:   je     0x00007f15c0650a24           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Arrays::copyOfRange@1 (line 3853)
                                                                       ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                       ; - java.lang.String::substring@41 (line 2835)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
   0.05%     0x00007f15c06509a6:   cmp    %r11d,%r10d
             0x00007f15c06509a9:   jge    0x00007f15c06506a0           ;*synchronization entry
                                                                       ; - java.util.Arrays::checkLength@-1 (line 3820)
                                                                       ; - java.util.Arrays::copyOfRangeByte@2 (line 3861)
                                                                       ; - java.util.Arrays::copyOfRange@13 (line 3854)
                                                                       ; - java.lang.StringLatin1::newString@16 (line 752)
....................................................................................................
  13.97%  <total for region 3>

....[Hottest Regions]...............................................................................
  29.29%         c2, level 4  java.util.regex.Matcher::search, version 2, compile id 607 
  28.27%         c2, level 4  java.util.regex.Matcher::search, version 2, compile id 607 
  13.97%         c2, level 4  java.util.regex.Pattern::split, version 5, compile id 648 
   6.58%         c2, level 4  java.util.regex.Pattern::split, version 5, compile id 648 
   5.92%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   5.34%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.97%         c2, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 620 
   2.16%         c2, level 4  java.util.regex.Matcher::search, version 2, compile id 607 
   1.51%        runtime stub  StubRoutines::checkcast_arraycopy 
   0.56%              kernel  [unknown] 
   0.55%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.33%         c2, level 4  java.util.ArrayList::grow, version 2, compile id 665 
   0.17%         c2, level 4  java.util.regex.Pattern::split, version 5, compile id 648 
   0.14%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%         c2, level 4  java.util.regex.Pattern::split, version 5, compile id 648 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   1.79%  <...other 428 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  59.73%         c2, level 4  java.util.regex.Matcher::search, version 2, compile id 607 
  20.82%         c2, level 4  java.util.regex.Pattern::split, version 5, compile id 648 
  11.26%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.97%         c2, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 620 
   1.92%              kernel  [unknown] 
   1.52%        runtime stub  StubRoutines::checkcast_arraycopy 
   0.55%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.47%         c2, level 4  java.util.ArrayList::grow, version 2, compile id 665 
   0.06%                      <unknown> 
   0.05%         c2, level 4  java.util.regex.Pattern::compile, version 2, compile id 689 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%           libjvm.so  G1BarrierSet::invalidate 
   0.02%         c2, level 4  java.util.regex.Pattern::atom, version 2, compile id 693 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.01%           libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%           libjvm.so  outputStream::print 
   0.48%  <...other 155 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  84.10%         c2, level 4
  13.32%        runtime stub
   1.92%              kernel
   0.37%           libjvm.so
   0.15%        libc-2.31.so
   0.06%                    
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.01%              [vdso]
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%    perf-1957704.map
   0.00%      libz.so.1.2.11
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.alloc.rate":
  531.716 ±(99.9%) 0.626 MB/sec [Average]
  (min, avg, max) = (531.516, 531.716, 531.960), stdev = 0.162
  CI (99.9%): [531.090, 532.341] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.alloc.rate.norm":
  143616.178 ±(99.9%) 0.002 B/op [Average]
  (min, avg, max) = (143616.178, 143616.178, 143616.179), stdev = 0.001
  CI (99.9%): [143616.177, 143616.180] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.count":
  11.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (2.000, 2.200, 3.000), stdev = 0.447
  CI (99.9%): [11.000, 11.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.time":
  26.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (4.000, 5.200, 6.000), stdev = 1.095
  CI (99.9%): [26.000, 26.000] (assumes normal distribution)


# Run complete. Total time: 00:07:20

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

Benchmark                                                     (regexp)  Mode  Cnt       Score   Error   Units
StringPatternSplitBenchmark.pattern_split                            _  avgt    5     225.417 ± 0.543   us/op
StringPatternSplitBenchmark.pattern_split:asm                        _  avgt              NaN             ---
StringPatternSplitBenchmark.pattern_split:gc.alloc.rate              _  avgt    5     605.485 ± 1.456  MB/sec
StringPatternSplitBenchmark.pattern_split:gc.alloc.rate.norm         _  avgt    5  143120.172 ± 0.133    B/op
StringPatternSplitBenchmark.pattern_split:gc.count                   _  avgt    5      13.000          counts
StringPatternSplitBenchmark.pattern_split:gc.time                    _  avgt    5      30.000              ms
StringPatternSplitBenchmark.pattern_split                           __  avgt    5     367.883 ± 1.241   us/op
StringPatternSplitBenchmark.pattern_split:asm                       __  avgt              NaN             ---
StringPatternSplitBenchmark.pattern_split:gc.alloc.rate             __  avgt    5     371.005 ± 1.246  MB/sec
StringPatternSplitBenchmark.pattern_split:gc.alloc.rate.norm        __  avgt    5  143120.255 ± 0.003    B/op
StringPatternSplitBenchmark.pattern_split:gc.count                  __  avgt    5       7.000          counts
StringPatternSplitBenchmark.pattern_split:gc.time                   __  avgt    5      20.000              ms
StringPatternSplitBenchmark.string_split                             _  avgt    5     102.586 ± 0.180   us/op
StringPatternSplitBenchmark.string_split:asm                         _  avgt              NaN             ---
StringPatternSplitBenchmark.string_split:gc.alloc.rate               _  avgt    5    1328.527 ± 2.327  MB/sec
StringPatternSplitBenchmark.string_split:gc.alloc.rate.norm          _  avgt    5  142912.071 ± 0.001    B/op
StringPatternSplitBenchmark.string_split:gc.count                    _  avgt    5      27.000          counts
StringPatternSplitBenchmark.string_split:gc.time                     _  avgt    5      52.000              ms
StringPatternSplitBenchmark.string_split                            __  avgt    5     257.580 ± 0.305   us/op
StringPatternSplitBenchmark.string_split:asm                        __  avgt              NaN             ---
StringPatternSplitBenchmark.string_split:gc.alloc.rate              __  avgt    5     531.716 ± 0.626  MB/sec
StringPatternSplitBenchmark.string_split:gc.alloc.rate.norm         __  avgt    5  143616.178 ± 0.002    B/op
StringPatternSplitBenchmark.string_split:gc.count                   __  avgt    5      11.000          counts
StringPatternSplitBenchmark.string_split:gc.time                    __  avgt    5      26.000              ms
