# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 94.009 us/op
# Warmup Iteration   2: 77.600 us/op
# Warmup Iteration   3: 77.682 us/op
# Warmup Iteration   4: 77.821 us/op
# Warmup Iteration   5: 77.686 us/op
Iteration   1: 77.653 us/op
Iteration   2: 77.737 us/op
Iteration   3: 77.721 us/op
Iteration   4: 77.900 us/op
Iteration   5: 77.858 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split":
  77.774 ±(99.9%) 0.395 us/op [Average]
  (min, avg, max) = (77.653, 77.774, 77.900), stdev = 0.102
  CI (99.9%): [77.379, 78.168] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split:·asm":
PrintAssembly processed: 231305 total address lines.
Perf output processed (skipped 59.084 seconds):
 Column 1: cycles (51138 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 2, compile id 808 

            0x00007efe82b4388f:   lea    0x2(%rcx),%rcx
            0x00007efe82b43893:   cmp    %rsi,%rcx
            0x00007efe82b43896:   jg     0x00007efe82b437b5
            0x00007efe82b4389c:   movl   $0xffffffff,(%r11,%rcx,4)    ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Matcher::search@61 (line 1722)
                                                                      ; - java.util.regex.Matcher::find@65 (line 745)
                                                                      ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
            0x00007efe82b438a4:   jmp    0x00007efe82b437b5
   3.79%    0x00007efe82b438a9:   movabs $0x800269f50,%r8             ;   {metadata(&apos;java/util/regex/Pattern$LastNode&apos;)}
   4.30%    0x00007efe82b438b3:   nopw   0x0(%rax,%rax,1)
   0.10%    0x00007efe82b438bc:   data16 data16 xchg %ax,%ax
            0x00007efe82b438c0:   cmp    0xa8(%rsp),%r8
            0x00007efe82b438c8:   jne    0x00007efe82b47925           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                                                                      ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                      ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                      ; - java.util.regex.Matcher::find@65 (line 745)
                                                                      ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   4.37%    0x00007efe82b438ce:   cmp    $0x2,%r14d
            0x00007efe82b438d2:   jb     0x00007efe82b477dc
   0.14%    0x00007efe82b438d8:   mov    %r10d,0x10(%rdx)             ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern$LastNode::match@32 (line 3581)
                                                                      ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                                                                      ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                      ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                      ; - java.util.regex.Matcher::find@65 (line 745)
                                                                      ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   1.38%    0x00007efe82b438dc:   mov    %r13d,0x14(%rdx)             ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern$LastNode::match@42 (line 3582)
                                                                      ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                                                                      ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                      ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                      ; - java.util.regex.Matcher::find@65 (line 745)
                                                                      ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   2.92%    0x00007efe82b438e0:   mov    %r11d,0x10(%rdx)             ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern$Start::match@64 (line 3610)
                                                                      ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                      ; - java.util.regex.Matcher::find@65 (line 745)
                                                                      ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.01%    0x00007efe82b438e4:   mov    %r13d,0x14(%rdx)             ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern$Start::match@74 (line 3611)
                                                                      ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                      ; - java.util.regex.Matcher::find@65 (line 745)
                                                                      ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.48%    0x00007efe82b438e8:   mov    %r13d,%r11d
   0.04%    0x00007efe82b438eb:   dec    %r11d
   0.47%    0x00007efe82b438ee:   test   %r10d,%r10d
            0x00007efe82b438f1:   je     0x00007efe82b44555           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern::split@54 (line 1267)
                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.02%    0x00007efe82b438f7:   mov    %r8,0x88(%rsp)
   0.50%    0x00007efe82b438ff:   mov    %r11d,%r8d
   0.02%    0x00007efe82b43902:   mov    0x88(%rsp),%r11
   0.57%    0x00007efe82b4390a:   cmp    %r8d,%r10d
            0x00007efe82b4390d:   jg     0x00007efe82b4702b           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::checkBoundsBeginEnd@6 (line 4603)
                                                                      ; - java.lang.String::substring@8 (line 2707)
                                                                      ; - java.lang.String::subSequence@3 (line 2745)
                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.02%    0x00007efe82b43913:   cmp    %ebp,%r8d
            0x00007efe82b43916:   ja     0x00007efe82b4702b           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::checkBoundsBeginEnd@11 (line 4603)
                                                                      ; - java.lang.String::substring@8 (line 2707)
                                                                      ; - java.lang.String::subSequence@3 (line 2745)
                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.42%    0x00007efe82b4391c:   nopl   0x0(%rax)
   0.03%    0x00007efe82b43920:   cmp    %r10d,%r8d
            0x00007efe82b43923:   je     0x00007efe82b4499d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.StringLatin1::newString@1 (line 766)
                                                                      ; - java.lang.String::substring@41 (line 2712)
                                                                      ; - java.lang.String::subSequence@3 (line 2745)
                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.55%    0x00007efe82b43929:   mov    %r8d,%r14d
   0.01%    0x00007efe82b4392c:   sub    %r10d,%r14d                  ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::substring@24 (line 2711)
                                                                      ; - java.lang.String::subSequence@3 (line 2745)
                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.42%    0x00007efe82b4392f:   test   %r14d,%r14d
            0x00007efe82b43932:   jl     0x00007efe82b46d2b
   0.02%    0x00007efe82b43938:   nopl   0x0(%rax,%rax,1)
   0.57%    0x00007efe82b43940:   cmp    %ebp,%r10d
            0x00007efe82b43943:   ja     0x00007efe82b46d2b
   0.01%    0x00007efe82b43949:   mov    %ebx,0x90(%rsp)
   0.46%    0x00007efe82b43950:   mov    0x108(%r15),%rbx
   0.04%    0x00007efe82b43957:   mov    %r14d,%r9d
   0.46%    0x00007efe82b4395a:   lea    0x17(%r9),%rcx
   0.02%    0x00007efe82b4395e:   and    $0xfffffffffffffff8,%rcx
   0.47%    0x00007efe82b43962:   mov    %rcx,%rdi
   0.02%    0x00007efe82b43965:   add    %rbx,%rdi
   0.45%    0x00007efe82b43968:   cmp    0x118(%r15),%rdi
            0x00007efe82b4396f:   ja     0x00007efe82b43ec5
   0.02%    0x00007efe82b43975:   mov    %rdi,0x108(%r15)
   1.00%    0x00007efe82b4397c:   prefetchw 0xc0(%rcx,%rbx,1)
   0.08%    0x00007efe82b43984:   prefetchw 0x100(%rcx,%rbx,1)
   0.26%    0x00007efe82b4398c:   prefetchw 0x140(%rcx,%rbx,1)
   0.05%    0x00007efe82b43994:   prefetchw 0x180(%rcx,%rbx,1)
   1.00%    0x00007efe82b4399c:   movq   $0x1,(%rbx)
   0.06%    0x00007efe82b439a3:   movl   $0x6848,0x8(%rbx)            ;   {metadata({type array byte})}
   2.39%    0x00007efe82b439aa:   mov    %r14d,0xc(%rbx)
   0.02%    0x00007efe82b439ae:   mov    %ebp,%ecx
   0.14%    0x00007efe82b439b0:   sub    %r10d,%ecx
   0.04%    0x00007efe82b439b3:   cmp    %ecx,%r14d
   0.77%    0x00007efe82b439b6:   cmovg  %ecx,%r14d
   0.03%    0x00007efe82b439ba:   movslq %r14d,%rdi
   0.15%    0x00007efe82b439bd:   cmp    %rdi,%r9
   0.04%    0x00007efe82b439c0:   mov    %r9,%rcx
   0.85%    0x00007efe82b439c3:   cmova  %rdi,%rcx
   0.14%    0x00007efe82b439c7:   test   %rcx,%rcx
            0x00007efe82b439ca:   je     0x00007efe82b43d94
   0.04%    0x00007efe82b439d0:   mov    0x30(%rsp),%r14
   0.89%    0x00007efe82b439d5:   lea    0x10(%rbx),%rbp
   0.02%    0x00007efe82b439d9:   lea    0x10(%r14,%r10,1),%r11
   0.11%    0x00007efe82b439de:   xchg   %ax,%ax
   0.04%    0x00007efe82b439e0:   cmp    $0x20,%rcx
            0x00007efe82b439e4:   jl     0x00007efe82b43da6
            0x00007efe82b439ea:   mov    %r10d,0x94(%rsp)
            0x00007efe82b439f2:   lea    -0x20(%rcx),%r10
            0x00007efe82b439f6:   mov    $0x0,%rdx
            0x00007efe82b439fd:   data16 xchg %ax,%ax
            0x00007efe82b43a00:   vmovdqu (%r11,%rdx,1),%ymm2
            0x00007efe82b43a06:   vmovdqu %ymm2,0x0(%rbp,%rdx,1)
            0x00007efe82b43a0c:   lea    0x20(%rdx),%rdx
            0x00007efe82b43a10:   cmp    %r10,%rdx
            0x00007efe82b43a13:   jle    0x00007efe82b43a00
....................................................................................................
  31.22%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 2, compile id 808 

                    0x00007efe82b43713:   mov    0xdc(%rsp),%r9d
                    0x00007efe82b4371b:   mov    0x4c(%rsp),%eax
                    0x00007efe82b4371f:   mov    $0xffffffff,%ecx
                    0x00007efe82b43724:   mov    0xd0(%rsp),%rsi
                    0x00007efe82b4372c:   mov    0xe0(%rsp),%ebp
                    0x00007efe82b43733:   nopw   0x0(%rax,%rax,1)
                    0x00007efe82b4373c:   data16 data16 xchg %ax,%ax          ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern::split@29 (line 1265)
                                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.14%            0x00007efe82b43740:   cmp    %r10d,%r11d
                    0x00007efe82b43743:   je     0x00007efe82b47360           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::find@10 (line 732)
                                                                              ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.71%            0x00007efe82b43749:   test   %r10d,%r10d
                    0x00007efe82b4374c:   jl     0x00007efe82b47b57           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::find@21 (line 736)
                                                                              ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.09%            0x00007efe82b43752:   cmp    %ebp,%r10d
                    0x00007efe82b43755:   jg     0x00007efe82b47630           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::find@34 (line 740)
                                                                              ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.08%            0x00007efe82b4375b:   nopl   0x0(%rax,%rax,1)
   0.12%            0x00007efe82b43760:   test   %ecx,%ecx
                    0x00007efe82b43762:   jl     0x00007efe82b44365           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@30 (line 1720)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                                                                              ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.61%            0x00007efe82b43768:   mov    %ecx,0x98(%rsp)
   0.13%            0x00007efe82b4376f:   test   $0x7fffffff,%r13d
          ╭         0x00007efe82b43776:   je     0x00007efe82b437b5
   0.08%  │         0x00007efe82b4377c:   lea    0x10(%rdx),%r11
   0.13%  │         0x00007efe82b43780:   cmp    $0x8,%r14d
          │         0x00007efe82b43784:   jb     0x00007efe82b43d3b
   0.65%  │         0x00007efe82b4378a:   mov    $0x0,%rcx
   0.10%  │         0x00007efe82b43791:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.07%  │         0x00007efe82b4379c:   data16 data16 xchg %ax,%ax
   0.23%  │ ↗       0x00007efe82b437a0:   vmovdqu %ymm1,(%r11,%rcx,4)
   2.55%  │ │       0x00007efe82b437a6:   lea    0x8(%rcx),%rcx
   0.18%  │ │       0x00007efe82b437aa:   cmp    %rbx,%rcx
          │╭│       0x00007efe82b437ad:   jg     0x00007efe82b4386a
   0.06%  ││╰       0x00007efe82b437b3:   jmp    0x00007efe82b437a0           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - java.util.regex.Matcher::search@61 (line 1722)
          ││                                                                  ; - java.util.regex.Matcher::find@65 (line 745)
          ││                                                                  ; - java.util.regex.Pattern::split@31 (line 1265)
          ││                                                                  ; - java.util.regex.Pattern::split@3 (line 1335)
          ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   1.04%  ↘│     ↗  0x00007efe82b437b5:   cmp    %r9d,%r10d
           │     │  0x00007efe82b437b8:   jg     0x00007efe82b47bef           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - java.util.regex.Pattern$Start::match@10 (line 3602)
           │     │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │     │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │     │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │     │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │     │  0x00007efe82b437be:   xchg   %ax,%ax
           │     │  0x00007efe82b437c0:   cmp    %r10d,%ebp
           │     │  0x00007efe82b437c3:   jle    0x00007efe82b47c7c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@5 (line 3953)
           │     │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │     │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │     │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │     │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │     │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.00%   │     │  0x00007efe82b437c9:   cmp    %r10d,%ebp
           │     │  0x00007efe82b437cc:   jle    0x00007efe82b4727e           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
           │     │                                                            ; - java.lang.String::charAt@12 (line 1515)
           │     │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           │     │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │     │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │     │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │     │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │     │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.96%   │     │  0x00007efe82b437d2:   cmp    %r10d,%ebp
           │     │  0x00007efe82b437d5:   jbe    0x00007efe82b4785e           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
           │     │                                                            ; - java.lang.String::charAt@12 (line 1515)
           │     │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           │     │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │     │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │     │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │     │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │     │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.00%   │     │  0x00007efe82b437db:   mov    0xa4(%rsp),%ecx
   0.01%   │     │  0x00007efe82b437e2:   movzbl 0x10(%r10,%rax,8),%r11d      ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - java.lang.StringLatin1::charAt@25 (line 50)
           │     │                                                            ; - java.lang.String::charAt@12 (line 1515)
           │     │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           │     │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │     │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │     │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │     │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │     │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.04%   │     │  0x00007efe82b437e8:   mov    0x9c(%rsp),%ebx
   1.03%   │     │  0x00007efe82b437ef:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - java.util.regex.Matcher::search@148 (line 1732)
           │     │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │     │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │     │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.00%   │     │  0x00007efe82b437f1:   mov    %r10d,%r8d
           │     │  0x00007efe82b437f4:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@34 (line 3954)
           │     │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │     │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │     │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │     │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │     │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.01%   │     │  0x00007efe82b437f7:   cmp    %r11d,%ecx
           │     │  0x00007efe82b437fa:   je     0x00007efe82b43d56           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 3954)
           │     │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │     │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │     │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │     │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │     │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   1.00%   │     │  0x00007efe82b43800:   mov    %r8d,%r11d
   0.01%   │ ╭   │  0x00007efe82b43803:   jmp    0x00007efe82b4385d           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │ │   │                                                            ; - java.util.regex.Pattern$Start::match@31 (line 3607)
           │ │   │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │ │   │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │ │   │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │ │   │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │ │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │ │   │  0x00007efe82b43808:   data16 data16 nopw 0x0(%rax,%rax,1)
           │ │   │  0x00007efe82b43813:   data16 data16 xchg %ax,%ax
           │ │   │  0x00007efe82b43817:   nopw   0x0(%rax,%rax,1)             ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
           │ │   │                                                            ; - java.util.regex.Pattern$Start::match@34 (line 3607)
           │ │   │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │ │   │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │ │   │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │ │   │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │ │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   4.48%   │ │↗  │  0x00007efe82b43820:   cmp    %r11d,%ebp
           │ ││  │  0x00007efe82b43823:   jle    0x00007efe82b47885           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ ││  │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@5 (line 3953)
           │ ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │ ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │ ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   1.09%   │ ││  │  0x00007efe82b43829:   cmp    %r11d,%ebp
           │ ││  │  0x00007efe82b4382c:   jbe    0x00007efe82b47807           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │ ││  │                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
           │ ││  │                                                            ; - java.lang.String::charAt@12 (line 1515)
           │ ││  │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           │ ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │ ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │ ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.00%   │ ││  │  0x00007efe82b43832:   cmp    %r11d,%ebp
           │ ││  │  0x00007efe82b43835:   jbe    0x00007efe82b47113           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │ ││  │                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
           │ ││  │                                                            ; - java.lang.String::charAt@12 (line 1515)
           │ ││  │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           │ ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │ ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │ ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.12%   │ ││  │  0x00007efe82b4383b:   movzbl 0x10(%r11,%rax,8),%r8d       ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │ ││  │                                                            ; - java.lang.StringLatin1::charAt@25 (line 50)
           │ ││  │                                                            ; - java.lang.String::charAt@12 (line 1515)
           │ ││  │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           │ ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │ ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │ ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   4.76%   │ ││  │  0x00007efe82b43841:   mov    %r11d,%r13d
   1.02%   │ ││  │  0x00007efe82b43844:   inc    %r13d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │ ││  │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@34 (line 3954)
           │ ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │ ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │ ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.00%   │ ││  │  0x00007efe82b43847:   cmp    %r8d,%ecx
           │ ││  │  0x00007efe82b4384a:   je     0x00007efe82b438a9           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │ ││  │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 3954)
           │ ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │ ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │ ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.67%   │ ││  │  0x00007efe82b43850:   mov    0x348(%r15),%r8              ; ImmutableOopMap {rax=NarrowOop rdx=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop }
           │ ││  │                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
           │ ││  │                                                            ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3607)
           │ ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │ ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   4.66%   │ ││  │  0x00007efe82b43857:   test   %eax,(%r8)                   ;   {poll}
   1.98%   │ ││  │  0x00007efe82b4385a:   mov    %r13d,%r11d                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │ ││  │                                                            ; - java.util.regex.Pattern$Start::match@31 (line 3607)
           │ ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │ ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.02%   │ ↘│  │  0x00007efe82b4385d:   data16 xchg %ax,%ax
   0.11%   │  │  │  0x00007efe82b43860:   cmp    %r9d,%r11d
           │  ╰  │  0x00007efe82b43863:   jle    0x00007efe82b43820
           │     │  0x00007efe82b43865:   jmp    0x00007efe82b44b3d           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - java.util.regex.Pattern$Start::match@34 (line 3607)
           │     │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │     │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │     │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │     │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.12%   ↘     │  0x00007efe82b4386a:   cmp    %r8,%rcx
               ╭ │  0x00007efe82b4386d:   jg     0x00007efe82b4387d
               │ │  0x00007efe82b43873:   vmovdqu %xmm1,(%r11,%rcx,4)
   0.86%       │ │  0x00007efe82b43879:   lea    0x4(%rcx),%rcx
   0.08%       ↘ │  0x00007efe82b4387d:   data16 xchg %ax,%ax
   0.14%         │  0x00007efe82b43880:   cmp    %rdi,%rcx
                ╭│  0x00007efe82b43883:   jg     0x00007efe82b43893
                ││  0x00007efe82b43889:   vmovq  %xmm1,(%r11,%rcx,4)
                ││  0x00007efe82b4388f:   lea    0x2(%rcx),%rcx
                ↘│  0x00007efe82b43893:   cmp    %rsi,%rcx
                 ╰  0x00007efe82b43896:   jg     0x00007efe82b437b5
                    0x00007efe82b4389c:   movl   $0xffffffff,(%r11,%rcx,4)    ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@61 (line 1722)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                                                                              ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
....................................................................................................
  30.14%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 2, compile id 808 

               0x00007efe82b43b1d:   jle    0x00007efe82b43b10
               0x00007efe82b43b1f:   nop
          ╭    0x00007efe82b43b20:   jmp    0x00007efe82b43cbb           ;* unwind (locked if synchronized)
          │                                                              ; - java.util.Arrays::copyOfRange@-3
          │                                                              ; - java.lang.StringLatin1::newString@16 (line 769)
          │                                                              ; - java.lang.String::substring@41 (line 2712)
          │                                                              ; - java.lang.String::subSequence@3 (line 2745)
          │                                                              ; - java.util.regex.Pattern::split@89 (line 1272)
          │                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.19%  │    0x00007efe82b43b25:   mov    0x108(%r15),%rdx
   0.25%  │    0x00007efe82b43b2c:   lea    0x18(%rdx),%rcx
   0.33%  │    0x00007efe82b43b30:   cmp    0x118(%r15),%rcx
          │    0x00007efe82b43b37:   ja     0x00007efe82b43e54
   0.34%  │    0x00007efe82b43b3d:   mov    %rcx,0x108(%r15)
   0.19%  │    0x00007efe82b43b44:   prefetchw 0xd8(%rdx)
   0.24%  │    0x00007efe82b43b4b:   movq   $0x1,(%rdx)
   0.41%  │    0x00007efe82b43b52:   movl   $0xed30,0x8(%rdx)            ;   {metadata(&apos;java/lang/String&apos;)}
   0.62%  │    0x00007efe82b43b59:   shr    $0x3,%rbx
   0.13%  │    0x00007efe82b43b5d:   mov    %ebx,0x14(%rdx)
   0.40%  │    0x00007efe82b43b60:   mov    %r12d,0xc(%rdx)
   0.82%  │    0x00007efe82b43b64:   mov    %r12w,0x10(%rdx)
   0.28%  │    0x00007efe82b43b69:   mov    %r12b,0x12(%rdx)             ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.StringLatin1::newString@7 (line 769)
          │                                                              ; - java.lang.String::substring@41 (line 2712)
          │                                                              ; - java.lang.String::subSequence@3 (line 2745)
          │                                                              ; - java.util.regex.Pattern::split@89 (line 1272)
          │                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.42%  │    0x00007efe82b43b6d:   mov    %r8d,%r9d
   0.23%  │    0x00007efe82b43b70:   mov    %rdx,%r8
   0.26%  │    0x00007efe82b43b73:   mov    0x20(%rsp),%r11
   0.24%  │    0x00007efe82b43b78:   mov    %r8,0x18(%rsp)
   0.27%  │    0x00007efe82b43b7d:   mov    0x8(%r11),%ebx               ;* unwind (locked if synchronized)
          │                                                              ; - java.lang.Object::getClass@-3
          │                                                              ; - java.util.Arrays::copyOf@3 (line 3481)
          │                                                              ; - java.util.ArrayList::grow@37 (line 237)
          │                                                              ; - java.util.ArrayList::grow@7 (line 244)
          │                                                              ; - java.util.ArrayList::add@7 (line 454)
          │                                                              ; - java.util.ArrayList::add@20 (line 467)
          │                                                              ; - java.util.regex.Pattern::split@105 (line 1273)
          │                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.34%  │    0x00007efe82b43b81:   mov    0xc(%r11),%r10d              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.ArrayList::add@2 (line 453)
          │                                                              ; - java.util.ArrayList::add@20 (line 467)
          │                                                              ; - java.util.regex.Pattern::split@105 (line 1273)
          │                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.30%  │    0x00007efe82b43b85:   mov    %r8,%rdi
   0.24%  │    0x00007efe82b43b88:   shr    $0x3,%rdi                    ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.ArrayList::add@14 (line 455)
          │                                                              ; - java.util.ArrayList::add@20 (line 467)
          │                                                              ; - java.util.regex.Pattern::split@105 (line 1273)
          │                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.24%  │    0x00007efe82b43b8c:   mov    0xa0(%rsp),%ecx
   0.27%  │    0x00007efe82b43b93:   inc    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.ArrayList::add@6 (line 466)
          │                                                              ; - java.util.regex.Pattern::split@105 (line 1273)
          │                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.25%  │    0x00007efe82b43b95:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.20%  │    0x00007efe82b43ba0:   cmp    0xa0(%rsp),%r10d
          │    0x00007efe82b43ba8:   je     0x00007efe82b43f3e
   0.28%  │    0x00007efe82b43bae:   cmp    $0x1550,%ebx                 ;   {metadata(&apos;java/lang/Object&apos;[])}
          │    0x00007efe82b43bb4:   jne    0x00007efe82b47a8c
   0.26%  │    0x00007efe82b43bba:   nopw   0x0(%rax,%rax,1)
   0.24%  │    0x00007efe82b43bc0:   cmp    0xa0(%rsp),%r10d
          │    0x00007efe82b43bc8:   jbe    0x00007efe82b478b0
   0.21%  │    0x00007efe82b43bce:   cmpb   $0x0,0x38(%r15)
   0.32%  │    0x00007efe82b43bd3:   jne    0x00007efe82b43dce
   0.24%  │    0x00007efe82b43bd9:   mov    0xa0(%rsp),%edx
   0.24%  │    0x00007efe82b43be0:   mov    %edi,0x10(%r11,%rdx,4)
   1.80%  │    0x00007efe82b43be5:   lea    0x10(%r11,%rdx,4),%rsi
   0.07%  │    0x00007efe82b43bea:   xor    %r8,%rsi
   0.07%  │    0x00007efe82b43bed:   test   $0xffffffffffe00000,%rsi
          │╭   0x00007efe82b43bf4:   je     0x00007efe82b43c2a
   0.00%  ││   0x00007efe82b43bfa:   nopw   0x0(%rax,%rax,1)
   0.01%  ││   0x00007efe82b43c00:   test   %r8,%r8
          ││╭  0x00007efe82b43c03:   je     0x00007efe82b43c2a
          │││  0x00007efe82b43c09:   mov    0xb0(%rsp),%rbp
          │││  0x00007efe82b43c11:   lea    0x10(%r11,%rdx,4),%rsi
          │││  0x00007efe82b43c16:   shr    $0x9,%rsi
   0.00%  │││  0x00007efe82b43c1a:   nopw   0x0(%rax,%rax,1)
          │││  0x00007efe82b43c20:   cmpb   $0x4,(%rsi,%rbp,1)
   0.00%  │││  0x00007efe82b43c24:   jne    0x00007efe82b43e12           ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.util.ArrayList::add@14 (line 455)
          │││                                                            ; - java.util.ArrayList::add@20 (line 467)
          │││                                                            ; - java.util.regex.Pattern::split@105 (line 1273)
          │││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.13%  │↘↘  0x00007efe82b43c2a:   mov    0x348(%r15),%rsi             ; ImmutableOopMap {r11=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop }
          │                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) java.util.ArrayList::add@15 (line 456)
          │                                                              ; - java.util.ArrayList::add@20 (line 467)
          │                                                              ; - java.util.regex.Pattern::split@105 (line 1273)
          │                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.74%  │    0x00007efe82b43c31:   test   %eax,(%rsi)                  ;   {poll}
   0.19%  │    0x00007efe82b43c33:   mov    %r11,0x20(%rsp)
   0.07%  │    0x00007efe82b43c38:   mov    %ecx,0xa0(%rsp)
   0.14%  │    0x00007efe82b43c3f:   mov    %r13d,%ecx
   0.69%  │    0x00007efe82b43c42:   mov    %rax,0xf0(%rsp)
   0.10%  │    0x00007efe82b43c4a:   mov    0x90(%rsp),%eax
   0.06%  │    0x00007efe82b43c51:   mov    %eax,0x9c(%rsp)
   0.12%  │    0x00007efe82b43c58:   mov    0xf0(%rsp),%rax
   0.86%  │    0x00007efe82b43c60:   mov    %r9d,%r11d
   0.09%  │    0x00007efe82b43c63:   mov    %r13d,%r10d
   0.07%  │    0x00007efe82b43c66:   mov    0xb8(%rsp),%rbx
   0.15%  │    0x00007efe82b43c6e:   mov    0xc0(%rsp),%r8
   0.70%  │    0x00007efe82b43c76:   mov    0xc8(%rsp),%rdi
   0.11%  │    0x00007efe82b43c7e:   mov    0xd0(%rsp),%rsi
   0.08%  │    0x00007efe82b43c86:   mov    0xdc(%rsp),%r9d
   0.14%  │    0x00007efe82b43c8e:   vpcmpeqd %ymm1,%ymm1,%ymm1
   0.69%  │    0x00007efe82b43c92:   mov    0x40(%rsp),%rdx
   0.11%  │    0x00007efe82b43c97:   mov    0xe0(%rsp),%ebp
   0.08%  │    0x00007efe82b43c9e:   mov    0x4c(%rsp),%eax
   0.15%  │    0x00007efe82b43ca2:   vpxor  %xmm0,%xmm0,%xmm0
   0.74%  │    0x00007efe82b43ca6:   mov    0xe8(%rsp),%r14d
   0.09%  │    0x00007efe82b43cae:   mov    0xec(%rsp),%r13d
   0.08%  │    0x00007efe82b43cb6:   jmp    0x00007efe82b43740           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Pattern::split@29 (line 1265)
          │                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
          ↘    0x00007efe82b43cbb:   lea    -0x10(%rcx),%rdi
               0x00007efe82b43cbf:   nop
               0x00007efe82b43cc0:   cmp    %rdi,%r10
               0x00007efe82b43cc3:   jg     0x00007efe82b43dc6
               0x00007efe82b43cc9:   vmovdqu %xmm0,(%rdx,%r10,1)
               0x00007efe82b43ccf:   lea    0x10(%r10),%rdi
               0x00007efe82b43cd3:   lea    -0x8(%rcx),%r10
....................................................................................................
  17.64%  <total for region 3>

....[Hottest Regions]...............................................................................
  31.22%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 2, compile id 808 
  30.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 2, compile id 808 
  17.64%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 2, compile id 808 
   8.58%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 2, compile id 808 
   4.97%         runtime stub  StubRoutines::checkcast_arraycopy 
   1.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 2, compile id 808 
   1.10%               kernel  [unknown] 
   0.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 2, compile id 808 
   0.55%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 2, compile id 808 
   0.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 2, compile id 808 
   0.22%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 2, compile id 808 
   0.10%               kernel  [unknown] 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 2, compile id 808 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%            libjvm.so  G1BarrierSet::invalidate 
   0.05%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 2, compile id 808 
   0.04%            libjvm.so  HeapRegionClaimer::claim_region 
   1.99%  <...other 458 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.70%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 2, compile id 808 
   4.98%         runtime stub  StubRoutines::checkcast_arraycopy 
   2.15%               kernel  [unknown] 
   0.09%                       <unknown> 
   0.07%         libc-2.31.so  [unknown] 
   0.06%            libjvm.so  G1BarrierSet::invalidate 
   0.04%            libjvm.so  HeapRegionClaimer::claim_region 
   0.04%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.04%            libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.04%            libjvm.so  OtherRegionsTable::occupied 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.03%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%            libjvm.so  G1FromCardCache::clear 
   0.02%            libjvm.so  HandleMark::initialize 
   0.01%            libjvm.so  TypeArrayKlass::allocate_common 
   0.01%            libjvm.so  G1RemSetScanState::G1ClearCardTableTask::do_work 
   0.01%            libjvm.so  HeapRegionManager::par_iterate 
   0.01%            libjvm.so  MemAllocator::allocate 
   0.59%  <...other 171 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.71%       jvmci, level 4
   4.98%         runtime stub
   2.15%               kernel
   0.78%            libjvm.so
   0.15%         libc-2.31.so
   0.09%                     
   0.04%   libpthread-2.31.so
   0.04%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.00%      perf-117342.map
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = __)

# Run progress: 25.00% complete, ETA 00:05:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 133.540 us/op
# Warmup Iteration   2: 92.822 us/op
# Warmup Iteration   3: 92.747 us/op
# Warmup Iteration   4: 92.886 us/op
# Warmup Iteration   5: 92.859 us/op
Iteration   1: 92.720 us/op
Iteration   2: 92.831 us/op
Iteration   3: 92.566 us/op
Iteration   4: 92.739 us/op
Iteration   5: 93.067 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split":
  92.785 ±(99.9%) 0.709 us/op [Average]
  (min, avg, max) = (92.566, 92.785, 93.067), stdev = 0.184
  CI (99.9%): [92.075, 93.494] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split:·asm":
PrintAssembly processed: 247813 total address lines.
Perf output processed (skipped 58.984 seconds):
 Column 1: cycles (50820 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 6, compile id 805 

   0.00%                    0x00007f2d6ab5c7fb:   mov    $0xffffffff,%r9d
                            0x00007f2d6ab5c801:   mov    $0x0,%r10d
                            0x00007f2d6ab5c807:   mov    0xc8(%rsp),%r14
                            0x00007f2d6ab5c80f:   mov    0xd0(%rsp),%rbx
                            0x00007f2d6ab5c817:   mov    0xd8(%rsp),%rax
                            0x00007f2d6ab5c81f:   mov    0xf0(%rsp),%ebp
                            0x00007f2d6ab5c826:   mov    $0x1,%esi
                            0x00007f2d6ab5c82b:   mov    $0xffffffff,%ecx
                            0x00007f2d6ab5c830:   mov    0xe0(%rsp),%r11
                            0x00007f2d6ab5c838:   nopl   0x0(%rax,%rax,1)
   0.11%                    0x00007f2d6ab5c840:   mov    %esi,0x9c(%rsp)
   0.61%                    0x00007f2d6ab5c847:   mov    %esi,%edi
   0.11%                    0x00007f2d6ab5c849:   inc    %edi                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.regex.Matcher::search@148 (line 1732)
                                                                                      ; - java.util.regex.Matcher::find@65 (line 745)
                                                                                      ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.05%                    0x00007f2d6ab5c84b:   mov    %edi,0x98(%rsp)
   0.11%                    0x00007f2d6ab5c852:   cmp    %r10d,%r9d
                            0x00007f2d6ab5c855:   je     0x00007f2d6ab60216           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.regex.Matcher::find@10 (line 732)
                                                                                      ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.60%                    0x00007f2d6ab5c85b:   nopl   0x0(%rax,%rax,1)
   0.09%                    0x00007f2d6ab5c860:   test   %r10d,%r10d
                            0x00007f2d6ab5c863:   jl     0x00007f2d6ab60769           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.regex.Matcher::find@21 (line 736)
                                                                                      ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.06%                    0x00007f2d6ab5c869:   cmp    %r8d,%r10d
                            0x00007f2d6ab5c86c:   jg     0x00007f2d6ab6083d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.regex.Matcher::find@34 (line 740)
                                                                                      ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.13%                    0x00007f2d6ab5c872:   test   %ecx,%ecx
                            0x00007f2d6ab5c874:   jl     0x00007f2d6ab5d6aa           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.regex.Matcher::search@30 (line 1720)
                                                                                      ; - java.util.regex.Matcher::find@65 (line 745)
                                                                                      ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.66%                    0x00007f2d6ab5c87a:   mov    %ecx,0x90(%rsp)
   0.07%                    0x00007f2d6ab5c881:   test   $0x7fffffff,%r13d
          ╭                 0x00007f2d6ab5c888:   je     0x00007f2d6ab5c8cb
   0.05%  │                 0x00007f2d6ab5c88e:   lea    0x10(%rdx),%r9
   0.12%  │                 0x00007f2d6ab5c892:   cmp    $0x8,%ebp
          │                 0x00007f2d6ab5c895:   jb     0x00007f2d6ab5ce58
   0.56%  │                 0x00007f2d6ab5c89b:   mov    $0x0,%rcx
   0.09%  │                 0x00007f2d6ab5c8a2:   data16 nopw 0x0(%rax,%rax,1)
   0.06%  │                 0x00007f2d6ab5c8ac:   data16 data16 xchg %ax,%ax
   0.71%  │ ↗               0x00007f2d6ab5c8b0:   vmovdqu %ymm1,(%r9,%rcx,4)
   1.26%  │ │               0x00007f2d6ab5c8b6:   lea    0x8(%rcx),%rcx
   0.12%  │ │               0x00007f2d6ab5c8ba:   nopw   0x0(%rax,%rax,1)
   0.12%  │ │               0x00007f2d6ab5c8c0:   cmp    %r14,%rcx
          │╭│               0x00007f2d6ab5c8c3:   jg     0x00007f2d6ab5c9cb
   0.09%  ││╰               0x00007f2d6ab5c8c9:   jmp    0x00007f2d6ab5c8b0           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                          ; - java.util.regex.Matcher::search@61 (line 1722)
          ││                                                                          ; - java.util.regex.Matcher::find@65 (line 745)
          ││                                                                          ; - java.util.regex.Pattern::split@31 (line 1265)
          ││                                                                          ; - java.util.regex.Pattern::split@3 (line 1335)
          ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.83%  ↘│            ↗↗  0x00007f2d6ab5c8cb:   cmp    0xc0(%rsp),%r10d
           │            ││  0x00007f2d6ab5c8d3:   jg     0x00007f2d6ab609b9           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
           │            ││                                                            ; - java.util.regex.Pattern$Start::match@10 (line 3602)
           │            ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │            ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │            ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │            ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.02%   │            ││  0x00007f2d6ab5c8d9:   mov    $0x0,%r9d
           │            ││  0x00007f2d6ab5c8df:   mov    0x18(%rsp),%rsi
   0.02%   │            ││  0x00007f2d6ab5c8e4:   mov    0xb4(%rsp),%ecx
   0.80%   │            ││  0x00007f2d6ab5c8eb:   mov    0x4c(%rsp),%r11d
   0.02%   │ ╭          ││  0x00007f2d6ab5c8f0:   jmp    0x00007f2d6ab5c92e           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │ │          ││                                                            ; - java.util.regex.Pattern$Slice::match@14 (line 4080)
           │ │          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │ │          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │ │          ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │ │          ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │ │          ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │ │          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │ │          ││  0x00007f2d6ab5c8f5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ │          ││                                                            ; - java.util.regex.Pattern$Slice::match@18 (line 4080)
           │ │          ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │ │          ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │ │          ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │ │          ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │ │          ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │ │          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.83%   │ │ ↗        ││  0x00007f2d6ab5c900:   mov    %r9d,%r13d
           │ │ │        ││  0x00007f2d6ab5c903:   add    %r10d,%r13d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │ │ │        ││                                                            ; - java.util.regex.Pattern$Slice::match@24 (line 4081)
           │ │ │        ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │ │ │        ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │ │ │        ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │ │ │        ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │ │ │        ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │ │ │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.00%   │ │ │        ││  0x00007f2d6ab5c906:   cmp    %r13d,%r8d
           │ │ │        ││  0x00007f2d6ab5c909:   jle    0x00007f2d6ab60c25           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │ │ │        ││                                                            ; - java.util.regex.Pattern$Slice::match@29 (line 4081)
           │ │ │        ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │ │ │        ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │ │ │        ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │ │ │        ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │ │ │        ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │ │ │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │ │ │        ││  0x00007f2d6ab5c90f:   cmp    %r13d,%r8d
           │ │ │        ││  0x00007f2d6ab5c912:   jbe    0x00007f2d6ab60bc0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │ │ │        ││                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
           │ │ │        ││                                                            ; - java.lang.String::charAt@12 (line 1515)
           │ │ │        ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4085)
           │ │ │        ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │ │ │        ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │ │ │        ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │ │ │        ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │ │ │        ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │ │ │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.81%   │ │ │        ││  0x00007f2d6ab5c918:   movzbl 0x10(%r13,%r11,8),%r13d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │ │ │        ││                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
           │ │ │        ││                                                            ; - java.lang.String::charAt@12 (line 1515)
           │ │ │        ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4085)
           │ │ │        ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │ │ │        ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │ │ │        ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │ │ │        ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │ │ │        ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │ │ │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.05%   │ │ │        ││  0x00007f2d6ab5c91e:   xchg   %ax,%ax
           │ │ │        ││  0x00007f2d6ab5c920:   cmp    0x10(%rsi,%r9,4),%r13d
           │ │╭│        ││  0x00007f2d6ab5c925:   jne    0x00007f2d6ab5c938           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │ │││        ││                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4085)
           │ │││        ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │ │││        ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │ │││        ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │ │││        ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │ │││        ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │ │││        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │ │││        ││  0x00007f2d6ab5c92b:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │││        ││                                                            ; - java.util.regex.Pattern$Slice::match@59 (line 4080)
           │ │││        ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │ │││        ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │ │││        ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │ │││        ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │ │││        ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │ │││        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │ ↘││        ││  0x00007f2d6ab5c92e:   cmp    %r9d,%ecx
           │  │╰        ││  0x00007f2d6ab5c931:   ja     0x00007f2d6ab5c900
           │  │         ││  0x00007f2d6ab5c933:   jmp    0x00007f2d6ab5ce75           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │  │         ││                                                            ; - java.util.regex.Pattern$Slice::match@18 (line 4080)
           │  │         ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │  │         ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │  │         ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │  │         ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │  │         ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │  │         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.80%   │  ↘         ││  0x00007f2d6ab5c938:   mov    %r10d,%r9d
           │            ││  0x00007f2d6ab5c93b:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │            ││                                                            ; - java.util.regex.Pattern$Start::match@77 (line 3607)
           │            ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │            ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │            ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │            ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │            ││  0x00007f2d6ab5c93e:   mov    %r9d,%r13d
           │            ││  0x00007f2d6ab5c941:   mov    0xc0(%rsp),%r9d
   0.81%   │            ││  0x00007f2d6ab5c949:   mov    0xa4(%rsp),%ebx
           │    ╭       ││  0x00007f2d6ab5c950:   jmp    0x00007f2d6ab5c9c1           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │    │       ││                                                            ; - java.util.regex.Pattern$Start::match@31 (line 3607)
           │    │       ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │    │       ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │    │       ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │    │       ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │    │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │    │       ││  0x00007f2d6ab5c955:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
           │    │       ││                                                            ; - java.util.regex.Pattern$Start::match@34 (line 3607)
           │    │       ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │    │       ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │    │       ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │    │       ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │    │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   4.31%   │    │    ↗  ││  0x00007f2d6ab5c960:   mov    $0x0,%edi
           │    │╭   │  ││  0x00007f2d6ab5c965:   jmp    0x00007f2d6ab5c9ac           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │    ││   │  ││                                                            ; - java.util.regex.Pattern$Slice::match@14 (line 4080)
           │    ││   │  ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │    ││   │  ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │    ││   │  ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │    ││   │  ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │    ││   │  ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │    ││   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │    ││   │  ││  0x00007f2d6ab5c96a:   data16 data16 nopw 0x0(%rax,%rax,1)
           │    ││   │  ││  0x00007f2d6ab5c975:   data16 data16 xchg %ax,%ax
           │    ││   │  ││  0x00007f2d6ab5c979:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │    ││   │  ││                                                            ; - java.util.regex.Pattern$Slice::match@18 (line 4080)
           │    ││   │  ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │    ││   │  ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │    ││   │  ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │    ││   │  ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │    ││   │  ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │    ││   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   5.23%   │    ││ ↗ │  ││  0x00007f2d6ab5c980:   mov    %edi,%eax
           │    ││ │ │  ││  0x00007f2d6ab5c982:   add    %r13d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │    ││ │ │  ││                                                            ; - java.util.regex.Pattern$Slice::match@24 (line 4081)
           │    ││ │ │  ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │    ││ │ │  ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │    ││ │ │  ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │    ││ │ │  ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │    ││ │ │  ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │    ││ │ │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.25%   │    ││ │ │  ││  0x00007f2d6ab5c985:   cmp    %eax,%r8d
           │    ││ │ │  ││  0x00007f2d6ab5c988:   jle    0x00007f2d6ab603bf           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │    ││ │ │  ││                                                            ; - java.util.regex.Pattern$Slice::match@29 (line 4081)
           │    ││ │ │  ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │    ││ │ │  ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │    ││ │ │  ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │    ││ │ │  ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │    ││ │ │  ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │    ││ │ │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.45%   │    ││ │ │  ││  0x00007f2d6ab5c98e:   cmp    %eax,%r8d
           │    ││ │ │  ││  0x00007f2d6ab5c991:   jbe    0x00007f2d6ab60e59           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │    ││ │ │  ││                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
           │    ││ │ │  ││                                                            ; - java.lang.String::charAt@12 (line 1515)
           │    ││ │ │  ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4085)
           │    ││ │ │  ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │    ││ │ │  ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │    ││ │ │  ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │    ││ │ │  ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │    ││ │ │  ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │    ││ │ │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   5.04%   │    ││ │ │  ││  0x00007f2d6ab5c997:   movzbl 0x10(%rax,%r11,8),%eax       ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │    ││ │ │  ││                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
           │    ││ │ │  ││                                                            ; - java.lang.String::charAt@12 (line 1515)
           │    ││ │ │  ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4085)
           │    ││ │ │  ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │    ││ │ │  ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │    ││ │ │  ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │    ││ │ │  ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │    ││ │ │  ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │    ││ │ │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   2.80%   │    ││ │ │  ││  0x00007f2d6ab5c99d:   data16 xchg %ax,%ax
   0.18%   │    ││ │ │  ││  0x00007f2d6ab5c9a0:   cmp    0x10(%rsi,%rdi,4),%eax
           │    ││╭│ │  ││  0x00007f2d6ab5c9a4:   jne    0x00007f2d6ab5c9b5           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │    ││││ │  ││                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4085)
           │    ││││ │  ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │    ││││ │  ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │    ││││ │  ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │    ││││ │  ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │    ││││ │  ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │    ││││ │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   3.09%   │    ││││ │  ││  0x00007f2d6ab5c9aa:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │    ││││ │  ││                                                            ; - java.util.regex.Pattern$Slice::match@59 (line 4080)
           │    ││││ │  ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │    ││││ │  ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │    ││││ │  ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │    ││││ │  ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │    ││││ │  ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │    ││││ │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   8.99%   │    │↘││ │  ││  0x00007f2d6ab5c9ac:   cmp    %edi,%ebx
           │    │ │╰ │  ││  0x00007f2d6ab5c9ae:   ja     0x00007f2d6ab5c980
   0.21%   │    │ │ ╭│  ││  0x00007f2d6ab5c9b0:   jmp    0x00007f2d6ab5ca09           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │    │ │ ││  ││                                                            ; - java.util.regex.Pattern$Slice::match@18 (line 4080)
           │    │ │ ││  ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │    │ │ ││  ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │    │ │ ││  ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │    │ │ ││  ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │    │ │ ││  ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │    │ │ ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   4.86%   │    │ ↘ ││  ││  0x00007f2d6ab5c9b5:   mov    0x348(%r15),%rax             ; ImmutableOopMap {rdx=Oop rsi=Oop r11=NarrowOop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop }
           │    │   ││  ││                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
           │    │   ││  ││                                                            ; - (reexecute) java.util.regex.Pattern$Slice::match@57 (line 4086)
           │    │   ││  ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │    │   ││  ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │    │   ││  ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │    │   ││  ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │    │   ││  ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │    │   ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   1.97%   │    │   ││  ││  0x00007f2d6ab5c9bc:   test   %eax,(%rax)                  ;   {poll}
   1.72%   │    │   ││  ││  0x00007f2d6ab5c9be:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │    │   ││  ││                                                            ; - java.util.regex.Pattern$Start::match@77 (line 3607)
           │    │   ││  ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │    │   ││  ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │    │   ││  ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │    │   ││  ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │    │   ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │    ↘   ││  ││  0x00007f2d6ab5c9c1:   cmp    %r9d,%r13d
           │        │╰  ││  0x00007f2d6ab5c9c4:   jle    0x00007f2d6ab5c960
           │        │   ││  0x00007f2d6ab5c9c6:   jmp    0x00007f2d6ab5dd52           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
           │        │   ││                                                            ; - java.util.regex.Pattern$Start::match@34 (line 3607)
           │        │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
           │        │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
           │        │   ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
           │        │   ││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
           │        │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.58%   ↘        │   ││  0x00007f2d6ab5c9cb:   cmp    %rbx,%rcx
                    │ ╭ ││  0x00007f2d6ab5c9ce:   jg     0x00007f2d6ab5c9de
   0.11%            │ │ ││  0x00007f2d6ab5c9d4:   vmovdqu %xmm1,(%r9,%rcx,4)
   0.09%            │ │ ││  0x00007f2d6ab5c9da:   lea    0x4(%rcx),%rcx
   0.11%            │ ↘ ││  0x00007f2d6ab5c9de:   xchg   %ax,%ax
   0.54%            │   ││  0x00007f2d6ab5c9e0:   cmp    %rax,%rcx
                    │  ╭││  0x00007f2d6ab5c9e3:   jg     0x00007f2d6ab5c9f3
                    │  │││  0x00007f2d6ab5c9e9:   vmovq  %xmm1,(%r9,%rcx,4)
                    │  │││  0x00007f2d6ab5c9ef:   lea    0x2(%rcx),%rcx
   0.10%            │  ↘││  0x00007f2d6ab5c9f3:   cmp    %r11,%rcx
                    │   ╰│  0x00007f2d6ab5c9f6:   jg     0x00007f2d6ab5c8cb
                    │    │  0x00007f2d6ab5c9fc:   movl   $0xffffffff,(%r9,%rcx,4)     ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                    │    │                                                            ; - java.util.regex.Matcher::search@61 (line 1722)
                    │    │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
                    │    │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
                    │    │                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
                    │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
                    │    ╰  0x00007f2d6ab5ca04:   jmp    0x00007f2d6ab5c8cb
                    ↘       0x00007f2d6ab5ca09:   movabs $0x800269f50,%rdi            ;   {metadata(&apos;java/util/regex/Pattern$LastNode&apos;)}
   0.97%                    0x00007f2d6ab5ca13:   nopw   0x0(%rax,%rax,1)
                            0x00007f2d6ab5ca1c:   data16 data16 xchg %ax,%ax
   0.21%                    0x00007f2d6ab5ca20:   cmp    0xa8(%rsp),%rdi
                            0x00007f2d6ab5ca28:   jne    0x00007f2d6ab60f3e           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.regex.Pattern$Slice::match@75 (line 4088)
                                                                                      ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                                      ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                                      ; - java.util.regex.Matcher::find@65 (line 745)
                                                                                      ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.02%                    0x00007f2d6ab5ca2e:   cmp    $0x2,%ebp
                            0x00007f2d6ab5ca31:   jb     0x00007f2d6ab609f2
   0.66%                    0x00007f2d6ab5ca37:   mov    %r10d,0x10(%rdx)             ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.regex.Pattern$LastNode::match@32 (line 3581)
                                                                                      ; - java.util.regex.Pattern$Slice::match@75 (line 4088)
                                                                                      ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                                      ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                                      ; - java.util.regex.Matcher::find@65 (line 745)
                                                                                      ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.00%                    0x00007f2d6ab5ca3b:   mov    %ebx,%eax
   0.21%                    0x00007f2d6ab5ca3d:   add    %r13d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.regex.Pattern$Slice::match@73 (line 4088)
                                                                                      ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                                      ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                                      ; - java.util.regex.Matcher::find@65 (line 745)
                                                                                      ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.00%                    0x00007f2d6ab5ca40:   mov    %eax,0x14(%rdx)              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.regex.Pattern$LastNode::match@42 (line 3582)
                                                                                      ; - java.util.regex.Pattern$Slice::match@75 (line 4088)
                                                                                      ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                                      ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                                      ; - java.util.regex.Matcher::find@65 (line 745)
                                                                                      ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.74%                    0x00007f2d6ab5ca43:   mov    %r13d,0x10(%rdx)             ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.regex.Pattern$Start::match@64 (line 3610)
                                                                                      ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                                      ; - java.util.regex.Matcher::find@65 (line 745)
                                                                                      ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   2.47%                    0x00007f2d6ab5ca47:   test   %r10d,%r10d
                            0x00007f2d6ab5ca4a:   je     0x00007f2d6ab5d6b7           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.regex.Pattern::split@54 (line 1267)
                                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.16%                    0x00007f2d6ab5ca50:   test   %r13d,%r13d
                            0x00007f2d6ab5ca53:   jl     0x00007f2d6ab60775           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.regex.Matcher::start@4 (line 449)
                                                                                      ; - java.util.regex.Pattern::split@86 (line 1272)
                                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
                            0x00007f2d6ab5ca59:   nopl   0x0(%rax)
   0.05%                    0x00007f2d6ab5ca60:   cmp    %r13d,%r10d
                            0x00007f2d6ab5ca63:   jg     0x00007f2d6ab60cee           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.lang.String::checkBoundsBeginEnd@6 (line 4603)
                                                                                      ; - java.lang.String::substring@8 (line 2707)
                                                                                      ; - java.lang.String::subSequence@3 (line 2745)
                                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
                                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.60%                    0x00007f2d6ab5ca69:   cmp    %r8d,%r13d
                            0x00007f2d6ab5ca6c:   jg     0x00007f2d6ab60a48           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.lang.String::checkBoundsBeginEnd@11 (line 4603)
                                                                                      ; - java.lang.String::substring@8 (line 2707)
                                                                                      ; - java.lang.String::subSequence@3 (line 2745)
                                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
                                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.15%                    0x00007f2d6ab5ca72:   cmp    %r10d,%r13d
                            0x00007f2d6ab5ca75:   je     0x00007f2d6ab5d8c5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.lang.StringLatin1::newString@1 (line 766)
                                                                                      ; - java.lang.String::substring@41 (line 2712)
                                                                                      ; - java.lang.String::subSequence@3 (line 2745)
                                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
                                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
                            0x00007f2d6ab5ca7b:   mov    %r13d,%r11d
   0.06%                    0x00007f2d6ab5ca7e:   sub    %r10d,%r11d                  ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.lang.String::substring@24 (line 2711)
                                                                                      ; - java.lang.String::subSequence@3 (line 2745)
                                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
                                                                                      ; - java.util.regex.Pattern::split@3 (line 1335)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.61%                    0x00007f2d6ab5ca81:   test   %r11d,%r11d
                            0x00007f2d6ab5ca84:   jl     0x00007f2d6ab5ffae
   0.16%                    0x00007f2d6ab5ca8a:   cmp    %r8d,%r10d
                            0x00007f2d6ab5ca8d:   ja     0x00007f2d6ab5ffae
   0.00%                    0x00007f2d6ab5ca93:   mov    0x108(%r15),%rbx
   0.04%                    0x00007f2d6ab5ca9a:   mov    %r11d,%ebp
   0.62%                    0x00007f2d6ab5ca9d:   lea    0x17(%rbp),%rcx
   0.12%                    0x00007f2d6ab5caa1:   and    $0xfffffffffffffff8,%rcx
   0.00%                    0x00007f2d6ab5caa5:   mov    %rcx,%rdi
   0.05%                    0x00007f2d6ab5caa8:   add    %rbx,%rdi
   0.64%                    0x00007f2d6ab5caab:   cmp    0x118(%r15),%rdi
                            0x00007f2d6ab5cab2:   ja     0x00007f2d6ab5d00b
   0.15%                    0x00007f2d6ab5cab8:   mov    %rdi,0x108(%r15)
   0.00%                    0x00007f2d6ab5cabf:   prefetchw 0xc0(%rcx,%rbx,1)
   0.14%                    0x00007f2d6ab5cac7:   prefetchw 0x100(%rcx,%rbx,1)
   0.70%                    0x00007f2d6ab5cacf:   prefetchw 0x140(%rcx,%rbx,1)
   0.17%                    0x00007f2d6ab5cad7:   prefetchw 0x180(%rcx,%rbx,1)
   0.46%                    0x00007f2d6ab5cadf:   movq   $0x1,(%rbx)
   1.56%                    0x00007f2d6ab5cae6:   movl   $0x6848,0x8(%rbx)            ;   {metadata({type array byte})}
   0.01%                    0x00007f2d6ab5caed:   mov    %r11d,0xc(%rbx)
   0.82%                    0x00007f2d6ab5caf1:   mov    %r8d,%ecx
   0.01%                    0x00007f2d6ab5caf4:   sub    %r10d,%ecx
   0.51%                    0x00007f2d6ab5caf7:   cmp    %ecx,%r11d
   0.01%                    0x00007f2d6ab5cafa:   cmovg  %ecx,%r11d
   0.27%                    0x00007f2d6ab5cafe:   movslq %r11d,%rdi
   0.01%                    0x00007f2d6ab5cb01:   cmp    %rdi,%rbp
   0.54%                    0x00007f2d6ab5cb04:   mov    %rbp,%rcx
   0.01%                    0x00007f2d6ab5cb07:   cmova  %rdi,%rcx
   0.30%                    0x00007f2d6ab5cb0b:   test   %rcx,%rcx
                            0x00007f2d6ab5cb0e:   je     0x00007f2d6ab5cecb
   0.55%                    0x00007f2d6ab5cb14:   mov    0x28(%rsp),%r11
   0.05%                    0x00007f2d6ab5cb19:   lea    0x10(%rbx),%r8
   0.31%                    0x00007f2d6ab5cb1d:   lea    0x10(%r11,%r10,1),%r9
   0.04%                    0x00007f2d6ab5cb22:   cmp    $0x20,%rcx
                            0x00007f2d6ab5cb26:   jl     0x00007f2d6ab5ced8
                            0x00007f2d6ab5cb2c:   mov    %r10d,0x94(%rsp)
                            0x00007f2d6ab5cb34:   lea    -0x20(%rcx),%r10
                            0x00007f2d6ab5cb38:   mov    $0x0,%r11
                            0x00007f2d6ab5cb3f:   nop
                            0x00007f2d6ab5cb40:   vmovdqu (%r9,%r11,1),%ymm2
                            0x00007f2d6ab5cb46:   vmovdqu %ymm2,(%r8,%r11,1)
                            0x00007f2d6ab5cb4c:   lea    0x20(%r11),%r11
                            0x00007f2d6ab5cb50:   cmp    %r10,%r11
                            0x00007f2d6ab5cb53:   jle    0x00007f2d6ab5cb40
....................................................................................................
  66.56%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 6, compile id 805 

               0x00007f2d6ab5cc5c:   jle    0x00007f2d6ab5cc50
               0x00007f2d6ab5cc5e:   xchg   %ax,%ax
          ╭    0x00007f2d6ab5cc60:   jmp    0x00007f2d6ab5cdd2           ;* unwind (locked if synchronized)
          │                                                              ; - java.util.Arrays::copyOfRange@-3
          │                                                              ; - java.lang.StringLatin1::newString@16 (line 769)
          │                                                              ; - java.lang.String::substring@41 (line 2712)
          │                                                              ; - java.lang.String::subSequence@3 (line 2745)
          │                                                              ; - java.util.regex.Pattern::split@89 (line 1272)
          │                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.17%  │    0x00007f2d6ab5cc65:   mov    0x108(%r15),%rcx
   0.30%  │    0x00007f2d6ab5cc6c:   lea    0x18(%rcx),%rdi
   0.27%  │    0x00007f2d6ab5cc70:   cmp    0x118(%r15),%rdi
          │    0x00007f2d6ab5cc77:   ja     0x00007f2d6ab5cf89
   0.26%  │    0x00007f2d6ab5cc7d:   mov    %rdi,0x108(%r15)
   0.24%  │    0x00007f2d6ab5cc84:   prefetchw 0xd8(%rcx)
   0.41%  │    0x00007f2d6ab5cc8b:   movq   $0x1,(%rcx)
   0.58%  │    0x00007f2d6ab5cc92:   movl   $0xed30,0x8(%rcx)            ;   {metadata(&apos;java/lang/String&apos;)}
   0.59%  │    0x00007f2d6ab5cc99:   shr    $0x3,%rbx
   0.24%  │    0x00007f2d6ab5cc9d:   mov    %ebx,0x14(%rcx)
   0.73%  │    0x00007f2d6ab5cca0:   mov    %r12d,0xc(%rcx)
   0.28%  │    0x00007f2d6ab5cca4:   mov    %r12w,0x10(%rcx)
   0.29%  │    0x00007f2d6ab5cca9:   mov    %r12b,0x12(%rcx)             ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.StringLatin1::newString@7 (line 769)
          │                                                              ; - java.lang.String::substring@41 (line 2712)
          │                                                              ; - java.lang.String::subSequence@3 (line 2745)
          │                                                              ; - java.util.regex.Pattern::split@89 (line 1272)
          │                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.12%  │    0x00007f2d6ab5ccad:   mov    %eax,%r9d
   0.30%  │    0x00007f2d6ab5ccb0:   mov    %rcx,%r11
   0.19%  │    0x00007f2d6ab5ccb3:   mov    0x10(%rsp),%r8
   0.31%  │    0x00007f2d6ab5ccb8:   mov    %r11,0x8(%rsp)
   0.20%  │    0x00007f2d6ab5ccbd:   mov    0x8(%r8),%ebx                ;* unwind (locked if synchronized)
          │                                                              ; - java.lang.Object::getClass@-3
          │                                                              ; - java.util.Arrays::copyOf@3 (line 3481)
          │                                                              ; - java.util.ArrayList::grow@37 (line 237)
          │                                                              ; - java.util.ArrayList::grow@7 (line 244)
          │                                                              ; - java.util.ArrayList::add@7 (line 454)
          │                                                              ; - java.util.ArrayList::add@20 (line 467)
          │                                                              ; - java.util.regex.Pattern::split@105 (line 1273)
          │                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.35%  │    0x00007f2d6ab5ccc1:   mov    0xc(%r8),%r10d               ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.ArrayList::add@2 (line 453)
          │                                                              ; - java.util.ArrayList::add@20 (line 467)
          │                                                              ; - java.util.regex.Pattern::split@105 (line 1273)
          │                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.15%  │    0x00007f2d6ab5ccc5:   mov    %r11,%rdi
   0.24%  │    0x00007f2d6ab5ccc8:   shr    $0x3,%rdi                    ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.ArrayList::add@14 (line 455)
          │                                                              ; - java.util.ArrayList::add@20 (line 467)
          │                                                              ; - java.util.regex.Pattern::split@105 (line 1273)
          │                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.19%  │    0x00007f2d6ab5cccc:   mov    0xa0(%rsp),%ecx
   0.32%  │    0x00007f2d6ab5ccd3:   inc    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.ArrayList::add@18 (line 456)
          │                                                              ; - java.util.ArrayList::add@20 (line 467)
          │                                                              ; - java.util.regex.Pattern::split@105 (line 1273)
          │                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.17%  │    0x00007f2d6ab5ccd5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.26%  │    0x00007f2d6ab5cce0:   cmp    0xa0(%rsp),%r10d
          │    0x00007f2d6ab5cce8:   je     0x00007f2d6ab5d094
   0.18%  │    0x00007f2d6ab5ccee:   cmp    $0x1550,%ebx                 ;   {metadata(&apos;java/lang/Object&apos;[])}
          │    0x00007f2d6ab5ccf4:   jne    0x00007f2d6ab60d38
   0.26%  │    0x00007f2d6ab5ccfa:   nopw   0x0(%rax,%rax,1)
   0.21%  │    0x00007f2d6ab5cd00:   cmp    0xa0(%rsp),%r10d
          │    0x00007f2d6ab5cd08:   jbe    0x00007f2d6ab60725
   0.27%  │    0x00007f2d6ab5cd0e:   cmpb   $0x0,0x38(%r15)
   0.18%  │    0x00007f2d6ab5cd13:   jne    0x00007f2d6ab5cf08
   0.31%  │    0x00007f2d6ab5cd19:   mov    0xa0(%rsp),%eax
   0.14%  │    0x00007f2d6ab5cd20:   mov    0x98(%rsp),%edx
   0.25%  │    0x00007f2d6ab5cd27:   mov    %edi,0x10(%r8,%rax,4)
   1.51%  │    0x00007f2d6ab5cd2c:   lea    0x10(%r8,%rax,4),%rsi
   0.09%  │    0x00007f2d6ab5cd31:   xor    %r11,%rsi
   0.06%  │    0x00007f2d6ab5cd34:   nopl   0x0(%rax,%rax,1)
   0.11%  │    0x00007f2d6ab5cd3c:   data16 data16 xchg %ax,%ax
   0.60%  │    0x00007f2d6ab5cd40:   test   $0xffffffffffe00000,%rsi
          │╭   0x00007f2d6ab5cd47:   je     0x00007f2d6ab5cd71
          ││   0x00007f2d6ab5cd4d:   test   %r11,%r11
          ││╭  0x00007f2d6ab5cd50:   je     0x00007f2d6ab5cd71
   0.01%  │││  0x00007f2d6ab5cd56:   mov    0xb8(%rsp),%rbp
          │││  0x00007f2d6ab5cd5e:   lea    0x10(%r8,%rax,4),%rsi
   0.00%  │││  0x00007f2d6ab5cd63:   shr    $0x9,%rsi
          │││  0x00007f2d6ab5cd67:   cmpb   $0x4,(%rsi,%rbp,1)
   0.01%  │││  0x00007f2d6ab5cd6b:   jne    0x00007f2d6ab5cf50           ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.util.ArrayList::add@14 (line 455)
          │││                                                            ; - java.util.ArrayList::add@20 (line 467)
          │││                                                            ; - java.util.regex.Pattern::split@105 (line 1273)
          │││                                                            ; - java.util.regex.Pattern::split@3 (line 1335)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.08%  │↘↘  0x00007f2d6ab5cd71:   mov    0x348(%r15),%rsi             ; ImmutableOopMap {r8=Oop [8]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop }
          │                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) java.util.ArrayList::add@15 (line 456)
          │                                                              ; - java.util.ArrayList::add@20 (line 467)
          │                                                              ; - java.util.regex.Pattern::split@105 (line 1273)
          │                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.07%  │    0x00007f2d6ab5cd78:   test   %eax,(%rsi)                  ;   {poll}
   0.21%  │    0x00007f2d6ab5cd7a:   mov    %r8,0x10(%rsp)
   0.53%  │    0x00007f2d6ab5cd7f:   mov    %ecx,0xa0(%rsp)
   0.09%  │    0x00007f2d6ab5cd86:   mov    %edx,%esi
   0.06%  │    0x00007f2d6ab5cd88:   mov    %r9d,%ecx
   0.09%  │    0x00007f2d6ab5cd8b:   mov    %r9d,%r10d
   0.55%  │    0x00007f2d6ab5cd8e:   mov    0xd0(%rsp),%rbx
   0.09%  │    0x00007f2d6ab5cd96:   mov    0xd8(%rsp),%rax
   0.05%  │    0x00007f2d6ab5cd9e:   mov    0xe0(%rsp),%r11
   0.13%  │    0x00007f2d6ab5cda6:   vpcmpeqd %ymm1,%ymm1,%ymm1
   0.54%  │    0x00007f2d6ab5cdaa:   mov    0x40(%rsp),%rdx
   0.08%  │    0x00007f2d6ab5cdaf:   mov    0xc4(%rsp),%r8d
   0.04%  │    0x00007f2d6ab5cdb7:   vpxor  %xmm0,%xmm0,%xmm0
   0.09%  │    0x00007f2d6ab5cdbb:   mov    0xf0(%rsp),%ebp
   0.59%  │    0x00007f2d6ab5cdc2:   mov    %r13d,%r9d
   0.06%  │    0x00007f2d6ab5cdc5:   mov    0xf4(%rsp),%r13d
   0.04%  │    0x00007f2d6ab5cdcd:   jmp    0x00007f2d6ab5c840           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Pattern::split@29 (line 1265)
          │                                                              ; - java.util.regex.Pattern::split@3 (line 1335)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split@8 (line 103)
          ↘    0x00007f2d6ab5cdd2:   lea    -0x10(%rcx),%r10
               0x00007f2d6ab5cdd6:   cmp    %r10,%rbp
               0x00007f2d6ab5cdd9:   jg     0x00007f2d6ab5cf00
               0x00007f2d6ab5cddf:   vmovdqu %xmm0,(%rdi,%rbp,1)
               0x00007f2d6ab5cde4:   lea    0x10(%rbp),%r10
               0x00007f2d6ab5cde8:   lea    -0x8(%rcx),%rbp
               0x00007f2d6ab5cdec:   cmp    %rbp,%r10
....................................................................................................
  14.72%  <total for region 2>

....[Hottest Regions]...............................................................................
  66.56%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 6, compile id 805 
  14.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 6, compile id 805 
   7.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 6, compile id 805 
   4.14%         runtime stub  StubRoutines::checkcast_arraycopy 
   1.64%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 6, compile id 805 
   1.24%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 6, compile id 805 
   0.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 6, compile id 805 
   0.36%               kernel  [unknown] 
   0.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 6, compile id 805 
   0.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 6, compile id 805 
   0.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 6, compile id 805 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 6, compile id 805 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 6, compile id 805 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 6, compile id 805 
   0.05%            libjvm.so  G1BarrierSet::invalidate 
   0.04%               kernel  [unknown] 
   2.00%  <...other 476 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::pattern_split, version 6, compile id 805 
   4.16%         runtime stub  StubRoutines::checkcast_arraycopy 
   1.50%               kernel  [unknown] 
   0.16%                       <unknown> 
   0.05%            libjvm.so  G1BarrierSet::invalidate 
   0.04%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.04%            libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.03%            libjvm.so  OtherRegionsTable::is_empty 
   0.03%               [vdso]  __vdso_clock_gettime 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.03%            libjvm.so  HeapRegionManager::par_iterate 
   0.03%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%         libc-2.31.so  re_search_stub 
   0.02%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.02%            libjvm.so  HighResTimeSampler::take_sample 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.51%  <...other 146 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.30%       jvmci, level 4
   4.16%         runtime stub
   1.50%               kernel
   0.68%            libjvm.so
   0.16%                     
   0.07%         libc-2.31.so
   0.05%   libpthread-2.31.so
   0.03%               [vdso]
   0.02%       hsdis-amd64.so
   0.02%           ld-2.31.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.00%        libdl-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = _)

# Run progress: 50.00% complete, ETA 00:03:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 77.281 us/op
# Warmup Iteration   2: 69.927 us/op
# Warmup Iteration   3: 69.864 us/op
# Warmup Iteration   4: 69.854 us/op
# Warmup Iteration   5: 69.758 us/op
Iteration   1: 69.754 us/op
Iteration   2: 69.875 us/op
Iteration   3: 69.809 us/op
Iteration   4: 69.885 us/op
Iteration   5: 69.894 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split":
  69.844 ±(99.9%) 0.231 us/op [Average]
  (min, avg, max) = (69.754, 69.844, 69.894), stdev = 0.060
  CI (99.9%): [69.612, 70.075] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split:·asm":
PrintAssembly processed: 217457 total address lines.
Perf output processed (skipped 58.967 seconds):
 Column 1: cycles (50633 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.lang.String::split, version 4, compile id 781 

               0x00007f96cab28850:   vmovdqu %ymm5,(%rdi,%rsi,1)
               0x00007f96cab28855:   lea    0x20(%rsi),%rsi
               0x00007f96cab28859:   cmp    %rax,%rsi
               0x00007f96cab2885c:   jle    0x00007f96cab28850
               0x00007f96cab2885e:   xchg   %ax,%ax
          ╭    0x00007f96cab28860:   jmp    0x00007f96cab28a39           ;* unwind (locked if synchronized)
          │                                                              ; - java.util.Arrays::copyOfRange@-3
          │                                                              ; - java.lang.StringLatin1::newString@16 (line 769)
          │                                                              ; - java.lang.String::substring@41 (line 2712)
          │                                                              ; - java.lang.String::split@164 (line 3125)
   0.40%  │    0x00007f96cab28865:   mov    0x108(%r15),%rcx
   0.87%  │    0x00007f96cab2886c:   lea    0x18(%rcx),%rdi
   0.58%  │    0x00007f96cab28870:   cmp    0x118(%r15),%rdi
          │    0x00007f96cab28877:   ja     0x00007f96cab28bbd
   0.76%  │    0x00007f96cab2887d:   mov    %rdi,0x108(%r15)
   0.84%  │    0x00007f96cab28884:   prefetchw 0xd8(%rcx)
   2.93%  │    0x00007f96cab2888b:   movq   $0x1,(%rcx)
   1.98%  │    0x00007f96cab28892:   movl   $0xed30,0x8(%rcx)            ;   {metadata(&apos;java/lang/String&apos;)}
   3.27%  │    0x00007f96cab28899:   shr    $0x3,%rdx
   0.04%  │    0x00007f96cab2889d:   mov    %edx,0x14(%rcx)
   0.55%  │    0x00007f96cab288a0:   mov    %r12d,0xc(%rcx)
   0.47%  │    0x00007f96cab288a4:   mov    %r12w,0x10(%rcx)
   0.42%  │    0x00007f96cab288a9:   mov    %r12b,0x12(%rcx)             ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.StringLatin1::newString@7 (line 769)
          │                                                              ; - java.lang.String::substring@41 (line 2712)
          │                                                              ; - java.lang.String::split@164 (line 3125)
   0.14%  │    0x00007f96cab288ad:   mov    %rcx,%r9
   0.34%  │    0x00007f96cab288b0:   mov    %r9,%rbx
   0.25%  │    0x00007f96cab288b3:   shr    $0x3,%rbx
   0.45%  │    0x00007f96cab288b7:   cmp    %r13d,%r11d
          │    0x00007f96cab288ba:   je     0x00007f96cab28c25
   0.12%  │    0x00007f96cab288c0:   cmpl   $0x1550,0x4c(%rsp)           ;   {metadata(&apos;java/lang/Object&apos;[])}
   0.33%  │    0x00007f96cab288c8:   jne    0x00007f96cab2a706
   0.23%  │    0x00007f96cab288ce:   cmp    %r13d,%r11d
          │    0x00007f96cab288d1:   jbe    0x00007f96cab2a52f
   0.41%  │    0x00007f96cab288d7:   nopw   0x0(%rax,%rax,1)
   0.15%  │    0x00007f96cab288e0:   cmpb   $0x0,0x38(%r15)
   0.39%  │    0x00007f96cab288e5:   jne    0x00007f96cab28ae5
   0.28%  │    0x00007f96cab288eb:   mov    0x20(%rsp),%rax
   0.46%  │    0x00007f96cab288f0:   mov    %ebx,0x10(%rax,%r13,4)
   1.13%  │    0x00007f96cab288f5:   lea    0x10(%rax,%r13,4),%rsi
   0.02%  │    0x00007f96cab288fa:   xor    %r9,%rsi
   0.12%  │    0x00007f96cab288fd:   data16 xchg %ax,%ax
   0.15%  │    0x00007f96cab28900:   test   $0xffffffffffe00000,%rsi
          │    0x00007f96cab28907:   je     0x00007f96cab28b20
   0.02%  │    0x00007f96cab2890d:   test   %r9,%r9
          │    0x00007f96cab28910:   je     0x00007f96cab28b39
   0.01%  │    0x00007f96cab28916:   mov    0x60(%rsp),%rbx
   0.00%  │    0x00007f96cab2891b:   lea    0x10(%rax,%r13,4),%rsi
          │    0x00007f96cab28920:   shr    $0x9,%rsi
   0.00%  │    0x00007f96cab28924:   cmpb   $0x4,(%rsi,%rbx,1)
   0.02%  │    0x00007f96cab28928:   jne    0x00007f96cab28b52
   0.01%  │    0x00007f96cab2892e:   mov    %r8d,0x44(%rsp)
          │    0x00007f96cab28933:   mov    0x54(%rsp),%r13d
          │    0x00007f96cab28938:   mov    0x28(%rsp),%rdi              ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.ArrayList::add@14 (line 455)
          │                                                              ; - java.util.ArrayList::add@20 (line 467)
          │                                                              ; - java.lang.String::split@167 (line 3125)
   0.01%  │    0x00007f96cab2893d:   mov    0x44(%rsp),%r8d
   0.84%  │    0x00007f96cab28942:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.String::split@174 (line 3126)
   2.14%  │    0x00007f96cab28945:   test   %r8d,%r8d
          │    0x00007f96cab28948:   jl     0x00007f96cab2a749           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.StringLatin1::indexOf@13 (line 207)
          │                                                              ; - java.lang.String::indexOf@13 (line 2421)
          │                                                              ; - java.lang.String::split@131 (line 3123)
   0.96%  │    0x00007f96cab2894e:   mov    %r8d,%r9d
   0.01%  │    0x00007f96cab28951:   mov    %r13d,%r10d
   0.10%  │    0x00007f96cab28954:   mov    0x5c(%rsp),%r13d
   0.08%  │    0x00007f96cab28959:   vpxor  %xmm5,%xmm5,%xmm5
   0.95%  │    0x00007f96cab2895d:   mov    %rdi,%rbp
   0.02%  │    0x00007f96cab28960:   mov    0x80(%rsp),%edi
   0.10%  │    0x00007f96cab28967:   mov    0x84(%rsp),%r14d             ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.String::split@127 (line 3123)
   0.10%  │    0x00007f96cab2896f:   mov    %rax,0x20(%rsp)
   0.94%  │    0x00007f96cab28974:   mov    %r9d,0x58(%rsp)
   0.07%  │    0x00007f96cab28979:   mov    %r10d,%esi
   0.11%  │    0x00007f96cab2897c:   sub    %r13d,%esi
   0.05%  │    0x00007f96cab2897f:   nop
   0.99%  │    0x00007f96cab28980:   cmp    $0x4c5,%esi
          │    0x00007f96cab28986:   jl     0x00007f96cab286a0
   0.00%  │    0x00007f96cab2898c:   jmp    0x00007f96cab2a5d9
   0.91%  │    0x00007f96cab28991:   lea    -0x10(%rcx),%r10
          │    0x00007f96cab28995:   cmp    %r10,%rbx
          │    0x00007f96cab28998:   jg     0x00007f96cab28ac6
          │    0x00007f96cab2899e:   vmovdqu (%rsi,%rbx,1),%xmm0
          │    0x00007f96cab289a3:   vmovdqu %xmm0,(%rax,%rbx,1)
          │    0x00007f96cab289a8:   lea    0x10(%rbx),%r10
   1.10%  │    0x00007f96cab289ac:   lea    -0x8(%rcx),%rbx
          │    0x00007f96cab289b0:   cmp    %rbx,%r10
          │╭   0x00007f96cab289b3:   jg     0x00007f96cab289c9
   1.05%  ││   0x00007f96cab289b9:   vmovq  (%rsi,%r10,1),%xmm0
   2.24%  ││   0x00007f96cab289bf:   vmovq  %xmm0,(%rax,%r10,1)
   0.53%  ││   0x00007f96cab289c5:   lea    0x8(%r10),%r10
   0.84%  │↘   0x00007f96cab289c9:   lea    -0x4(%rcx),%rbx
   0.03%  │    0x00007f96cab289cd:   cmp    %rbx,%r10
          │ ╭  0x00007f96cab289d0:   jg     0x00007f96cab289e6
   0.22%  │ │  0x00007f96cab289d6:   vmovd  (%rsi,%r10,1),%xmm0
   0.46%  │ │  0x00007f96cab289dc:   vmovd  %xmm0,(%rax,%r10,1)
   0.60%  │ │  0x00007f96cab289e2:   lea    0x4(%r10),%r10
   0.94%  │ ↘  0x00007f96cab289e6:   dec    %rcx
   1.08%  │    0x00007f96cab289e9:   cmp    %rcx,%r10
          │    0x00007f96cab289ec:   jg     0x00007f96cab2880a
   0.52%  │    0x00007f96cab289f2:   movsbl (%rsi,%r10,1),%ebx
   1.18%  │    0x00007f96cab289f7:   mov    %bl,(%rax,%r10,1)
   0.77%  │    0x00007f96cab289fb:   mov    %r10,%rbx
   0.06%  │    0x00007f96cab289fe:   inc    %rbx
   0.00%  │    0x00007f96cab28a01:   cmp    %rcx,%rbx
          │    0x00007f96cab28a04:   jg     0x00007f96cab2880a
   0.59%  │    0x00007f96cab28a0a:   movsbl 0x1(%rsi,%r10,1),%ebx
   0.91%  │    0x00007f96cab28a10:   mov    %bl,0x1(%rax,%r10,1)
   0.25%  │    0x00007f96cab28a15:   lea    0x2(%r10),%rbx
          │    0x00007f96cab28a19:   nopl   0x0(%rax)
   0.20%  │    0x00007f96cab28a20:   cmp    %rcx,%rbx
          │    0x00007f96cab28a23:   jg     0x00007f96cab2880a
   0.66%  │    0x00007f96cab28a29:   movsbl 0x2(%rsi,%r10,1),%ecx
   1.27%  │    0x00007f96cab28a2f:   mov    %cl,0x2(%rax,%r10,1)
   0.25%  │    0x00007f96cab28a34:   jmp    0x00007f96cab2880a
          ↘    0x00007f96cab28a39:   lea    -0x10(%rcx),%rax
               0x00007f96cab28a3d:   data16 xchg %ax,%ax
               0x00007f96cab28a40:   cmp    %rax,%rsi
               0x00007f96cab28a43:   jg     0x00007f96cab28ace
               0x00007f96cab28a49:   vmovdqu %xmm5,(%rdi,%rsi,1)
               0x00007f96cab28a4e:   lea    0x10(%rsi),%rax
               0x00007f96cab28a52:   lea    -0x8(%rcx),%rsi
               0x00007f96cab28a56:   cmp    %rsi,%rax
               0x00007f96cab28a59:   jg     0x00007f96cab28a69
               0x00007f96cab28a5f:   vmovq  %xmm5,(%rdi,%rax,1)
....................................................................................................
  42.26%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.lang.String::split, version 4, compile id 781 

            0x00007f96cab2864d:   mov    0x28(%rsp),%rbp
            0x00007f96cab28652:   mov    0x80(%rsp),%edi
            0x00007f96cab28659:   mov    0x84(%rsp),%r14d
            0x00007f96cab28661:   jmp    0x00007f96cab2a616
            0x00007f96cab28666:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007f96cab28671:   data16 data16 xchg %ax,%ax
            0x00007f96cab28675:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.StringLatin1::indexOf@13 (line 207)
                                                                      ; - java.lang.String::indexOf@13 (line 2421)
                                                                      ; - java.lang.String::split@131 (line 3123)
   0.00%    0x00007f96cab28680:   mov    %r10d,%r9d
            0x00007f96cab28683:   mov    %rsi,%rax
            0x00007f96cab28686:   mov    %r13d,%r10d
            0x00007f96cab28689:   jmp    0x00007f96cab2896f           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::split@127 (line 3123)
            0x00007f96cab2868e:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007f96cab28699:   data16 data16 xchg %ax,%ax
            0x00007f96cab2869d:   data16 xchg %ax,%ax
   0.07%    0x00007f96cab286a0:   mov    0x8(%rax),%edx               ;* unwind (locked if synchronized)
                                                                      ; - java.lang.Object::getClass@-3
                                                                      ; - java.util.Arrays::copyOf@3 (line 3481)
                                                                      ; - java.util.ArrayList::grow@37 (line 237)
                                                                      ; - java.util.ArrayList::grow@7 (line 244)
                                                                      ; - java.util.ArrayList::add@7 (line 454)
                                                                      ; - java.util.ArrayList::add@20 (line 467)
                                                                      ; - java.lang.String::split@167 (line 3125)
   0.10%    0x00007f96cab286a3:   mov    0xc(%rax),%esi               ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::add@2 (line 453)
                                                                      ; - java.util.ArrayList::add@20 (line 467)
                                                                      ; - java.lang.String::split@167 (line 3125)
   0.09%    0x00007f96cab286a6:   mov    %esi,%r13d
   0.90%    0x00007f96cab286a9:   inc    %r13d                        ;* unwind (locked if synchronized)
                                                                      ; - java.util.Arrays::copyOf@-3
                                                                      ; - java.util.Arrays::copyOf@6 (line 3481)
                                                                      ; - java.util.ArrayList::grow@37 (line 237)
                                                                      ; - java.util.ArrayList::grow@7 (line 244)
                                                                      ; - java.util.ArrayList::add@7 (line 454)
                                                                      ; - java.util.ArrayList::add@20 (line 467)
                                                                      ; - java.lang.String::split@247 (line 3141)
   0.08%    0x00007f96cab286ac:   cmp    $0xb,%r13d
   0.09%    0x00007f96cab286b0:   mov    $0xa,%r11d
   0.05%    0x00007f96cab286b6:   cmovl  %r11d,%r13d                  ;*anewarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::grow@52 (line 239)
                                                                      ; - java.util.ArrayList::grow@7 (line 244)
                                                                      ; - java.util.ArrayList::add@7 (line 454)
                                                                      ; - java.util.ArrayList::add@20 (line 467)
                                                                      ; - java.lang.String::split@247 (line 3141)
   0.96%    0x00007f96cab286ba:   mov    %r10d,%r11d
   0.05%    0x00007f96cab286bd:   inc    %r11d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::add@6 (line 466)
                                                                      ; - java.lang.String::split@167 (line 3125)
   0.10%    0x00007f96cab286c0:   mov    %r11d,0x54(%rsp)
   0.08%    0x00007f96cab286c5:   cmp    %r9d,%r14d
            0x00007f96cab286c8:   jle    0x00007f96cab29aee           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.StringLatin1::indexOf@23 (line 209)
                                                                      ; - java.lang.String::indexOf@13 (line 2421)
                                                                      ; - java.lang.String::split@131 (line 3123)
   0.89%    0x00007f96cab286ce:   mov    %r13d,0x50(%rsp)
   0.08%    0x00007f96cab286d3:   mov    %edx,0x4c(%rsp)
   0.11%    0x00007f96cab286d7:   mov    %r10d,%eax
   0.08%    0x00007f96cab286da:   mov    %esi,%r10d
   0.92%    0x00007f96cab286dd:   mov    %rbp,%rsi
   0.06%    0x00007f96cab286e0:   mov    $0x10,%rdx
   0.10%    0x00007f96cab286e7:   mov    %r14d,%ecx
   0.09%    0x00007f96cab286ea:   mov    %r9d,%r8d
   0.87%    0x00007f96cab286ed:   mov    %r9d,%ebx
   0.08%    0x00007f96cab286f0:   mov    %edi,%r9d
   0.08%    0x00007f96cab286f3:   mov    %r10d,%r11d
   0.07%    0x00007f96cab286f6:   mov    %eax,%r13d
   0.80%    0x00007f96cab286f9:   call   0x00007f96c317bb80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.indexOf1S1&gt;}
   0.65%    0x00007f96cab286fe:   nop
   0.00%    0x00007f96cab286ff:   mov    %eax,%r8d                    ;* unwind (locked if synchronized)
                                                                      ; - java.lang.StringLatin1::indexOfChar@-3
                                                                      ; - java.lang.StringLatin1::indexOf@32 (line 213)
                                                                      ; - java.lang.String::indexOf@13 (line 2421)
                                                                      ; - java.lang.String::split@131 (line 3123)
   0.49%    0x00007f96cab28702:   cmp    $0xffffffff,%r8d
            0x00007f96cab28706:   je     0x00007f96cab29593           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::split@138 (line 3123)
   0.01%    0x00007f96cab2870c:   cmp    %r8d,%ebx
            0x00007f96cab2870f:   jg     0x00007f96cab2a395           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::checkBoundsBeginEnd@6 (line 4603)
                                                                      ; - java.lang.String::substring@8 (line 2707)
                                                                      ; - java.lang.String::split@164 (line 3125)
   1.08%    0x00007f96cab28715:   cmp    %r14d,%r8d
            0x00007f96cab28718:   jg     0x00007f96cab2a395           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::checkBoundsBeginEnd@11 (line 4603)
                                                                      ; - java.lang.String::substring@8 (line 2707)
                                                                      ; - java.lang.String::split@164 (line 3125)
   1.39%    0x00007f96cab2871e:   xchg   %ax,%ax
            0x00007f96cab28720:   test   %ebx,%ebx
            0x00007f96cab28722:   je     0x00007f96cab28f45           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::substring@12 (line 2708)
                                                                      ; - java.lang.String::split@164 (line 3125)
   0.01%    0x00007f96cab28728:   cmp    %r8d,%ebx
            0x00007f96cab2872b:   je     0x00007f96cab29385           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.StringLatin1::newString@1 (line 766)
                                                                      ; - java.lang.String::substring@41 (line 2712)
                                                                      ; - java.lang.String::split@164 (line 3125)
   0.55%    0x00007f96cab28731:   mov    %r8d,%r10d
   0.76%    0x00007f96cab28734:   sub    %ebx,%r10d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::substring@24 (line 2711)
                                                                      ; - java.lang.String::split@164 (line 3125)
            0x00007f96cab28737:   test   %r10d,%r10d
            0x00007f96cab2873a:   jl     0x00007f96cab29b67
   0.02%    0x00007f96cab28740:   cmp    %r14d,%ebx
            0x00007f96cab28743:   ja     0x00007f96cab29b67
   0.32%    0x00007f96cab28749:   mov    0x108(%r15),%rcx
   0.73%    0x00007f96cab28750:   mov    %r10d,%r9d
            0x00007f96cab28753:   lea    0x17(%r9),%rdi
   0.01%    0x00007f96cab28757:   and    $0xfffffffffffffff8,%rdi
   0.39%    0x00007f96cab2875b:   mov    %rdi,%rax
   0.71%    0x00007f96cab2875e:   add    %rcx,%rax
            0x00007f96cab28761:   cmp    0x118(%r15),%rax
            0x00007f96cab28768:   ja     0x00007f96cab28b7e
   0.04%    0x00007f96cab2876e:   mov    %rax,0x108(%r15)
   0.82%    0x00007f96cab28775:   prefetchw 0xc0(%rdi,%rcx,1)
   2.08%    0x00007f96cab2877d:   prefetchw 0x100(%rdi,%rcx,1)
   0.76%    0x00007f96cab28785:   prefetchw 0x140(%rdi,%rcx,1)
   0.63%    0x00007f96cab2878d:   prefetchw 0x180(%rdi,%rcx,1)
   0.77%    0x00007f96cab28795:   movq   $0x1,(%rcx)
   0.38%    0x00007f96cab2879c:   movl   $0x6848,0x8(%rcx)            ;   {metadata({type array byte})}
   0.36%    0x00007f96cab287a3:   mov    %r10d,0xc(%rcx)
   0.55%    0x00007f96cab287a7:   mov    %rcx,%rdx
   0.20%    0x00007f96cab287aa:   mov    %r14d,%ecx
   0.28%    0x00007f96cab287ad:   sub    %ebx,%ecx
   0.22%    0x00007f96cab287af:   cmp    %ecx,%r10d
   0.41%    0x00007f96cab287b2:   cmovg  %ecx,%r10d
   0.18%    0x00007f96cab287b6:   movslq %r10d,%rdi
   0.25%    0x00007f96cab287b9:   cmp    %rdi,%r9
   0.23%    0x00007f96cab287bc:   mov    %r9,%rcx
   0.39%    0x00007f96cab287bf:   cmova  %rdi,%rcx
   0.51%    0x00007f96cab287c3:   test   %rcx,%rcx
            0x00007f96cab287c6:   je     0x00007f96cab2880a
   0.19%    0x00007f96cab287cc:   lea    0x10(%rdx),%rax
   0.40%    0x00007f96cab287d0:   lea    0x10(%rbp,%rbx,1),%rsi
   0.18%    0x00007f96cab287d5:   cmp    $0x20,%rcx
            0x00007f96cab287d9:   jl     0x00007f96cab28aba
            0x00007f96cab287df:   lea    -0x20(%rcx),%r10
            0x00007f96cab287e3:   mov    $0x0,%rbx
            0x00007f96cab287ea:   nopw   0x0(%rax,%rax,1)
            0x00007f96cab287f0:   vmovdqu (%rsi,%rbx,1),%ymm0
            0x00007f96cab287f5:   vmovdqu %ymm0,(%rax,%rbx,1)
            0x00007f96cab287fa:   lea    0x20(%rbx),%rbx
            0x00007f96cab287fe:   xchg   %ax,%ax
            0x00007f96cab28800:   cmp    %r10,%rbx
            0x00007f96cab28803:   jle    0x00007f96cab287f0
....................................................................................................
  23.75%  <total for region 2>

....[Hottest Regions]...............................................................................
  42.26%       jvmci, level 4  java.lang.String::split, version 4, compile id 781 
  23.75%       jvmci, level 4  java.lang.String::split, version 4, compile id 781 
   6.13%                       <unknown> 
   5.95%       jvmci, level 4  java.lang.String::split, version 4, compile id 781 
   5.77%         runtime stub  StubRoutines::checkcast_arraycopy 
   4.16%                       <unknown> 
   2.70%                       <unknown> 
   2.07%       jvmci, level 4  java.lang.String::split, version 4, compile id 781 
   1.89%       jvmci, level 4  java.lang.String::split, version 4, compile id 781 
   1.68%       jvmci, level 4  java.lang.String::split, version 4, compile id 781 
   0.50%       jvmci, level 4  java.lang.String::split, version 4, compile id 781 
   0.41%       jvmci, level 4  java.lang.String::split, version 4, compile id 781 
   0.15%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%            libjvm.so  G1BarrierSet::invalidate 
   0.07%       jvmci, level 4  java.lang.String::split, version 4, compile id 781 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%       jvmci, level 4  java.lang.String::split, version 4, compile id 781 
   2.03%  <...other 448 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  78.81%       jvmci, level 4  java.lang.String::split, version 4, compile id 781 
  13.18%                       <unknown> 
   5.80%         runtime stub  StubRoutines::checkcast_arraycopy 
   1.21%               kernel  [unknown] 
   0.08%            libjvm.so  G1BarrierSet::invalidate 
   0.03%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.03%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%            libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.03%            libjvm.so  OtherRegionsTable::occupied 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%            libjvm.so  JVMCIRuntime::new_instance_common 
   0.02%            libjvm.so  G1Policy::preventive_collection_required 
   0.02%            libjvm.so  G1PrepareEvacuationTask::G1PrepareRegionsClosure::do_heap_region 
   0.02%            libjvm.so  JVMCIRuntime::new_array_common 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.02%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.01%            libjvm.so  G1FromCardCache::clear 
   0.58%  <...other 166 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  78.83%       jvmci, level 4
  13.18%                     
   5.80%         runtime stub
   1.21%               kernel
   0.75%            libjvm.so
   0.08%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.02%           ld-2.31.so
   0.02%   libpthread-2.31.so
   0.02%               [vdso]
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.00%          c1, level 3
   0.00%       libz.so.1.2.11
   0.00%      perf-117531.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = __)

# Run progress: 75.00% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 126.194 us/op
# Warmup Iteration   2: 97.885 us/op
# Warmup Iteration   3: 97.910 us/op
# Warmup Iteration   4: 97.880 us/op
# Warmup Iteration   5: 97.931 us/op
Iteration   1: 97.902 us/op
Iteration   2: 97.906 us/op
Iteration   3: 97.986 us/op
Iteration   4: 97.987 us/op
Iteration   5: 98.002 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split":
  97.957 ±(99.9%) 0.186 us/op [Average]
  (min, avg, max) = (97.902, 97.957, 98.002), stdev = 0.048
  CI (99.9%): [97.771, 98.142] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split:·asm":
PrintAssembly processed: 245976 total address lines.
Perf output processed (skipped 59.017 seconds):
 Column 1: cycles (50629 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split, version 2, compile id 829 

                     0x00007f824eb4610e:   mov    %rsi,%rdi
                     0x00007f824eb46111:   mov    $0x0,%r14d
                     0x00007f824eb46117:   mov    $0xffffffff,%r9d
                     0x00007f824eb4611d:   mov    $0xffffffff,%esi
                     0x00007f824eb46122:   mov    $0x0,%ecx
                     0x00007f824eb46127:   nopw   0x0(%rax,%rax,1)             ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.regex.Pattern::split@29 (line 1265)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.52%             0x00007f824eb46130:   mov    %eax,0x8c(%rsp)
   0.09%             0x00007f824eb46137:   mov    %rdi,0x18(%rsp)
   0.06%             0x00007f824eb4613c:   mov    0xc(%rdi),%ebp               ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.ArrayList::add@2 (line 453)
                                                                               ; - java.util.ArrayList::add@20 (line 467)
                                                                               ; - java.util.regex.Pattern::split@105 (line 1273)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.22%             0x00007f824eb4613f:   mov    %ebp,0x88(%rsp)
   0.48%             0x00007f824eb46146:   cmp    %ecx,%esi
                     0x00007f824eb46148:   je     0x00007f824eb48b25           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.regex.Matcher::find@10 (line 732)
                                                                               ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.07%             0x00007f824eb4614e:   test   %ecx,%ecx
                     0x00007f824eb46150:   jl     0x00007f824eb48add           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.regex.Matcher::find@21 (line 736)
                                                                               ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.04%             0x00007f824eb46156:   cmp    %r8d,%ecx
                     0x00007f824eb46159:   jg     0x00007f824eb48d0a           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.regex.Matcher::find@34 (line 740)
                                                                               ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.17%             0x00007f824eb4615f:   nop
   0.46%             0x00007f824eb46160:   cmp    %r10d,%ecx
                     0x00007f824eb46163:   jg     0x00007f824eb48e5a           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.regex.Pattern$Start::match@10 (line 3602)
                                                                               ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                               ; - java.util.regex.Matcher::find@65 (line 745)
                                                                               ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.07%             0x00007f824eb46169:   test   %r9d,%r9d
                     0x00007f824eb4616c:   jl     0x00007f824eb46c53           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.regex.Matcher::search@30 (line 1720)
                                                                               ; - java.util.regex.Matcher::find@65 (line 745)
                                                                               ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.05%             0x00007f824eb46172:   mov    %r9d,0x80(%rsp)
   0.20%             0x00007f824eb4617a:   mov    %r14d,%esi
   0.49%             0x00007f824eb4617d:   inc    %esi                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.ArrayList::add@6 (line 466)
                                                                               ; - java.util.regex.Pattern::split@105 (line 1273)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.14%             0x00007f824eb4617f:   mov    %esi,0x7c(%rsp)
   0.10%             0x00007f824eb46183:   mov    %r8d,%r9d
   0.19%             0x00007f824eb46186:   sub    %ecx,%r9d                    ;* unwind (locked if synchronized)
                                                                               ; - java.util.Arrays::copyOfRange@-3
                                                                               ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                               ; - java.lang.String::substring@41 (line 2712)
                                                                               ; - java.lang.String::subSequence@3 (line 2745)
                                                                               ; - java.util.regex.Pattern::split@208 (line 1289)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.43%             0x00007f824eb46189:   mov    %eax,%esi
   0.04%             0x00007f824eb4618b:   inc    %esi                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.regex.Matcher::search@148 (line 1732)
                                                                               ; - java.util.regex.Matcher::find@65 (line 745)
                                                                               ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.08%             0x00007f824eb4618d:   mov    %esi,0x78(%rsp)
   0.16%             0x00007f824eb46191:   mov    $0x0,%eax
   0.44%  ╭          0x00007f824eb46196:   jmp    0x00007f824eb461cc           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - java.util.regex.Pattern$Slice::match@14 (line 4080)
          │                                                                    ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │                                                                    ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                                    ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                                    ; - java.util.regex.Pattern::split@31 (line 1265)
          │                                                                    ; - java.lang.String::split@323 (line 3153)
          │                                                                    ; - java.lang.String::split@3 (line 3199)
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
          │          0x00007f824eb4619b:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - java.util.regex.Pattern$Slice::match@18 (line 4080)
          │                                                                    ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │                                                                    ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                                    ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                                    ; - java.util.regex.Pattern::split@31 (line 1265)
          │                                                                    ; - java.lang.String::split@323 (line 3153)
          │                                                                    ; - java.lang.String::split@3 (line 3199)
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.85%  │ ↗        0x00007f824eb461a0:   mov    %eax,%esi
          │ │        0x00007f824eb461a2:   add    %ecx,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                  ; - java.util.regex.Pattern$Slice::match@24 (line 4081)
          │ │                                                                  ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │ │                                                                  ; - java.util.regex.Matcher::search@121 (line 1728)
          │ │                                                                  ; - java.util.regex.Matcher::find@65 (line 745)
          │ │                                                                  ; - java.util.regex.Pattern::split@31 (line 1265)
          │ │                                                                  ; - java.lang.String::split@323 (line 3153)
          │ │                                                                  ; - java.lang.String::split@3 (line 3199)
          │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
          │ │        0x00007f824eb461a4:   cmp    %esi,%r8d
          │ │        0x00007f824eb461a7:   jle    0x00007f824eb48eaf           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                  ; - java.util.regex.Pattern$Slice::match@29 (line 4081)
          │ │                                                                  ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │ │                                                                  ; - java.util.regex.Matcher::search@121 (line 1728)
          │ │                                                                  ; - java.util.regex.Matcher::find@65 (line 745)
          │ │                                                                  ; - java.util.regex.Pattern::split@31 (line 1265)
          │ │                                                                  ; - java.lang.String::split@323 (line 3153)
          │ │                                                                  ; - java.lang.String::split@3 (line 3199)
          │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
          │ │        0x00007f824eb461ad:   cmp    %esi,%r8d
          │ │        0x00007f824eb461b0:   jbe    0x00007f824eb48d8b           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                  ; - java.lang.StringLatin1::charAt@7 (line 47)
          │ │                                                                  ; - java.lang.String::charAt@12 (line 1515)
          │ │                                                                  ; - java.util.regex.Pattern$Slice::match@49 (line 4085)
          │ │                                                                  ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │ │                                                                  ; - java.util.regex.Matcher::search@121 (line 1728)
          │ │                                                                  ; - java.util.regex.Matcher::find@65 (line 745)
          │ │                                                                  ; - java.util.regex.Pattern::split@31 (line 1265)
          │ │                                                                  ; - java.lang.String::split@323 (line 3153)
          │ │                                                                  ; - java.lang.String::split@3 (line 3199)
          │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.76%  │ │        0x00007f824eb461b6:   movzbl 0x10(%rsi,%r11,8),%esi       ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                  ; - java.lang.StringLatin1::charAt@21 (line 50)
          │ │                                                                  ; - java.lang.String::charAt@12 (line 1515)
          │ │                                                                  ; - java.util.regex.Pattern$Slice::match@49 (line 4085)
          │ │                                                                  ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │ │                                                                  ; - java.util.regex.Matcher::search@121 (line 1728)
          │ │                                                                  ; - java.util.regex.Matcher::find@65 (line 745)
          │ │                                                                  ; - java.util.regex.Pattern::split@31 (line 1265)
          │ │                                                                  ; - java.lang.String::split@323 (line 3153)
          │ │                                                                  ; - java.lang.String::split@3 (line 3199)
          │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.05%  │ │        0x00007f824eb461bc:   nopl   0x0(%rax)
          │ │        0x00007f824eb461c0:   cmp    0x10(%rdx,%rax,4),%esi
          │╭│        0x00007f824eb461c4:   jne    0x00007f824eb461d5           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                  ; - java.util.regex.Pattern$Slice::match@54 (line 4085)
          │││                                                                  ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │││                                                                  ; - java.util.regex.Matcher::search@121 (line 1728)
          │││                                                                  ; - java.util.regex.Matcher::find@65 (line 745)
          │││                                                                  ; - java.util.regex.Pattern::split@31 (line 1265)
          │││                                                                  ; - java.lang.String::split@323 (line 3153)
          │││                                                                  ; - java.lang.String::split@3 (line 3199)
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
          │││        0x00007f824eb461ca:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                  ; - java.util.regex.Pattern$Slice::match@59 (line 4080)
          │││                                                                  ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │││                                                                  ; - java.util.regex.Matcher::search@121 (line 1728)
          │││                                                                  ; - java.util.regex.Matcher::find@65 (line 745)
          │││                                                                  ; - java.util.regex.Pattern::split@31 (line 1265)
          │││                                                                  ; - java.lang.String::split@323 (line 3153)
          │││                                                                  ; - java.lang.String::split@3 (line 3199)
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.04%  ↘││        0x00007f824eb461cc:   cmp    %eax,%ebx
           │╰        0x00007f824eb461ce:   ja     0x00007f824eb461a0
           │         0x00007f824eb461d0:   jmp    0x00007f824eb46665           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - java.util.regex.Pattern$Slice::match@18 (line 4080)
           │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3608)
           │                                                                   ; - java.util.regex.Matcher::search@121 (line 1728)
           │                                                                   ; - java.util.regex.Matcher::find@65 (line 745)
           │                                                                   ; - java.util.regex.Pattern::split@31 (line 1265)
           │                                                                   ; - java.lang.String::split@323 (line 3153)
           │                                                                   ; - java.lang.String::split@3 (line 3199)
           │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.78%   ↘         0x00007f824eb461d5:   mov    %ecx,%esi
                     0x00007f824eb461d7:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.regex.Pattern$Start::match@77 (line 3607)
                                                                               ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                               ; - java.util.regex.Matcher::find@65 (line 745)
                                                                               ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
             ╭       0x00007f824eb461d9:   jmp    0x00007f824eb46240           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
             │                                                                 ; - java.util.regex.Pattern$Start::match@31 (line 3607)
             │                                                                 ; - java.util.regex.Matcher::search@121 (line 1728)
             │                                                                 ; - java.util.regex.Matcher::find@65 (line 745)
             │                                                                 ; - java.util.regex.Pattern::split@31 (line 1265)
             │                                                                 ; - java.lang.String::split@323 (line 3153)
             │                                                                 ; - java.lang.String::split@3 (line 3199)
             │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
             │       0x00007f824eb461de:   xchg   %ax,%ax                      ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
             │                                                                 ; - java.util.regex.Pattern$Start::match@34 (line 3607)
             │                                                                 ; - java.util.regex.Matcher::search@121 (line 1728)
             │                                                                 ; - java.util.regex.Matcher::find@65 (line 745)
             │                                                                 ; - java.util.regex.Pattern::split@31 (line 1265)
             │                                                                 ; - java.lang.String::split@323 (line 3153)
             │                                                                 ; - java.lang.String::split@3 (line 3199)
             │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   4.11%     │    ↗  0x00007f824eb461e0:   mov    $0x0,%eax
             │╭   │  0x00007f824eb461e5:   jmp    0x00007f824eb4622c           ;*iload {reexecute=0 rethrow=0 return_oop=0}
             ││   │                                                            ; - java.util.regex.Pattern$Slice::match@14 (line 4080)
             ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
             ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
             ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
             ││   │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
             ││   │                                                            ; - java.lang.String::split@323 (line 3153)
             ││   │                                                            ; - java.lang.String::split@3 (line 3199)
             ││   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
             ││   │  0x00007f824eb461ea:   data16 data16 nopw 0x0(%rax,%rax,1)
             ││   │  0x00007f824eb461f5:   data16 data16 xchg %ax,%ax
             ││   │  0x00007f824eb461f9:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             ││   │                                                            ; - java.util.regex.Pattern$Slice::match@18 (line 4080)
             ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
             ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
             ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
             ││   │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
             ││   │                                                            ; - java.lang.String::split@323 (line 3153)
             ││   │                                                            ; - java.lang.String::split@3 (line 3199)
             ││   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   4.55%     ││ ↗ │  0x00007f824eb46200:   mov    %eax,%ebp
             ││ │ │  0x00007f824eb46202:   add    %esi,%ebp                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             ││ │ │                                                            ; - java.util.regex.Pattern$Slice::match@24 (line 4081)
             ││ │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
             ││ │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
             ││ │ │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
             ││ │ │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
             ││ │ │                                                            ; - java.lang.String::split@323 (line 3153)
             ││ │ │                                                            ; - java.lang.String::split@3 (line 3199)
             ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.19%     ││ │ │  0x00007f824eb46204:   cmp    %ebp,%r8d
             ││ │ │  0x00007f824eb46207:   jle    0x00007f824eb48fca           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
             ││ │ │                                                            ; - java.util.regex.Pattern$Slice::match@29 (line 4081)
             ││ │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
             ││ │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
             ││ │ │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
             ││ │ │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
             ││ │ │                                                            ; - java.lang.String::split@323 (line 3153)
             ││ │ │                                                            ; - java.lang.String::split@3 (line 3199)
             ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.59%     ││ │ │  0x00007f824eb4620d:   cmp    %ebp,%r8d
             ││ │ │  0x00007f824eb46210:   jbe    0x00007f824eb48f05           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
             ││ │ │                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
             ││ │ │                                                            ; - java.lang.String::charAt@12 (line 1515)
             ││ │ │                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4085)
             ││ │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
             ││ │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
             ││ │ │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
             ││ │ │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
             ││ │ │                                                            ; - java.lang.String::split@323 (line 3153)
             ││ │ │                                                            ; - java.lang.String::split@3 (line 3199)
             ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   4.74%     ││ │ │  0x00007f824eb46216:   movzbl 0x10(%rbp,%r11,8),%ebp       ;*baload {reexecute=0 rethrow=0 return_oop=0}
             ││ │ │                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
             ││ │ │                                                            ; - java.lang.String::charAt@12 (line 1515)
             ││ │ │                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4085)
             ││ │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
             ││ │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
             ││ │ │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
             ││ │ │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
             ││ │ │                                                            ; - java.lang.String::split@323 (line 3153)
             ││ │ │                                                            ; - java.lang.String::split@3 (line 3199)
             ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   2.70%     ││ │ │  0x00007f824eb4621c:   nopl   0x0(%rax)
   0.17%     ││ │ │  0x00007f824eb46220:   cmp    0x10(%rdx,%rax,4),%ebp
             ││╭│ │  0x00007f824eb46224:   jne    0x00007f824eb46235           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
             ││││ │                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4085)
             ││││ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
             ││││ │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
             ││││ │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
             ││││ │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
             ││││ │                                                            ; - java.lang.String::split@323 (line 3153)
             ││││ │                                                            ; - java.lang.String::split@3 (line 3199)
             ││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   2.90%     ││││ │  0x00007f824eb4622a:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             ││││ │                                                            ; - java.util.regex.Pattern$Slice::match@59 (line 4080)
             ││││ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
             ││││ │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
             ││││ │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
             ││││ │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
             ││││ │                                                            ; - java.lang.String::split@323 (line 3153)
             ││││ │                                                            ; - java.lang.String::split@3 (line 3199)
             ││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   9.29%     │↘││ │  0x00007f824eb4622c:   cmp    %eax,%ebx
             │ │╰ │  0x00007f824eb4622e:   ja     0x00007f824eb46200
   0.20%     │ │ ╭│  0x00007f824eb46230:   jmp    0x00007f824eb4624a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │ │ ││                                                            ; - java.util.regex.Pattern$Slice::match@18 (line 4080)
             │ │ ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
             │ │ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
             │ │ ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
             │ │ ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
             │ │ ││                                                            ; - java.lang.String::split@323 (line 3153)
             │ │ ││                                                            ; - java.lang.String::split@3 (line 3199)
             │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   4.95%     │ ↘ ││  0x00007f824eb46235:   mov    0x348(%r15),%rax             ; ImmutableOopMap {rdx=Oop rdi=Oop r11=NarrowOop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [80]=Oop [88]=Oop [100]=NarrowOop [104]=Oop }
             │   ││                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
             │   ││                                                            ; - (reexecute) java.util.regex.Pattern$Slice::match@57 (line 4086)
             │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
             │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
             │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
             │   ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
             │   ││                                                            ; - java.lang.String::split@323 (line 3153)
             │   ││                                                            ; - java.lang.String::split@3 (line 3199)
             │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   2.38%     │   ││  0x00007f824eb4623c:   test   %eax,(%rax)                  ;   {poll}
   1.83%     │   ││  0x00007f824eb4623e:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │   ││                                                            ; - java.util.regex.Pattern$Start::match@77 (line 3607)
             │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
             │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
             │   ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
             │   ││                                                            ; - java.lang.String::split@323 (line 3153)
             │   ││                                                            ; - java.lang.String::split@3 (line 3199)
             │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.84%     ↘   ││  0x00007f824eb46240:   cmp    %r10d,%esi
                 │╰  0x00007f824eb46243:   jle    0x00007f824eb461e0
                 │   0x00007f824eb46245:   jmp    0x00007f824eb47488
                 ↘   0x00007f824eb4624a:   movabs $0x800269f50,%rbp            ;   {metadata(&apos;java/util/regex/Pattern$LastNode&apos;)}
   0.53%             0x00007f824eb46254:   cmp    %r13,%rbp
                     0x00007f824eb46257:   jne    0x00007f824eb48869           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.regex.Pattern$Slice::match@75 (line 4088)
                                                                               ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                               ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                               ; - java.util.regex.Matcher::find@65 (line 745)
                                                                               ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
                     0x00007f824eb4625d:   mov    %esi,%eax
   0.17%             0x00007f824eb4625f:   add    %ebx,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.regex.Pattern$Slice::match@73 (line 4088)
                                                                               ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                               ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                               ; - java.util.regex.Matcher::find@65 (line 745)
                                                                               ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
                     0x00007f824eb46261:   test   %ecx,%ecx
                     0x00007f824eb46263:   je     0x00007f824eb46f6d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.regex.Pattern::split@54 (line 1267)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.55%             0x00007f824eb46269:   test   %esi,%esi
                     0x00007f824eb4626b:   jl     0x00007f824eb48bb1           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.regex.Matcher::start@4 (line 449)
                                                                               ; - java.util.regex.Pattern::split@86 (line 1272)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.03%             0x00007f824eb46271:   cmp    %esi,%ecx
                     0x00007f824eb46273:   jg     0x00007f824eb48665           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.lang.String::checkBoundsBeginEnd@6 (line 4603)
                                                                               ; - java.lang.String::substring@8 (line 2707)
                                                                               ; - java.lang.String::subSequence@3 (line 2745)
                                                                               ; - java.util.regex.Pattern::split@89 (line 1272)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.24%             0x00007f824eb46279:   nopl   0x0(%rax)
                     0x00007f824eb46280:   cmp    %r8d,%esi
                     0x00007f824eb46283:   jg     0x00007f824eb48cfe           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.lang.String::checkBoundsBeginEnd@11 (line 4603)
                                                                               ; - java.lang.String::substring@8 (line 2707)
                                                                               ; - java.lang.String::subSequence@3 (line 2745)
                                                                               ; - java.util.regex.Pattern::split@89 (line 1272)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   2.12%             0x00007f824eb46289:   cmp    %ecx,%esi
                     0x00007f824eb4628b:   je     0x00007f824eb46fdb           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.lang.StringLatin1::newString@1 (line 766)
                                                                               ; - java.lang.String::substring@41 (line 2712)
                                                                               ; - java.lang.String::subSequence@3 (line 2745)
                                                                               ; - java.util.regex.Pattern::split@89 (line 1272)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.03%             0x00007f824eb46291:   mov    %esi,%r11d
   0.16%             0x00007f824eb46294:   sub    %ecx,%r11d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.lang.String::substring@24 (line 2711)
                                                                               ; - java.lang.String::subSequence@3 (line 2745)
                                                                               ; - java.util.regex.Pattern::split@89 (line 1272)
                                                                               ; - java.lang.String::split@323 (line 3153)
                                                                               ; - java.lang.String::split@3 (line 3199)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
                     0x00007f824eb46297:   test   %r11d,%r11d
                     0x00007f824eb4629a:   jl     0x00007f824eb48539
   0.66%             0x00007f824eb462a0:   cmp    %r8d,%ecx
                     0x00007f824eb462a3:   ja     0x00007f824eb48539
   0.02%             0x00007f824eb462a9:   mov    0x108(%r15),%r8
   2.83%             0x00007f824eb462b0:   mov    %r11d,%ebx
                     0x00007f824eb462b3:   lea    0x17(%rbx),%r13
                     0x00007f824eb462b7:   and    $0xfffffffffffffff8,%r13
                     0x00007f824eb462bb:   mov    %r13,%r10
   0.81%             0x00007f824eb462be:   add    %r8,%r10
                     0x00007f824eb462c1:   cmp    0x118(%r15),%r10
                     0x00007f824eb462c8:   ja     0x00007f824eb46745
   1.42%             0x00007f824eb462ce:   mov    %r10,0x108(%r15)
   0.00%             0x00007f824eb462d5:   prefetchw 0xc0(%r13,%r8,1)
   1.52%             0x00007f824eb462de:   prefetchw 0x100(%r13,%r8,1)
                     0x00007f824eb462e7:   prefetchw 0x140(%r13,%r8,1)
   0.70%             0x00007f824eb462f0:   prefetchw 0x180(%r13,%r8,1)
   0.46%             0x00007f824eb462f9:   movq   $0x1,(%r8)
   2.71%             0x00007f824eb46300:   movl   $0x6848,0x8(%r8)             ;   {metadata({type array byte})}
   0.40%             0x00007f824eb46308:   mov    %r11d,0xc(%r8)
   1.36%             0x00007f824eb4630c:   cmp    %r9d,%r11d
   0.02%             0x00007f824eb4630f:   cmovg  %r9d,%r11d
   0.29%             0x00007f824eb46313:   movslq %r11d,%r10
                     0x00007f824eb46316:   cmp    %r10,%rbx
   0.51%             0x00007f824eb46319:   mov    %rbx,%r11
   0.01%             0x00007f824eb4631c:   cmova  %r10,%r11
   0.30%             0x00007f824eb46320:   test   %r11,%r11
                     0x00007f824eb46323:   je     0x00007f824eb46691
   0.50%             0x00007f824eb46329:   mov    0x28(%rsp),%r13
   0.03%             0x00007f824eb4632e:   lea    0x10(%r8),%r9
   0.30%             0x00007f824eb46332:   lea    0x10(%r13,%rcx,1),%rbp
   0.01%             0x00007f824eb46337:   nopw   0x0(%rax,%rax,1)
   0.56%             0x00007f824eb46340:   cmp    $0x20,%r11
                     0x00007f824eb46344:   jl     0x00007f824eb4669a
                     0x00007f824eb4634a:   mov    %ecx,0x70(%rsp)
                     0x00007f824eb4634e:   lea    -0x20(%r11),%rcx
                     0x00007f824eb46352:   mov    $0x0,%r13
                     0x00007f824eb46359:   nopl   0x0(%rax)
                     0x00007f824eb46360:   vmovdqu 0x0(%rbp,%r13,1),%ymm1
                     0x00007f824eb46367:   vmovdqu %ymm1,(%r9,%r13,1)
                     0x00007f824eb4636d:   lea    0x20(%r13),%r13
                     0x00007f824eb46371:   cmp    %rcx,%r13
                     0x00007f824eb46374:   jle    0x00007f824eb46360
....................................................................................................
  65.68%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split, version 2, compile id 829 

             0x00007f824eb4647f:   nop
          ╭  0x00007f824eb46480:   jmp    0x00007f824eb465c6           ;* unwind (locked if synchronized)
          │                                                            ; - java.util.Arrays::copyOfRange@-3
          │                                                            ; - java.lang.StringLatin1::newString@16 (line 769)
          │                                                            ; - java.lang.String::substring@41 (line 2712)
          │                                                            ; - java.lang.String::subSequence@3 (line 2745)
          │                                                            ; - java.util.regex.Pattern::split@89 (line 1272)
          │                                                            ; - java.lang.String::split@323 (line 3153)
          │                                                            ; - java.lang.String::split@3 (line 3199)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.15%  │  0x00007f824eb46485:   mov    0x108(%r15),%rcx
   0.41%  │  0x00007f824eb4648c:   lea    0x18(%rcx),%r10
   0.23%  │  0x00007f824eb46490:   cmp    0x118(%r15),%r10
          │  0x00007f824eb46497:   ja     0x00007f824eb467a9
   0.27%  │  0x00007f824eb4649d:   mov    %r10,0x108(%r15)
   0.26%  │  0x00007f824eb464a4:   prefetchw 0xd8(%rcx)
   0.82%  │  0x00007f824eb464ab:   movq   $0x1,(%rcx)
   1.53%  │  0x00007f824eb464b2:   movl   $0xed30,0x8(%rcx)            ;   {metadata(&apos;java/lang/String&apos;)}
   1.20%  │  0x00007f824eb464b9:   shr    $0x3,%r8
   0.02%  │  0x00007f824eb464bd:   mov    %r8d,0x14(%rcx)
   1.07%  │  0x00007f824eb464c1:   mov    %r12d,0xc(%rcx)
   0.53%  │  0x00007f824eb464c5:   mov    %r12w,0x10(%rcx)
   0.27%  │  0x00007f824eb464ca:   mov    %r12b,0x12(%rcx)             ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.StringLatin1::newString@7 (line 769)
          │                                                            ; - java.lang.String::substring@41 (line 2712)
          │                                                            ; - java.lang.String::subSequence@3 (line 2745)
          │                                                            ; - java.util.regex.Pattern::split@89 (line 1272)
          │                                                            ; - java.lang.String::split@323 (line 3153)
          │                                                            ; - java.lang.String::split@3 (line 3199)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.13%  │  0x00007f824eb464ce:   mov    %esi,%r9d
   0.24%  │  0x00007f824eb464d1:   mov    %eax,%r8d
   0.19%  │  0x00007f824eb464d4:   mov    %rcx,%r11
   0.23%  │  0x00007f824eb464d7:   mov    0x88(%rsp),%ebp
   0.15%  │  0x00007f824eb464de:   mov    %r11,0x10(%rsp)
   0.50%  │  0x00007f824eb464e3:   mov    0x8(%rdi),%ebx               ;* unwind (locked if synchronized)
          │                                                            ; - java.lang.Object::getClass@-3
          │                                                            ; - java.util.Arrays::copyOf@3 (line 3481)
          │                                                            ; - java.util.ArrayList::grow@37 (line 237)
          │                                                            ; - java.util.ArrayList::grow@7 (line 244)
          │                                                            ; - java.util.ArrayList::add@7 (line 454)
          │                                                            ; - java.util.ArrayList::add@20 (line 467)
          │                                                            ; - java.util.regex.Pattern::split@105 (line 1273)
          │                                                            ; - java.lang.String::split@323 (line 3153)
          │                                                            ; - java.lang.String::split@3 (line 3199)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.13%  │  0x00007f824eb464e6:   mov    %r11,%r13
   0.24%  │  0x00007f824eb464e9:   shr    $0x3,%r13                    ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.ArrayList::add@14 (line 455)
          │                                                            ; - java.util.ArrayList::add@20 (line 467)
          │                                                            ; - java.util.regex.Pattern::split@105 (line 1273)
          │                                                            ; - java.lang.String::split@323 (line 3153)
          │                                                            ; - java.lang.String::split@3 (line 3199)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.12%  │  0x00007f824eb464ed:   cmp    %r14d,%ebp
          │  0x00007f824eb464f0:   je     0x00007f824eb4688d           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.ArrayList::add@3 (line 453)
          │                                                            ; - java.util.ArrayList::add@20 (line 467)
          │                                                            ; - java.util.regex.Pattern::split@105 (line 1273)
          │                                                            ; - java.lang.String::split@323 (line 3153)
          │                                                            ; - java.lang.String::split@3 (line 3199)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.34%  │  0x00007f824eb464f6:   data16 nopw 0x0(%rax,%rax,1)
   0.10%  │  0x00007f824eb46500:   cmp    $0x1550,%ebx                 ;   {metadata(&apos;java/lang/Object&apos;[])}
          │  0x00007f824eb46506:   jne    0x00007f824eb48c5d
   0.28%  │  0x00007f824eb4650c:   cmp    %r14d,%ebp
          │  0x00007f824eb4650f:   jbe    0x00007f824eb48706
   0.12%  │  0x00007f824eb46515:   cmpb   $0x0,0x38(%r15)
   0.34%  │  0x00007f824eb4651a:   jne    0x00007f824eb466c6
   0.13%  │  0x00007f824eb46520:   mov    0x7c(%rsp),%ecx
   0.27%  │  0x00007f824eb46524:   mov    %rdi,%rdx
   0.12%  │  0x00007f824eb46527:   mov    0x78(%rsp),%edi
   0.36%  │  0x00007f824eb4652b:   mov    %r13d,0x10(%rdx,%r14,4)
   0.14%  │  0x00007f824eb46530:   lea    0x10(%rdx,%r14,4),%rsi
   0.23%  │  0x00007f824eb46535:   xor    %r11,%rsi
   0.10%  │  0x00007f824eb46538:   nopl   0x0(%rax,%rax,1)
   0.31%  │  0x00007f824eb46540:   test   $0xffffffffffe00000,%rsi
          │  0x00007f824eb46547:   je     0x00007f824eb4670a
   0.00%  │  0x00007f824eb4654d:   test   %r11,%r11
          │  0x00007f824eb46550:   je     0x00007f824eb46717
   0.01%  │  0x00007f824eb46556:   mov    0xb0(%rsp),%r10
   0.00%  │  0x00007f824eb4655e:   lea    0x10(%rdx,%r14,4),%rsi
          │  0x00007f824eb46563:   shr    $0x9,%rsi
          │  0x00007f824eb46567:   cmpb   $0x4,(%rsi,%r10,1)
   0.01%  │  0x00007f824eb4656c:   jne    0x00007f824eb46725
   0.00%  │  0x00007f824eb46572:   mov    %r14d,0x84(%rsp)             ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.ArrayList::add@14 (line 455)
          │                                                            ; - java.util.ArrayList::add@20 (line 467)
          │                                                            ; - java.util.regex.Pattern::split@105 (line 1273)
          │                                                            ; - java.lang.String::split@323 (line 3153)
          │                                                            ; - java.lang.String::split@3 (line 3199)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.56%  │  0x00007f824eb4657a:   mov    0x348(%r15),%rsi             ; ImmutableOopMap {rdx=Oop [16]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [80]=Oop [88]=Oop [100]=NarrowOop [104]=Oop }
          │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) java.util.ArrayList::add@15 (line 456)
          │                                                            ; - java.util.ArrayList::add@20 (line 467)
          │                                                            ; - java.util.regex.Pattern::split@105 (line 1273)
          │                                                            ; - java.lang.String::split@323 (line 3153)
          │                                                            ; - java.lang.String::split@3 (line 3199)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.03%  │  0x00007f824eb46581:   test   %eax,(%rsi)                  ;   {poll}
   0.17%  │  0x00007f824eb46583:   mov    %ecx,%r14d
   0.22%  │  0x00007f824eb46586:   mov    %edi,%eax
   0.49%  │  0x00007f824eb46588:   mov    %r9d,%esi
   0.00%  │  0x00007f824eb4658b:   mov    %r8d,%ecx
   0.07%  │  0x00007f824eb4658e:   mov    0x90(%rsp),%r10d
   0.25%  │  0x00007f824eb46596:   mov    0x98(%rsp),%r13
   0.51%  │  0x00007f824eb4659e:   mov    0xa4(%rsp),%ebx
   0.01%  │  0x00007f824eb465a5:   mov    0x64(%rsp),%r11d
   0.08%  │  0x00007f824eb465aa:   vpxor  %xmm0,%xmm0,%xmm0
   0.19%  │  0x00007f824eb465ae:   mov    %rdx,%rdi
   0.50%  │  0x00007f824eb465b1:   mov    %r8d,%r9d
          │  0x00007f824eb465b4:   mov    0x30(%rsp),%rdx
   0.10%  │  0x00007f824eb465b9:   mov    0xa8(%rsp),%r8d
   0.23%  │  0x00007f824eb465c1:   jmp    0x00007f824eb46130           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.regex.Pattern::split@29 (line 1265)
          │                                                            ; - java.lang.String::split@323 (line 3153)
          │                                                            ; - java.lang.String::split@3 (line 3199)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split@8 (line 97)
          ↘  0x00007f824eb465c6:   lea    -0x10(%rcx),%rbp
             0x00007f824eb465ca:   cmp    %rbp,%r11
             0x00007f824eb465cd:   jg     0x00007f824eb466b2
             0x00007f824eb465d3:   vmovdqu %xmm0,(%r10,%r11,1)
             0x00007f824eb465d9:   lea    0x10(%r11),%rbp
             0x00007f824eb465dd:   lea    -0x8(%rcx),%r11
....................................................................................................
  14.95%  <total for region 2>

....[Hottest Regions]...............................................................................
  65.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split, version 2, compile id 829 
  14.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split, version 2, compile id 829 
   8.75%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split, version 2, compile id 829 
   3.92%         runtime stub  StubRoutines::checkcast_arraycopy 
   1.44%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split, version 2, compile id 829 
   0.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split, version 2, compile id 829 
   0.70%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split, version 2, compile id 829 
   0.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split, version 2, compile id 829 
   0.39%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split, version 2, compile id 829 
   0.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split, version 2, compile id 829 
   0.21%               kernel  [unknown] 
   0.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split, version 2, compile id 829 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%            libjvm.so  G1BarrierSet::invalidate 
   0.06%         libc-2.31.so  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split, version 2, compile id 829 
   0.04%               kernel  [unknown] 
   1.79%  <...other 457 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark::string_split, version 2, compile id 829 
   3.94%         runtime stub  StubRoutines::checkcast_arraycopy 
   1.23%               kernel  [unknown] 
   0.10%         libc-2.31.so  [unknown] 
   0.08%                       <unknown> 
   0.07%            libjvm.so  G1BarrierSet::invalidate 
   0.04%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.03%            libjvm.so  HeapRegionManager::par_iterate 
   0.03%            libjvm.so  OtherRegionsTable::occupied 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  G1FromCardCache::clear 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  MemAllocator::allocate_inside_tlab_slow 
   0.01%            libjvm.so  ObjAllocator::initialize 
   0.01%            libjvm.so  fileStream::write 
   0.49%  <...other 143 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.83%       jvmci, level 4
   3.94%         runtime stub
   1.23%               kernel
   0.66%            libjvm.so
   0.17%         libc-2.31.so
   0.08%                     
   0.04%   libpthread-2.31.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.00%  libjvmcicompiler.so
   0.00%      perf-117590.map
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:29

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

Benchmark                                       (regexp)  Mode  Cnt   Score   Error  Units
StringPatternSplitBenchmark.pattern_split              _  avgt    5  77.774 ± 0.395  us/op
StringPatternSplitBenchmark.pattern_split:·asm         _  avgt          NaN            ---
StringPatternSplitBenchmark.pattern_split             __  avgt    5  92.785 ± 0.709  us/op
StringPatternSplitBenchmark.pattern_split:·asm        __  avgt          NaN            ---
StringPatternSplitBenchmark.string_split               _  avgt    5  69.844 ± 0.231  us/op
StringPatternSplitBenchmark.string_split:·asm          _  avgt          NaN            ---
StringPatternSplitBenchmark.string_split              __  avgt    5  97.957 ± 0.186  us/op
StringPatternSplitBenchmark.string_split:·asm         __  avgt          NaN            ---
