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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.no_if_branch
# Parameters: (size = 16384)

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7877.780 ns/op
# Warmup Iteration   2: 7745.208 ns/op
# Warmup Iteration   3: 7752.468 ns/op
# Warmup Iteration   4: 7749.279 ns/op
# Warmup Iteration   5: 7736.900 ns/op
Iteration   1: 7752.418 ns/op
Iteration   2: 7727.095 ns/op
Iteration   3: 7741.897 ns/op
Iteration   4: 7753.163 ns/op
Iteration   5: 7783.394 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.no_if_branch":
  7751.593 ±(99.9%) 79.584 ns/op [Average]
  (min, avg, max) = (7727.095, 7751.593, 7783.394), stdev = 20.668
  CI (99.9%): [7672.010, 7831.177] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.no_if_branch:asm":
PrintAssembly processed: 218590 total address lines.
Perf output processed (skipped 60.389 seconds):
 Column 1: cycles (51395 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch, version 3, compile id 955 

                      #           [sp+0x40]  (sp of caller)
                      0x00007f22eb23d800:   mov    0x8(%rsi),%r10d
                      0x00007f22eb23d804:   movabs $0x7f226f000000,%r12
                      0x00007f22eb23d80e:   add    %r12,%r10
                      0x00007f22eb23d811:   xor    %r12,%r12
                      0x00007f22eb23d814:   cmp    %r10,%rax
                      0x00007f22eb23d817:   jne    0x00007f22eac2f080           ;   {runtime_call ic_miss_stub}
                      0x00007f22eb23d81d:   data16 xchg %ax,%ax
                    [Verified Entry Point]
                      0x00007f22eb23d820:   mov    %eax,-0x14000(%rsp)
   0.01%              0x00007f22eb23d827:   sub    $0x38,%rsp
                      0x00007f22eb23d82b:   nop
                      0x00007f22eb23d82c:   cmpl   $0x1,0x20(%r15)
   0.01%              0x00007f22eb23d834:   jne    0x00007f22eb23d9f9
                      0x00007f22eb23d83a:   mov    %rbp,0x30(%rsp)
                      0x00007f22eb23d83f:   mov    0x18(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@0 (line 76)
                      0x00007f22eb23d842:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f22eb23da1d
   0.01%              0x00007f22eb23d84a:   test   %r10d,%r10d
          ╭           0x00007f22eb23d84d:   je     0x00007f22eb23d9ce           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 78)
          │           0x00007f22eb23d853:   mov    %r10d,%r11d
          │           0x00007f22eb23d856:   dec    %r11d
          │           0x00007f22eb23d859:   movslq %r11d,%r11
   0.00%  │           0x00007f22eb23d85c:   mov    %r10d,%r8d
          │           0x00007f22eb23d85f:   nop
          │           0x00007f22eb23d860:   cmp    %r11,%r8
          │╭          0x00007f22eb23d863:   ja     0x00007f22eb23d873
          ││          0x00007f22eb23d869:   cmp    $0x2,%r10d
          ││╭         0x00007f22eb23d86d:   jae    0x00007f22eb23d9d6
          │↘│         0x00007f22eb23d873:   mov    0x10(,%rax,8),%r11d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@22 (line 78)
   0.02%  │ │         0x00007f22eb23d87b:   cmp    $0x3,%r10d
          │ │         0x00007f22eb23d87f:   mov    $0x2,%r8d
          │ │         0x00007f22eb23d885:   cmovb  %r10d,%r8d
          │ │         0x00007f22eb23d889:   shl    $0x3,%rax                    ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@3 (line 78)
   0.00%  │ │         0x00007f22eb23d88d:   mov    %r11d,%r9d
          │ │         0x00007f22eb23d890:   mov    $0x1,%r11d
          │ │╭        0x00007f22eb23d896:   jmp    0x00007f22eb23d8a8           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@13 (line 78)
          │ ││        0x00007f22eb23d89b:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 78)
   0.00%  │ ││↗       0x00007f22eb23d8a0:   add    0x10(%rax,%r11,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@28 (line 79)
   0.01%  │ │││       0x00007f22eb23d8a5:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@30 (line 78)
          │ │↘│       0x00007f22eb23d8a8:   cmp    %r11d,%r8d
          │ │ ╰       0x00007f22eb23d8ab:   jg     0x00007f22eb23d8a0
          │ │         0x00007f22eb23d8ad:   mov    %r10d,0x24(%rsp)
   0.01%  │ │         0x00007f22eb23d8b2:   lea    -0x10(%r10),%r8d
          │ │         0x00007f22eb23d8b6:   mov    %r8d,0x20(%rsp)
          │ │         0x00007f22eb23d8bb:   mov    %r9d,0x1c(%rsp)
          │ │         0x00007f22eb23d8c0:   mov    %r11d,%r9d
   0.00%  │ │         0x00007f22eb23d8c3:   mov    0x1c(%rsp),%r11d
          │ │  ╭      0x00007f22eb23d8c8:   jmp    0x00007f22eb23d987
          │ │  │      0x00007f22eb23d8cd:   data16 data16 nopw 0x0(%rax,%rax,1)
          │ │  │      0x00007f22eb23d8d8:   data16 data16 xchg %ax,%ax
          │ │  │      0x00007f22eb23d8dc:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 78)
   4.96%  │ │  │↗     0x00007f22eb23d8e0:   add    0x10(%rax,%r9,4),%r11d
   0.03%  │ │  ││     0x00007f22eb23d8e5:   movslq %r9d,%rcx
          │ │  ││     0x00007f22eb23d8e8:   mov    0x14(%rax,%rcx,4),%ebx
   0.01%  │ │  ││     0x00007f22eb23d8ec:   mov    0x18(%rax,%rcx,4),%edi
   4.83%  │ │  ││     0x00007f22eb23d8f0:   mov    0x1c(%rax,%rcx,4),%edx
   0.04%  │ │  ││     0x00007f22eb23d8f4:   mov    0x20(%rax,%rcx,4),%esi
   0.02%  │ │  ││     0x00007f22eb23d8f8:   mov    0x24(%rax,%rcx,4),%ebp
   0.05%  │ │  ││     0x00007f22eb23d8fc:   mov    0x28(%rax,%rcx,4),%r13d
   4.88%  │ │  ││     0x00007f22eb23d901:   mov    0x2c(%rax,%rcx,4),%r14d
   0.05%  │ │  ││     0x00007f22eb23d906:   mov    0x30(%rax,%rcx,4),%r10d
   0.11%  │ │  ││     0x00007f22eb23d90b:   mov    0x34(%rax,%rcx,4),%r8d
   0.28%  │ │  ││     0x00007f22eb23d910:   mov    %r9d,0x1c(%rsp)
   4.58%  │ │  ││     0x00007f22eb23d915:   mov    0x38(%rax,%rcx,4),%r9d       ;   {no_reloc}
  12.57%  │ │  ││     0x00007f22eb23d91a:   mov    %r9d,0x18(%rsp)
   8.54%  │ │  ││     0x00007f22eb23d91f:   mov    0x3c(%rax,%rcx,4),%r9d
   5.69%  │ │  ││     0x00007f22eb23d924:   mov    %r9d,0x14(%rsp)
   6.96%  │ │  ││     0x00007f22eb23d929:   mov    0x40(%rax,%rcx,4),%r9d
   1.74%  │ │  ││     0x00007f22eb23d92e:   mov    %r9d,0x10(%rsp)
   5.49%  │ │  ││     0x00007f22eb23d933:   mov    0x44(%rax,%rcx,4),%r9d
   0.24%  │ │  ││     0x00007f22eb23d938:   mov    %r9d,0xc(%rsp)
   4.07%  │ │  ││     0x00007f22eb23d93d:   mov    0x48(%rax,%rcx,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@22 (line 78)
   0.09%  │ │  ││     0x00007f22eb23d942:   add    %ebx,%r11d
   1.43%  │ │  ││     0x00007f22eb23d945:   add    %edi,%r11d
          │ │  ││     0x00007f22eb23d948:   add    %edx,%r11d
   3.48%  │ │  ││     0x00007f22eb23d94b:   add    %esi,%r11d
   0.06%  │ │  ││     0x00007f22eb23d94e:   add    %ebp,%r11d
   1.41%  │ │  ││     0x00007f22eb23d951:   add    %r13d,%r11d
          │ │  ││     0x00007f22eb23d954:   add    %r14d,%r11d
   3.67%  │ │  ││     0x00007f22eb23d957:   add    %r10d,%r11d
   0.10%  │ │  ││     0x00007f22eb23d95a:   add    %r8d,%r11d
   2.04%  │ │  ││     0x00007f22eb23d95d:   add    0x18(%rsp),%r11d
   0.27%  │ │  ││     0x00007f22eb23d962:   add    0x14(%rsp),%r11d
   3.81%  │ │  ││     0x00007f22eb23d967:   add    0x10(%rsp),%r11d
   1.44%  │ │  ││     0x00007f22eb23d96c:   add    0xc(%rsp),%r11d
   4.30%  │ │  ││     0x00007f22eb23d971:   add    %r9d,%r11d
   4.24%  │ │  ││     0x00007f22eb23d974:   add    0x4c(%rax,%rcx,4),%r11d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@28 (line 79)
   4.84%  │ │  ││     0x00007f22eb23d979:   mov    0x1c(%rsp),%r9d
   0.02%  │ │  ││     0x00007f22eb23d97e:   lea    0x10(%r9),%r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@30 (line 78)
          │ │  ││     0x00007f22eb23d982:   mov    0x20(%rsp),%r8d              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@13 (line 78)
          │ │  ↘│     0x00007f22eb23d987:   cmp    %r9d,%r8d
          │ │   ╰     0x00007f22eb23d98a:   jg     0x00007f22eb23d8e0
   0.00%  │ │         0x00007f22eb23d990:   mov    0x24(%rsp),%r10d
   0.02%  │ │    ╭    0x00007f22eb23d995:   jmp    0x00007f22eb23d9a8
          │ │    │    0x00007f22eb23d99a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 78)
   0.00%  │ │    │↗   0x00007f22eb23d9a0:   add    0x10(%rax,%r9,4),%r11d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@28 (line 79)
   0.14%  │ │    ││   0x00007f22eb23d9a5:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@30 (line 78)
          │ │    ↘│   0x00007f22eb23d9a8:   cmp    %r9d,%r10d
          │ │     ╰   0x00007f22eb23d9ab:   jg     0x00007f22eb23d9a0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 78)
          │ │      ↗  0x00007f22eb23d9ad:   mov    %r11d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@37 (line 82)
          │ │      │  0x00007f22eb23d9b0:   mov    0x30(%rsp),%rbp
   0.01%  │ │      │  0x00007f22eb23d9b5:   add    $0x38,%rsp
          │ │      │  0x00007f22eb23d9b9:   nopl   0x0(%rax)
          │ │      │  0x00007f22eb23d9c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │      │  0x00007f22eb23d9c7:   ja     0x00007f22eb23da09
   0.00%  │ │      │  0x00007f22eb23d9cd:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 78)
          ↘ │      │  0x00007f22eb23d9ce:   mov    $0x0,%r11d
            │      ╰  0x00007f22eb23d9d4:   jmp    0x00007f22eb23d9ad           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@36 (line 82)
            ↘         0x00007f22eb23d9d6:   movl   $0xffffffe5,0x484(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@8 (line 78)
                      0x00007f22eb23d9e1:   movq   $0x18,0x490(%r15)
                      0x00007f22eb23d9ec:   call   0x00007f22eac3517a           ; ImmutableOopMap {rsi=Oop }
                                                                                ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@0 (line 76)
....................................................................................................
  96.58%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch, version 3, compile id 955 
   1.85%              kernel  [unknown] 
   0.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_no_if_branch_jmhTest::no_if_branch_avgt_jmhStub, version 5, compile id 986 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.83%  <...other 297 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch, version 3, compile id 955 
   2.87%              kernel  [unknown] 
   0.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_no_if_branch_jmhTest::no_if_branch_avgt_jmhStub, version 5, compile id 986 
   0.09%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  _IO_fflush 
   0.01%        libc-2.31.so  _IO_str_init_static_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.16%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.72%      jvmci, level 4
   2.87%              kernel
   0.14%           libjvm.so
   0.12%        libc-2.31.so
   0.09%                    
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.predictable_if_branch
# Parameters: (size = 16384)

# Run progress: 33.33% complete, ETA 00:03:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9506.950 ns/op
# Warmup Iteration   2: 9482.711 ns/op
# Warmup Iteration   3: 9488.791 ns/op
# Warmup Iteration   4: 9489.135 ns/op
# Warmup Iteration   5: 9488.840 ns/op
Iteration   1: 9488.603 ns/op
Iteration   2: 9488.906 ns/op
Iteration   3: 9489.137 ns/op
Iteration   4: 9488.093 ns/op
Iteration   5: 9488.656 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.predictable_if_branch":
  9488.679 ±(99.9%) 1.505 ns/op [Average]
  (min, avg, max) = (9488.093, 9488.679, 9489.137), stdev = 0.391
  CI (99.9%): [9487.174, 9490.184] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.predictable_if_branch:asm":
PrintAssembly processed: 216938 total address lines.
Perf output processed (skipped 60.365 seconds):
 Column 1: cycles (50824 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 3, compile id 952 

                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@3 (line 91)
   0.01%        0x00007f2e3b23c217:   mov    %r11d,%r8d
   0.00%        0x00007f2e3b23c21a:   mov    $0x1,%r11d
          ╭     0x00007f2e3b23c220:   jmp    0x00007f2e3b23c258           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@13 (line 91)
          │     0x00007f2e3b23c225:   data16 data16 nopw 0x0(%rax,%rax,1)
          │     0x00007f2e3b23c230:   data16 data16 xchg %ax,%ax
          │     0x00007f2e3b23c234:   nopl   0x0(%rax,%rax,1)
          │     0x00007f2e3b23c23c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@16 (line 91)
  16.23%  │ ↗   0x00007f2e3b23c240:   mov    0x10(%rax,%r11,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 91)
  31.80%  │ │   0x00007f2e3b23c245:   cmp    $0x1000,%r9d
          │╭│   0x00007f2e3b23c24c:   jge    0x00007f2e3b23c27f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 92)
  19.83%  │││   0x00007f2e3b23c252:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 93)
  13.85%  │││   0x00007f2e3b23c255:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@38 (line 91)
  15.53%  ↘││   0x00007f2e3b23c258:   cmp    %r11d,%r10d
           │╰   0x00007f2e3b23c25b:   jg     0x00007f2e3b23c240           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@16 (line 91)
   0.01%   │ ↗  0x00007f2e3b23c25d:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@45 (line 97)
   0.00%   │ │  0x00007f2e3b23c260:   mov    0x10(%rsp),%rbp
   0.07%   │ │  0x00007f2e3b23c265:   add    $0x18,%rsp
           │ │  0x00007f2e3b23c269:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │ │  0x00007f2e3b23c270:   ja     0x00007f2e3b23c2ec
   0.01%   │ │  0x00007f2e3b23c276:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@16 (line 91)
           │ │  0x00007f2e3b23c277:   mov    $0x0,%r8d
           │ ╰  0x00007f2e3b23c27d:   jmp    0x00007f2e3b23c25d           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@44 (line 97)
           ↘    0x00007f2e3b23c27f:   movl   $0xffffffed,0x484(%r15)      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 92)
                0x00007f2e3b23c28a:   movq   $0x14,0x490(%r15)
                0x00007f2e3b23c295:   call   0x00007f2e3ac3517a           ; ImmutableOopMap {rax=Oop }
                                                                          ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@13 (line 91)
....................................................................................................
  97.33%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.33%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 3, compile id 952 
   0.70%              kernel  [unknown] 
   0.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_predictable_if_branch_jmhTest::predictable_if_branch_avgt_jmhStub, version 5, compile id 985 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 3, compile id 952 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.13%  <...other 383 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.40%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 3, compile id 952 
   2.04%              kernel  [unknown] 
   0.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_predictable_if_branch_jmhTest::predictable_if_branch_avgt_jmhStub, version 5, compile id 985 
   0.09%                      <unknown> 
   0.04%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%           libjvm.so  decode_env::print_hook_comments 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  resource_allocate_bytes 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.17%  <...other 71 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.54%      jvmci, level 4
   2.04%              kernel
   0.14%           libjvm.so
   0.13%        libc-2.31.so
   0.09%                    
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 1
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch
# Parameters: (size = 16384)

# Run progress: 66.67% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 80822.595 ns/op
# Warmup Iteration   2: 80285.275 ns/op
# Warmup Iteration   3: 80346.905 ns/op
# Warmup Iteration   4: 80322.032 ns/op
# Warmup Iteration   5: 80338.553 ns/op
Iteration   1: 80271.634 ns/op
Iteration   2: 80218.912 ns/op
Iteration   3: 80235.154 ns/op
Iteration   4: 80192.101 ns/op
Iteration   5: 80424.008 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch":
  80268.362 ±(99.9%) 352.918 ns/op [Average]
  (min, avg, max) = (80192.101, 80268.362, 80424.008), stdev = 91.652
  CI (99.9%): [79915.444, 80621.279] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch:asm":
PrintAssembly processed: 218695 total address lines.
Perf output processed (skipped 60.416 seconds):
 Column 1: cycles (50906 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 4, compile id 952 

                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@16 (line 105)
                  0x00007f91d723d753:   mov    %r10d,%r11d
                  0x00007f91d723d756:   dec    %r11d
                  0x00007f91d723d759:   movslq %r11d,%r11
                  0x00007f91d723d75c:   mov    %r10d,%r8d
                  0x00007f91d723d75f:   nop
                  0x00007f91d723d760:   cmp    %r11,%r8
          ╭       0x00007f91d723d763:   ja     0x00007f91d723d773
          │       0x00007f91d723d769:   cmp    $0x2,%r10d
          │╭      0x00007f91d723d76d:   jae    0x00007f91d723d7e4
   0.00%  ↘│      0x00007f91d723d773:   mov    0x10(,%rax,8),%r11d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@22 (line 105)
           │      0x00007f91d723d77b:   cmp    $0x801,%r11d
   0.00%   │      0x00007f91d723d782:   mov    $0x0,%r8d
           │      0x00007f91d723d788:   cmovl  %r11d,%r8d                   ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@30 (line 106)
           │      0x00007f91d723d78c:   shl    $0x3,%rax                    ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@3 (line 105)
           │      0x00007f91d723d790:   mov    $0x1,%r11d
           │      0x00007f91d723d796:   data16 nopw 0x0(%rax,%rax,1)        ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@13 (line 105)
  23.30%   │ ↗↗   0x00007f91d723d7a0:   cmp    %r11d,%r10d
           │╭││   0x00007f91d723d7a3:   jle    0x00007f91d723d7c2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@16 (line 105)
  11.49%   ││││   0x00007f91d723d7a9:   mov    0x10(%rax,%r11,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@22 (line 105)
  14.78%   ││││   0x00007f91d723d7ae:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@38 (line 105)
   0.06%   ││││   0x00007f91d723d7b1:   cmp    $0x801,%r9d
           ││╰│   0x00007f91d723d7b8:   jge    0x00007f91d723d7a0           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
           ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@30 (line 106)
  29.44%   ││ │   0x00007f91d723d7ba:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@36 (line 107)
  18.39%   ││ │   0x00007f91d723d7bd:   mov    %r9d,%r8d
   0.14%   ││ ╰   0x00007f91d723d7c0:   jmp    0x00007f91d723d7a0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@38 (line 105)
   0.01%   │↘  ↗  0x00007f91d723d7c2:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@45 (line 111)
   0.00%   │   │  0x00007f91d723d7c5:   mov    0x10(%rsp),%rbp
   0.01%   │   │  0x00007f91d723d7ca:   add    $0x18,%rsp
           │   │  0x00007f91d723d7ce:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │   │  0x00007f91d723d7d5:   ja     0x00007f91d723d817
           │   │  0x00007f91d723d7db:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@16 (line 105)
           │   │  0x00007f91d723d7dc:   mov    $0x0,%r8d
           │   ╰  0x00007f91d723d7e2:   jmp    0x00007f91d723d7c2           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@44 (line 111)
           ↘      0x00007f91d723d7e4:   movl   $0xffffffe5,0x484(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@8 (line 105)
                  0x00007f91d723d7ef:   movq   $0x18,0x490(%r15)
....................................................................................................
  97.63%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.63%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 4, compile id 952 
   0.80%              kernel  [unknown] 
   0.25%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_unpredictable_if_branch_jmhTest::unpredictable_if_branch_avgt_jmhStub, version 5, compile id 980 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.76%  <...other 287 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.63%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 4, compile id 952 
   2.00%              kernel  [unknown] 
   0.10%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_unpredictable_if_branch_jmhTest::unpredictable_if_branch_avgt_jmhStub, version 5, compile id 980 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  stringStream::write 
   0.00%           libjvm.so  ImplicitExceptionTable::ImplicitExceptionTable 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   0.12%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.65%      jvmci, level 4
   2.00%              kernel
   0.11%           libjvm.so
   0.10%                    
   0.10%        libc-2.31.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%              [vdso]
   0.00%         c1, level 3
   0.00%         interpreter
   0.00%    perf-2110791.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:40

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

Benchmark                                                 (size)  Mode  Cnt      Score     Error  Units
IfConditionalBranchBenchmark.no_if_branch                  16384  avgt    5   7751.593 ±  79.584  ns/op
IfConditionalBranchBenchmark.no_if_branch:asm              16384  avgt             NaN              ---
IfConditionalBranchBenchmark.predictable_if_branch         16384  avgt    5   9488.679 ±   1.505  ns/op
IfConditionalBranchBenchmark.predictable_if_branch:asm     16384  avgt             NaN              ---
IfConditionalBranchBenchmark.unpredictable_if_branch       16384  avgt    5  80268.362 ± 352.918  ns/op
IfConditionalBranchBenchmark.unpredictable_if_branch:asm   16384  avgt             NaN              ---
