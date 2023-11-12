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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = _)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 97.327 us/op
# Warmup Iteration   2: 79.958 us/op
# Warmup Iteration   3: 79.837 us/op
# Warmup Iteration   4: 79.820 us/op
# Warmup Iteration   5: 79.796 us/op
Iteration   1: 79.823 us/op
                 gc.alloc.rate:      1708.254 MB/sec
                 gc.alloc.rate.norm: 142984.055 B/op
                 gc.count:           7.000 counts
                 gc.time:            13.000 ms

Iteration   2: 79.793 us/op
                 gc.alloc.rate:      1708.888 MB/sec
                 gc.alloc.rate.norm: 142984.055 B/op
                 gc.count:           7.000 counts
                 gc.time:            14.000 ms

Iteration   3: 79.806 us/op
                 gc.alloc.rate:      1708.604 MB/sec
                 gc.alloc.rate.norm: 142984.055 B/op
                 gc.count:           7.000 counts
                 gc.time:            13.000 ms

Iteration   4: 79.828 us/op
                 gc.alloc.rate:      1708.139 MB/sec
                 gc.alloc.rate.norm: 142984.055 B/op
                 gc.count:           7.000 counts
                 gc.time:            14.000 ms

Iteration   5: 79.868 us/op
                 gc.alloc.rate:      1707.265 MB/sec
                 gc.alloc.rate.norm: 142984.055 B/op
                 gc.count:           7.000 counts
                 gc.time:            14.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split":
  79.824 ±(99.9%) 0.110 us/op [Average]
  (min, avg, max) = (79.793, 79.824, 79.868), stdev = 0.029
  CI (99.9%): [79.713, 79.934] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:asm":
PrintAssembly processed: 275600 total address lines.
Perf output processed (skipped 61.427 seconds):
 Column 1: cycles (50831 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 2, compile id 1049 

                    0x00007f48d6da7058:   mov    %r13d,0xac(%rsp)
                    0x00007f48d6da7060:   mov    %rbx,%rbp
                    0x00007f48d6da7063:   mov    %rbp,0x20(%rsp)
                    0x00007f48d6da7068:   movl   $0x1,0xa8(%rsp)
                    0x00007f48d6da7073:   movl   $0x0,0xa4(%rsp)
                    0x00007f48d6da707e:   vpxor  %xmm0,%xmm0,%xmm0
                    0x00007f48d6da7082:   mov    0xf4(%rsp),%eax
                    0x00007f48d6da7089:   mov    0xfc(%rsp),%ebp
                    0x00007f48d6da7090:   mov    $0xffffffff,%esi
                    0x00007f48d6da7095:   mov    $0xffffffff,%r13d
   0.00%            0x00007f48d6da709b:   mov    $0x0,%ebx                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern::split@33 (line 1405)
                                                                              ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.42%            0x00007f48d6da70a0:   mov    %ebx,0xa0(%rsp)
   0.50%            0x00007f48d6da70a7:   cmp    %ebx,%esi
                    0x00007f48d6da70a9:   je     0x00007f48d6dab1cd           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::find@10 (line 745)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                              ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.01%            0x00007f48d6da70af:   test   %ebx,%ebx
                    0x00007f48d6da70b1:   jl     0x00007f48d6dab951           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::find@21 (line 749)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                              ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.07%            0x00007f48d6da70b7:   cmp    %r10d,%ebx
                    0x00007f48d6da70ba:   jg     0x00007f48d6dab653           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::find@34 (line 753)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                              ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.36%            0x00007f48d6da70c0:   test   %r13d,%r13d
                    0x00007f48d6da70c3:   jl     0x00007f48d6da7c9d           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@30 (line 1730)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                              ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.49%            0x00007f48d6da70c9:   mov    %r13d,0x9c(%rsp)
   0.65%            0x00007f48d6da70d1:   test   $0x7fffffff,%ebp
          ╭         0x00007f48d6da70d7:   je     0x00007f48d6da7115
   0.06%  │         0x00007f48d6da70dd:   lea    0x10(%r11),%rsi
   0.33%  │         0x00007f48d6da70e1:   cmp    $0x8,%eax
          │         0x00007f48d6da70e4:   jb     0x00007f48d6da765c
   0.28%  │         0x00007f48d6da70ea:   mov    $0x0,%r13
   0.27%  │         0x00007f48d6da70f1:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.06%  │         0x00007f48d6da70fc:   data16 data16 xchg %ax,%ax
   0.51%  │ ↗       0x00007f48d6da7100:   vmovdqu %ymm1,(%rsi,%r13,4)
   5.15%  │ │       0x00007f48d6da7106:   lea    0x8(%r13),%r13
   0.01%  │ │       0x00007f48d6da710a:   cmp    %rdi,%r13
          │╭│       0x00007f48d6da710d:   jg     0x00007f48d6da71be           ;   {no_reloc}
   0.02%  ││╰       0x00007f48d6da7113:   jmp    0x00007f48d6da7100           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - java.util.regex.Matcher::search@61 (line 1732)
          ││                                                                  ; - java.util.regex.Matcher::find@65 (line 758)
          ││                                                                  ; - java.util.regex.Pattern::split@35 (line 1405)
          ││                                                                  ; - java.util.regex.Pattern::split@4 (line 1481)
          ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.99%  ↘│     ↗  0x00007f48d6da7115:   cmp    %r9d,%ebx
           │     │  0x00007f48d6da7118:   jg     0x00007f48d6da85ad           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - java.util.regex.Pattern$Start::match@10 (line 3781)
           │     │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
           │     │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
           │     │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
           │     │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │     │  0x00007f48d6da711e:   xchg   %ax,%ax
           │     │  0x00007f48d6da7120:   cmp    %ebx,%r10d
           │     │  0x00007f48d6da7123:   jle    0x00007f48d6dab08d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@5 (line 4132)
           │     │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │     │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
           │     │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
           │     │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
           │     │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │     │  0x00007f48d6da7129:   cmp    %ebx,%r8d
           │     │  0x00007f48d6da712c:   jbe    0x00007f48d6dab4e5           ;* unwind (locked if synchronized)
           │     │                                                            ; - jdk.internal.util.Preconditions::checkIndex@-3
           │     │                                                            ; - java.lang.String::checkIndex@5 (line 4828)
           │     │                                                            ; - java.lang.StringLatin1::charAt@3 (line 46)
           │     │                                                            ; - java.lang.String::charAt@12 (line 1555)
           │     │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 4133)
           │     │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │     │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
           │     │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
           │     │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
           │     │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   1.11%   │     │  0x00007f48d6da7132:   mov    0xac(%rsp),%r13d
   0.02%   │     │  0x00007f48d6da713a:   mov    0x4c(%rsp),%esi
   0.06%   │     │  0x00007f48d6da713e:   movzbl 0x10(%rbx,%rsi,8),%ebp       ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - java.lang.StringLatin1::charAt@12 (line 47)
           │     │                                                            ; - java.lang.String::charAt@12 (line 1555)
           │     │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 4133)
           │     │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │     │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
           │     │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
           │     │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
           │     │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.30%   │     │  0x00007f48d6da7143:   mov    %ebx,%r14d
   0.92%   │     │  0x00007f48d6da7146:   inc    %r14d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@34 (line 4133)
           │     │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │     │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
           │     │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
           │     │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
           │     │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.02%   │     │  0x00007f48d6da7149:   cmp    %ebp,%r13d
           │     │  0x00007f48d6da714c:   je     0x00007f48d6da7678           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 4133)
           │     │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │     │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
           │     │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
           │     │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
           │     │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.08%   │     │  0x00007f48d6da7152:   mov    %r14d,%ebp
           │     │  0x00007f48d6da7155:   movabs $0x7f485b35ee38,%r14         ;   {metadata(&apos;java/util/regex/Pattern$LastNode&apos;)}
   0.85%   │     │  0x00007f48d6da715f:   nop
   0.01%   │ ╭   │  0x00007f48d6da7160:   jmp    0x00007f48d6da71b4           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │ │   │                                                            ; - java.util.regex.Pattern$Start::match@31 (line 3786)
           │ │   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
           │ │   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
           │ │   │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
           │ │   │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
           │ │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │ │   │  0x00007f48d6da7165:   data16 data16 nopw 0x0(%rax,%rax,1)
           │ │   │  0x00007f48d6da7170:   data16 data16 xchg %ax,%ax
           │ │   │  0x00007f48d6da7174:   nopl   0x0(%rax,%rax,1)
           │ │   │  0x00007f48d6da717c:   data16 data16 xchg %ax,%ax          ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
           │ │   │                                                            ; - java.util.regex.Pattern$Start::match@34 (line 3786)
           │ │   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
           │ │   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
           │ │   │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
           │ │   │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
           │ │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   1.90%   │ │↗  │  0x00007f48d6da7180:   cmp    %ebp,%r10d
           │ ││  │  0x00007f48d6da7183:   jle    0x00007f48d6dab5b1           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ ││  │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@5 (line 4132)
           │ ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │ ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
           │ ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
           │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   1.24%   │ ││  │  0x00007f48d6da7189:   cmp    %ebp,%r8d
           │ ││  │  0x00007f48d6da718c:   jbe    0x00007f48d6dab54e           ;* unwind (locked if synchronized)
           │ ││  │                                                            ; - jdk.internal.util.Preconditions::checkIndex@-3
           │ ││  │                                                            ; - java.lang.String::checkIndex@5 (line 4828)
           │ ││  │                                                            ; - java.lang.StringLatin1::charAt@3 (line 46)
           │ ││  │                                                            ; - java.lang.String::charAt@12 (line 1555)
           │ ││  │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 4133)
           │ ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │ ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
           │ ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
           │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   1.60%   │ ││  │  0x00007f48d6da7192:   movzbl 0x10(%rbp,%rsi,8),%ecx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │ ││  │                                                            ; - java.lang.StringLatin1::charAt@12 (line 47)
           │ ││  │                                                            ; - java.lang.String::charAt@12 (line 1555)
           │ ││  │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 4133)
           │ ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │ ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
           │ ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
           │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   1.33%   │ ││  │  0x00007f48d6da7197:   mov    %ebp,%edi
   1.62%   │ ││  │  0x00007f48d6da7199:   inc    %edi                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │ ││  │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@34 (line 4133)
           │ ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │ ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
           │ ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
           │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   1.23%   │ ││  │  0x00007f48d6da719b:   nopl   0x0(%rax,%rax,1)
   1.51%   │ ││  │  0x00007f48d6da71a0:   cmp    %ecx,%r13d
           │ ││  │  0x00007f48d6da71a3:   je     0x00007f48d6da71fc           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │ ││  │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 4133)
           │ ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │ ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
           │ ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
           │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   1.65%   │ ││  │  0x00007f48d6da71a9:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rsi=NarrowOop r11=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop }
           │ ││  │                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
           │ ││  │                                                            ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3786)
           │ ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
           │ ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
           │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   2.74%   │ ││  │  0x00007f48d6da71b0:   test   %eax,(%rcx)                  ;   {poll}
   2.80%   │ ││  │  0x00007f48d6da71b2:   mov    %edi,%ebp                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │ ││  │                                                            ; - java.util.regex.Pattern$Start::match@31 (line 3786)
           │ ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
           │ ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
           │ ││  │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
           │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   1.09%   │ ↘│  │  0x00007f48d6da71b4:   cmp    %r9d,%ebp
           │  ╰  │  0x00007f48d6da71b7:   jle    0x00007f48d6da7180
   0.00%   │     │  0x00007f48d6da71b9:   jmp    0x00007f48d6da85ad           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - java.util.regex.Pattern$Start::match@34 (line 3786)
           │     │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
           │     │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
           │     │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
           │     │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.10%   ↘     │  0x00007f48d6da71be:   xchg   %ax,%ax
                 │  0x00007f48d6da71c0:   cmp    %rdx,%r13
               ╭ │  0x00007f48d6da71c3:   jg     0x00007f48d6da71d3
   0.86%       │ │  0x00007f48d6da71c9:   vmovdqu %xmm1,(%rsi,%r13,4)
   0.10%       │ │  0x00007f48d6da71cf:   lea    0x4(%r13),%r13
   0.05%       ↘ │  0x00007f48d6da71d3:   cmp    %rcx,%r13
                ╭│  0x00007f48d6da71d6:   jg     0x00007f48d6da71e6
                ││  0x00007f48d6da71dc:   vmovq  %xmm1,(%rsi,%r13,4)
                ││  0x00007f48d6da71e2:   lea    0x2(%r13),%r13
                ↘│  0x00007f48d6da71e6:   cmp    %r14,%r13
                 ╰  0x00007f48d6da71e9:   jg     0x00007f48d6da7115
                    0x00007f48d6da71ef:   movl   $0xffffffff,(%rsi,%r13,4)
                    0x00007f48d6da71f7:   jmp    0x00007f48d6da7115           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@61 (line 1732)
                                                                              ; - java.util.regex.Matcher::find@65 (line 758)
                                                                              ; - java.util.regex.Pattern::split@35 (line 1405)
....................................................................................................
  33.38%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 2, compile id 1049 

             0x00007f48d6da71e2:   lea    0x2(%r13),%r13
             0x00007f48d6da71e6:   cmp    %r14,%r13
             0x00007f48d6da71e9:   jg     0x00007f48d6da7115
             0x00007f48d6da71ef:   movl   $0xffffffff,(%rsi,%r13,4)
             0x00007f48d6da71f7:   jmp    0x00007f48d6da7115           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::search@61 (line 1732)
                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   4.77%     0x00007f48d6da71fc:   mov    %r14,%rcx
   0.77%     0x00007f48d6da71ff:   nop
   0.08%     0x00007f48d6da7200:   cmp    0xb0(%rsp),%rcx
             0x00007f48d6da7208:   jne    0x00007f48d6dab81c           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 4134)
                                                                       ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                       ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   7.62%     0x00007f48d6da720e:   cmp    $0x2,%eax
             0x00007f48d6da7211:   jb     0x00007f48d6dab059
   0.06%     0x00007f48d6da7217:   mov    %ebx,0x10(%r11)              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern$LastNode::match@32 (line 3760)
                                                                       ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 4134)
                                                                       ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                       ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.05%     0x00007f48d6da721b:   mov    %edi,0x14(%r11)              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern$LastNode::match@42 (line 3761)
                                                                       ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 4134)
                                                                       ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                       ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   2.13%     0x00007f48d6da721f:   mov    %edi,%ebp
   0.08%     0x00007f48d6da7221:   dec    %ebp                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern$BmpCharProperty::match@34 (line 4133)
                                                                       ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                       ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.05%     0x00007f48d6da7223:   mov    %ebp,%r14d
   0.09%     0x00007f48d6da7226:   mov    %edi,%ebp
   0.81%     0x00007f48d6da7228:   mov    %r14d,0x10(%r11)             ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern$Start::match@64 (line 3789)
                                                                       ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   1.04%     0x00007f48d6da722c:   mov    %ebp,0x14(%r11)              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern$Start::match@74 (line 3790)
                                                                       ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.41%     0x00007f48d6da7230:   cmp    %r14d,%ebx
             0x00007f48d6da7233:   jg     0x00007f48d6dab90e           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.util.Preconditions::checkFromToIndex@6 (line 348)
                                                                       ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                       ; - java.lang.String::substring@8 (line 2830)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.08%     0x00007f48d6da7239:   nopl   0x0(%rax)
   0.04%     0x00007f48d6da7240:   cmp    %r8d,%r14d
             0x00007f48d6da7243:   jg     0x00007f48d6dab7ce           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.util.Preconditions::checkFromToIndex@11 (line 348)
                                                                       ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                       ; - java.lang.String::substring@8 (line 2830)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.42%     0x00007f48d6da7249:   mov    0xa8(%rsp),%edi
   0.48%     0x00007f48d6da7250:   inc    %edi                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::search@148 (line 1742)
                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.06%     0x00007f48d6da7252:   test   %ebx,%ebx
             0x00007f48d6da7254:   je     0x00007f48d6da7ea5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@56 (line 1407)
                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.04%     0x00007f48d6da725a:   nopw   0x0(%rax,%rax,1)
   0.45%     0x00007f48d6da7260:   cmp    %ebx,%r14d
             0x00007f48d6da7263:   je     0x00007f48d6da809a           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.StringLatin1::newString@1 (line 749)
                                                                       ; - java.lang.String::substring@41 (line 2835)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.42%     0x00007f48d6da7269:   mov    %r14d,%r10d
   0.07%     0x00007f48d6da726c:   sub    %ebx,%r10d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::substring@24 (line 2834)
                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.05%     0x00007f48d6da726f:   test   %r10d,%r10d
             0x00007f48d6da7272:   jl     0x00007f48d6daabb4
   0.47%     0x00007f48d6da7278:   nopl   0x0(%rax,%rax,1)
   0.39%     0x00007f48d6da7280:   cmp    %r8d,%ebx
             0x00007f48d6da7283:   ja     0x00007f48d6daabb4
   0.06%     0x00007f48d6da7289:   mov    0x1b8(%r15),%r11
   0.04%     0x00007f48d6da7290:   mov    %r10d,%r9d
   0.45%     0x00007f48d6da7293:   lea    0x17(%r9),%r9
   0.38%     0x00007f48d6da7297:   and    $0xfffffffffffffff8,%r9
   0.08%     0x00007f48d6da729b:   mov    %r9,%r13
   0.06%     0x00007f48d6da729e:   add    %r11,%r13
   0.39%     0x00007f48d6da72a1:   cmp    0x1c8(%r15),%r13
             0x00007f48d6da72a8:   ja     0x00007f48d6da77d7
   0.41%     0x00007f48d6da72ae:   mov    %r13,0x1b8(%r15)             ;   {no_reloc}
   0.07%     0x00007f48d6da72b5:   prefetchw 0xc0(%r9,%r11,1)
   0.07%     0x00007f48d6da72be:   prefetchw 0x100(%r9,%r11,1)
   0.42%     0x00007f48d6da72c7:   prefetchw 0x140(%r9,%r11,1)
   0.38%     0x00007f48d6da72d0:   prefetchw 0x180(%r9,%r11,1)
   0.41%     0x00007f48d6da72d9:   movq   $0x1,(%r11)
   2.60%     0x00007f48d6da72e0:   movl   $0x22c0,0x8(%r11)            ;   {metadata({type array byte})}
   0.03%     0x00007f48d6da72e8:   mov    %r10d,0xc(%r11)
   0.06%     0x00007f48d6da72ec:   mov    %r8d,%r9d
   0.04%     0x00007f48d6da72ef:   sub    %ebx,%r9d
   0.82%     0x00007f48d6da72f2:   cmp    %r9d,%r10d
   0.04%     0x00007f48d6da72f5:   mov    %r10d,%r13d
   0.04%     0x00007f48d6da72f8:   cmovg  %r9d,%r13d
   0.05%     0x00007f48d6da72fc:   movslq %r13d,%r9
   0.82%     0x00007f48d6da72ff:   mov    %r10d,%r10d
   0.03%     0x00007f48d6da7302:   cmp    %r9,%r10
   0.04%     0x00007f48d6da7305:   mov    %r10,%r13
   0.04%     0x00007f48d6da7308:   cmova  %r9,%r13
   0.86%     0x00007f48d6da730c:   test   %r13,%r13
             0x00007f48d6da730f:   je     0x00007f48d6da76a5
   0.04%     0x00007f48d6da7315:   mov    %r14d,0x90(%rsp)
   0.05%     0x00007f48d6da731d:   mov    %ebp,0x98(%rsp)
   0.85%     0x00007f48d6da7324:   mov    0x38(%rsp),%r8
   0.06%     0x00007f48d6da7329:   lea    0x10(%r11),%rbp
   0.03%     0x00007f48d6da732d:   lea    0x10(%r8,%rbx,1),%r14
   0.07%     0x00007f48d6da7332:   cmp    $0x20,%r13
             0x00007f48d6da7336:   jl     0x00007f48d6da76b9
             0x00007f48d6da733c:   lea    -0x20(%r13),%r8
             0x00007f48d6da7340:   mov    $0x0,%rbx
             0x00007f48d6da7347:   nopw   0x0(%rax,%rax,1)
          ↗  0x00007f48d6da7350:   vmovdqu (%r14,%rbx,1),%ymm2
          │  0x00007f48d6da7356:   vmovdqu %ymm2,0x0(%rbp,%rbx,1)
          │  0x00007f48d6da735c:   lea    0x20(%rbx),%rbx
          │  0x00007f48d6da7360:   cmp    %r8,%rbx
          ╰  0x00007f48d6da7363:   jle    0x00007f48d6da7350
   0.92%     0x00007f48d6da7365:   lea    -0x10(%r13),%r8
....................................................................................................
  30.72%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 2, compile id 1049 

             0x00007f48d6da745d:   jle    0x00007f48d6da7450
             0x00007f48d6da745f:   nop
          ╭  0x00007f48d6da7460:   jmp    0x00007f48d6da75d4           ;* unwind (locked if synchronized)
          │                                                            ; - java.util.Arrays::copyOfRange@-3
          │                                                            ; - java.lang.StringLatin1::newString@16 (line 752)
          │                                                            ; - java.lang.String::substring@41 (line 2835)
          │                                                            ; - java.lang.String::subSequence@3 (line 2868)
          │                                                            ; - java.util.regex.Pattern::split@93 (line 1412)
          │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.24%  │  0x00007f48d6da7465:   mov    0x1b8(%r15),%r10
   0.20%  │  0x00007f48d6da746c:   lea    0x18(%r10),%r8
   0.42%  │  0x00007f48d6da7470:   cmp    0x1c8(%r15),%r8
          │  0x00007f48d6da7477:   ja     0x00007f48d6da7753
   0.37%  │  0x00007f48d6da747d:   mov    %r8,0x1b8(%r15)
   0.21%  │  0x00007f48d6da7484:   prefetchw 0xd8(%r10)
   0.16%  │  0x00007f48d6da748c:   movq   $0x1,(%r10)
   0.66%  │  0x00007f48d6da7493:   movl   $0xe8d8,0x8(%r10)            ;   {metadata(&apos;java/lang/String&apos;)}
   0.28%  │  0x00007f48d6da749b:   shr    $0x3,%r11
   0.24%  │  0x00007f48d6da749f:   mov    %r11d,0x14(%r10)
   0.32%  │  0x00007f48d6da74a3:   mov    %r12d,0xc(%r10)
   0.74%  │  0x00007f48d6da74a7:   mov    %r12w,0x10(%r10)
   0.18%  │  0x00007f48d6da74ac:   mov    %r12b,0x12(%r10)             ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.StringLatin1::newString@7 (line 752)
          │                                                            ; - java.lang.String::substring@41 (line 2835)
          │                                                            ; - java.lang.String::subSequence@3 (line 2868)
          │                                                            ; - java.util.regex.Pattern::split@93 (line 1412)
          │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.35%  │  0x00007f48d6da74b0:   mov    0x20(%rsp),%rbx
   0.16%  │  0x00007f48d6da74b5:   mov    %r10,0x18(%rsp)
   0.46%  │  0x00007f48d6da74ba:   mov    0x8(%rbx),%r11d              ;* unwind (locked if synchronized)
          │                                                            ; - java.lang.Object::getClass@-3
          │                                                            ; - java.util.Arrays::copyOf@3 (line 3482)
          │                                                            ; - java.util.ArrayList::grow@37 (line 237)
          │                                                            ; - java.util.ArrayList::grow@7 (line 244)
          │                                                            ; - java.util.ArrayList::add@7 (line 483)
          │                                                            ; - java.util.ArrayList::add@20 (line 496)
          │                                                            ; - java.util.regex.Pattern::split@109 (line 1413)
          │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.21%  │  0x00007f48d6da74be:   mov    0xc(%rbx),%r8d               ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.ArrayList::add@2 (line 482)
          │                                                            ; - java.util.ArrayList::add@20 (line 496)
          │                                                            ; - java.util.regex.Pattern::split@109 (line 1413)
          │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.30%  │  0x00007f48d6da74c2:   mov    %r10,%r9
   0.14%  │  0x00007f48d6da74c5:   shr    $0x3,%r9                     ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.ArrayList::add@14 (line 484)
          │                                                            ; - java.util.ArrayList::add@20 (line 496)
          │                                                            ; - java.util.regex.Pattern::split@109 (line 1413)
          │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.47%  │  0x00007f48d6da74c9:   mov    0xa4(%rsp),%ebp
   0.19%  │  0x00007f48d6da74d0:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.regex.Pattern::split@148 (line 1418)
          │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.30%  │  0x00007f48d6da74d2:   cmp    0xa4(%rsp),%r8d
          │  0x00007f48d6da74da:   je     0x00007f48d6da788b
   0.15%  │  0x00007f48d6da74e0:   cmp    $0x1258,%r11d                ;   {metadata(&apos;java/lang/Object&apos;[])}
          │  0x00007f48d6da74e7:   jne    0x00007f48d6dab364
   0.42%  │  0x00007f48d6da74ed:   cmp    0xa4(%rsp),%r8d
          │  0x00007f48d6da74f5:   jbe    0x00007f48d6dab49a
   0.14%  │  0x00007f48d6da74fb:   nopl   0x0(%rax,%rax,1)
   0.31%  │  0x00007f48d6da7500:   cmpb   $0x0,0x40(%r15)
   0.13%  │  0x00007f48d6da7505:   jne    0x00007f48d6da76e5
   0.38%  │  0x00007f48d6da750b:   mov    %edi,%r8d
   0.13%  │  0x00007f48d6da750e:   mov    0xa4(%rsp),%r14d
   0.29%  │  0x00007f48d6da7516:   mov    %r9d,0x10(%rbx,%r14,4)
   1.30%  │  0x00007f48d6da751b:   lea    0x10(%rbx,%r14,4),%rsi
   0.23%  │  0x00007f48d6da7520:   xor    %r10,%rsi
   0.08%  │  0x00007f48d6da7523:   test   $0xffffffffffe00000,%rsi
          │  0x00007f48d6da752a:   je     0x00007f48d6da7728
   0.01%  │  0x00007f48d6da7530:   test   %r10,%r10
          │  0x00007f48d6da7533:   je     0x00007f48d6da7730
   0.00%  │  0x00007f48d6da7539:   mov    0xd0(%rsp),%rsi
          │  0x00007f48d6da7541:   lea    0x10(%rbx,%r14,4),%r11
          │  0x00007f48d6da7546:   shr    $0x9,%r11
   0.00%  │  0x00007f48d6da754a:   cmpb   $0x2,(%r11,%rsi,1)
   0.01%  │  0x00007f48d6da754f:   jne    0x00007f48d6da7738
          │  0x00007f48d6da7555:   mov    %r8d,%r10d                   ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.ArrayList::add@14 (line 484)
          │                                                            ; - java.util.ArrayList::add@20 (line 496)
          │                                                            ; - java.util.regex.Pattern::split@109 (line 1413)
          │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.43%  │  0x00007f48d6da7558:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {rbx=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop }
          │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) java.util.ArrayList::add@15 (line 485)
          │                                                            ; - java.util.ArrayList::add@20 (line 496)
          │                                                            ; - java.util.regex.Pattern::split@109 (line 1413)
          │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.04%  │  0x00007f48d6da755f:   test   %eax,(%rsi)                  ;   {poll}
   0.20%  │  0x00007f48d6da7561:   mov    0x90(%rsp),%esi
   0.42%  │  0x00007f48d6da7568:   mov    %rbx,0x20(%rsp)
   0.45%  │  0x00007f48d6da756d:   mov    0x98(%rsp),%r13d
   0.03%  │  0x00007f48d6da7575:   mov    %r10d,0xa8(%rsp)
   0.11%  │  0x00007f48d6da757d:   mov    0x98(%rsp),%ebx
   0.36%  │  0x00007f48d6da7584:   mov    %ebp,0xa4(%rsp)
   0.47%  │  0x00007f48d6da758b:   mov    0xb8(%rsp),%rdi
   0.03%  │  0x00007f48d6da7593:   mov    0xc0(%rsp),%rcx
   0.19%  │  0x00007f48d6da759b:   mov    0xe8(%rsp),%r14
   0.39%  │  0x00007f48d6da75a3:   mov    0xe0(%rsp),%r9d
   0.47%  │  0x00007f48d6da75ab:   mov    0xcc(%rsp),%r8d
   0.01%  │  0x00007f48d6da75b3:   mov    0xe4(%rsp),%r10d
   0.11%  │  0x00007f48d6da75bb:   vpcmpeqd %ymm1,%ymm1,%ymm1
   0.36%  │  0x00007f48d6da75bf:   mov    0x50(%rsp),%r11
   0.47%  │  0x00007f48d6da75c4:   vpxor  %xmm0,%xmm0,%xmm0
   0.01%  │  0x00007f48d6da75c8:   mov    0xfc(%rsp),%ebp
   0.14%  │  0x00007f48d6da75cf:   jmp    0x00007f48d6da70a0           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.regex.Pattern::split@33 (line 1405)
          │                                                            ; - java.util.regex.Pattern::split@4 (line 1481)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
          ↘  0x00007f48d6da75d4:   lea    -0x10(%r8),%r9
             0x00007f48d6da75d8:   nopl   0x0(%rax,%rax,1)
             0x00007f48d6da75e0:   cmp    %r9,%rbx
             0x00007f48d6da75e3:   jg     0x00007f48d6da76d9
             0x00007f48d6da75e9:   vmovdqu %xmm0,(%r10,%rbx,1)
             0x00007f48d6da75ef:   lea    0x10(%rbx),%r9
             0x00007f48d6da75f3:   lea    -0x8(%r8),%rbx
....................................................................................................
  14.88%  <total for region 3>

....[Hottest Regions]...............................................................................
  33.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 2, compile id 1049 
  30.72%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 2, compile id 1049 
  14.88%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 2, compile id 1049 
   7.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 2, compile id 1049 
   4.78%        runtime stub  StubRoutines::checkcast_arraycopy 
   1.98%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 2, compile id 1049 
   1.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 2, compile id 1049 
   0.68%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 2, compile id 1049 
   0.51%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 2, compile id 1049 
   0.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 2, compile id 1049 
   0.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 2, compile id 1049 
   0.29%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 2, compile id 1049 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   2.59%  <...other 574 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 2, compile id 1049 
   4.79%        runtime stub  StubRoutines::checkcast_arraycopy 
   1.97%              kernel  [unknown] 
   0.15%                      <unknown> 
   0.05%           libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.04%        libc-2.31.so  __memset_avx2_erms 
   0.04%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  G1BarrierSet::invalidate 
   0.02%      jvmci, level 4  java.lang.String::length, version 2, compile id 568 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  MemAllocator::mem_allocate_inside_tlab_slow 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.01%           libjvm.so  G1FromCardCache::clear 
   0.01%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  HeapRegion::clear_cardtable 
   0.61%  <...other 172 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.13%      jvmci, level 4
   4.79%        runtime stub
   1.97%              kernel
   0.64%           libjvm.so
   0.18%        libc-2.31.so
   0.15%                    
   0.04%  libpthread-2.31.so
   0.03%          ld-2.31.so
   0.03%         interpreter
   0.02%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%    perf-2151516.map
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.alloc.rate":
  1708.230 ±(99.9%) 2.369 MB/sec [Average]
  (min, avg, max) = (1707.265, 1708.230, 1708.888), stdev = 0.615
  CI (99.9%): [1705.861, 1710.598] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.alloc.rate.norm":
  142984.055 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (142984.055, 142984.055, 142984.055), stdev = 0.001
  CI (99.9%): [142984.055, 142984.056] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.count":
  35.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (7.000, 7.000, 7.000), stdev = 0.001
  CI (99.9%): [35.000, 35.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.time":
  68.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (13.000, 13.600, 14.000), stdev = 0.548
  CI (99.9%): [68.000, 68.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = __)

# Run progress: 25.00% complete, ETA 00:05:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 129.073 us/op
# Warmup Iteration   2: 95.504 us/op
# Warmup Iteration   3: 95.362 us/op
# Warmup Iteration   4: 95.270 us/op
# Warmup Iteration   5: 95.504 us/op
Iteration   1: 95.232 us/op
                 gc.alloc.rate:      1431.840 MB/sec
                 gc.alloc.rate.norm: 142984.066 B/op
                 gc.count:           6.000 counts
                 gc.time:            11.000 ms

Iteration   2: 95.474 us/op
                 gc.alloc.rate:      1428.200 MB/sec
                 gc.alloc.rate.norm: 142984.067 B/op
                 gc.count:           6.000 counts
                 gc.time:            12.000 ms

Iteration   3: 95.293 us/op
                 gc.alloc.rate:      1430.924 MB/sec
                 gc.alloc.rate.norm: 142984.066 B/op
                 gc.count:           6.000 counts
                 gc.time:            11.000 ms

Iteration   4: 95.258 us/op
                 gc.alloc.rate:      1431.444 MB/sec
                 gc.alloc.rate.norm: 142984.066 B/op
                 gc.count:           5.000 counts
                 gc.time:            10.000 ms

Iteration   5: 95.433 us/op
                 gc.alloc.rate:      1428.820 MB/sec
                 gc.alloc.rate.norm: 142984.066 B/op
                 gc.count:           6.000 counts
                 gc.time:            12.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split":
  95.338 ±(99.9%) 0.418 us/op [Average]
  (min, avg, max) = (95.232, 95.338, 95.474), stdev = 0.109
  CI (99.9%): [94.920, 95.756] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:asm":
PrintAssembly processed: 285396 total address lines.
Perf output processed (skipped 61.456 seconds):
 Column 1: cycles (50796 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 6, compile id 1077 

                             0x00007f963adc19dd:   mov    %rdi,%rax
                             0x00007f963adc19e0:   mov    %rax,0x18(%rsp)
                             0x00007f963adc19e5:   mov    $0x0,%ebx
                             0x00007f963adc19ea:   movl   $0x0,0xac(%rsp)
                             0x00007f963adc19f5:   mov    0xd0(%rsp),%rdi
                             0x00007f963adc19fd:   mov    0xd8(%rsp),%rax
                             0x00007f963adc1a05:   mov    $0x1,%r14d
                             0x00007f963adc1a0b:   mov    $0xffffffff,%r10d
                             0x00007f963adc1a11:   mov    $0xffffffff,%ecx
                             0x00007f963adc1a16:   mov    0xe0(%rsp),%rdx
   0.00%                     0x00007f963adc1a1e:   mov    0xe8(%rsp),%rsi
                             0x00007f963adc1a26:   data16 nopw 0x0(%rax,%rax,1)
   0.65%                     0x00007f963adc1a30:   mov    %ebx,0xa8(%rsp)
   0.05%                     0x00007f963adc1a37:   mov    %r14d,%r8d
   0.12%                     0x00007f963adc1a3a:   inc    %r8d
   0.01%                     0x00007f963adc1a3d:   mov    %r8d,0xa4(%rsp)
   0.63%                     0x00007f963adc1a45:   mov    %r14d,0xa0(%rsp)
   0.06%                     0x00007f963adc1a4d:   mov    %r8d,%r14d
   0.15%                     0x00007f963adc1a50:   dec    %r14d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - java.util.regex.Matcher::search@148 (line 1742)
                                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.01%                     0x00007f963adc1a53:   mov    %r14d,0x9c(%rsp)
   0.64%                     0x00007f963adc1a5b:   nopl   0x0(%rax,%rax,1)
   0.06%                     0x00007f963adc1a60:   cmp    %ebx,%ecx
                             0x00007f963adc1a62:   je     0x00007f963adc601f           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - java.util.regex.Matcher::find@10 (line 745)
                                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.13%                     0x00007f963adc1a68:   test   %ebx,%ebx
                             0x00007f963adc1a6a:   jl     0x00007f963adc5d51           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - java.util.regex.Matcher::find@21 (line 749)
                                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.01%                     0x00007f963adc1a70:   cmp    %r11d,%ebx                   ;   {no_reloc}
                             0x00007f963adc1a73:   jg     0x00007f963adc5dd7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - java.util.regex.Matcher::find@34 (line 753)
                                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.63%                     0x00007f963adc1a79:   nopl   0x0(%rax)
   0.07%                     0x00007f963adc1a80:   test   %r10d,%r10d
                             0x00007f963adc1a83:   jl     0x00007f963adc26dd           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - java.util.regex.Matcher::search@30 (line 1730)
                                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.11%                     0x00007f963adc1a89:   mov    %r10d,0x98(%rsp)
   0.02%                     0x00007f963adc1a91:   test   $0x7fffffff,%ebp
          ╭                  0x00007f963adc1a97:   je     0x00007f963adc1ad5
   0.60%  │                  0x00007f963adc1a9d:   lea    0x10(%r9),%rcx
   0.04%  │                  0x00007f963adc1aa1:   cmp    $0x8,%r13d
          │                  0x00007f963adc1aa5:   jb     0x00007f963adc20bc
   0.14%  │                  0x00007f963adc1aab:   mov    $0x0,%r10
   0.02%  │                  0x00007f963adc1ab2:   data16 nopw 0x0(%rax,%rax,1)
   0.55%  │                  0x00007f963adc1abc:   data16 data16 xchg %ax,%ax
   0.10%  │ ↗                0x00007f963adc1ac0:   vmovdqu %ymm1,(%rcx,%r10,4)
   1.26%  │ │                0x00007f963adc1ac6:   lea    0x8(%r10),%r10
   0.01%  │ │                0x00007f963adc1aca:   cmp    %rdi,%r10
          │╭│                0x00007f963adc1acd:   jg     0x00007f963adc1c0c
   0.55%  ││╰                0x00007f963adc1ad3:   jmp    0x00007f963adc1ac0           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                           ; - java.util.regex.Matcher::search@61 (line 1732)
          ││                                                                           ; - java.util.regex.Matcher::find@65 (line 758)
          ││                                                                           ; - java.util.regex.Pattern::split@35 (line 1405)
          ││                                                                           ; - java.util.regex.Pattern::split@4 (line 1481)
          ││                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.79%  ↘│            ↗↗   0x00007f963adc1ad5:   data16 data16 nopw 0x0(%rax,%rax,1)
           │            ││   0x00007f963adc1ae0:   cmp    0xc8(%rsp),%ebx
           │            ││   0x00007f963adc1ae7:   jg     0x00007f963adc5a6d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
           │            ││                                                             ; - java.util.regex.Pattern$Start::match@10 (line 3781)
           │            ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │            ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │            ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │            ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │            ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.04%   │            ││   0x00007f963adc1aed:   mov    $0x0,%ecx
           │            ││   0x00007f963adc1af2:   mov    0xbc(%rsp),%r10d
   0.79%   │            ││   0x00007f963adc1afa:   mov    0x54(%rsp),%r14d
   0.02%   │            ││   0x00007f963adc1aff:   mov    0x20(%rsp),%rbp
   0.05%   │ ╭          ││   0x00007f963adc1b04:   jmp    0x00007f963adc1b4d           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │ │          ││                                                             ; - java.util.regex.Pattern$Slice::match@14 (line 4260)
           │ │          ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │ │          ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │ │          ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │ │          ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │ │          ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │ │          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │ │          ││   0x00007f963adc1b09:   data16 data16 nopw 0x0(%rax,%rax,1)
           │ │          ││   0x00007f963adc1b14:   data16 data16 xchg %ax,%ax
           │ │          ││   0x00007f963adc1b18:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ │          ││                                                             ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
           │ │          ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │ │          ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │ │          ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │ │          ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │ │          ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │ │          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.87%   │ │ ↗        ││   0x00007f963adc1b20:   mov    %ecx,%r8d
           │ │ │        ││   0x00007f963adc1b23:   add    %ebx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │ │ │        ││                                                             ; - java.util.regex.Pattern$Slice::match@24 (line 4261)
           │ │ │        ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │ │ │        ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │ │ │        ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │ │ │        ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │ │ │        ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │ │ │        ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │ │ │        ││   0x00007f963adc1b26:   cmp    %r8d,%r11d
           │ │ │        ││   0x00007f963adc1b29:   jle    0x00007f963adc572b           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │ │ │        ││                                                             ; - java.util.regex.Pattern$Slice::match@29 (line 4261)
           │ │ │        ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │ │ │        ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │ │ │        ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │ │ │        ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │ │ │        ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │ │ │        ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │ │ │        ││   0x00007f963adc1b2f:   cmp    %r8d,%r11d
           │ │ │        ││   0x00007f963adc1b32:   jbe    0x00007f963adc5f7e           ;* unwind (locked if synchronized)
           │ │ │        ││                                                             ; - jdk.internal.util.Preconditions::checkIndex@-3
           │ │ │        ││                                                             ; - java.lang.String::checkIndex@5 (line 4828)
           │ │ │        ││                                                             ; - java.lang.StringLatin1::charAt@3 (line 46)
           │ │ │        ││                                                             ; - java.lang.String::charAt@12 (line 1555)
           │ │ │        ││                                                             ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
           │ │ │        ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │ │ │        ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │ │ │        ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │ │ │        ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │ │ │        ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │ │ │        ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.83%   │ │ │        ││   0x00007f963adc1b38:   movzbl 0x10(%r8,%r14,8),%r8d        ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │ │ │        ││                                                             ; - java.lang.StringLatin1::charAt@8 (line 47)
           │ │ │        ││                                                             ; - java.lang.String::charAt@12 (line 1555)
           │ │ │        ││                                                             ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
           │ │ │        ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │ │ │        ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │ │ │        ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │ │ │        ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │ │ │        ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │ │ │        ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.06%   │ │ │        ││   0x00007f963adc1b3e:   xchg   %ax,%ax
           │ │ │        ││   0x00007f963adc1b40:   cmp    0x10(%rbp,%rcx,4),%r8d
           │ │╭│        ││   0x00007f963adc1b45:   jne    0x00007f963adc1b57           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │ │││        ││                                                             ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
           │ │││        ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │ │││        ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │ │││        ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │ │││        ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │ │││        ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │ │││        ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │ │││        ││   0x00007f963adc1b4b:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │││        ││                                                             ; - java.util.regex.Pattern$Slice::match@59 (line 4260)
           │ │││        ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │ │││        ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │ │││        ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │ │││        ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │ │││        ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │ │││        ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │ ↘││        ││   0x00007f963adc1b4d:   cmp    %ecx,%r10d
           │  │╰        ││   0x00007f963adc1b50:   ja     0x00007f963adc1b20
           │  │         ││   0x00007f963adc1b52:   jmp    0x00007f963adc20c8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │  │         ││                                                             ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
           │  │         ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │  │         ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │  │         ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │  │         ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │  │         ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │  │         ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.86%   │  ↘         ││   0x00007f963adc1b57:   nopw   0x0(%rax,%rax,1)
           │            ││   0x00007f963adc1b60:   cmpl   $0x7fffffff,0xc8(%rsp)
   0.01%   │            ││   0x00007f963adc1b6b:   je     0x00007f963adc5f50           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │            ││                                                             ; - java.util.regex.Pattern$Start::match@31 (line 3786)
           │            ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │            ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │            ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │            ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │            ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │            ││                                                             ;   {no_reloc}
   0.00%   │            ││   0x00007f963adc1b71:   mov    %ebx,%ecx
   0.78%   │            ││   0x00007f963adc1b73:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │            ││                                                             ; - java.util.regex.Pattern$Start::match@77 (line 3786)
           │            ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │            ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │            ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │            ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │            ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │            ││   0x00007f963adc1b75:   mov    %ecx,%r8d
           │            ││   0x00007f963adc1b78:   mov    0xc8(%rsp),%ecx
           │            ││   0x00007f963adc1b7f:   nop
   0.83%   │    ╭       ││   0x00007f963adc1b80:   jmp    0x00007f963adc1c02           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │    │       ││                                                             ; - java.util.regex.Pattern$Start::match@31 (line 3786)
           │    │       ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │    │       ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │    │       ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │    │       ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │    │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │    │       ││   0x00007f963adc1b85:   data16 data16 nopw 0x0(%rax,%rax,1)
           │    │       ││   0x00007f963adc1b90:   data16 data16 xchg %ax,%ax
           │    │       ││   0x00007f963adc1b94:   nopl   0x0(%rax,%rax,1)
           │    │       ││   0x00007f963adc1b9c:   data16 data16 xchg %ax,%ax          ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
           │    │       ││                                                             ; - java.util.regex.Pattern$Start::match@34 (line 3786)
           │    │       ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │    │       ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │    │       ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │    │       ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │    │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   4.19%   │    │    ↗  ││   0x00007f963adc1ba0:   mov    $0x0,%edi
   0.00%   │    │╭   │  ││   0x00007f963adc1ba5:   jmp    0x00007f963adc1bec           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │    ││   │  ││                                                             ; - java.util.regex.Pattern$Slice::match@14 (line 4260)
           │    ││   │  ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │    ││   │  ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │    ││   │  ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │    ││   │  ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │    ││   │  ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │    ││   │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │    ││   │  ││   0x00007f963adc1baa:   data16 data16 nopw 0x0(%rax,%rax,1)
           │    ││   │  ││   0x00007f963adc1bb5:   data16 data16 xchg %ax,%ax
           │    ││   │  ││   0x00007f963adc1bb9:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │    ││   │  ││                                                             ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
           │    ││   │  ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │    ││   │  ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │    ││   │  ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │    ││   │  ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │    ││   │  ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │    ││   │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   5.39%   │    ││ ↗ │  ││   0x00007f963adc1bc0:   mov    %edi,%edx
           │    ││ │ │  ││   0x00007f963adc1bc2:   add    %r8d,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │    ││ │ │  ││                                                             ; - java.util.regex.Pattern$Slice::match@24 (line 4261)
           │    ││ │ │  ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │    ││ │ │  ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │    ││ │ │  ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │    ││ │ │  ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │    ││ │ │  ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │    ││ │ │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.24%   │    ││ │ │  ││   0x00007f963adc1bc5:   cmp    %edx,%r11d
           │    ││ │ │  ││   0x00007f963adc1bc8:   jle    0x00007f963adc62a5           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │    ││ │ │  ││                                                             ; - java.util.regex.Pattern$Slice::match@29 (line 4261)
           │    ││ │ │  ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │    ││ │ │  ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │    ││ │ │  ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │    ││ │ │  ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │    ││ │ │  ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │    ││ │ │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.49%   │    ││ │ │  ││   0x00007f963adc1bce:   cmp    %edx,%r11d
           │    ││ │ │  ││   0x00007f963adc1bd1:   jbe    0x00007f963adc63d9           ;* unwind (locked if synchronized)
           │    ││ │ │  ││                                                             ; - jdk.internal.util.Preconditions::checkIndex@-3
           │    ││ │ │  ││                                                             ; - java.lang.String::checkIndex@5 (line 4828)
           │    ││ │ │  ││                                                             ; - java.lang.StringLatin1::charAt@3 (line 46)
           │    ││ │ │  ││                                                             ; - java.lang.String::charAt@12 (line 1555)
           │    ││ │ │  ││                                                             ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
           │    ││ │ │  ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │    ││ │ │  ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │    ││ │ │  ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │    ││ │ │  ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │    ││ │ │  ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │    ││ │ │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   4.97%   │    ││ │ │  ││   0x00007f963adc1bd7:   movzbl 0x10(%rdx,%r14,8),%edx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │    ││ │ │  ││                                                             ; - java.lang.StringLatin1::charAt@8 (line 47)
           │    ││ │ │  ││                                                             ; - java.lang.String::charAt@12 (line 1555)
           │    ││ │ │  ││                                                             ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
           │    ││ │ │  ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │    ││ │ │  ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │    ││ │ │  ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │    ││ │ │  ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │    ││ │ │  ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │    ││ │ │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   2.64%   │    ││ │ │  ││   0x00007f963adc1bdd:   data16 xchg %ax,%ax
   0.19%   │    ││ │ │  ││   0x00007f963adc1be0:   cmp    0x10(%rbp,%rdi,4),%edx
           │    ││╭│ │  ││   0x00007f963adc1be4:   jne    0x00007f963adc1bf6           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │    ││││ │  ││                                                             ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
           │    ││││ │  ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │    ││││ │  ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │    ││││ │  ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │    ││││ │  ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │    ││││ │  ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │    ││││ │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   2.63%   │    ││││ │  ││   0x00007f963adc1bea:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │    ││││ │  ││                                                             ; - java.util.regex.Pattern$Slice::match@59 (line 4260)
           │    ││││ │  ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │    ││││ │  ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │    ││││ │  ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │    ││││ │  ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │    ││││ │  ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │    ││││ │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   8.00%   │    │↘││ │  ││   0x00007f963adc1bec:   cmp    %edi,%r10d
           │    │ │╰ │  ││   0x00007f963adc1bef:   ja     0x00007f963adc1bc0
   0.15%   │    │ │ ╭│  ││   0x00007f963adc1bf1:   jmp    0x00007f963adc1c49           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │    │ │ ││  ││                                                             ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
           │    │ │ ││  ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │    │ │ ││  ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │    │ │ ││  ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │    │ │ ││  ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │    │ │ ││  ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │    │ │ ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   4.39%   │    │ ↘ ││  ││   0x00007f963adc1bf6:   mov    0x458(%r15),%rdx             ; ImmutableOopMap {rbp=Oop r9=Oop r14=NarrowOop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [84]=NarrowOop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [120]=Oop }
           │    │   ││  ││                                                             ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
           │    │   ││  ││                                                             ; - (reexecute) java.util.regex.Pattern$Slice::match@57 (line 4266)
           │    │   ││  ││                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
           │    │   ││  ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │    │   ││  ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │    │   ││  ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │    │   ││  ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │    │   ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   1.78%   │    │   ││  ││   0x00007f963adc1bfd:   test   %eax,(%rdx)                  ;   {poll}
   1.39%   │    │   ││  ││   0x00007f963adc1bff:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │    │   ││  ││                                                             ; - java.util.regex.Pattern$Start::match@77 (line 3786)
           │    │   ││  ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │    │   ││  ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │    │   ││  ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │    │   ││  ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │    │   ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
           │    ↘   ││  ││   0x00007f963adc1c02:   cmp    %ecx,%r8d
           │        │╰  ││   0x00007f963adc1c05:   jle    0x00007f963adc1ba0
   0.00%   │        │   ││   0x00007f963adc1c07:   jmp    0x00007f963adc2f88           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
           │        │   ││                                                             ; - java.util.regex.Pattern$Start::match@34 (line 3786)
           │        │   ││                                                             ; - java.util.regex.Matcher::search@121 (line 1738)
           │        │   ││                                                             ; - java.util.regex.Matcher::find@65 (line 758)
           │        │   ││                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
           │        │   ││                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
           │        │   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.45%   ↘        │   ││   0x00007f963adc1c0c:   cmp    %rax,%r10
                    │ ╭ ││   0x00007f963adc1c0f:   jg     0x00007f963adc1c1f
                    │ │ ││   0x00007f963adc1c15:   vmovdqu %xmm1,(%rcx,%r10,4)
   0.38%            │ │ ││   0x00007f963adc1c1b:   lea    0x4(%r10),%r10
   0.01%            │ ↘ ││   0x00007f963adc1c1f:   nop
   0.53%            │   ││   0x00007f963adc1c20:   cmp    %rdx,%r10
                    │  ╭││   0x00007f963adc1c23:   jg     0x00007f963adc1c33
                    │  │││   0x00007f963adc1c29:   vmovq  %xmm1,(%rcx,%r10,4)
                    │  │││   0x00007f963adc1c2f:   lea    0x2(%r10),%r10
   0.00%            │  ↘││   0x00007f963adc1c33:   cmp    %rsi,%r10
                    │   ╰│   0x00007f963adc1c36:   jg     0x00007f963adc1ad5
                    │    │   0x00007f963adc1c3c:   movl   $0xffffffff,(%rcx,%r10,4)    ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                    │    │                                                             ; - java.util.regex.Matcher::search@61 (line 1732)
                    │    │                                                             ; - java.util.regex.Matcher::find@65 (line 758)
                    │    │                                                             ; - java.util.regex.Pattern::split@35 (line 1405)
                    │    │                                                             ; - java.util.regex.Pattern::split@4 (line 1481)
                    │    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
                    │    ╰   0x00007f963adc1c44:   jmp    0x00007f963adc1ad5
                    ↘        0x00007f963adc1c49:   movabs $0x7f95bf35ee38,%rdi         ;   {metadata(&apos;java/util/regex/Pattern$LastNode&apos;)}
   0.88%                     0x00007f963adc1c53:   nopw   0x0(%rax,%rax,1)
                             0x00007f963adc1c5c:   data16 data16 xchg %ax,%ax
   0.17%                     0x00007f963adc1c60:   cmp    0xb0(%rsp),%rdi
                             0x00007f963adc1c68:   jne    0x00007f963adc5ff1           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
                                                                                       ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                                       ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.01%                     0x00007f963adc1c6e:   cmp    $0x2,%r13d
                             0x00007f963adc1c72:   jb     0x00007f963adc642d
   0.62%                     0x00007f963adc1c78:   mov    %ebx,0x10(%r9)               ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - java.util.regex.Pattern$LastNode::match@32 (line 3760)
                                                                                       ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
                                                                                       ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                                       ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.01%                     0x00007f963adc1c7c:   mov    %r8d,%edx
   0.14%                     0x00007f963adc1c7f:   add    %r10d,%edx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - java.util.regex.Pattern$Slice::match@73 (line 4268)
                                                                                       ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                                       ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
                             0x00007f963adc1c82:   mov    %edx,0x14(%r9)               ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - java.util.regex.Pattern$LastNode::match@42 (line 3761)
                                                                                       ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
                                                                                       ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                                       ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   1.12%                     0x00007f963adc1c86:   mov    %r8d,0x10(%r9)               ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - java.util.regex.Pattern$Start::match@64 (line 3789)
                                                                                       ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   2.14%                     0x00007f963adc1c8a:   mov    %edx,0x14(%r9)               ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - java.util.regex.Pattern$Start::match@74 (line 3790)
                                                                                       ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                                       ; - java.util.regex.Matcher::find@65 (line 758)
                                                                                       ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.17%                     0x00007f963adc1c8e:   test   %ebx,%ebx
                             0x00007f963adc1c90:   je     0x00007f963adc2a09           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - java.util.regex.Pattern::split@56 (line 1407)
                                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
                             0x00007f963adc1c96:   test   %r8d,%r8d
                             0x00007f963adc1c99:   jl     0x00007f963adc5e73           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - java.util.regex.Matcher::hasMatch@4 (line 1850)
                                                                                       ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                                       ; - java.util.regex.Matcher::start@1 (line 466)
                                                                                       ; - java.util.regex.Pattern::split@90 (line 1412)
                                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.07%                     0x00007f963adc1c9f:   nop
   0.63%                     0x00007f963adc1ca0:   cmp    %r8d,%ebx
                             0x00007f963adc1ca3:   jg     0x00007f963adc6217           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - jdk.internal.util.Preconditions::checkFromToIndex@6 (line 348)
                                                                                       ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                                       ; - java.lang.String::substring@8 (line 2830)
                                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
                                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.10%                     0x00007f963adc1ca9:   cmp    %r11d,%r8d
                             0x00007f963adc1cac:   jg     0x00007f963adc5e4a           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - jdk.internal.util.Preconditions::checkFromToIndex@11 (line 348)
                                                                                       ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                                       ; - java.lang.String::substring@8 (line 2830)
                                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
                                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.00%                     0x00007f963adc1cb2:   mov    %edx,0x94(%rsp)
   0.08%                     0x00007f963adc1cb9:   mov    %r8d,%edx
   0.59%                     0x00007f963adc1cbc:   mov    0x94(%rsp),%r8d
   0.24%                     0x00007f963adc1cc4:   cmp    %ebx,%edx
                             0x00007f963adc1cc6:   je     0x00007f963adc2a9e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - java.lang.StringLatin1::newString@1 (line 749)
                                                                                       ; - java.lang.String::substring@41 (line 2835)
                                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
                                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
                             0x00007f963adc1ccc:   mov    %edx,%r14d
   0.08%                     0x00007f963adc1ccf:   sub    %ebx,%r14d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - java.lang.String::substring@24 (line 2834)
                                                                                       ; - java.lang.String::subSequence@3 (line 2868)
                                                                                       ; - java.util.regex.Pattern::split@93 (line 1412)
                                                                                       ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.45%                     0x00007f963adc1cd2:   test   %r14d,%r14d
                             0x00007f963adc1cd5:   jl     0x00007f963adc5560
   0.29%                     0x00007f963adc1cdb:   nopl   0x0(%rax,%rax,1)
                             0x00007f963adc1ce0:   cmp    %r11d,%ebx
                             0x00007f963adc1ce3:   ja     0x00007f963adc5560
   0.06%                     0x00007f963adc1ce9:   mov    0x1b8(%r15),%r10
   0.45%                     0x00007f963adc1cf0:   mov    %r14d,%r9d
   0.28%                     0x00007f963adc1cf3:   lea    0x17(%r9),%r9
                             0x00007f963adc1cf7:   and    $0xfffffffffffffff8,%r9
   0.08%                     0x00007f963adc1cfb:   mov    %r9,%r13
   0.45%                     0x00007f963adc1cfe:   add    %r10,%r13
   0.27%                     0x00007f963adc1d01:   cmp    0x1c8(%r15),%r13
                             0x00007f963adc1d08:   ja     0x00007f963adc2214
   0.04%                     0x00007f963adc1d0e:   mov    %r13,0x1b8(%r15)
   0.20%                     0x00007f963adc1d15:   prefetchw 0xc0(%r9,%r10,1)
   0.49%                     0x00007f963adc1d1e:   prefetchw 0x100(%r9,%r10,1)
   0.28%                     0x00007f963adc1d27:   prefetchw 0x140(%r9,%r10,1)
   0.02%                     0x00007f963adc1d30:   prefetchw 0x180(%r9,%r10,1)
   0.35%                     0x00007f963adc1d39:   movq   $0x1,(%r10)
   0.41%                     0x00007f963adc1d40:   movl   $0x22c0,0x8(%r10)            ;   {metadata({type array byte})}
   1.28%                     0x00007f963adc1d48:   mov    %r14d,0xc(%r10)
   0.01%                     0x00007f963adc1d4c:   mov    %r11d,%r9d
   0.11%                     0x00007f963adc1d4f:   sub    %ebx,%r9d
   0.25%                     0x00007f963adc1d52:   cmp    %r9d,%r14d
   0.45%                     0x00007f963adc1d55:   mov    %r14d,%r13d
   0.01%                     0x00007f963adc1d58:   cmovg  %r9d,%r13d
   0.11%                     0x00007f963adc1d5c:   movslq %r13d,%r9
   0.25%                     0x00007f963adc1d5f:   mov    %r14d,%r13d
   0.48%                     0x00007f963adc1d62:   cmp    %r9,%r13
   0.00%                     0x00007f963adc1d65:   mov    %r13,%r14
   0.13%                     0x00007f963adc1d68:   cmova  %r9,%r14
   0.70%                     0x00007f963adc1d6c:   test   %r14,%r14
                             0x00007f963adc1d6f:   je     0x00007f963adc1db8
   0.01%                     0x00007f963adc1d75:   mov    0x30(%rsp),%r11
   0.13%                     0x00007f963adc1d7a:   lea    0x10(%r10),%rcx
   0.17%                     0x00007f963adc1d7e:   lea    0x10(%r11,%rbx,1),%rdi
   0.45%                     0x00007f963adc1d83:   cmp    $0x20,%r14
                             0x00007f963adc1d87:   jl     0x00007f963adc2125
                             0x00007f963adc1d8d:   lea    -0x20(%r14),%r11
                             0x00007f963adc1d91:   mov    $0x0,%rbx
                             0x00007f963adc1d98:   nopl   0x0(%rax,%rax,1)
                          ↗  0x00007f963adc1da0:   vmovdqu (%rdi,%rbx,1),%ymm2
                          │  0x00007f963adc1da5:   vmovdqu %ymm2,(%rcx,%rbx,1)
                          │  0x00007f963adc1daa:   lea    0x20(%rbx),%rbx
                          │  0x00007f963adc1dae:   cmp    %r11,%rbx
                          ╰  0x00007f963adc1db1:   jle    0x00007f963adc1da0
                             0x00007f963adc1db3:   jmp    0x00007f963adc1f76
....................................................................................................
  66.09%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 6, compile id 1077 

            0x00007f963adc1e0a:   cmp    %r11,%r9
            0x00007f963adc1e0d:   jle    0x00007f963adc1e00
            0x00007f963adc1e0f:   jmp    0x00007f963adc2039           ;* unwind (locked if synchronized)
                                                                      ; - java.util.Arrays::copyOfRange@-3
                                                                      ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                      ; - java.lang.String::substring@41 (line 2835)
                                                                      ; - java.lang.String::subSequence@3 (line 2868)
                                                                      ; - java.util.regex.Pattern::split@93 (line 1412)
                                                                      ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.16%    0x00007f963adc1e14:   mov    0x1b8(%r15),%rcx
   0.25%    0x00007f963adc1e1b:   lea    0x18(%rcx),%rdi
   0.29%    0x00007f963adc1e1f:   nop
   0.20%    0x00007f963adc1e20:   cmp    0x1c8(%r15),%rdi
            0x00007f963adc1e27:   ja     0x00007f963adc21c5
   0.25%    0x00007f963adc1e2d:   mov    %rdi,0x1b8(%r15)
   0.25%    0x00007f963adc1e34:   prefetchw 0xd8(%rcx)
   0.44%    0x00007f963adc1e3b:   movq   $0x1,(%rcx)
   0.48%    0x00007f963adc1e42:   movl   $0xe8d8,0x8(%rcx)            ;   {no_reloc}
   1.13%    0x00007f963adc1e49:   shr    $0x3,%r10
   0.06%    0x00007f963adc1e4d:   mov    %r10d,0x14(%rcx)
   0.61%    0x00007f963adc1e51:   mov    %r12d,0xc(%rcx)
   0.38%    0x00007f963adc1e55:   mov    %r12w,0x10(%rcx)
   0.31%    0x00007f963adc1e5a:   mov    %r12b,0x12(%rcx)             ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.StringLatin1::newString@7 (line 752)
                                                                      ; - java.lang.String::substring@41 (line 2835)
                                                                      ; - java.lang.String::subSequence@3 (line 2868)
                                                                      ; - java.util.regex.Pattern::split@93 (line 1412)
                                                                      ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.15%    0x00007f963adc1e5e:   mov    %edx,%r9d
   0.21%    0x00007f963adc1e61:   mov    %rcx,%r10
   0.17%    0x00007f963adc1e64:   mov    0x18(%rsp),%r11
   0.33%    0x00007f963adc1e69:   mov    0x8(%r11),%ebx               ;* unwind (locked if synchronized)
                                                                      ; - java.lang.Object::getClass@-3
                                                                      ; - java.util.Arrays::copyOf@3 (line 3482)
                                                                      ; - java.util.ArrayList::grow@37 (line 237)
                                                                      ; - java.util.ArrayList::grow@7 (line 244)
                                                                      ; - java.util.ArrayList::add@7 (line 483)
                                                                      ; - java.util.ArrayList::add@20 (line 496)
                                                                      ; - java.util.regex.Pattern::split@109 (line 1413)
                                                                      ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.21%    0x00007f963adc1e6d:   mov    0xc(%r11),%r13d              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::add@2 (line 482)
                                                                      ; - java.util.ArrayList::add@20 (line 496)
                                                                      ; - java.util.regex.Pattern::split@109 (line 1413)
                                                                      ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.22%    0x00007f963adc1e71:   mov    %r10,%r14
   0.12%    0x00007f963adc1e74:   shr    $0x3,%r14                    ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::add@14 (line 484)
                                                                      ; - java.util.ArrayList::add@20 (line 496)
                                                                      ; - java.util.regex.Pattern::split@109 (line 1413)
                                                                      ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.25%    0x00007f963adc1e78:   mov    0xac(%rsp),%edi
   0.19%    0x00007f963adc1e7f:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern::split@148 (line 1418)
                                                                      ; - java.util.regex.Pattern::split@4 (line 1481)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split@8 (line 103)
   0.24%    0x00007f963adc1e81:   cmp    0xac(%rsp),%r13d
            0x00007f963adc1e89:   je     0x00007f963adc22f4
   0.18%    0x00007f963adc1e8f:   cmp    $0x1258,%ebx                 ;   {metadata(&apos;java/lang/Object&apos;[])}
            0x00007f963adc1e95:   jne    0x00007f963adc58c6
   0.30%    0x00007f963adc1e9b:   nopl   0x0(%rax,%rax,1)
   0.14%    0x00007f963adc1ea0:   cmp    0xac(%rsp),%r13d
            0x00007f963adc1ea8:   jbe    0x00007f963adc5de5
   0.25%    0x00007f963adc1eae:   cmpb   $0x0,0x40(%r15)
   0.16%    0x00007f963adc1eb3:   jne    0x00007f963adc2145
   0.27%    0x00007f963adc1eb9:   mov    0xac(%rsp),%ebx
   0.12%    0x00007f963adc1ec0:   mov    %r14d,0x10(%r11,%rbx,4)
   2.17%    0x00007f963adc1ec5:   lea    0x10(%r11,%rbx,4),%rsi
   0.04%    0x00007f963adc1eca:   xor    %r10,%rsi
   0.08%    0x00007f963adc1ecd:   test   $0xffffffffffe00000,%rsi
            0x00007f963adc1ed4:   je     0x00007f963adc2185
   0.00%    0x00007f963adc1eda:   nopw   0x0(%rax,%rax,1)
   0.00%    0x00007f963adc1ee0:   test   %r10,%r10
            0x00007f963adc1ee3:   je     0x00007f963adc2197
            0x00007f963adc1ee9:   mov    0xc0(%rsp),%rdx
            0x00007f963adc1ef1:   lea    0x10(%r11,%rbx,4),%rsi
            0x00007f963adc1ef6:   shr    $0x9,%rsi
            0x00007f963adc1efa:   nopw   0x0(%rax,%rax,1)
            0x00007f963adc1f00:   cmpb   $0x2,(%rsi,%rdx,1)
   0.01%    0x00007f963adc1f04:   jne    0x00007f963adc21a9
   0.00%    0x00007f963adc1f0a:   mov    %r10,0x10(%rsp)              ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::add@14 (line 484)
                                                                      ; - java.util.ArrayList::add@20 (line 496)
....................................................................................................
  10.62%  <total for region 2>

....[Hottest Regions]...............................................................................
  66.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 6, compile id 1077 
  10.62%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 6, compile id 1077 
   6.64%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 6, compile id 1077 
   4.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 6, compile id 1077 
   4.05%        runtime stub  StubRoutines::checkcast_arraycopy 
   1.63%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 6, compile id 1077 
   1.31%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 6, compile id 1077 
   0.99%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 6, compile id 1077 
   0.74%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 6, compile id 1077 
   0.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 6, compile id 1077 
   0.29%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 6, compile id 1077 
   0.26%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   2.06%  <...other 473 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 6, compile id 1077 
   4.06%        runtime stub  StubRoutines::checkcast_arraycopy 
   1.57%              kernel  [unknown] 
   0.15%                      <unknown> 
   0.06%           libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.04%        libc-2.31.so  __memset_avx2_erms 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           libjvm.so  G1BarrierSet::invalidate 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%        libc-2.31.so  __strchrnul_avx2 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  G1FromCardCache::clear 
   0.01%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  fileStream::write 
   0.45%  <...other 144 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.39%      jvmci, level 4
   4.06%        runtime stub
   1.57%              kernel
   0.55%           libjvm.so
   0.19%        libc-2.31.so
   0.15%                    
   0.03%          ld-2.31.so
   0.02%         interpreter
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.00%    perf-2151591.map
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.alloc.rate":
  1430.246 ±(99.9%) 6.285 MB/sec [Average]
  (min, avg, max) = (1428.200, 1430.246, 1431.840), stdev = 1.632
  CI (99.9%): [1423.961, 1436.530] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.alloc.rate.norm":
  142984.066 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (142984.066, 142984.066, 142984.067), stdev = 0.001
  CI (99.9%): [142984.065, 142984.067] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.count":
  29.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (5.000, 5.800, 6.000), stdev = 0.447
  CI (99.9%): [29.000, 29.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:gc.time":
  56.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (10.000, 11.200, 12.000), stdev = 0.837
  CI (99.9%): [56.000, 56.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = _)

# Run progress: 50.00% complete, ETA 00:03:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 74.543 us/op
# Warmup Iteration   2: 67.887 us/op
# Warmup Iteration   3: 67.798 us/op
# Warmup Iteration   4: 67.889 us/op
# Warmup Iteration   5: 67.824 us/op
Iteration   1: 67.825 us/op
                 gc.alloc.rate:      2008.606 MB/sec
                 gc.alloc.rate.norm: 142856.070 B/op
                 gc.count:           8.000 counts
                 gc.time:            17.000 ms

Iteration   2: 67.791 us/op
                 gc.alloc.rate:      2009.618 MB/sec
                 gc.alloc.rate.norm: 142856.047 B/op
                 gc.count:           8.000 counts
                 gc.time:            16.000 ms

Iteration   3: 67.821 us/op
                 gc.alloc.rate:      2008.740 MB/sec
                 gc.alloc.rate.norm: 142856.047 B/op
                 gc.count:           8.000 counts
                 gc.time:            16.000 ms

Iteration   4: 67.872 us/op
                 gc.alloc.rate:      2007.233 MB/sec
                 gc.alloc.rate.norm: 142856.047 B/op
                 gc.count:           8.000 counts
                 gc.time:            15.000 ms

Iteration   5: 67.832 us/op
                 gc.alloc.rate:      2008.407 MB/sec
                 gc.alloc.rate.norm: 142856.047 B/op
                 gc.count:           9.000 counts
                 gc.time:            18.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split":
  67.828 ±(99.9%) 0.111 us/op [Average]
  (min, avg, max) = (67.791, 67.828, 67.872), stdev = 0.029
  CI (99.9%): [67.717, 67.940] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:asm":
PrintAssembly processed: 270001 total address lines.
Perf output processed (skipped 61.640 seconds):
 Column 1: cycles (51311 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.lang.String::split, version 4, compile id 1051 

                0x00007f2baad8e010:   vmovdqu %ymm5,(%rsi,%rax,1)
                0x00007f2baad8e015:   lea    0x20(%rax),%rax
                0x00007f2baad8e019:   cmp    %rdx,%rax
                0x00007f2baad8e01c:   jle    0x00007f2baad8e010
                0x00007f2baad8e01e:   xchg   %ax,%ax
          ╭     0x00007f2baad8e020:   jmp    0x00007f2baad8e1b9           ;* unwind (locked if synchronized)
          │                                                               ; - java.util.Arrays::copyOfRange@-3
          │                                                               ; - java.lang.StringLatin1::newString@16 (line 752)
          │                                                               ; - java.lang.String::substring@41 (line 2835)
          │                                                               ; - java.lang.String::split@74 (line 3367)
   0.26%  │     0x00007f2baad8e025:   mov    0x1b8(%r15),%rsi
   0.78%  │     0x00007f2baad8e02c:   lea    0x18(%rsi),%rdx
   0.71%  │     0x00007f2baad8e030:   cmp    0x1c8(%r15),%rdx
          │     0x00007f2baad8e037:   ja     0x00007f2baad8e365
   0.59%  │     0x00007f2baad8e03d:   mov    %rdx,0x1b8(%r15)
   0.77%  │     0x00007f2baad8e044:   prefetchw 0xd8(%rsi)
   1.88%  │     0x00007f2baad8e04b:   movq   $0x1,(%rsi)
   2.33%  │     0x00007f2baad8e052:   movl   $0xe8d8,0x8(%rsi)            ;   {metadata(&apos;java/lang/String&apos;)}
   1.69%  │     0x00007f2baad8e059:   shr    $0x3,%r8
   0.04%  │     0x00007f2baad8e05d:   mov    %r8d,0x14(%rsi)
   1.31%  │     0x00007f2baad8e061:   mov    %r12d,0xc(%rsi)
   0.61%  │     0x00007f2baad8e065:   mov    %r12w,0x10(%rsi)
   0.52%  │     0x00007f2baad8e06a:   mov    %r12b,0x12(%rsi)             ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.lang.StringLatin1::newString@7 (line 752)
          │                                                               ; - java.lang.String::substring@41 (line 2835)
          │                                                               ; - java.lang.String::split@74 (line 3367)
   0.23%  │     0x00007f2baad8e06e:   mov    %rsi,%r11
   0.24%  │     0x00007f2baad8e071:   mov    %r11,%r8
   0.32%  │     0x00007f2baad8e074:   shr    $0x3,%r8                     ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.ArrayList::add@14 (line 484)
          │                                                               ; - java.util.ArrayList::add@20 (line 496)
          │                                                               ; - java.lang.String::split@77 (line 3367)
   0.42%  │     0x00007f2baad8e078:   mov    %r10d,%r9d
   0.18%  │     0x00007f2baad8e07b:   inc    %r9d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.lang.String::split@96 (line 3371)
   0.26%  │     0x00007f2baad8e07e:   xchg   %ax,%ax
   0.29%  │     0x00007f2baad8e080:   cmp    %ebp,%ebx
          │     0x00007f2baad8e082:   je     0x00007f2baad8e3d5
   0.36%  │     0x00007f2baad8e088:   cmpl   $0x1258,0x40(%rsp)           ;   {metadata(&apos;java/lang/Object&apos;[])}
   0.49%  │     0x00007f2baad8e090:   jne    0x00007f2baad8fd4c
   0.30%  │     0x00007f2baad8e096:   cmp    %ebp,%ebx
          │     0x00007f2baad8e098:   jbe    0x00007f2baad8fed4
   0.41%  │     0x00007f2baad8e09e:   xchg   %ax,%ax
   0.15%  │     0x00007f2baad8e0a0:   cmpb   $0x0,0x40(%r15)
   0.28%  │     0x00007f2baad8e0a5:   jne    0x00007f2baad8e25a
   0.29%  │     0x00007f2baad8e0ab:   mov    0x18(%rsp),%rdi
   0.41%  │     0x00007f2baad8e0b0:   mov    %r8d,0x10(%rdi,%rbp,4)
   1.39%  │     0x00007f2baad8e0b5:   lea    0x10(%rdi,%rbp,4),%rsi
   0.18%  │     0x00007f2baad8e0ba:   xor    %r11,%rsi
   0.24%  │     0x00007f2baad8e0bd:   data16 xchg %ax,%ax
   0.22%  │     0x00007f2baad8e0c0:   test   $0xffffffffffe00000,%rsi
          │     0x00007f2baad8e0c7:   je     0x00007f2baad8e295
   0.01%  │     0x00007f2baad8e0cd:   test   %r11,%r11
          │     0x00007f2baad8e0d0:   je     0x00007f2baad8e2b0
   0.00%  │     0x00007f2baad8e0d6:   mov    0x50(%rsp),%rbx
   0.00%  │     0x00007f2baad8e0db:   lea    0x10(%rdi,%rbp,4),%rsi
          │     0x00007f2baad8e0e0:   shr    $0x9,%rsi
          │     0x00007f2baad8e0e4:   cmpb   $0x2,(%rsi,%rbx,1)
   0.01%  │     0x00007f2baad8e0e8:   jne    0x00007f2baad8e2cb
   0.00%  │     0x00007f2baad8e0ee:   mov    0x48(%rsp),%eax
          │     0x00007f2baad8e0f2:   mov    %r9d,%r10d
          │     0x00007f2baad8e0f5:   mov    0x68(%rsp),%ebp
          │     0x00007f2baad8e0f9:   vpxor  %xmm5,%xmm5,%xmm5
   0.01%  │     0x00007f2baad8e0fd:   mov    %rdi,%r9
          │     0x00007f2baad8e100:   mov    0x74(%rsp),%edi
          │     0x00007f2baad8e104:   jmp    0x00007f2baad8de20           ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.ArrayList::add@14 (line 484)
          │                                                               ; - java.util.ArrayList::add@20 (line 496)
          │                                                               ; - java.lang.String::split@77 (line 3367)
   0.81%  │     0x00007f2baad8e109:   lea    -0x10(%rdx),%r9
          │     0x00007f2baad8e10d:   cmp    %r9,%r11
          │╭    0x00007f2baad8e110:   jg     0x00007f2baad8e126
          ││    0x00007f2baad8e116:   vmovdqu (%rcx,%r11,1),%xmm0
          ││    0x00007f2baad8e11c:   vmovdqu %xmm0,(%rax,%r11,1)
          ││    0x00007f2baad8e122:   lea    0x10(%r11),%r11
   1.21%  │↘    0x00007f2baad8e126:   lea    -0x8(%rdx),%r9
          │     0x00007f2baad8e12a:   cmp    %r9,%r11
          │ ╭   0x00007f2baad8e12d:   jg     0x00007f2baad8e143
   1.39%  │ │   0x00007f2baad8e133:   vmovq  (%rcx,%r11,1),%xmm0
   2.23%  │ │   0x00007f2baad8e139:   vmovq  %xmm0,(%rax,%r11,1)
   0.59%  │ │   0x00007f2baad8e13f:   lea    0x8(%r11),%r11
   0.99%  │ ↘   0x00007f2baad8e143:   lea    -0x4(%rdx),%r9
   0.16%  │     0x00007f2baad8e147:   cmp    %r9,%r11
          │  ╭  0x00007f2baad8e14a:   jg     0x00007f2baad8e160
   0.64%  │  │  0x00007f2baad8e150:   vmovd  (%rcx,%r11,1),%xmm0
   1.03%  │  │  0x00007f2baad8e156:   vmovd  %xmm0,(%rax,%r11,1)
   0.86%  │  │  0x00007f2baad8e15c:   lea    0x4(%r11),%r11
   1.19%  │  ↘  0x00007f2baad8e160:   dec    %rdx
   0.98%  │     0x00007f2baad8e163:   cmp    %rdx,%r11
          │     0x00007f2baad8e166:   jg     0x00007f2baad8dfca
   0.57%  │     0x00007f2baad8e16c:   movsbl (%rcx,%r11,1),%r9d
   1.28%  │     0x00007f2baad8e171:   mov    %r9b,(%rax,%r11,1)
   0.76%  │     0x00007f2baad8e175:   mov    %r11,%r9
   0.04%  │     0x00007f2baad8e178:   inc    %r9
          │     0x00007f2baad8e17b:   nopl   0x0(%rax,%rax,1)
   0.37%  │     0x00007f2baad8e180:   cmp    %rdx,%r9
          │     0x00007f2baad8e183:   jg     0x00007f2baad8dfca
   0.66%  │     0x00007f2baad8e189:   movsbl 0x1(%rcx,%r11,1),%r9d        ;   {no_reloc}
   0.59%  │     0x00007f2baad8e18f:   mov    %r9b,0x1(%rax,%r11,1)
   0.36%  │     0x00007f2baad8e194:   lea    0x2(%r11),%r9
   0.12%  │     0x00007f2baad8e198:   nopl   0x0(%rax,%rax,1)
   0.14%  │     0x00007f2baad8e1a0:   cmp    %rdx,%r9
          │     0x00007f2baad8e1a3:   jg     0x00007f2baad8dfca
   0.54%  │     0x00007f2baad8e1a9:   movsbl 0x2(%rcx,%r11,1),%edx
   1.05%  │     0x00007f2baad8e1af:   mov    %dl,0x2(%rax,%r11,1)
   0.26%  │     0x00007f2baad8e1b4:   jmp    0x00007f2baad8dfca
          ↘     0x00007f2baad8e1b9:   lea    -0x10(%rcx),%rdx
                0x00007f2baad8e1bd:   data16 xchg %ax,%ax
                0x00007f2baad8e1c0:   cmp    %rdx,%rax
                0x00007f2baad8e1c3:   jg     0x00007f2baad8e252
                0x00007f2baad8e1c9:   vmovdqu %xmm5,(%rsi,%rax,1)
                0x00007f2baad8e1ce:   lea    0x10(%rax),%rdx
                0x00007f2baad8e1d2:   lea    -0x8(%rcx),%rax
                0x00007f2baad8e1d6:   cmp    %rax,%rdx
                0x00007f2baad8e1d9:   jg     0x00007f2baad8e1e9
                0x00007f2baad8e1df:   vmovq  %xmm5,(%rsi,%rdx,1)
....................................................................................................
  37.02%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.lang.String::split, version 4, compile id 1051 

                                                                       ; - java.lang.String::split@77 (line 3367)
             0x00007f2baad8ddee:   mov    %rbx,0x50(%rsp)
             0x00007f2baad8ddf3:   mov    $0x1,%ebp
             0x00007f2baad8ddf8:   mov    0x20(%rsp),%r13
             0x00007f2baad8ddfd:   mov    0x6c(%rsp),%r14d
             0x00007f2baad8de02:   jmp    0x00007f2baad8fea1
             0x00007f2baad8de07:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007f2baad8de12:   data16 data16 xchg %ax,%ax
             0x00007f2baad8de16:   data16 nopw 0x0(%rax,%rax,1)        ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::split@40 (line 3365)
   0.23%     0x00007f2baad8de20:   mov    %r10d,0x4c(%rsp)
   0.55%     0x00007f2baad8de25:   mov    %r9,0x18(%rsp)
   0.17%     0x00007f2baad8de2a:   mov    %eax,%esi
   0.23%     0x00007f2baad8de2c:   sub    %ebp,%esi
   0.22%     0x00007f2baad8de2e:   cmp    $0x551,%esi
             0x00007f2baad8de34:   jge    0x00007f2baad8fe78
   0.51%     0x00007f2baad8de3a:   mov    0x8(%r9),%edx                ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Object::getClass@-3
                                                                       ; - java.util.Arrays::copyOf@3 (line 3482)
                                                                       ; - java.util.ArrayList::grow@37 (line 237)
                                                                       ; - java.util.ArrayList::grow@7 (line 244)
                                                                       ; - java.util.ArrayList::add@7 (line 483)
                                                                       ; - java.util.ArrayList::add@20 (line 496)
                                                                       ; - java.lang.String::split@77 (line 3367)
   0.18%     0x00007f2baad8de3e:   mov    0xc(%r9),%esi                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::add@2 (line 482)
                                                                       ; - java.util.ArrayList::add@20 (line 496)
                                                                       ; - java.lang.String::split@77 (line 3367)
   0.24%     0x00007f2baad8de42:   mov    %esi,%r11d
   0.19%     0x00007f2baad8de45:   inc    %r11d                        ;* unwind (locked if synchronized)
                                                                       ; - java.util.Arrays::copyOf@-3
                                                                       ; - java.util.Arrays::copyOf@6 (line 3482)
                                                                       ; - java.util.ArrayList::grow@37 (line 237)
                                                                       ; - java.util.ArrayList::grow@7 (line 244)
                                                                       ; - java.util.ArrayList::add@7 (line 483)
                                                                       ; - java.util.ArrayList::add@20 (line 496)
                                                                       ; - java.lang.String::split@172 (line 3387)
   0.51%     0x00007f2baad8de48:   cmp    $0xb,%r11d
   0.21%     0x00007f2baad8de4c:   mov    $0xa,%ebp
   0.17%     0x00007f2baad8de51:   cmovl  %ebp,%r11d                   ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::add@14 (line 484)
                                                                       ; - java.util.ArrayList::add@20 (line 496)
                                                                       ; - java.lang.String::split@77 (line 3367)
   0.23%     0x00007f2baad8de55:   mov    %eax,%ebp
   0.50%     0x00007f2baad8de57:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::split@99 (line 3372)
   0.21%     0x00007f2baad8de59:   mov    %ebp,0x48(%rsp)
   0.24%     0x00007f2baad8de5d:   test   %r10d,%r10d
   0.17%     0x00007f2baad8de60:   mov    %r11d,0x44(%rsp)
   0.50%     0x00007f2baad8de65:   mov    $0x0,%r11d
   0.21%     0x00007f2baad8de6b:   mov    %r10d,%ebp
   0.24%     0x00007f2baad8de6e:   cmovl  %r11d,%ebp                   ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.Math::max@2 (line 2020)
                                                                       ; - java.lang.StringLatin1::indexOf@11 (line 199)
                                                                       ; - java.lang.String::indexOf@17 (line 2457)
                                                                       ; - java.lang.String::split@44 (line 3365)
   0.20%     0x00007f2baad8de72:   cmp    %ebp,%r14d
             0x00007f2baad8de75:   jbe    0x00007f2baad8f414           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.StringLatin1::indexOf@24 (line 201)
                                                                       ; - java.lang.String::indexOf@17 (line 2457)
                                                                       ; - java.lang.String::split@44 (line 3365)
   0.48%     0x00007f2baad8de7b:   mov    %edx,0x40(%rsp)
   0.22%     0x00007f2baad8de7f:   mov    %r10d,%r11d
   0.19%     0x00007f2baad8de82:   mov    %esi,%r10d
   0.20%     0x00007f2baad8de85:   mov    %r13,%rsi
   0.50%     0x00007f2baad8de88:   mov    $0x10,%rdx
   0.19%     0x00007f2baad8de8f:   mov    %r14d,%ecx
   0.25%     0x00007f2baad8de92:   mov    %ebp,%r8d
   0.22%     0x00007f2baad8de95:   mov    %edi,%r9d
   0.51%     0x00007f2baad8de98:   mov    %r10d,%ebx
   0.21%     0x00007f2baad8de9b:   mov    %eax,%ebp
   0.19%     0x00007f2baad8de9d:   data16 xchg %ax,%ax
   0.24%     0x00007f2baad8dea0:   call   0x00007f2baa8eeb00           ;   {runtime_call Stub&lt;IntrinsicStubsGen.indexOf1S1&gt;}
             0x00007f2baad8dea5:   nop
   0.34%     0x00007f2baad8dea6:   mov    %eax,%r10d                   ;* unwind (locked if synchronized)
                                                                       ; - java.lang.StringLatin1::indexOfChar@-3
                                                                       ; - java.lang.StringLatin1::indexOf@33 (line 204)
                                                                       ; - java.lang.String::indexOf@17 (line 2457)
                                                                       ; - java.lang.String::split@44 (line 3365)
   0.01%     0x00007f2baad8dea9:   cmp    $0xffffffff,%r10d
             0x00007f2baad8dead:   je     0x00007f2baad8ed68           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::split@51 (line 3365)
   0.76%     0x00007f2baad8deb3:   test   %r11d,%r11d
             0x00007f2baad8deb6:   jl     0x00007f2baad8fc7b           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.util.Preconditions::checkFromToIndex@1 (line 348)
                                                                       ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                       ; - java.lang.String::substring@8 (line 2830)
                                                                       ; - java.lang.String::split@74 (line 3367)
   0.00%     0x00007f2baad8debc:   nopl   0x0(%rax)
   0.54%     0x00007f2baad8dec0:   cmp    %r10d,%r11d
             0x00007f2baad8dec3:   jg     0x00007f2baad8fc7b           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.util.Preconditions::checkFromToIndex@6 (line 348)
                                                                       ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                       ; - java.lang.String::substring@8 (line 2830)
                                                                       ; - java.lang.String::split@74 (line 3367)
   0.01%     0x00007f2baad8dec9:   cmp    %r14d,%r10d
             0x00007f2baad8decc:   jg     0x00007f2baad8fc7b           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.util.Preconditions::checkFromToIndex@11 (line 348)
                                                                       ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                       ; - java.lang.String::substring@8 (line 2830)
                                                                       ; - java.lang.String::split@74 (line 3367)
   1.46%     0x00007f2baad8ded2:   test   %r11d,%r11d
             0x00007f2baad8ded5:   je     0x00007f2baad8e2f5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::substring@12 (line 2831)
                                                                       ; - java.lang.String::split@74 (line 3367)
             0x00007f2baad8dedb:   nopl   0x0(%rax,%rax,1)
   0.25%     0x00007f2baad8dee0:   cmp    %r10d,%r11d
             0x00007f2baad8dee3:   je     0x00007f2baad8ea20           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.StringLatin1::newString@1 (line 749)
                                                                       ; - java.lang.String::substring@41 (line 2835)
                                                                       ; - java.lang.String::split@74 (line 3367)
   0.02%     0x00007f2baad8dee9:   mov    %r10d,%ecx
   1.07%     0x00007f2baad8deec:   sub    %r11d,%ecx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::substring@24 (line 2834)
                                                                       ; - java.lang.String::split@74 (line 3367)
   0.01%     0x00007f2baad8deef:   test   %ecx,%ecx
             0x00007f2baad8def1:   jl     0x00007f2baad8f47d
   0.25%     0x00007f2baad8def7:   cmp    %r14d,%r11d
             0x00007f2baad8defa:   ja     0x00007f2baad8f47d
   0.11%     0x00007f2baad8df00:   mov    0x1b8(%r15),%rsi
   1.52%     0x00007f2baad8df07:   mov    %ecx,%edx
             0x00007f2baad8df09:   lea    0x17(%rdx),%rdx
   0.05%     0x00007f2baad8df0d:   and    $0xfffffffffffffff8,%rdx
   0.01%     0x00007f2baad8df11:   mov    %rdx,%rax
   1.02%     0x00007f2baad8df14:   add    %rsi,%rax
   0.00%     0x00007f2baad8df17:   nopw   0x0(%rax,%rax,1)
   0.08%     0x00007f2baad8df20:   cmp    0x1c8(%r15),%rax
             0x00007f2baad8df27:   ja     0x00007f2baad8e335
   0.86%     0x00007f2baad8df2d:   mov    %rax,0x1b8(%r15)
   0.83%     0x00007f2baad8df34:   prefetchw 0xc0(%rdx,%rsi,1)
   1.91%     0x00007f2baad8df3c:   prefetchw 0x100(%rdx,%rsi,1)
   0.11%     0x00007f2baad8df44:   prefetchw 0x140(%rdx,%rsi,1)
   0.49%     0x00007f2baad8df4c:   prefetchw 0x180(%rdx,%rsi,1)
   1.34%     0x00007f2baad8df54:   movq   $0x1,(%rsi)
   1.32%     0x00007f2baad8df5b:   movl   $0x22c0,0x8(%rsi)            ;   {metadata({type array byte})}
   0.05%     0x00007f2baad8df62:   mov    %ecx,0xc(%rsi)
   0.26%     0x00007f2baad8df65:   mov    %rsi,%r8
   0.26%     0x00007f2baad8df68:   mov    %r14d,%esi
   0.52%     0x00007f2baad8df6b:   sub    %r11d,%esi
   0.05%     0x00007f2baad8df6e:   cmp    %esi,%ecx
   0.27%     0x00007f2baad8df70:   mov    %ecx,%edx
   0.32%     0x00007f2baad8df72:   cmovg  %esi,%edx
   0.52%     0x00007f2baad8df75:   movslq %edx,%rdi
   0.05%     0x00007f2baad8df78:   mov    %ecx,%esi
   0.29%     0x00007f2baad8df7a:   cmp    %rdi,%rsi
   0.23%     0x00007f2baad8df7d:   mov    %rsi,%rdx
   0.58%     0x00007f2baad8df80:   cmova  %rdi,%rdx
   0.31%     0x00007f2baad8df84:   test   %rdx,%rdx
             0x00007f2baad8df87:   je     0x00007f2baad8dfca
   0.30%     0x00007f2baad8df8d:   lea    0x10(%r8),%rax
   0.52%     0x00007f2baad8df91:   lea    0x10(%r13,%r11,1),%rcx
   0.04%     0x00007f2baad8df96:   cmp    $0x20,%rdx
             0x00007f2baad8df9a:   jl     0x00007f2baad8e23a
             0x00007f2baad8dfa0:   lea    -0x20(%rdx),%r9
             0x00007f2baad8dfa4:   mov    $0x0,%r11
             0x00007f2baad8dfab:   nopl   0x0(%rax,%rax,1)
          ↗  0x00007f2baad8dfb0:   vmovdqu (%rcx,%r11,1),%ymm0
          │  0x00007f2baad8dfb6:   vmovdqu %ymm0,(%rax,%r11,1)
          │  0x00007f2baad8dfbc:   lea    0x20(%r11),%r11
          │  0x00007f2baad8dfc0:   cmp    %r9,%r11
          ╰  0x00007f2baad8dfc3:   jle    0x00007f2baad8dfb0
             0x00007f2baad8dfc5:   jmp    0x00007f2baad8e109
....................................................................................................
  28.31%  <total for region 2>

....[Hottest Regions]...............................................................................
  37.02%      jvmci, level 4  java.lang.String::split, version 4, compile id 1051 
  28.31%      jvmci, level 4  java.lang.String::split, version 4, compile id 1051 
   5.81%        runtime stub  StubRoutines::checkcast_arraycopy 
   5.38%      jvmci, level 4  java.lang.String::split, version 4, compile id 1051 
   5.23%                      <unknown> 
   4.69%                      <unknown> 
   3.58%                      <unknown> 
   2.07%      jvmci, level 4  java.lang.String::split, version 4, compile id 1051 
   1.80%      jvmci, level 4  java.lang.String::split, version 4, compile id 1051 
   0.99%              kernel  [unknown] 
   0.55%      jvmci, level 4  java.lang.String::split, version 4, compile id 1051 
   0.53%      jvmci, level 4  java.lang.String::split, version 4, compile id 1051 
   0.40%      jvmci, level 4  java.lang.String::split, version 4, compile id 1051 
   0.32%      jvmci, level 4  java.lang.String::split, version 4, compile id 1051 
   0.13%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%           libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.06%              kernel  [unknown] 
   2.79%  <...other 632 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  76.63%      jvmci, level 4  java.lang.String::split, version 4, compile id 1051 
  13.72%                      <unknown> 
   5.83%        runtime stub  StubRoutines::checkcast_arraycopy 
   2.66%              kernel  [unknown] 
   0.08%           libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.06%        libc-2.31.so  __memset_avx2_erms 
   0.05%          ld-2.31.so  __tls_get_addr 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1061 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%           libjvm.so  HeapRegionManager::allocate_free_region 
   0.01%           libjvm.so  ThreadLocalAllocBuffer::fill 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.67%  <...other 184 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  76.65%      jvmci, level 4
  13.72%                    
   5.83%        runtime stub
   2.66%              kernel
   0.79%           libjvm.so
   0.20%        libc-2.31.so
   0.05%          ld-2.31.so
   0.04%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%         c1, level 3
   0.00%              [vdso]
   0.00%    perf-2151657.map
....................................................................................................
  99.99%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.alloc.rate":
  2008.521 ±(99.9%) 3.296 MB/sec [Average]
  (min, avg, max) = (2007.233, 2008.521, 2009.618), stdev = 0.856
  CI (99.9%): [2005.225, 2011.817] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.alloc.rate.norm":
  142856.052 ±(99.9%) 0.040 B/op [Average]
  (min, avg, max) = (142856.047, 142856.052, 142856.070), stdev = 0.010
  CI (99.9%): [142856.012, 142856.092] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.count":
  41.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (8.000, 8.200, 9.000), stdev = 0.447
  CI (99.9%): [41.000, 41.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.time":
  82.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (15.000, 16.400, 18.000), stdev = 1.140
  CI (99.9%): [82.000, 82.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = __)

# Run progress: 75.00% complete, ETA 00:01:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 158.381 us/op
# Warmup Iteration   2: 116.301 us/op
# Warmup Iteration   3: 116.434 us/op
# Warmup Iteration   4: 115.931 us/op
# Warmup Iteration   5: 115.947 us/op
Iteration   1: 116.281 us/op
                 gc.alloc.rate:      1176.922 MB/sec
                 gc.alloc.rate.norm: 143504.080 B/op
                 gc.count:           5.000 counts
                 gc.time:            10.000 ms

Iteration   2: 115.963 us/op
                 gc.alloc.rate:      1180.143 MB/sec
                 gc.alloc.rate.norm: 143504.081 B/op
                 gc.count:           5.000 counts
                 gc.time:            10.000 ms

Iteration   3: 115.838 us/op
                 gc.alloc.rate:      1181.420 MB/sec
                 gc.alloc.rate.norm: 143504.080 B/op
                 gc.count:           5.000 counts
                 gc.time:            9.000 ms

Iteration   4: 116.021 us/op
                 gc.alloc.rate:      1179.552 MB/sec
                 gc.alloc.rate.norm: 143504.080 B/op
                 gc.count:           4.000 counts
                 gc.time:            8.000 ms

Iteration   5: 116.171 us/op
                 gc.alloc.rate:      1178.025 MB/sec
                 gc.alloc.rate.norm: 143504.081 B/op
                 gc.count:           5.000 counts
                 gc.time:            10.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split":
  116.055 ±(99.9%) 0.670 us/op [Average]
  (min, avg, max) = (115.838, 116.055, 116.281), stdev = 0.174
  CI (99.9%): [115.385, 116.724] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:asm":
PrintAssembly processed: 304734 total address lines.
Perf output processed (skipped 61.407 seconds):
 Column 1: cycles (51276 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1108 

                      0x00007f9512db31a8:   mov    $0xffffffff,%ebp
                      0x00007f9512db31ad:   mov    $0xffffffff,%r8d
                      0x00007f9512db31b3:   mov    %rax,%rsi
                      0x00007f9512db31b6:   mov    $0x0,%edx
                      0x00007f9512db31bb:   mov    $0x0,%eax                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.regex.Pattern::split@33 (line 1405)
                                                                                ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                                ; - java.lang.String::split@144 (line 3355)
                                                                                ; - java.lang.String::split@4 (line 3443)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.08%              0x00007f9512db31c0:   mov    %eax,0xac(%rsp)
   0.11%              0x00007f9512db31c7:   mov    %rsi,0x20(%rsp)
   0.07%              0x00007f9512db31cc:   cmp    %edx,%r8d
                      0x00007f9512db31cf:   je     0x00007f9512db7773           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.regex.Matcher::find@10 (line 745)
                                                                                ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                                ; - java.lang.String::split@144 (line 3355)
                                                                                ; - java.lang.String::split@4 (line 3443)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.47%              0x00007f9512db31d5:   test   %edx,%edx
                      0x00007f9512db31d7:   jl     0x00007f9512db786c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.regex.Matcher::find@21 (line 749)
                                                                                ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                                ; - java.lang.String::split@144 (line 3355)
                                                                                ; - java.lang.String::split@4 (line 3443)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.10%              0x00007f9512db31dd:   data16 xchg %ax,%ax
   0.07%              0x00007f9512db31e0:   cmp    %ebx,%edx
                      0x00007f9512db31e2:   jg     0x00007f9512db714e           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.regex.Matcher::find@34 (line 753)
                                                                                ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                                ; - java.lang.String::split@144 (line 3355)
                                                                                ; - java.lang.String::split@4 (line 3443)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.06%              0x00007f9512db31e8:   test   %ebp,%ebp
                      0x00007f9512db31ea:   jl     0x00007f9512db426d           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.regex.Matcher::search@30 (line 1730)
                                                                                ; - java.util.regex.Matcher::find@65 (line 758)
                                                                                ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                                ; - java.lang.String::split@144 (line 3355)
                                                                                ; - java.lang.String::split@4 (line 3443)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.50%              0x00007f9512db31f0:   mov    %ebp,0xa8(%rsp)              ;*putfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.regex.Matcher::search@41 (line 1730)
                                                                                ; - java.util.regex.Matcher::find@65 (line 758)
                                                                                ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                                ; - java.lang.String::split@144 (line 3355)
                                                                                ; - java.lang.String::split@4 (line 3443)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.10%              0x00007f9512db31f7:   nopw   0x0(%rax,%rax,1)
   0.04%              0x00007f9512db3200:   test   $0x7fffffff,%r10d
          ╭           0x00007f9512db3207:   je     0x00007f9512db324b
   0.06%  │           0x00007f9512db320d:   lea    0x10(%r14),%r8
   0.45%  │           0x00007f9512db3211:   cmp    $0x8,%r11d
          │           0x00007f9512db3215:   jb     0x00007f9512db3a13
   0.08%  │           0x00007f9512db321b:   lea    -0x8(%rdi),%rbp
   0.06%  │           0x00007f9512db321f:   mov    $0x0,%r10
   0.04%  │           0x00007f9512db3226:   data16 nopw 0x0(%rax,%rax,1)
   0.68%  │↗          0x00007f9512db3230:   vmovdqu %ymm1,(%r8,%r10,4)
   1.30%  ││          0x00007f9512db3236:   lea    0x8(%r10),%r10
   0.08%  ││          0x00007f9512db323a:   nopw   0x0(%rax,%rax,1)
   0.38%  ││          0x00007f9512db3240:   cmp    %rbp,%r10
          ││          0x00007f9512db3243:   jg     0x00007f9512db3520
   0.33%  │╰          0x00007f9512db3249:   jmp    0x00007f9512db3230           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - java.util.regex.Matcher::search@61 (line 1732)
          │                                                                     ; - java.util.regex.Matcher::find@65 (line 758)
          │                                                                     ; - java.util.regex.Pattern::split@35 (line 1405)
          │                                                                     ; - java.util.regex.Pattern::split@4 (line 1305)
          │                                                                     ; - java.lang.String::split@144 (line 3355)
          │                                                                     ; - java.lang.String::split@4 (line 3443)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.71%  ↘           0x00007f9512db324b:   mov    0xc(%rsi),%r10d              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.ArrayList::add@2 (line 482)
                                                                                ; - java.util.ArrayList::add@20 (line 496)
                                                                                ; - java.util.regex.Pattern::split@109 (line 1413)
                                                                                ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                                ; - java.lang.String::split@144 (line 3355)
                                                                                ; - java.lang.String::split@4 (line 3443)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
                                                                                ;   {no_reloc}
                      0x00007f9512db324f:   mov    %eax,%r8d
   0.00%              0x00007f9512db3252:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.regex.Pattern::split@148 (line 1418)
                                                                                ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                                ; - java.lang.String::split@144 (line 3355)
                                                                                ; - java.lang.String::split@4 (line 3443)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
                      0x00007f9512db3255:   mov    %r8d,0xa4(%rsp)
   0.69%              0x00007f9512db325d:   mov    %ebx,%ebp
   0.00%              0x00007f9512db325f:   sub    %edx,%ebp                    ;* unwind (locked if synchronized)
                                                                                ; - java.util.Arrays::copyOfRange@-3
                                                                                ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                                ; - java.lang.String::substring@41 (line 2835)
                                                                                ; - java.lang.String::subSequence@3 (line 2868)
                                                                                ; - java.util.regex.Pattern::split@93 (line 1412)
                                                                                ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                                ; - java.lang.String::split@144 (line 3355)
                                                                                ; - java.lang.String::split@4 (line 3443)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.00%              0x00007f9512db3261:   mov    %ebp,0xa0(%rsp)
   0.00%              0x00007f9512db3268:   cmp    0xd0(%rsp),%edx
                      0x00007f9512db326f:   jg     0x00007f9512db6cbb
   0.66%              0x00007f9512db3275:   movabs $0x7f9497358560,%r9          ;   {metadata(&apos;java/util/regex/Pattern$Slice&apos;)}
   0.00%              0x00007f9512db327f:   mov    %r10d,0x9c(%rsp)
   0.01%              0x00007f9512db3287:   cmp    0xc8(%rsp),%r9
                      0x00007f9512db328f:   jne    0x00007f9512db3ad1           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                                ; - java.util.regex.Matcher::find@65 (line 758)
                                                                                ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                                ; - java.lang.String::split@144 (line 3355)
                                                                                ; - java.lang.String::split@4 (line 3443)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.01%              0x00007f9512db3295:   mov    0x5c(%rsp),%r13d
   0.68%              0x00007f9512db329a:   mov    0x10(,%r13,8),%r8d           ; ImmutableOopMap {rsi=Oop r8=NarrowOop r13=NarrowOop r14=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [92]=NarrowOop [96]=Oop [104]=Oop [112]=Oop [124]=NarrowOop [128]=Oop }
                                                                                ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) java.util.regex.Matcher::search@68 (line 1733)
                                                                                ; - java.util.regex.Matcher::find@65 (line 758)
                                                                                ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                                ; - java.lang.String::split@144 (line 3355)
                                                                                ; - java.lang.String::split@4 (line 3443)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.04%              0x00007f9512db32a2:   mov    0xc(,%r8,8),%ecx             ; implicit exception: dispatches to 0x00007f9512db7a90
   0.41%              0x00007f9512db32aa:   shl    $0x3,%r8                     ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.regex.Pattern$Slice::match@1 (line 4258)
                                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                                ; - java.util.regex.Matcher::find@65 (line 758)
                                                                                ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                                ; - java.lang.String::split@144 (line 3355)
                                                                                ; - java.lang.String::split@4 (line 3443)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.00%              0x00007f9512db32ae:   mov    0x7c(%rsp),%r10d
   0.48%              0x00007f9512db32b3:   mov    $0x0,%edi
            ╭         0x00007f9512db32b8:   jmp    0x00007f9512db32ed           ;*iload {reexecute=0 rethrow=0 return_oop=0}
            │                                                                   ; - java.util.regex.Pattern$Slice::match@14 (line 4260)
            │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
            │                                                                   ; - java.util.regex.Matcher::search@121 (line 1738)
            │                                                                   ; - java.util.regex.Matcher::find@65 (line 758)
            │                                                                   ; - java.util.regex.Pattern::split@35 (line 1405)
            │                                                                   ; - java.util.regex.Pattern::split@4 (line 1305)
            │                                                                   ; - java.lang.String::split@144 (line 3355)
            │                                                                   ; - java.lang.String::split@4 (line 3443)
            │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
            │         0x00007f9512db32bd:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                                   ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
            │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
            │                                                                   ; - java.util.regex.Matcher::search@121 (line 1738)
            │                                                                   ; - java.util.regex.Matcher::find@65 (line 758)
            │                                                                   ; - java.util.regex.Pattern::split@35 (line 1405)
            │                                                                   ; - java.util.regex.Pattern::split@4 (line 1305)
            │                                                                   ; - java.lang.String::split@144 (line 3355)
            │                                                                   ; - java.lang.String::split@4 (line 3443)
            │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.67%    │ ↗       0x00007f9512db32c0:   mov    %edi,%eax
            │ │       0x00007f9512db32c2:   add    %edx,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                                 ; - java.util.regex.Pattern$Slice::match@24 (line 4261)
            │ │                                                                 ; - java.util.regex.Pattern$Start::match@44 (line 3787)
            │ │                                                                 ; - java.util.regex.Matcher::search@121 (line 1738)
            │ │                                                                 ; - java.util.regex.Matcher::find@65 (line 758)
            │ │                                                                 ; - java.util.regex.Pattern::split@35 (line 1405)
            │ │                                                                 ; - java.util.regex.Pattern::split@4 (line 1305)
            │ │                                                                 ; - java.lang.String::split@144 (line 3355)
            │ │                                                                 ; - java.lang.String::split@4 (line 3443)
            │ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
            │ │       0x00007f9512db32c4:   cmp    %eax,%ebx
            │ │       0x00007f9512db32c6:   jle    0x00007f9512db75d6           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                                 ; - java.util.regex.Pattern$Slice::match@29 (line 4261)
            │ │                                                                 ; - java.util.regex.Pattern$Start::match@44 (line 3787)
            │ │                                                                 ; - java.util.regex.Matcher::search@121 (line 1738)
            │ │                                                                 ; - java.util.regex.Matcher::find@65 (line 758)
            │ │                                                                 ; - java.util.regex.Pattern::split@35 (line 1405)
            │ │                                                                 ; - java.util.regex.Pattern::split@4 (line 1305)
            │ │                                                                 ; - java.lang.String::split@144 (line 3355)
            │ │                                                                 ; - java.lang.String::split@4 (line 3443)
            │ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
            │ │       0x00007f9512db32cc:   cmp    %eax,%ebx
            │ │       0x00007f9512db32ce:   jbe    0x00007f9512db6ecd           ;* unwind (locked if synchronized)
            │ │                                                                 ; - jdk.internal.util.Preconditions::checkIndex@-3
            │ │                                                                 ; - java.lang.String::checkIndex@5 (line 4828)
            │ │                                                                 ; - java.lang.StringLatin1::charAt@3 (line 46)
            │ │                                                                 ; - java.lang.String::charAt@12 (line 1555)
            │ │                                                                 ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
            │ │                                                                 ; - java.util.regex.Pattern$Start::match@44 (line 3787)
            │ │                                                                 ; - java.util.regex.Matcher::search@121 (line 1738)
            │ │                                                                 ; - java.util.regex.Matcher::find@65 (line 758)
            │ │                                                                 ; - java.util.regex.Pattern::split@35 (line 1405)
            │ │                                                                 ; - java.util.regex.Pattern::split@4 (line 1305)
            │ │                                                                 ; - java.lang.String::split@144 (line 3355)
            │ │                                                                 ; - java.lang.String::split@4 (line 3443)
            │ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.63%    │ │       0x00007f9512db32d4:   movzbl 0x10(%rax,%r10,8),%eax       ;*baload {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                                 ; - java.lang.StringLatin1::charAt@8 (line 47)
            │ │                                                                 ; - java.lang.String::charAt@12 (line 1555)
            │ │                                                                 ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
            │ │                                                                 ; - java.util.regex.Pattern$Start::match@44 (line 3787)
            │ │                                                                 ; - java.util.regex.Matcher::search@121 (line 1738)
            │ │                                                                 ; - java.util.regex.Matcher::find@65 (line 758)
            │ │                                                                 ; - java.util.regex.Pattern::split@35 (line 1405)
            │ │                                                                 ; - java.util.regex.Pattern::split@4 (line 1305)
            │ │                                                                 ; - java.lang.String::split@144 (line 3355)
            │ │                                                                 ; - java.lang.String::split@4 (line 3443)
            │ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.04%    │ │       0x00007f9512db32da:   nopw   0x0(%rax,%rax,1)
            │ │       0x00007f9512db32e0:   cmp    0x10(%r8,%rdi,4),%eax
            │╭│       0x00007f9512db32e5:   jne    0x00007f9512db32f6           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
            │││                                                                 ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
            │││                                                                 ; - java.util.regex.Pattern$Start::match@44 (line 3787)
            │││                                                                 ; - java.util.regex.Matcher::search@121 (line 1738)
            │││                                                                 ; - java.util.regex.Matcher::find@65 (line 758)
            │││                                                                 ; - java.util.regex.Pattern::split@35 (line 1405)
            │││                                                                 ; - java.util.regex.Pattern::split@4 (line 1305)
            │││                                                                 ; - java.lang.String::split@144 (line 3355)
            │││                                                                 ; - java.lang.String::split@4 (line 3443)
            │││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
            │││       0x00007f9512db32eb:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │││                                                                 ; - java.util.regex.Pattern$Slice::match@59 (line 4260)
            │││                                                                 ; - java.util.regex.Pattern$Start::match@44 (line 3787)
            │││                                                                 ; - java.util.regex.Matcher::search@121 (line 1738)
            │││                                                                 ; - java.util.regex.Matcher::find@65 (line 758)
            │││                                                                 ; - java.util.regex.Pattern::split@35 (line 1405)
            │││                                                                 ; - java.util.regex.Pattern::split@4 (line 1305)
            │││                                                                 ; - java.lang.String::split@144 (line 3355)
            │││                                                                 ; - java.lang.String::split@4 (line 3443)
            │││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.17%    ↘││       0x00007f9512db32ed:   cmp    %edi,%ecx
             │╰       0x00007f9512db32ef:   ja     0x00007f9512db32c0
             │        0x00007f9512db32f1:   jmp    0x00007f9512db3a2f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
             │                                                                  ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │                                                                  ; - java.util.regex.Matcher::search@121 (line 1738)
             │                                                                  ; - java.util.regex.Matcher::find@65 (line 758)
             │                                                                  ; - java.util.regex.Pattern::split@35 (line 1405)
             │                                                                  ; - java.util.regex.Pattern::split@4 (line 1305)
             │                                                                  ; - java.lang.String::split@144 (line 3355)
             │                                                                  ; - java.lang.String::split@4 (line 3443)
             │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.73%     ↘        0x00007f9512db32f6:   mov    $0x0,%eax
   0.01%              0x00007f9512db32fb:   mov    %edx,0x98(%rsp)
   0.02%              0x00007f9512db3302:   mov    %edx,%ecx
                      0x00007f9512db3304:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.regex.Pattern$Start::match@77 (line 3786)
                                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                                ; - java.util.regex.Matcher::find@65 (line 758)
                                                                                ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                                ; - java.lang.String::split@144 (line 3355)
                                                                                ; - java.lang.String::split@4 (line 3443)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.68%              0x00007f9512db3306:   mov    0xc8(%rsp),%rdi
                      0x00007f9512db330e:   mov    0xd0(%rsp),%r8d
                      0x00007f9512db3316:   mov    %eax,0x94(%rsp)
                      0x00007f9512db331d:   mov    %ecx,%eax
   0.65%              0x00007f9512db331f:   mov    0x94(%rsp),%ecx
   0.18%              0x00007f9512db3326:   data16 nopw 0x0(%rax,%rax,1)        ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.regex.Pattern$Start::match@31 (line 3786)
                                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                                ; - java.util.regex.Matcher::find@65 (line 758)
                                                                                ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                                ; - java.lang.String::split@144 (line 3355)
                                                                                ; - java.lang.String::split@4 (line 3443)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   3.02%           ↗  0x00007f9512db3330:   cmp    %r8d,%eax
                   │  0x00007f9512db3333:   jg     0x00007f9512db4b3e           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                   │                                                            ; - java.util.regex.Pattern$Start::match@34 (line 3786)
                   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
                   │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
                   │                                                            ; - java.util.regex.Pattern::split@4 (line 1305)
                   │                                                            ; - java.lang.String::split@144 (line 3355)
                   │                                                            ; - java.lang.String::split@4 (line 3443)
                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.01%           │  0x00007f9512db3339:   mov    %eax,0x94(%rsp)
   0.90%           │  0x00007f9512db3340:   mov    %eax,%esi
   0.00%           │  0x00007f9512db3342:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                   │                                                            ; - java.util.regex.Pattern$Start::match@77 (line 3786)
                   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
                   │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
                   │                                                            ; - java.util.regex.Pattern::split@4 (line 1305)
                   │                                                            ; - java.lang.String::split@144 (line 3355)
                   │                                                            ; - java.lang.String::split@4 (line 3443)
                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   2.91%           │  0x00007f9512db3344:   cmp    %rdi,%r9
               ╭   │  0x00007f9512db3347:   jne    0x00007f9512db33c8           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               │   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
               │   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
               │   │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
               │   │                                                            ; - java.util.regex.Pattern::split@4 (line 1305)
               │   │                                                            ; - java.lang.String::split@144 (line 3355)
               │   │                                                            ; - java.lang.String::split@4 (line 3443)
               │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
               │   │  0x00007f9512db334d:   mov    0x10(,%r13,8),%ebp           ; ImmutableOopMap {rbp=NarrowOop r10=NarrowOop r13=NarrowOop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [92]=NarrowOop [96]=Oop [104]=Oop [112]=Oop [124]=NarrowOop [128]=Oop }
               │   │                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
               │   │                                                            ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3786)
               │   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
               │   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
               │   │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
               │   │                                                            ; - java.util.regex.Pattern::split@4 (line 1305)
               │   │                                                            ; - java.lang.String::split@144 (line 3355)
               │   │                                                            ; - java.lang.String::split@4 (line 3443)
               │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.84%       │   │  0x00007f9512db3355:   mov    0xc(,%rbp,8),%edx            ; implicit exception: dispatches to 0x00007f9512db7ab3
   0.18%       │   │  0x00007f9512db335c:   shl    $0x3,%rbp                    ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
               │   │                                                            ; - java.util.regex.Pattern$Slice::match@1 (line 4258)
               │   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               │   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
               │   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
               │   │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
               │   │                                                            ; - java.util.regex.Pattern::split@4 (line 1305)
               │   │                                                            ; - java.lang.String::split@144 (line 3355)
               │   │                                                            ; - java.lang.String::split@4 (line 3443)
               │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   2.87%       │   │  0x00007f9512db3360:   mov    $0x0,%r14d
   0.00%       │╭  │  0x00007f9512db3366:   jmp    0x00007f9512db33ae           ;*iload {reexecute=0 rethrow=0 return_oop=0}
               ││  │                                                            ; - java.util.regex.Pattern$Slice::match@14 (line 4260)
               ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
               ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
               ││  │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
               ││  │                                                            ; - java.util.regex.Pattern::split@4 (line 1305)
               ││  │                                                            ; - java.lang.String::split@144 (line 3355)
               ││  │                                                            ; - java.lang.String::split@4 (line 3443)
               ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
               ││  │  0x00007f9512db336b:   data16 data16 nopw 0x0(%rax,%rax,1)
               ││  │  0x00007f9512db3376:   data16 data16 xchg %ax,%ax          ;   {no_reloc}
               ││  │  0x00007f9512db337a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               ││  │                                                            ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
               ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
               ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
               ││  │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
               ││  │                                                            ; - java.util.regex.Pattern::split@4 (line 1305)
               ││  │                                                            ; - java.lang.String::split@144 (line 3355)
               ││  │                                                            ; - java.lang.String::split@4 (line 3443)
               ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   3.89%       ││ ↗│  0x00007f9512db3380:   mov    %r14d,%r11d
               ││ ││  0x00007f9512db3383:   add    %eax,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               ││ ││                                                            ; - java.util.regex.Pattern$Slice::match@24 (line 4261)
               ││ ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               ││ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
               ││ ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
               ││ ││                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
               ││ ││                                                            ; - java.util.regex.Pattern::split@4 (line 1305)
               ││ ││                                                            ; - java.lang.String::split@144 (line 3355)
               ││ ││                                                            ; - java.lang.String::split@4 (line 3443)
               ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.13%       ││ ││  0x00007f9512db3386:   cmp    %r11d,%ebx
               ││ ││  0x00007f9512db3389:   jle    0x00007f9512db797f           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
               ││ ││                                                            ; - java.util.regex.Pattern$Slice::match@29 (line 4261)
               ││ ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               ││ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
               ││ ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
               ││ ││                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
               ││ ││                                                            ; - java.util.regex.Pattern::split@4 (line 1305)
               ││ ││                                                            ; - java.lang.String::split@144 (line 3355)
               ││ ││                                                            ; - java.lang.String::split@4 (line 3443)
               ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.49%       ││ ││  0x00007f9512db338f:   cmp    %r11d,%ebx
               ││ ││  0x00007f9512db3392:   jbe    0x00007f9512db759b           ;* unwind (locked if synchronized)
               ││ ││                                                            ; - jdk.internal.util.Preconditions::checkIndex@-3
               ││ ││                                                            ; - java.lang.String::checkIndex@5 (line 4828)
               ││ ││                                                            ; - java.lang.StringLatin1::charAt@3 (line 46)
               ││ ││                                                            ; - java.lang.String::charAt@12 (line 1555)
               ││ ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
               ││ ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               ││ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
               ││ ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
               ││ ││                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
               ││ ││                                                            ; - java.util.regex.Pattern::split@4 (line 1305)
               ││ ││                                                            ; - java.lang.String::split@144 (line 3355)
               ││ ││                                                            ; - java.lang.String::split@4 (line 3443)
               ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   3.83%       ││ ││  0x00007f9512db3398:   movzbl 0x10(%r11,%r10,8),%r11d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
               ││ ││                                                            ; - java.lang.StringLatin1::charAt@8 (line 47)
               ││ ││                                                            ; - java.lang.String::charAt@12 (line 1555)
               ││ ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
               ││ ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               ││ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
               ││ ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
               ││ ││                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
               ││ ││                                                            ; - java.util.regex.Pattern::split@4 (line 1305)
               ││ ││                                                            ; - java.lang.String::split@144 (line 3355)
               ││ ││                                                            ; - java.lang.String::split@4 (line 3443)
               ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   2.57%       ││ ││  0x00007f9512db339e:   xchg   %ax,%ax
   0.11%       ││ ││  0x00007f9512db33a0:   cmp    0x10(%rbp,%r14,4),%r11d
               ││╭││  0x00007f9512db33a5:   jne    0x00007f9512db33b8           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
               │││││                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
               │││││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               │││││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
               │││││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
               │││││                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
               │││││                                                            ; - java.util.regex.Pattern::split@4 (line 1305)
               │││││                                                            ; - java.lang.String::split@144 (line 3355)
               │││││                                                            ; - java.lang.String::split@4 (line 3443)
               │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   2.85%       │││││  0x00007f9512db33ab:   inc    %r14d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │││││                                                            ; - java.util.regex.Pattern$Slice::match@59 (line 4260)
               │││││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               │││││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
               │││││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
               │││││                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
               │││││                                                            ; - java.util.regex.Pattern::split@4 (line 1305)
               │││││                                                            ; - java.lang.String::split@144 (line 3355)
               │││││                                                            ; - java.lang.String::split@4 (line 3443)
               │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   4.70%       │↘│││  0x00007f9512db33ae:   cmp    %r14d,%edx
   0.00%       │ │╰│  0x00007f9512db33b1:   ja     0x00007f9512db3380
   0.12%       │ │ │  0x00007f9512db33b3:   jmp    0x00007f9512db355c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │ │ │                                                            ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
               │ │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               │ │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
               │ │ │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
               │ │ │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
               │ │ │                                                            ; - java.util.regex.Pattern::split@4 (line 1305)
               │ │ │                                                            ; - java.lang.String::split@144 (line 3355)
               │ │ │                                                            ; - java.lang.String::split@4 (line 3443)
               │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   3.61%       │ ↘ │  0x00007f9512db33b8:   mov    0x458(%r15),%rdx             ; ImmutableOopMap {r10=NarrowOop r13=NarrowOop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [92]=NarrowOop [96]=Oop [104]=Oop [112]=Oop [124]=NarrowOop [128]=Oop }
               │   │                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
               │   │                                                            ; - (reexecute) java.util.regex.Pattern$Slice::match@57 (line 4266)
               │   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               │   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
               │   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
               │   │                                                            ; - java.util.regex.Pattern::split@35 (line 1405)
               │   │                                                            ; - java.util.regex.Pattern::split@4 (line 1305)
               │   │                                                            ; - java.lang.String::split@144 (line 3355)
               │   │                                                            ; - java.lang.String::split@4 (line 3443)
               │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   1.11%       │   │  0x00007f9512db33bf:   test   %eax,(%rdx)                  ;   {poll}
   0.72%       │   │  0x00007f9512db33c1:   mov    %esi,%eax
   0.01%       │   ╰  0x00007f9512db33c3:   jmp    0x00007f9512db3330
               ↘      0x00007f9512db33c8:   movabs $0x7f949735e5f8,%rdx         ;   {metadata(&apos;java/util/regex/Pattern$BmpCharPropertyGreedy&apos;)}
                      0x00007f9512db33d2:   cmp    %rdi,%rdx
                      0x00007f9512db33d5:   jne    0x00007f9512db6f6d           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                                ; - java.util.regex.Matcher::find@65 (line 758)
                                                                                ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                                ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                                ; - java.lang.String::split@144 (line 3355)
                                                                                ; - java.lang.String::split@4 (line 3443)
....................................................................................................
  47.40%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1108 

                                                                         ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                         ; - java.lang.String::split@144 (line 3355)
                                                                         ; - java.lang.String::split@4 (line 3443)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
               0x00007f9512db3500:   test   %eax,(%rdx)                  ;   {poll}
               0x00007f9512db3502:   mov    %esi,%eax
               0x00007f9512db3504:   mov    $0x1,%ecx
               0x00007f9512db3509:   movabs $0x7f9497358560,%r9          ;   {metadata(&apos;java/util/regex/Pattern$Slice&apos;)}
               0x00007f9512db3513:   mov    0xd0(%rsp),%r8d
               0x00007f9512db351b:   jmp    0x00007f9512db3330
   0.16%       0x00007f9512db3520:   cmp    %r9,%r10
          ╭    0x00007f9512db3523:   jg     0x00007f9512db3533
   0.15%  │    0x00007f9512db3529:   vmovdqu %xmm1,(%r8,%r10,4)
   0.09%  │    0x00007f9512db352f:   lea    0x4(%r10),%r10
   0.23%  ↘    0x00007f9512db3533:   cmp    %r13,%r10
           ╭   0x00007f9512db3536:   jg     0x00007f9512db3546
           │   0x00007f9512db353c:   vmovq  %xmm1,(%r8,%r10,4)
           │   0x00007f9512db3542:   lea    0x2(%r10),%r10
   0.20%   ↘   0x00007f9512db3546:   cmp    %rcx,%r10
               0x00007f9512db3549:   jg     0x00007f9512db324b
               0x00007f9512db354f:   movl   $0xffffffff,(%r8,%r10,4)
               0x00007f9512db3557:   jmp    0x00007f9512db324b           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Matcher::search@61 (line 1732)
                                                                         ; - java.util.regex.Matcher::find@65 (line 758)
                                                                         ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                         ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                         ; - java.lang.String::split@144 (line 3355)
                                                                         ; - java.lang.String::split@4 (line 3443)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
               0x00007f9512db355c:   mov    0xc(,%r13,8),%esi            ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [92]=NarrowOop [96]=Oop [104]=Oop [112]=Oop [124]=NarrowOop [128]=Oop }
                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.regex.Pattern$Slice::match@65 (line 4268)
                                                                         ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                         ; - java.util.regex.Matcher::find@65 (line 758)
                                                                         ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                         ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                         ; - java.lang.String::split@144 (line 3355)
                                                                         ; - java.lang.String::split@4 (line 3443)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   1.10%       0x00007f9512db3564:   cmpl   $0x35ee38,0x8(,%rsi,8)       ; implicit exception: dispatches to 0x00007f9512db7ad6
                                                                         ;   {metadata(&apos;java/util/regex/Pattern$LastNode&apos;)}
   2.07%       0x00007f9512db356f:   jne    0x00007f9512db7589           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
                                                                         ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                         ; - java.util.regex.Matcher::find@65 (line 758)
                                                                         ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                         ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                         ; - java.lang.String::split@144 (line 3355)
                                                                         ; - java.lang.String::split@4 (line 3443)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.57%       0x00007f9512db3575:   data16 data16 nopw 0x0(%rax,%rax,1)
               0x00007f9512db3580:   cmpl   $0x2,0xe8(%rsp)
               0x00007f9512db3588:   jb     0x00007f9512db6f2d           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$LastNode::match@32 (line 3760)
                                                                         ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
                                                                         ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                         ; - java.util.regex.Matcher::find@65 (line 758)
                                                                         ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                         ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                         ; - java.lang.String::split@144 (line 3355)
                                                                         ; - java.lang.String::split@4 (line 3443)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.08%       0x00007f9512db358e:   add    0x94(%rsp),%edx              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$Slice::match@73 (line 4268)
                                                                         ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                         ; - java.util.regex.Matcher::find@65 (line 758)
                                                                         ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                         ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                         ; - java.lang.String::split@144 (line 3355)
                                                                         ; - java.lang.String::split@4 (line 3443)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.59%       0x00007f9512db3595:   mov    %edx,%esi
   0.00%       0x00007f9512db3597:   mov    0x98(%rsp),%edx
               0x00007f9512db359e:   mov    0x50(%rsp),%r11
   0.08%       0x00007f9512db35a3:   mov    %edx,0x10(%r11)              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$LastNode::match@32 (line 3760)
                                                                         ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
                                                                         ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                         ; - java.util.regex.Matcher::find@65 (line 758)
                                                                         ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                         ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                         ; - java.lang.String::split@144 (line 3355)
                                                                         ; - java.lang.String::split@4 (line 3443)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   1.11%       0x00007f9512db35a7:   mov    %esi,0x14(%r11)
   0.39%       0x00007f9512db35ab:   mov    0x94(%rsp),%r8d              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$LastNode::match@42 (line 3761)
                                                                         ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
                                                                         ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                         ; - java.util.regex.Matcher::find@65 (line 758)
                                                                         ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                         ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                         ; - java.lang.String::split@144 (line 3355)
                                                                         ; - java.lang.String::split@4 (line 3443)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
               0x00007f9512db35b3:   mov    %r8d,0x10(%r11)              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$Start::match@64 (line 3789)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                         ; - java.util.regex.Matcher::find@65 (line 758)
                                                                         ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                         ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                         ; - java.lang.String::split@144 (line 3355)
                                                                         ; - java.lang.String::split@4 (line 3443)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   1.75%       0x00007f9512db35b7:   mov    %r8d,%ebp
               0x00007f9512db35ba:   mov    %esi,%r9d
   0.01%       0x00007f9512db35bd:   mov    %ecx,0x90(%rsp)
               0x00007f9512db35c4:   mov    %r9d,0x14(%r11)              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$Start::match@74 (line 3790)
                                                                         ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                         ; - java.util.regex.Matcher::find@65 (line 758)
                                                                         ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                         ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                         ; - java.lang.String::split@144 (line 3355)
                                                                         ; - java.lang.String::split@4 (line 3443)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.68%       0x00007f9512db35c8:   test   %ebp,%ebp
               0x00007f9512db35ca:   jl     0x00007f9512db77b0           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Matcher::hasMatch@4 (line 1850)
                                                                         ; - java.util.regex.Matcher::checkMatch@1 (line 1822)
                                                                         ; - java.util.regex.Matcher::start@1 (line 466)
                                                                         ; - java.util.regex.Pattern::split@90 (line 1412)
                                                                         ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                         ; - java.lang.String::split@144 (line 3355)
                                                                         ; - java.lang.String::split@4 (line 3443)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
               0x00007f9512db35d0:   cmp    %ebp,%edx
               0x00007f9512db35d2:   jg     0x00007f9512db74d6           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.util.Preconditions::checkFromToIndex@6 (line 348)
                                                                         ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                         ; - java.lang.String::substring@8 (line 2830)
                                                                         ; - java.lang.String::subSequence@3 (line 2868)
                                                                         ; - java.util.regex.Pattern::split@93 (line 1412)
                                                                         ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                         ; - java.lang.String::split@144 (line 3355)
                                                                         ; - java.lang.String::split@4 (line 3443)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.00%       0x00007f9512db35d8:   cmp    %ebx,%ebp
               0x00007f9512db35da:   jg     0x00007f9512db72e7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.util.Preconditions::checkFromToIndex@11 (line 348)
                                                                         ; - java.lang.String::checkBoundsBeginEnd@6 (line 4861)
                                                                         ; - java.lang.String::substring@8 (line 2830)
                                                                         ; - java.lang.String::subSequence@3 (line 2868)
                                                                         ; - java.util.regex.Pattern::split@93 (line 1412)
                                                                         ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                         ; - java.lang.String::split@144 (line 3355)
                                                                         ; - java.lang.String::split@4 (line 3443)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
               0x00007f9512db35e0:   mov    0xb4(%rsp),%r14d
   0.67%       0x00007f9512db35e8:   inc    %r14d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Matcher::search@148 (line 1742)
                                                                         ; - java.util.regex.Matcher::find@65 (line 758)
                                                                         ; - java.util.regex.Pattern::split@35 (line 1405)
                                                                         ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                         ; - java.lang.String::split@144 (line 3355)
                                                                         ; - java.lang.String::split@4 (line 3443)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
               0x00007f9512db35eb:   mov    %r14d,0x98(%rsp)
   0.13%       0x00007f9512db35f3:   test   %edx,%edx
               0x00007f9512db35f5:   je     0x00007f9512db4453           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern::split@56 (line 1407)
                                                                         ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                         ; - java.lang.String::split@144 (line 3355)
                                                                         ; - java.lang.String::split@4 (line 3443)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
               0x00007f9512db35fb:   nopl   0x0(%rax,%rax,1)
   0.54%       0x00007f9512db3600:   cmp    %edx,%ebp
               0x00007f9512db3602:   je     0x00007f9512db4912           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.StringLatin1::newString@1 (line 749)
                                                                         ; - java.lang.String::substring@41 (line 2835)
                                                                         ; - java.lang.String::subSequence@3 (line 2868)
                                                                         ; - java.util.regex.Pattern::split@93 (line 1412)
                                                                         ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                         ; - java.lang.String::split@144 (line 3355)
                                                                         ; - java.lang.String::split@4 (line 3443)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.00%       0x00007f9512db3608:   mov    %ebp,%ecx
   0.04%       0x00007f9512db360a:   sub    %edx,%ecx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::substring@24 (line 2834)
                                                                         ; - java.lang.String::subSequence@3 (line 2868)
                                                                         ; - java.util.regex.Pattern::split@93 (line 1412)
                                                                         ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                         ; - java.lang.String::split@144 (line 3355)
                                                                         ; - java.lang.String::split@4 (line 3443)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
               0x00007f9512db360c:   test   %ecx,%ecx
               0x00007f9512db360e:   jl     0x00007f9512db6c7f
   0.57%       0x00007f9512db3614:   cmp    %ebx,%edx
               0x00007f9512db3616:   ja     0x00007f9512db6c7f
   0.00%       0x00007f9512db361c:   mov    0x1b8(%r15),%rsi
   0.05%       0x00007f9512db3623:   mov    %ecx,%eax
               0x00007f9512db3625:   lea    0x17(%rax),%rax
   0.60%       0x00007f9512db3629:   and    $0xfffffffffffffff8,%rax
   0.00%       0x00007f9512db362d:   mov    %rax,%r11
   0.04%       0x00007f9512db3630:   add    %rsi,%r11
   0.00%       0x00007f9512db3633:   cmp    0x1c8(%r15),%r11
               0x00007f9512db363a:   ja     0x00007f9512db3d51
   1.11%       0x00007f9512db3640:   mov    %r11,0x1b8(%r15)
   0.00%       0x00007f9512db3647:   prefetchw 0xc0(%rax,%rsi,1)
   1.45%       0x00007f9512db364f:   prefetchw 0x100(%rax,%rsi,1)
   0.04%       0x00007f9512db3657:   prefetchw 0x140(%rax,%rsi,1)
   0.35%       0x00007f9512db365f:   prefetchw 0x180(%rax,%rsi,1)
   0.39%       0x00007f9512db3667:   movq   $0x1,(%rsi)                  ;   {no_reloc}
   2.40%       0x00007f9512db366e:   movl   $0x22c0,0x8(%rsi)            ;   {metadata({type array byte})}
   0.01%       0x00007f9512db3675:   mov    %ecx,0xc(%rsi)
   0.90%       0x00007f9512db3678:   mov    0xa0(%rsp),%r11d
   0.02%       0x00007f9512db3680:   cmp    %r11d,%ecx
   0.37%       0x00007f9512db3683:   mov    %ecx,%eax
               0x00007f9512db3685:   cmovg  %r11d,%eax
   0.27%       0x00007f9512db3689:   movslq %eax,%r11
   0.00%       0x00007f9512db368c:   mov    %ecx,%eax
   0.42%       0x00007f9512db368e:   cmp    %r11,%rax
   0.00%       0x00007f9512db3691:   mov    %rax,%rcx
   0.24%       0x00007f9512db3694:   cmova  %r11,%rcx
   0.40%       0x00007f9512db3698:   nopl   0x0(%rax,%rax,1)
   0.00%       0x00007f9512db36a0:   test   %rcx,%rcx
               0x00007f9512db36a3:   je     0x00007f9512db3a8e
   0.44%       0x00007f9512db36a9:   mov    %ebp,0x8c(%rsp)
   0.03%       0x00007f9512db36b0:   mov    %r9d,0x94(%rsp)
   0.28%       0x00007f9512db36b8:   mov    0x30(%rsp),%r8
   0.01%       0x00007f9512db36bd:   lea    0x10(%rsi),%r9
   0.38%       0x00007f9512db36c1:   lea    0x10(%r8,%rdx,1),%rbp
   0.02%       0x00007f9512db36c6:   cmp    $0x20,%rcx
               0x00007f9512db36ca:   jl     0x00007f9512db3aa5
               0x00007f9512db36d0:   lea    -0x20(%rcx),%r8
               0x00007f9512db36d4:   mov    $0x0,%r14
               0x00007f9512db36db:   nopl   0x0(%rax,%rax,1)
            ↗  0x00007f9512db36e0:   vmovdqu 0x0(%rbp,%r14,1),%ymm2
            │  0x00007f9512db36e7:   vmovdqu %ymm2,(%r9,%r14,1)
            │  0x00007f9512db36ed:   lea    0x20(%r14),%r14
            │  0x00007f9512db36f1:   cmp    %r8,%r14
            ╰  0x00007f9512db36f4:   jle    0x00007f9512db36e0
   0.64%       0x00007f9512db36f6:   lea    -0x10(%rcx),%r8
....................................................................................................
  21.46%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1108 

            0x00007f9512db3800:   jmp    0x00007f9512db398f           ;* unwind (locked if synchronized)
                                                                      ; - java.util.Arrays::copyOfRange@-3
                                                                      ; - java.lang.StringLatin1::newString@16 (line 752)
                                                                      ; - java.lang.String::substring@41 (line 2835)
                                                                      ; - java.lang.String::subSequence@3 (line 2868)
                                                                      ; - java.util.regex.Pattern::split@93 (line 1412)
                                                                      ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                      ; - java.lang.String::split@144 (line 3355)
                                                                      ; - java.lang.String::split@4 (line 3443)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.12%    0x00007f9512db3805:   mov    0x1b8(%r15),%rax
   0.33%    0x00007f9512db380c:   lea    0x18(%rax),%rcx
   0.25%    0x00007f9512db3810:   cmp    0x1c8(%r15),%rcx
            0x00007f9512db3817:   ja     0x00007f9512db3dbe
   0.23%    0x00007f9512db381d:   mov    %rcx,0x1b8(%r15)
   0.20%    0x00007f9512db3824:   prefetchw 0xd8(%rax)
   0.41%    0x00007f9512db382b:   movq   $0x1,(%rax)
   1.12%    0x00007f9512db3832:   movl   $0xe8d8,0x8(%rax)            ;   {metadata(&apos;java/lang/String&apos;)}
   0.73%    0x00007f9512db3839:   shr    $0x3,%rsi
   0.04%    0x00007f9512db383d:   mov    %esi,0x14(%rax)
   0.58%    0x00007f9512db3840:   mov    %r12d,0xc(%rax)
   0.52%    0x00007f9512db3844:   mov    %r12w,0x10(%rax)
   0.15%    0x00007f9512db3849:   mov    %r12b,0x12(%rax)             ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.StringLatin1::newString@7 (line 752)
                                                                      ; - java.lang.String::substring@41 (line 2835)
                                                                      ; - java.lang.String::subSequence@3 (line 2868)
                                                                      ; - java.util.regex.Pattern::split@93 (line 1412)
                                                                      ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                      ; - java.lang.String::split@144 (line 3355)
                                                                      ; - java.lang.String::split@4 (line 3443)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.14%    0x00007f9512db384d:   mov    %rax,%r11
   0.15%    0x00007f9512db3850:   mov    0x9c(%rsp),%r9d
   0.31%    0x00007f9512db3858:   mov    0x20(%rsp),%r8
   0.17%    0x00007f9512db385d:   mov    %r11,0x18(%rsp)
   0.25%    0x00007f9512db3862:   mov    0x8(%r8),%ebp                ;* unwind (locked if synchronized)
                                                                      ; - java.lang.Object::getClass@-3
                                                                      ; - java.util.Arrays::copyOf@3 (line 3482)
                                                                      ; - java.util.ArrayList::grow@37 (line 237)
                                                                      ; - java.util.ArrayList::grow@7 (line 244)
                                                                      ; - java.util.ArrayList::add@7 (line 483)
                                                                      ; - java.util.ArrayList::add@20 (line 496)
                                                                      ; - java.util.regex.Pattern::split@109 (line 1413)
                                                                      ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                      ; - java.lang.String::split@144 (line 3355)
                                                                      ; - java.lang.String::split@4 (line 3443)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.19%    0x00007f9512db3866:   mov    %r11,%r14
   0.23%    0x00007f9512db3869:   shr    $0x3,%r14                    ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::add@14 (line 484)
                                                                      ; - java.util.ArrayList::add@20 (line 496)
                                                                      ; - java.util.regex.Pattern::split@109 (line 1413)
                                                                      ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                      ; - java.lang.String::split@144 (line 3355)
                                                                      ; - java.lang.String::split@4 (line 3443)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.12%    0x00007f9512db386d:   cmp    0xac(%rsp),%r9d
            0x00007f9512db3875:   je     0x00007f9512db3e88           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::add@3 (line 482)
                                                                      ; - java.util.ArrayList::add@20 (line 496)
                                                                      ; - java.util.regex.Pattern::split@109 (line 1413)
                                                                      ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                      ; - java.lang.String::split@144 (line 3355)
                                                                      ; - java.lang.String::split@4 (line 3443)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.19%    0x00007f9512db387b:   nopl   0x0(%rax,%rax,1)
   0.11%    0x00007f9512db3880:   cmp    $0x1258,%ebp                 ;   {metadata(&apos;java/lang/Object&apos;[])}
            0x00007f9512db3886:   jne    0x00007f9512db7239
   0.22%    0x00007f9512db388c:   cmp    0xac(%rsp),%r9d
            0x00007f9512db3894:   jbe    0x00007f9512db77f1
   0.14%    0x00007f9512db389a:   nopw   0x0(%rax,%rax,1)
   0.15%    0x00007f9512db38a0:   cmpb   $0x0,0x40(%r15)
   0.15%    0x00007f9512db38a5:   jne    0x00007f9512db3c32
   0.25%    0x00007f9512db38ab:   mov    %r8,%r9
   0.12%    0x00007f9512db38ae:   mov    0xac(%rsp),%ebp
   0.14%    0x00007f9512db38b5:   mov    %r14d,0x10(%r9,%rbp,4)
   1.28%    0x00007f9512db38ba:   lea    0x10(%r9,%rbp,4),%rsi
   0.07%    0x00007f9512db38bf:   xor    %r11,%rsi
   0.06%    0x00007f9512db38c2:   test   $0xffffffffffe00000,%rsi
            0x00007f9512db38c9:   je     0x00007f9512db3c1c
   0.01%    0x00007f9512db38cf:   test   %r11,%r11
            0x00007f9512db38d2:   je     0x00007f9512db3c72
            0x00007f9512db38d8:   mov    0xf0(%rsp),%rax
            0x00007f9512db38e0:   lea    0x10(%r9,%rbp,4),%rsi
            0x00007f9512db38e5:   shr    $0x9,%rsi
            0x00007f9512db38e9:   cmpb   $0x2,(%rsi,%rax,1)
   0.02%    0x00007f9512db38ed:   jne    0x00007f9512db3c88
   0.00%    0x00007f9512db38f3:   vpxor  %xmm0,%xmm0,%xmm0
            0x00007f9512db38f7:   mov    0x40(%rsp),%rbp              ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::add@14 (line 484)
                                                                      ; - java.util.ArrayList::add@20 (line 496)
                                                                      ; - java.util.regex.Pattern::split@109 (line 1413)
                                                                      ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                      ; - java.lang.String::split@144 (line 3355)
                                                                      ; - java.lang.String::split@4 (line 3443)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.05%    0x00007f9512db38fc:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {r9=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [92]=NarrowOop [96]=Oop [104]=Oop [112]=Oop [124]=NarrowOop [128]=Oop }
                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) java.util.ArrayList::add@15 (line 485)
                                                                      ; - java.util.ArrayList::add@20 (line 496)
                                                                      ; - java.util.regex.Pattern::split@109 (line 1413)
                                                                      ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                      ; - java.lang.String::split@144 (line 3355)
                                                                      ; - java.lang.String::split@4 (line 3443)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
   0.55%    0x00007f9512db3903:   test   %eax,(%rcx)                  ;   {poll}
   0.13%    0x00007f9512db3905:   mov    %rax,0xf8(%rsp)
   0.06%    0x00007f9512db390d:   mov    0x98(%rsp),%eax
   0.06%    0x00007f9512db3914:   mov    %eax,0xb4(%rsp)
   0.52%    0x00007f9512db391b:   mov    0x90(%rsp),%eax
   0.10%    0x00007f9512db3922:   mov    %eax,0xb0(%rsp)
   0.05%    0x00007f9512db3929:   mov    0xf8(%rsp),%rax
   0.06%    0x00007f9512db3931:   mov    0x8c(%rsp),%r8d
   0.56%    0x00007f9512db3939:   mov    %r9,%rsi
   0.06%    0x00007f9512db393c:   mov    0x94(%rsp),%edx
   0.06%    0x00007f9512db3943:   mov    0xb8(%rsp),%r9
   0.05%    0x00007f9512db394b:   mov    0xc0(%rsp),%r13
   0.53%    0x00007f9512db3953:   vpcmpeqd %ymm1,%ymm1,%ymm1
   0.07%    0x00007f9512db3957:   mov    0xd8(%rsp),%rcx
   0.07%    0x00007f9512db395f:   mov    0xe0(%rsp),%rdi
   0.06%    0x00007f9512db3967:   mov    0x50(%rsp),%r14
   0.47%    0x00007f9512db396c:   mov    0xe8(%rsp),%r11d
   0.08%    0x00007f9512db3974:   mov    0xec(%rsp),%r10d
   0.06%    0x00007f9512db397c:   mov    0x94(%rsp),%ebp
   0.04%    0x00007f9512db3983:   mov    0xa4(%rsp),%eax
   0.43%    0x00007f9512db398a:   jmp    0x00007f9512db31c0           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern::split@33 (line 1405)
                                                                      ; - java.util.regex.Pattern::split@4 (line 1305)
                                                                      ; - java.lang.String::split@144 (line 3355)
                                                                      ; - java.lang.String::split@4 (line 3443)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split@8 (line 97)
            0x00007f9512db398f:   lea    -0x10(%rcx),%r11
            0x00007f9512db3993:   cmp    %r11,%r8
            0x00007f9512db3996:   jg     0x00007f9512db3ab9
            0x00007f9512db399c:   vmovdqu %xmm0,(%rax,%r8,1)
            0x00007f9512db39a2:   lea    0x10(%r8),%r11
....................................................................................................
  13.29%  <total for region 3>

....[Hottest Regions]...............................................................................
  47.40%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1108 
  21.46%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1108 
  13.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1108 
   5.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1108 
   3.55%         runtime stub  StubRoutines::checkcast_arraycopy 
   0.96%               kernel  [unknown] 
   0.94%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1108 
   0.88%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1108 
   0.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1108 
   0.64%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1108 
   0.51%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1108 
   0.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1108 
   0.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1108 
   0.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1108 
   0.17%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1108 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   2.28%  <...other 525 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.93%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1108 
   3.55%         runtime stub  StubRoutines::checkcast_arraycopy 
   2.39%               kernel  [unknown] 
   0.13%       jvmci, level 4  java.util.regex.Pattern::compile, version 3, compile id 1113 
   0.08%                       <unknown> 
   0.05%            libjvm.so  ElfSymbolTable::lookup 
   0.05%           ld-2.31.so  __tls_get_addr 
   0.04%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%            libjvm.so  G1CardSet::reset_table_scanner 
   0.03%            libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.02%         libc-2.31.so  __memset_avx2_erms 
   0.02%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%            libjvm.so  G1BarrierSet::invalidate 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  FreeListAllocator::reset 
   0.01%            libjvm.so  outputStream::print 
   0.01%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.57%  <...other 193 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.07%       jvmci, level 4
   3.55%         runtime stub
   2.39%               kernel
   0.56%            libjvm.so
   0.18%         libc-2.31.so
   0.08%                     
   0.05%  libjvmcicompiler.so
   0.05%           ld-2.31.so
   0.03%   libpthread-2.31.so
   0.02%          interpreter
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.00%          c1, level 3
   0.00%     perf-2151727.map
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.alloc.rate":
  1179.212 ±(99.9%) 6.809 MB/sec [Average]
  (min, avg, max) = (1176.922, 1179.212, 1181.420), stdev = 1.768
  CI (99.9%): [1172.403, 1186.022] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.alloc.rate.norm":
  143504.080 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (143504.080, 143504.080, 143504.081), stdev = 0.001
  CI (99.9%): [143504.080, 143504.081] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.count":
  24.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (4.000, 4.800, 5.000), stdev = 0.447
  CI (99.9%): [24.000, 24.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:gc.time":
  47.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (8.000, 9.400, 10.000), stdev = 0.894
  CI (99.9%): [47.000, 47.000] (assumes normal distribution)


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

Benchmark                                                     (regexp)  Mode  Cnt       Score   Error   Units
StringPatternSplitBenchmark.pattern_split                            _  avgt    5      79.824 ± 0.110   us/op
StringPatternSplitBenchmark.pattern_split:asm                        _  avgt              NaN             ---
StringPatternSplitBenchmark.pattern_split:gc.alloc.rate              _  avgt    5    1708.230 ± 2.369  MB/sec
StringPatternSplitBenchmark.pattern_split:gc.alloc.rate.norm         _  avgt    5  142984.055 ± 0.001    B/op
StringPatternSplitBenchmark.pattern_split:gc.count                   _  avgt    5      35.000          counts
StringPatternSplitBenchmark.pattern_split:gc.time                    _  avgt    5      68.000              ms
StringPatternSplitBenchmark.pattern_split                           __  avgt    5      95.338 ± 0.418   us/op
StringPatternSplitBenchmark.pattern_split:asm                       __  avgt              NaN             ---
StringPatternSplitBenchmark.pattern_split:gc.alloc.rate             __  avgt    5    1430.246 ± 6.285  MB/sec
StringPatternSplitBenchmark.pattern_split:gc.alloc.rate.norm        __  avgt    5  142984.066 ± 0.001    B/op
StringPatternSplitBenchmark.pattern_split:gc.count                  __  avgt    5      29.000          counts
StringPatternSplitBenchmark.pattern_split:gc.time                   __  avgt    5      56.000              ms
StringPatternSplitBenchmark.string_split                             _  avgt    5      67.828 ± 0.111   us/op
StringPatternSplitBenchmark.string_split:asm                         _  avgt              NaN             ---
StringPatternSplitBenchmark.string_split:gc.alloc.rate               _  avgt    5    2008.521 ± 3.296  MB/sec
StringPatternSplitBenchmark.string_split:gc.alloc.rate.norm          _  avgt    5  142856.052 ± 0.040    B/op
StringPatternSplitBenchmark.string_split:gc.count                    _  avgt    5      41.000          counts
StringPatternSplitBenchmark.string_split:gc.time                     _  avgt    5      82.000              ms
StringPatternSplitBenchmark.string_split                            __  avgt    5     116.055 ± 0.670   us/op
StringPatternSplitBenchmark.string_split:asm                        __  avgt              NaN             ---
StringPatternSplitBenchmark.string_split:gc.alloc.rate              __  avgt    5    1179.212 ± 6.809  MB/sec
StringPatternSplitBenchmark.string_split:gc.alloc.rate.norm         __  avgt    5  143504.080 ± 0.001    B/op
StringPatternSplitBenchmark.string_split:gc.count                   __  avgt    5      24.000          counts
StringPatternSplitBenchmark.string_split:gc.time                    __  avgt    5      47.000              ms
