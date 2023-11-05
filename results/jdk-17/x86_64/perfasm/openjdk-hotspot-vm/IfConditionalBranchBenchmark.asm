# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 6400.027 ns/op
# Warmup Iteration   2: 6348.894 ns/op
# Warmup Iteration   3: 6348.393 ns/op
# Warmup Iteration   4: 6348.374 ns/op
# Warmup Iteration   5: 6348.203 ns/op
Iteration   1: 6350.342 ns/op
Iteration   2: 6350.407 ns/op
Iteration   3: 6350.450 ns/op
Iteration   4: 6350.430 ns/op
Iteration   5: 6350.235 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.no_if_branch":
  6350.373 ±(99.9%) 0.335 ns/op [Average]
  (min, avg, max) = (6350.235, 6350.373, 6350.450), stdev = 0.087
  CI (99.9%): [6350.038, 6350.707] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.no_if_branch:·asm":
PrintAssembly processed: 117066 total address lines.
Perf output processed (skipped 55.650 seconds):
 Column 1: cycles (50685 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch, version 4, compile id 478 

                    # {method} {0x00007fb22cc75388} &apos;no_if_branch&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/IfConditionalBranchBenchmark&apos;
                    #           [sp+0x30]  (sp of caller)
                    0x00007fb240f64aa0:   mov    0x8(%rsi),%r10d
                    0x00007fb240f64aa4:   movabs $0x800000000,%r11
                    0x00007fb240f64aae:   add    %r11,%r10
                    0x00007fb240f64ab1:   cmp    %r10,%rax
                    0x00007fb240f64ab4:   jne    0x00007fb2409fbd80           ;   {runtime_call ic_miss_stub}
                    0x00007fb240f64aba:   xchg   %ax,%ax
                    0x00007fb240f64abc:   nopl   0x0(%rax)
                  [Verified Entry Point]
   0.00%            0x00007fb240f64ac0:   mov    %eax,-0x14000(%rsp)
   0.00%            0x00007fb240f64ac7:   push   %rbp
                    0x00007fb240f64ac8:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@-1 (line 75)
   0.01%            0x00007fb240f64acc:   mov    0x18(%rsi),%ebp              ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@3 (line 77)
   0.01%            0x00007fb240f64acf:   mov    0xc(%r12,%rbp,8),%edi        ; implicit exception: dispatches to 0x00007fb240f64bbc
                                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@8 (line 77)
   0.04%            0x00007fb240f64ad4:   xor    %r10d,%r10d
                    0x00007fb240f64ad7:   test   %edi,%edi
          ╭         0x00007fb240f64ad9:   jbe    0x00007fb240f64baa           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 77)
          │         0x00007fb240f64adf:   mov    %edi,%r11d
          │         0x00007fb240f64ae2:   dec    %r11d
          │         0x00007fb240f64ae5:   cmp    %edi,%r11d
          │╭        0x00007fb240f64ae8:   jae    0x00007fb240f64bae
   0.00%  ││        0x00007fb240f64aee:   mov    0x10(%r12,%rbp,8),%eax       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@22 (line 77)
   0.03%  ││        0x00007fb240f64af3:   lea    (%r12,%rbp,8),%r9            ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@3 (line 77)
          ││        0x00007fb240f64af7:   mov    %edi,%r8d
          ││        0x00007fb240f64afa:   add    $0xfffffff9,%r8d
          ││        0x00007fb240f64afe:   mov    $0x80000000,%ebx
   0.01%  ││        0x00007fb240f64b03:   cmp    %r8d,%r11d
          ││        0x00007fb240f64b06:   cmovl  %ebx,%r8d
          ││        0x00007fb240f64b0a:   mov    $0x1,%ecx
          ││        0x00007fb240f64b0f:   cmp    $0x1,%r8d
          ││╭       0x00007fb240f64b13:   jle    0x00007fb240f64b85
   0.01%  │││       0x00007fb240f64b19:   mov    $0x1f40,%ebx
          │││ ↗     0x00007fb240f64b1e:   mov    %r8d,%r11d
          │││ │     0x00007fb240f64b21:   sub    %ecx,%r11d
   0.01%  │││ │     0x00007fb240f64b24:   cmp    %ecx,%r8d
   0.00%  │││ │     0x00007fb240f64b27:   cmovl  %r10d,%r11d
          │││ │     0x00007fb240f64b2b:   cmp    $0x1f40,%r11d
          │││ │     0x00007fb240f64b32:   cmova  %ebx,%r11d
   0.02%  │││ │     0x00007fb240f64b36:   add    %ecx,%r11d
          │││ │     0x00007fb240f64b39:   nopl   0x0(%rax)                    ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@19 (line 77)
          │││↗│     0x00007fb240f64b40:   add    0x10(%r9,%rcx,4),%eax
  12.22%  │││││     0x00007fb240f64b45:   add    0x14(%r9,%rcx,4),%eax
  12.25%  │││││     0x00007fb240f64b4a:   add    0x18(%r9,%rcx,4),%eax
  12.26%  │││││     0x00007fb240f64b4f:   add    0x1c(%r9,%rcx,4),%eax
  12.07%  │││││     0x00007fb240f64b54:   add    0x20(%r9,%rcx,4),%eax
  11.98%  │││││     0x00007fb240f64b59:   add    0x24(%r9,%rcx,4),%eax
  12.07%  │││││     0x00007fb240f64b5e:   add    0x28(%r9,%rcx,4),%eax
  12.37%  │││││     0x00007fb240f64b63:   add    0x2c(%r9,%rcx,4),%eax        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@28 (line 78)
  12.47%  │││││     0x00007fb240f64b68:   add    $0x8,%ecx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@30 (line 77)
          │││││     0x00007fb240f64b6b:   cmp    %r11d,%ecx
          │││╰│     0x00007fb240f64b6e:   jl     0x00007fb240f64b40           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 77)
          │││ │     0x00007fb240f64b70:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r9=Oop }
          │││ │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││ │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@33 (line 77)
          │││ │     0x00007fb240f64b77:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@33 (line 77)
          │││ │                                                               ;   {poll}
   0.01%  │││ │     0x00007fb240f64b7a:   nopw   0x0(%rax,%rax,1)
          │││ │     0x00007fb240f64b80:   cmp    %r8d,%ecx
          │││ ╰     0x00007fb240f64b83:   jl     0x00007fb240f64b1e
          ││↘       0x00007fb240f64b85:   cmp    %edi,%ecx
          ││   ╭    0x00007fb240f64b87:   jge    0x00007fb240f64b97
          ││   │    0x00007fb240f64b89:   data16 xchg %ax,%ax                 ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@19 (line 77)
   0.03%  ││   │↗   0x00007fb240f64b8c:   add    0x10(%r9,%rcx,4),%eax        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@28 (line 78)
          ││   ││   0x00007fb240f64b91:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@30 (line 77)
   0.01%  ││   ││   0x00007fb240f64b93:   cmp    %edi,%ecx
          ││   │╰   0x00007fb240f64b95:   jl     0x00007fb240f64b8c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 77)
          ││   ↘ ↗  0x00007fb240f64b97:   add    $0x20,%rsp
   0.00%  ││     │  0x00007fb240f64b9b:   pop    %rbp
   0.01%  ││     │  0x00007fb240f64b9c:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││     │  0x00007fb240f64ba3:   ja     0x00007fb240f64bc8
          ││     │  0x00007fb240f64ba9:   ret    
          ↘│     │  0x00007fb240f64baa:   xor    %eax,%eax
           │     ╰  0x00007fb240f64bac:   jmp    0x00007fb240f64b97
           ↘        0x00007fb240f64bae:   mov    $0xffffff76,%esi
                    0x00007fb240f64bb3:   mov    %edi,0x4(%rsp)
                    0x00007fb240f64bb7:   call   0x00007fb240a01600           ; ImmutableOopMap {rbp=NarrowOop }
                                                                              ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 77)
                                                                              ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  97.90%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch, version 4, compile id 478 
   0.72%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_no_if_branch_jmhTest::no_if_branch_avgt_jmhStub, version 5, compile id 501 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.81%  <...other 285 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch, version 4, compile id 478 
   1.75%              kernel  [unknown] 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_no_if_branch_jmhTest::no_if_branch_avgt_jmhStub, version 5, compile id 501 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __strxfrm_l 
   0.02%        libc-2.31.so  [unknown] 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  fileStream::flush 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  __strncat_ssse3 
   0.00%        libc-2.31.so  getifaddrs_internal 
   0.00%        libc-2.31.so  re_search_stub 
   0.00%           libjvm.so  nmethod::reloc_string_for 
   0.00%        libc-2.31.so  _nl_cleanup_time 
   0.00%      hsdis-amd64.so  print_insn 
   0.12%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.96%         c2, level 4
   1.75%              kernel
   0.13%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.predictable_if_branch
# Parameters: (size = 16384)

# Run progress: 33.33% complete, ETA 00:03:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7447.650 ns/op
# Warmup Iteration   2: 7378.245 ns/op
# Warmup Iteration   3: 7378.071 ns/op
# Warmup Iteration   4: 7376.524 ns/op
# Warmup Iteration   5: 7375.946 ns/op
Iteration   1: 7377.924 ns/op
Iteration   2: 7374.661 ns/op
Iteration   3: 7374.844 ns/op
Iteration   4: 7377.926 ns/op
Iteration   5: 7378.258 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.predictable_if_branch":
  7376.723 ±(99.9%) 6.949 ns/op [Average]
  (min, avg, max) = (7374.661, 7376.723, 7378.258), stdev = 1.805
  CI (99.9%): [7369.774, 7383.672] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.predictable_if_branch:·asm":
PrintAssembly processed: 112739 total address lines.
Perf output processed (skipped 55.382 seconds):
 Column 1: cycles (50625 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 3, compile id 457 

                       0x00007fe724f63589:   mov    $0x80000000,%r8d
   0.01%               0x00007fe724f6358f:   cmp    %r10d,%r11d
                       0x00007fe724f63592:   cmovl  %r8d,%r10d
                       0x00007fe724f63596:   mov    $0x1,%r11d
                       0x00007fe724f6359c:   nopl   0x0(%rax)
                       0x00007fe724f635a0:   cmp    $0x1,%r10d
          ╭            0x00007fe724f635a4:   jle    0x00007fe724f636ee
          │            0x00007fe724f635aa:   mov    $0x1f40,%r9d
          │     ↗      0x00007fe724f635b0:   mov    %r10d,%ecx
          │     │      0x00007fe724f635b3:   sub    %r11d,%ecx
   0.00%  │     │      0x00007fe724f635b6:   cmp    %r11d,%r10d
   0.00%  │     │      0x00007fe724f635b9:   cmovl  %eax,%ecx
          │     │      0x00007fe724f635bc:   cmp    $0x1f40,%ecx
          │     │      0x00007fe724f635c2:   cmova  %r9d,%ecx
   0.02%  │     │      0x00007fe724f635c6:   add    %r11d,%ecx
          │     │      0x00007fe724f635c9:   nopl   0x0(%rax)                    ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@19 (line 90)
   2.63%  │    ↗│      0x00007fe724f635d0:   mov    0x10(%rsi,%r11,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 90)
   2.67%  │    ││      0x00007fe724f635d5:   data16 data16 nopw 0x0(%rax,%rax,1)
   2.63%  │    ││      0x00007fe724f635e0:   cmp    $0x1000,%r8d
          │╭   ││      0x00007fe724f635e7:   jge    0x00007fe724f63737           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 91)
   2.63%  ││   ││      0x00007fe724f635ed:   mov    0x14(%rsi,%r11,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 90)
   2.57%  ││   ││      0x00007fe724f635f2:   add    %r8d,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 92)
   2.69%  ││   ││      0x00007fe724f635f5:   data16 data16 nopw 0x0(%rax,%rax,1)
   2.67%  ││   ││      0x00007fe724f63600:   cmp    $0x1000,%ebx
          ││   ││      0x00007fe724f63606:   jge    0x00007fe724f63754           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 91)
   2.59%  ││   ││      0x00007fe724f6360c:   mov    0x18(%rsi,%r11,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 90)
   2.57%  ││   ││      0x00007fe724f63611:   add    %ebx,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 92)
   2.79%  ││   ││      0x00007fe724f63613:   nopw   0x0(%rax,%rax,1)
   2.71%  ││   ││      0x00007fe724f6361c:   data16 data16 xchg %ax,%ax
   2.70%  ││   ││      0x00007fe724f63620:   cmp    $0x1000,%r8d
          ││╭  ││      0x00007fe724f63627:   jge    0x00007fe724f63727           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 91)
   2.55%  │││  ││      0x00007fe724f6362d:   mov    0x1c(%rsi,%r11,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 90)
   2.58%  │││  ││      0x00007fe724f63632:   add    %r8d,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 92)
   2.57%  │││  ││      0x00007fe724f63635:   data16 data16 nopw 0x0(%rax,%rax,1)
   2.70%  │││  ││      0x00007fe724f63640:   cmp    $0x1000,%ebx
          │││  ││      0x00007fe724f63646:   jge    0x00007fe724f63759           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 91)
   2.76%  │││  ││      0x00007fe724f6364c:   mov    0x20(%rsi,%r11,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 90)
   2.60%  │││  ││      0x00007fe724f63651:   add    %ebx,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 92)
   2.58%  │││  ││      0x00007fe724f63653:   nopw   0x0(%rax,%rax,1)
   2.64%  │││  ││      0x00007fe724f6365c:   data16 data16 xchg %ax,%ax
   2.55%  │││  ││      0x00007fe724f63660:   cmp    $0x1000,%r8d
          │││╭ ││      0x00007fe724f63667:   jge    0x00007fe724f6372d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 91)
   2.56%  ││││ ││      0x00007fe724f6366d:   mov    0x24(%rsi,%r11,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 90)
   2.66%  ││││ ││      0x00007fe724f63672:   add    %r8d,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 92)
   2.67%  ││││ ││      0x00007fe724f63675:   data16 data16 nopw 0x0(%rax,%rax,1)
   2.77%  ││││ ││      0x00007fe724f63680:   cmp    $0x1000,%ebx
          ││││ ││      0x00007fe724f63686:   jge    0x00007fe724f6375f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 91)
   2.59%  ││││ ││      0x00007fe724f6368c:   mov    0x28(%rsi,%r11,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 90)
   2.62%  ││││ ││      0x00007fe724f63691:   add    %ebx,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 92)
   2.56%  ││││ ││      0x00007fe724f63693:   nopw   0x0(%rax,%rax,1)
   2.57%  ││││ ││      0x00007fe724f6369c:   data16 data16 xchg %ax,%ax
   2.55%  ││││ ││      0x00007fe724f636a0:   cmp    $0x1000,%r8d
          ││││╭││      0x00007fe724f636a7:   jge    0x00007fe724f63733           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 91)
   2.61%  │││││││      0x00007fe724f636ad:   mov    0x2c(%rsi,%r11,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 90)
   2.65%  │││││││      0x00007fe724f636b2:   add    %r8d,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 92)
   2.64%  │││││││      0x00007fe724f636b5:   data16 data16 nopw 0x0(%rax,%rax,1)
   2.54%  │││││││      0x00007fe724f636c0:   cmp    $0x1000,%ebx
          │││││││      0x00007fe724f636c6:   jge    0x00007fe724f63765           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 91)
   2.60%  │││││││      0x00007fe724f636cc:   add    %ebx,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 92)
   2.73%  │││││││      0x00007fe724f636ce:   add    $0x8,%r11d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@38 (line 90)
   2.69%  │││││││      0x00007fe724f636d2:   cmp    %ecx,%r11d
          │││││╰│      0x00007fe724f636d5:   jl     0x00007fe724f635d0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@16 (line 90)
          │││││ │      0x00007fe724f636db:   mov    0x348(%r15),%r8              ; ImmutableOopMap {rdx=NarrowOop rsi=Oop }
          │││││ │                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││ │                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@41 (line 90)
   0.06%  │││││ │      0x00007fe724f636e2:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@41 (line 90)
          │││││ │                                                                ;   {poll}
   0.13%  │││││ │      0x00007fe724f636e5:   cmp    %r10d,%r11d
          │││││ ╰      0x00007fe724f636e8:   jl     0x00007fe724f635b0
   0.00%  ↘││││        0x00007fe724f636ee:   cmp    %ebp,%r11d
           ││││  ╭     0x00007fe724f636f1:   jge    0x00007fe724f63712
   0.03%   ││││  │     0x00007fe724f636f3:   nop                                 ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           ││││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@19 (line 90)
           ││││  │↗    0x00007fe724f636f4:   mov    0x10(%rsi,%r11,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           ││││  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 90)
   0.07%   ││││  ││    0x00007fe724f636f9:   nopl   0x0(%rax)
           ││││  ││    0x00007fe724f63700:   cmp    $0x1000,%ebx
           ││││  ││    0x00007fe724f63706:   jge    0x00007fe724f6373a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││││  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 91)
   0.03%   ││││  ││    0x00007fe724f63708:   add    %ebx,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││││  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 92)
           ││││  ││    0x00007fe724f6370a:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@38 (line 90)
   0.01%   ││││  ││    0x00007fe724f6370d:   cmp    %ebp,%r11d
           ││││  │╰    0x00007fe724f63710:   jl     0x00007fe724f636f4
   0.01%   ││││  ↘     0x00007fe724f63712:   mov    %edi,%eax                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@16 (line 90)
           ││││        0x00007fe724f63714:   add    $0x30,%rsp
           ││││        0x00007fe724f63718:   pop    %rbp
   0.07%   ││││        0x00007fe724f63719:   cmp    0x340(%r15),%rsp             ;   {poll_return}
           ││││        0x00007fe724f63720:   ja     0x00007fe724f6378c
           ││││        0x00007fe724f63726:   ret    
           │↘││        0x00007fe724f63727:   add    $0x2,%r11d
           │ ││    ╭   0x00007fe724f6372b:   jmp    0x00007fe724f63737
           │ ↘│    │   0x00007fe724f6372d:   add    $0x4,%r11d
           │  │    │╭  0x00007fe724f63731:   jmp    0x00007fe724f63737
           │  ↘    ││  0x00007fe724f63733:   add    $0x6,%r11d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@38 (line 90)
           ↘       ↘↘  0x00007fe724f63737:   mov    %r8d,%ebx
                       0x00007fe724f6373a:   mov    $0xffffff45,%esi
....................................................................................................
  97.82%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 3, compile id 457 
   0.60%              kernel  [unknown] 
   0.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 3, compile id 457 
   0.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_predictable_if_branch_jmhTest::predictable_if_branch_avgt_jmhStub, version 5, compile id 485 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%              kernel  [unknown] 
   0.85%  <...other 306 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.93%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 3, compile id 457 
   1.65%              kernel  [unknown] 
   0.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_predictable_if_branch_jmhTest::predictable_if_branch_avgt_jmhStub, version 5, compile id 485 
   0.04%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  [unknown] 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  tcache_init.part.0 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  outputStream::print 
   0.00%           libjvm.so  jio_print 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           libjvm.so  xmlTextStream::write 
   0.12%  <...other 53 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.05%         c2, level 4
   1.65%              kernel
   0.13%           libjvm.so
   0.08%        libc-2.31.so
   0.04%                    
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch
# Parameters: (size = 16384)

# Run progress: 66.67% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12787.912 ns/op
# Warmup Iteration   2: 12694.924 ns/op
# Warmup Iteration   3: 12689.128 ns/op
# Warmup Iteration   4: 12695.153 ns/op
# Warmup Iteration   5: 12690.895 ns/op
Iteration   1: 12694.838 ns/op
Iteration   2: 12688.497 ns/op
Iteration   3: 12693.314 ns/op
Iteration   4: 12694.411 ns/op
Iteration   5: 12688.412 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch":
  12691.894 ±(99.9%) 12.280 ns/op [Average]
  (min, avg, max) = (12688.412, 12691.894, 12694.838), stdev = 3.189
  CI (99.9%): [12679.614, 12704.174] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch:·asm":
PrintAssembly processed: 116887 total address lines.
Perf output processed (skipped 55.623 seconds):
 Column 1: cycles (50660 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 4, compile id 483 

                   0x00007f927cf64d0e:   cmp    %ecx,%r11d
                   0x00007f927cf64d11:   cmovl  %r8d,%ecx
                   0x00007f927cf64d15:   mov    $0x1,%ebp
                   0x00007f927cf64d1a:   nopw   0x0(%rax,%rax,1)
                   0x00007f927cf64d20:   cmp    $0x1,%ecx
          ╭        0x00007f927cf64d23:   jle    0x00007f927cf64e2e           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@41 (line 104)
          │╭       0x00007f927cf64d29:   jmp    0x00007f927cf64d33
          ││ ↗     0x00007f927cf64d2b:   vmovd  %xmm0,%r9d
          ││ │     0x00007f927cf64d30:   mov    (%rsp),%ecx
   0.00%  │↘ │     0x00007f927cf64d33:   mov    %ecx,%r13d
          │  │     0x00007f927cf64d36:   sub    %ebp,%r13d
          │  │     0x00007f927cf64d39:   xor    %r10d,%r10d
          │  │     0x00007f927cf64d3c:   cmp    %ebp,%ecx
   0.01%  │  │     0x00007f927cf64d3e:   cmovl  %r10d,%r13d
          │  │     0x00007f927cf64d42:   cmp    $0x1f40,%r13d
          │  │     0x00007f927cf64d49:   mov    $0x1f40,%r10d
   0.00%  │  │     0x00007f927cf64d4f:   cmova  %r10d,%r13d
   0.00%  │  │     0x00007f927cf64d53:   add    %ebp,%r13d
          │  │     0x00007f927cf64d56:   vmovd  %r9d,%xmm0
          │  │     0x00007f927cf64d5b:   mov    %ecx,(%rsp)
   0.01%  │  │     0x00007f927cf64d5e:   xchg   %ax,%ax                      ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@19 (line 104)
          │ ↗│     0x00007f927cf64d60:   mov    0x10(%r14,%rbp,4),%r10d
   0.01%  │ ││     0x00007f927cf64d65:   mov    0x14(%r14,%rbp,4),%r8d
   6.19%  │ ││     0x00007f927cf64d6a:   mov    0x18(%r14,%rbp,4),%r11d
   0.00%  │ ││     0x00007f927cf64d6f:   mov    0x1c(%r14,%rbp,4),%ecx
          │ ││     0x00007f927cf64d74:   mov    0x20(%r14,%rbp,4),%r9d
   0.00%  │ ││     0x00007f927cf64d79:   mov    0x24(%r14,%rbp,4),%edi
   6.14%  │ ││     0x00007f927cf64d7e:   mov    0x28(%r14,%rbp,4),%ebx
   0.02%  │ ││     0x00007f927cf64d83:   mov    0x2c(%r14,%rbp,4),%esi       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@22 (line 104)
          │ ││     0x00007f927cf64d88:   mov    %eax,%edx
   0.00%  │ ││     0x00007f927cf64d8a:   add    %r10d,%edx
   6.13%  │ ││     0x00007f927cf64d8d:   cmp    $0x800,%r10d
   0.00%  │ ││     0x00007f927cf64d94:   cmovle %edx,%eax
          │ ││     0x00007f927cf64d97:   mov    %eax,%edx
   0.00%  │ ││     0x00007f927cf64d99:   add    %r8d,%edx
   5.98%  │ ││     0x00007f927cf64d9c:   cmp    $0x800,%r8d
   0.01%  │ ││     0x00007f927cf64da3:   cmovle %edx,%eax
   0.00%  │ ││     0x00007f927cf64da6:   mov    %eax,%r8d
   0.02%  │ ││     0x00007f927cf64da9:   add    %r11d,%r8d
   6.01%  │ ││     0x00007f927cf64dac:   cmp    $0x800,%r11d
   0.01%  │ ││     0x00007f927cf64db3:   cmovle %r8d,%eax
   6.05%  │ ││     0x00007f927cf64db7:   mov    %eax,%r11d
   0.01%  │ ││     0x00007f927cf64dba:   add    %ecx,%r11d
   6.17%  │ ││     0x00007f927cf64dbd:   cmp    $0x800,%ecx
   0.01%  │ ││     0x00007f927cf64dc3:   cmovle %r11d,%eax
   6.23%  │ ││     0x00007f927cf64dc7:   mov    %eax,%r10d
   0.01%  │ ││     0x00007f927cf64dca:   add    %r9d,%r10d
   6.06%  │ ││     0x00007f927cf64dcd:   cmp    $0x800,%r9d
   0.00%  │ ││     0x00007f927cf64dd4:   cmovle %r10d,%eax
   6.01%  │ ││     0x00007f927cf64dd8:   mov    %eax,%r11d
   0.01%  │ ││     0x00007f927cf64ddb:   add    %edi,%r11d
   6.20%  │ ││     0x00007f927cf64dde:   cmp    $0x800,%edi
   0.01%  │ ││     0x00007f927cf64de4:   cmovle %r11d,%eax
   5.89%  │ ││     0x00007f927cf64de8:   mov    %eax,%r10d
          │ ││     0x00007f927cf64deb:   add    %ebx,%r10d
   6.33%  │ ││     0x00007f927cf64dee:   cmp    $0x800,%ebx
   0.01%  │ ││     0x00007f927cf64df4:   cmovle %r10d,%eax
   6.15%  │ ││     0x00007f927cf64df8:   mov    %eax,%r11d
          │ ││     0x00007f927cf64dfb:   add    %esi,%r11d
   6.18%  │ ││     0x00007f927cf64dfe:   cmp    $0x800,%esi
   0.01%  │ ││     0x00007f927cf64e04:   cmovle %r11d,%eax
   6.13%  │ ││     0x00007f927cf64e08:   add    $0x8,%ebp                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@38 (line 104)
          │ ││     0x00007f927cf64e0b:   cmp    %r13d,%ebp
          │ ╰│     0x00007f927cf64e0e:   jl     0x00007f927cf64d60           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@16 (line 104)
          │  │     0x00007f927cf64e14:   mov    0x348(%r15),%r10             ; ImmutableOopMap {r14=Oop }
          │  │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │  │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@41 (line 104)
          │  │     0x00007f927cf64e1b:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@41 (line 104)
          │  │                                                               ;   {poll}
   0.02%  │  │     0x00007f927cf64e1e:   xchg   %ax,%ax
          │  │     0x00007f927cf64e20:   cmp    (%rsp),%ebp
          │  ╰     0x00007f927cf64e23:   jl     0x00007f927cf64d2b
          │        0x00007f927cf64e29:   vmovd  %xmm0,%r9d
          ↘        0x00007f927cf64e2e:   cmp    %r9d,%ebp
              ╭    0x00007f927cf64e31:   jge    0x00007f927cf64e51
   0.01%      │    0x00007f927cf64e33:   nop                                 ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
              │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@19 (line 104)
   0.00%      │↗   0x00007f927cf64e34:   mov    0x10(%r14,%rbp,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
              ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@22 (line 104)
   0.01%      ││   0x00007f927cf64e39:   mov    %eax,%r10d
   0.00%      ││   0x00007f927cf64e3c:   add    %r11d,%r10d
   0.01%      ││   0x00007f927cf64e3f:   cmp    $0x800,%r11d
   0.01%      ││   0x00007f927cf64e46:   cmovle %r10d,%eax
   0.02%      ││   0x00007f927cf64e4a:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@38 (line 104)
   0.00%      ││   0x00007f927cf64e4c:   cmp    %r9d,%ebp
              │╰   0x00007f927cf64e4f:   jl     0x00007f927cf64e34           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@16 (line 104)
              ↘ ↗  0x00007f927cf64e51:   add    $0x20,%rsp
                │  0x00007f927cf64e55:   pop    %rbp
   0.01%        │  0x00007f927cf64e56:   cmp    0x340(%r15),%rsp             ;   {poll_return}
                │  0x00007f927cf64e5d:   ja     0x00007f927cf64e84
                │  0x00007f927cf64e63:   ret    
                │  0x00007f927cf64e64:   xor    %eax,%eax
                ╰  0x00007f927cf64e66:   jmp    0x00007f927cf64e51
                   0x00007f927cf64e68:   mov    $0xffffff76,%esi
                   0x00007f927cf64e6d:   mov    %r9d,0x4(%rsp)
                   0x00007f927cf64e72:   nop
                   0x00007f927cf64e73:   call   0x00007f927ca01600           ; ImmutableOopMap {rbp=NarrowOop }
                                                                             ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@16 (line 104)
....................................................................................................
  98.10%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 4, compile id 483 
   0.35%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 4, compile id 483 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_unpredictable_if_branch_jmhTest::unpredictable_if_branch_avgt_jmhStub, version 5, compile id 509 
   0.05%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%              kernel  [unknown] 
   0.87%  <...other 308 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.17%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 4, compile id 483 
   1.41%              kernel  [unknown] 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_unpredictable_if_branch_jmhTest::unpredictable_if_branch_avgt_jmhStub, version 5, compile id 509 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  [unknown] 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  xmlTextStream::write 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%           libjvm.so  event_to_env 
   0.00%           libjvm.so  os::elapsed_counter 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.17%  <...other 77 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.23%         c2, level 4
   1.41%              kernel
   0.17%           libjvm.so
   0.08%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.03%                    
   0.02%              [vdso]
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:24

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

Benchmark                                                  (size)  Mode  Cnt      Score    Error  Units
IfConditionalBranchBenchmark.no_if_branch                   16384  avgt    5   6350.373 ±  0.335  ns/op
IfConditionalBranchBenchmark.no_if_branch:·asm              16384  avgt             NaN             ---
IfConditionalBranchBenchmark.predictable_if_branch          16384  avgt    5   7376.723 ±  6.949  ns/op
IfConditionalBranchBenchmark.predictable_if_branch:·asm     16384  avgt             NaN             ---
IfConditionalBranchBenchmark.unpredictable_if_branch        16384  avgt    5  12691.894 ± 12.280  ns/op
IfConditionalBranchBenchmark.unpredictable_if_branch:·asm   16384  avgt             NaN             ---
