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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.no_if_branch
# Parameters: (size = 16384)

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7902.703 ns/op
# Warmup Iteration   2: 7853.643 ns/op
# Warmup Iteration   3: 7855.700 ns/op
# Warmup Iteration   4: 7863.108 ns/op
# Warmup Iteration   5: 7848.582 ns/op
Iteration   1: 7846.552 ns/op
Iteration   2: 7850.103 ns/op
Iteration   3: 7850.734 ns/op
Iteration   4: 7849.905 ns/op
Iteration   5: 7848.658 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.no_if_branch":
  7849.190 ±(99.9%) 6.376 ns/op [Average]
  (min, avg, max) = (7846.552, 7849.190, 7850.734), stdev = 1.656
  CI (99.9%): [7842.814, 7855.567] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.no_if_branch:·asm":
PrintAssembly processed: 191796 total address lines.
Perf output processed (skipped 58.660 seconds):
 Column 1: cycles (50581 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch, version 4, compile id 747 

                      #           [sp+0x40]  (sp of caller)
                      0x00007fbe72ffdc80:   mov    0x8(%rsi),%r10d
                      0x00007fbe72ffdc84:   movabs $0x800000000,%r12
                      0x00007fbe72ffdc8e:   add    %r12,%r10
                      0x00007fbe72ffdc91:   xor    %r12,%r12
                      0x00007fbe72ffdc94:   cmp    %r10,%rax
                      0x00007fbe72ffdc97:   jne    0x00007fbe6b4ff780           ;   {runtime_call ic_miss_stub}
                      0x00007fbe72ffdc9d:   nop
                      0x00007fbe72ffdc9e:   xchg   %ax,%ax
                    [Verified Entry Point]
   0.00%              0x00007fbe72ffdca0:   mov    %eax,-0x14000(%rsp)
                      0x00007fbe72ffdca7:   sub    $0x38,%rsp
   0.01%              0x00007fbe72ffdcab:   mov    %rbp,0x30(%rsp)
                      0x00007fbe72ffdcb0:   mov    0x18(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@0 (line 75)
   0.00%              0x00007fbe72ffdcb3:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007fbe72ffde67
   0.03%              0x00007fbe72ffdcbb:   nopl   0x0(%rax,%rax,1)
                      0x00007fbe72ffdcc0:   test   %r10d,%r10d
          ╭           0x00007fbe72ffdcc3:   je     0x00007fbe72ffde43           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 77)
   0.01%  │           0x00007fbe72ffdcc9:   mov    %r10d,%r11d
          │           0x00007fbe72ffdccc:   dec    %r11d
          │           0x00007fbe72ffdccf:   movslq %r11d,%r11
   0.01%  │           0x00007fbe72ffdcd2:   mov    %r10d,%r8d
          │           0x00007fbe72ffdcd5:   cmp    %r11,%r8
          │╭          0x00007fbe72ffdcd8:   ja     0x00007fbe72ffdcea
          ││          0x00007fbe72ffdcde:   xchg   %ax,%ax
          ││          0x00007fbe72ffdce0:   cmp    $0x2,%r10d
          ││╭         0x00007fbe72ffdce4:   jae    0x00007fbe72ffde4b
   0.01%  │↘│         0x00007fbe72ffdcea:   mov    0x10(,%rax,8),%r11d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@22 (line 77)
   0.02%  │ │         0x00007fbe72ffdcf2:   cmp    $0x3,%r10d
          │ │         0x00007fbe72ffdcf6:   mov    $0x2,%r8d
          │ │         0x00007fbe72ffdcfc:   cmovb  %r10d,%r8d
          │ │         0x00007fbe72ffdd00:   shl    $0x3,%rax                    ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@3 (line 77)
   0.01%  │ │         0x00007fbe72ffdd04:   mov    %r11d,%r9d
          │ │         0x00007fbe72ffdd07:   mov    $0x1,%r11d
          │ │╭        0x00007fbe72ffdd0d:   jmp    0x00007fbe72ffdd28           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@13 (line 77)
          │ ││        0x00007fbe72ffdd12:   data16 nopw 0x0(%rax,%rax,1)
          │ ││        0x00007fbe72ffdd1c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 77)
   0.00%  │ ││↗       0x00007fbe72ffdd20:   add    0x10(%rax,%r11,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@28 (line 78)
          │ │││       0x00007fbe72ffdd25:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@30 (line 77)
          │ │↘│       0x00007fbe72ffdd28:   cmp    %r11d,%r8d
          │ │ ╰       0x00007fbe72ffdd2b:   jg     0x00007fbe72ffdd20
          │ │         0x00007fbe72ffdd2d:   mov    %r10d,0x24(%rsp)
   0.00%  │ │         0x00007fbe72ffdd32:   lea    -0x10(%r10),%r8d
          │ │         0x00007fbe72ffdd36:   mov    %r8d,0x20(%rsp)
          │ │         0x00007fbe72ffdd3b:   mov    %r9d,0x1c(%rsp)
          │ │         0x00007fbe72ffdd40:   mov    %r11d,%r9d
   0.01%  │ │         0x00007fbe72ffdd43:   mov    0x1c(%rsp),%r11d
   0.01%  │ │  ╭      0x00007fbe72ffdd48:   jmp    0x00007fbe72ffde07
          │ │  │      0x00007fbe72ffdd4d:   data16 data16 nopw 0x0(%rax,%rax,1)
          │ │  │      0x00007fbe72ffdd58:   data16 data16 xchg %ax,%ax
          │ │  │      0x00007fbe72ffdd5c:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 77)
   4.91%  │ │  │↗     0x00007fbe72ffdd60:   add    0x10(%rax,%r9,4),%r11d
   0.02%  │ │  ││     0x00007fbe72ffdd65:   movslq %r9d,%rcx
          │ │  ││     0x00007fbe72ffdd68:   mov    0x14(%rax,%rcx,4),%ebx
   0.02%  │ │  ││     0x00007fbe72ffdd6c:   mov    0x18(%rax,%rcx,4),%edi
   4.84%  │ │  ││     0x00007fbe72ffdd70:   mov    0x1c(%rax,%rcx,4),%edx
   0.15%  │ │  ││     0x00007fbe72ffdd74:   mov    0x20(%rax,%rcx,4),%esi
   0.13%  │ │  ││     0x00007fbe72ffdd78:   mov    0x24(%rax,%rcx,4),%ebp
   0.11%  │ │  ││     0x00007fbe72ffdd7c:   mov    0x28(%rax,%rcx,4),%r13d
   5.00%  │ │  ││     0x00007fbe72ffdd81:   mov    0x2c(%rax,%rcx,4),%r14d
   0.07%  │ │  ││     0x00007fbe72ffdd86:   mov    0x30(%rax,%rcx,4),%r10d
  17.43%  │ │  ││     0x00007fbe72ffdd8b:   mov    0x34(%rax,%rcx,4),%r8d
  10.90%  │ │  ││     0x00007fbe72ffdd90:   mov    %r9d,0x1c(%rsp)
   0.24%  │ │  ││     0x00007fbe72ffdd95:   mov    0x38(%rax,%rcx,4),%r9d
   2.66%  │ │  ││     0x00007fbe72ffdd9a:   mov    %r9d,0x18(%rsp)
   6.45%  │ │  ││     0x00007fbe72ffdd9f:   mov    0x3c(%rax,%rcx,4),%r9d
   1.79%  │ │  ││     0x00007fbe72ffdda4:   mov    %r9d,0x14(%rsp)
   4.11%  │ │  ││     0x00007fbe72ffdda9:   mov    0x40(%rax,%rcx,4),%r9d
   0.10%  │ │  ││     0x00007fbe72ffddae:   mov    %r9d,0x10(%rsp)
   3.39%  │ │  ││     0x00007fbe72ffddb3:   mov    0x44(%rax,%rcx,4),%r9d
   0.93%  │ │  ││     0x00007fbe72ffddb8:   mov    %r9d,0xc(%rsp)
   3.64%  │ │  ││     0x00007fbe72ffddbd:   mov    0x48(%rax,%rcx,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@22 (line 77)
   0.06%  │ │  ││     0x00007fbe72ffddc2:   add    %ebx,%r11d
   0.95%  │ │  ││     0x00007fbe72ffddc5:   add    %edi,%r11d
   0.80%  │ │  ││     0x00007fbe72ffddc8:   add    %edx,%r11d
   3.20%  │ │  ││     0x00007fbe72ffddcb:   add    %esi,%r11d
   0.03%  │ │  ││     0x00007fbe72ffddce:   add    %ebp,%r11d
   0.87%  │ │  ││     0x00007fbe72ffddd1:   add    %r13d,%r11d
   0.73%  │ │  ││     0x00007fbe72ffddd4:   add    %r14d,%r11d
   3.41%  │ │  ││     0x00007fbe72ffddd7:   add    %r10d,%r11d
   0.15%  │ │  ││     0x00007fbe72ffddda:   add    %r8d,%r11d
   1.34%  │ │  ││     0x00007fbe72ffdddd:   add    0x18(%rsp),%r11d
   1.24%  │ │  ││     0x00007fbe72ffdde2:   add    0x14(%rsp),%r11d
   3.56%  │ │  ││     0x00007fbe72ffdde7:   add    0x10(%rsp),%r11d
   1.17%  │ │  ││     0x00007fbe72ffddec:   add    0xc(%rsp),%r11d
   3.96%  │ │  ││     0x00007fbe72ffddf1:   add    %r9d,%r11d
   4.62%  │ │  ││     0x00007fbe72ffddf4:   add    0x4c(%rax,%rcx,4),%r11d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@28 (line 78)
   5.00%  │ │  ││     0x00007fbe72ffddf9:   mov    0x1c(%rsp),%r9d
   0.00%  │ │  ││     0x00007fbe72ffddfe:   lea    0x10(%r9),%r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@30 (line 77)
          │ │  ││     0x00007fbe72ffde02:   mov    0x20(%rsp),%r8d              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@13 (line 77)
          │ │  ↘│     0x00007fbe72ffde07:   cmp    %r9d,%r8d
          │ │   ╰     0x00007fbe72ffde0a:   jg     0x00007fbe72ffdd60
   0.01%  │ │         0x00007fbe72ffde10:   mov    0x24(%rsp),%r10d
   0.03%  │ │    ╭    0x00007fbe72ffde15:   jmp    0x00007fbe72ffde28
          │ │    │    0x00007fbe72ffde1a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 77)
   0.01%  │ │    │↗   0x00007fbe72ffde20:   add    0x10(%rax,%r9,4),%r11d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@28 (line 78)
   0.13%  │ │    ││   0x00007fbe72ffde25:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@30 (line 77)
          │ │    ↘│   0x00007fbe72ffde28:   cmp    %r9d,%r10d
          │ │     ╰   0x00007fbe72ffde2b:   jg     0x00007fbe72ffde20           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 77)
          │ │      ↗  0x00007fbe72ffde2d:   mov    %r11d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@37 (line 81)
   0.00%  │ │      │  0x00007fbe72ffde30:   mov    0x30(%rsp),%rbp
   0.00%  │ │      │  0x00007fbe72ffde35:   add    $0x38,%rsp
          │ │      │  0x00007fbe72ffde39:   mov    0x348(%r15),%rcx
   0.04%  │ │      │  0x00007fbe72ffde40:   test   %eax,(%rcx)                  ;   {poll_return}
   0.08%  │ │      │  0x00007fbe72ffde42:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 77)
          ↘ │      │  0x00007fbe72ffde43:   mov    $0x0,%r11d
            │      ╰  0x00007fbe72ffde49:   jmp    0x00007fbe72ffde2d           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@37 (line 81)
            ↘         0x00007fbe72ffde4b:   movl   $0xffffffe5,0x370(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@8 (line 77)
                      0x00007fbe72ffde56:   movq   $0x14,0x378(%r15)
                      0x00007fbe72ffde61:   call   0x00007fbe6b50527a           ; ImmutableOopMap {rsi=Oop }
                                                                                ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@0 (line 75)
....................................................................................................
  98.36%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch, version 4, compile id 747 
   0.49%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%                       <unknown> 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_no_if_branch_jmhTest::no_if_branch_avgt_jmhStub, version 5, compile id 762 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  fileStream::write 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.69%  <...other 215 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch, version 4, compile id 747 
   1.38%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_no_if_branch_jmhTest::no_if_branch_avgt_jmhStub, version 5, compile id 762 
   0.02%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.00%  libjvmcicompiler.so  Utf8_utf8ToString_361bc2ada70006cd90381541cdcf04dcc19466ed 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%            libjvm.so  outputStream::update_position 
   0.00%         libc-2.31.so  __malloc_fork_unlock_parent 
   0.00%            libjvm.so  defaultStream::write 
   0.00%            libjvm.so  xmlStream::write_text 
   0.00%            libjvm.so  SymbolTable::do_lookup 
   0.00%            libjvm.so  ClassFileParser::parse_constant_pool_entries 
   0.00%       hsdis-amd64.so  putop 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.10%  <...other 51 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.38%       jvmci, level 4
   1.38%               kernel
   0.09%            libjvm.so
   0.07%         libc-2.31.so
   0.04%                     
   0.02%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.predictable_if_branch
# Parameters: (size = 16384)

# Run progress: 33.33% complete, ETA 00:03:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9602.397 ns/op
# Warmup Iteration   2: 9645.059 ns/op
# Warmup Iteration   3: 9589.787 ns/op
# Warmup Iteration   4: 9587.115 ns/op
# Warmup Iteration   5: 9575.575 ns/op
Iteration   1: 9582.560 ns/op
Iteration   2: 9591.237 ns/op
Iteration   3: 9586.805 ns/op
Iteration   4: 9608.063 ns/op
Iteration   5: 9619.014 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.predictable_if_branch":
  9597.536 ±(99.9%) 59.380 ns/op [Average]
  (min, avg, max) = (9582.560, 9597.536, 9619.014), stdev = 15.421
  CI (99.9%): [9538.155, 9656.916] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.predictable_if_branch:·asm":
PrintAssembly processed: 193175 total address lines.
Perf output processed (skipped 58.669 seconds):
 Column 1: cycles (50700 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 3, compile id 748 

                  #           [sp+0x20]  (sp of caller)
                  0x00007f2782ffc400:   mov    0x8(%rsi),%r10d
                  0x00007f2782ffc404:   movabs $0x800000000,%r12
                  0x00007f2782ffc40e:   add    %r12,%r10
                  0x00007f2782ffc411:   xor    %r12,%r12
                  0x00007f2782ffc414:   cmp    %r10,%rax
                  0x00007f2782ffc417:   jne    0x00007f277b4ff780           ;   {runtime_call ic_miss_stub}
                  0x00007f2782ffc41d:   nop
                  0x00007f2782ffc41e:   xchg   %ax,%ax
                [Verified Entry Point]
   0.01%          0x00007f2782ffc420:   mov    %eax,-0x14000(%rsp)
                  0x00007f2782ffc427:   sub    $0x18,%rsp
   0.00%          0x00007f2782ffc42b:   mov    %rbp,0x10(%rsp)
                  0x00007f2782ffc430:   mov    0x18(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@0 (line 88)
   0.00%          0x00007f2782ffc433:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f2782ffc527
   0.04%          0x00007f2782ffc43b:   nopl   0x0(%rax,%rax,1)
                  0x00007f2782ffc440:   test   %r10d,%r10d
          ╭       0x00007f2782ffc443:   je     0x00007f2782ffc4d3           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@16 (line 90)
   0.00%  │       0x00007f2782ffc449:   mov    0x10(,%rax,8),%r11d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 90)
   0.02%  │       0x00007f2782ffc451:   cmp    $0x1000,%r11d
          │       0x00007f2782ffc458:   jge    0x00007f2782ffc4f7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 91)
   0.01%  │       0x00007f2782ffc45e:   mov    %r10d,%r8d
          │       0x00007f2782ffc461:   dec    %r8d
          │       0x00007f2782ffc464:   movslq %r8d,%r8
          │       0x00007f2782ffc467:   mov    %r10d,%r9d
   0.00%  │       0x00007f2782ffc46a:   cmp    %r8,%r9
          │╭      0x00007f2782ffc46d:   ja     0x00007f2782ffc47d
          ││      0x00007f2782ffc473:   cmp    $0x2,%r10d
          ││      0x00007f2782ffc477:   jae    0x00007f2782ffc518           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 90)
          │↘      0x00007f2782ffc47d:   shl    $0x3,%rax                    ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@3 (line 90)
          │       0x00007f2782ffc481:   mov    %r11d,%r8d
          │       0x00007f2782ffc484:   mov    $0x1,%r11d
   0.00%  │ ╭     0x00007f2782ffc48a:   jmp    0x00007f2782ffc4b8           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@13 (line 90)
          │ │     0x00007f2782ffc48f:   data16 data16 nopw 0x0(%rax,%rax,1)
          │ │     0x00007f2782ffc49a:   data16 data16 xchg %ax,%ax
          │ │     0x00007f2782ffc49e:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@16 (line 90)
  16.01%  │ │ ↗   0x00007f2782ffc4a0:   mov    0x10(%rax,%r11,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 90)
  32.83%  │ │ │   0x00007f2782ffc4a5:   cmp    $0x1000,%r9d
          │ │╭│   0x00007f2782ffc4ac:   jge    0x00007f2782ffc4db           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 91)
  19.84%  │ │││   0x00007f2782ffc4b2:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 92)
  13.65%  │ │││   0x00007f2782ffc4b5:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@38 (line 90)
  15.29%  │ ↘││   0x00007f2782ffc4b8:   cmp    %r11d,%r10d
          │  │╰   0x00007f2782ffc4bb:   jg     0x00007f2782ffc4a0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@16 (line 90)
   0.02%  │  │ ↗  0x00007f2782ffc4bd:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@45 (line 96)
   0.00%  │  │ │  0x00007f2782ffc4c0:   mov    0x10(%rsp),%rbp
   0.07%  │  │ │  0x00007f2782ffc4c5:   add    $0x18,%rsp
          │  │ │  0x00007f2782ffc4c9:   mov    0x348(%r15),%rcx
   0.01%  │  │ │  0x00007f2782ffc4d0:   test   %eax,(%rcx)                  ;   {poll_return}
   0.06%  │  │ │  0x00007f2782ffc4d2:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@16 (line 90)
          ↘  │ │  0x00007f2782ffc4d3:   mov    $0x0,%r8d
             │ ╰  0x00007f2782ffc4d9:   jmp    0x00007f2782ffc4bd           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
             │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@45 (line 96)
             ↘    0x00007f2782ffc4db:   movl   $0xffffffed,0x370(%r15)      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 91)
                  0x00007f2782ffc4e6:   movq   $0x10,0x378(%r15)
                  0x00007f2782ffc4f1:   call   0x00007f277b50527a           ; ImmutableOopMap {rax=Oop }
                                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@13 (line 90)
....................................................................................................
  97.86%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 3, compile id 748 
   0.59%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_predictable_if_branch_jmhTest::predictable_if_branch_avgt_jmhStub, version 5, compile id 764 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.00%  <...other 324 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 3, compile id 748 
   1.81%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_predictable_if_branch_jmhTest::predictable_if_branch_avgt_jmhStub, version 5, compile id 764 
   0.03%                       <unknown> 
   0.01%         libc-2.31.so  [unknown] 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  _int_realloc 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.00%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.00%   libpthread-2.31.so  __pthread_mutex_lock 
   0.00%          interpreter  return entry points  
   0.00%          interpreter  method entry point (kind = zerolocals)  
   0.14%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.91%       jvmci, level 4
   1.81%               kernel
   0.11%            libjvm.so
   0.07%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.01%           ld-2.31.so
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch
# Parameters: (size = 16384)

# Run progress: 66.67% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 79679.657 ns/op
# Warmup Iteration   2: 79453.018 ns/op
# Warmup Iteration   3: 79302.261 ns/op
# Warmup Iteration   4: 79293.497 ns/op
# Warmup Iteration   5: 79292.610 ns/op
Iteration   1: 79295.870 ns/op
Iteration   2: 79302.053 ns/op
Iteration   3: 79298.633 ns/op
Iteration   4: 79299.655 ns/op
Iteration   5: 79295.016 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch":
  79298.246 ±(99.9%) 11.011 ns/op [Average]
  (min, avg, max) = (79295.016, 79298.246, 79302.053), stdev = 2.860
  CI (99.9%): [79287.235, 79309.257] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch:·asm":
PrintAssembly processed: 190977 total address lines.
Perf output processed (skipped 58.443 seconds):
 Column 1: cycles (50759 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 3, compile id 723 

                  0x00007f826effad4c:   dec    %r11d
                  0x00007f826effad4f:   movslq %r11d,%r11
                  0x00007f826effad52:   mov    %r10d,%r8d
                  0x00007f826effad55:   cmp    %r11,%r8
          ╭       0x00007f826effad58:   ja     0x00007f826effad6a
          │       0x00007f826effad5e:   xchg   %ax,%ax
          │       0x00007f826effad60:   cmp    $0x2,%r10d
          │╭      0x00007f826effad64:   jae    0x00007f826effadd0
          ↘│      0x00007f826effad6a:   mov    0x10(,%rax,8),%r11d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@22 (line 104)
   0.00%   │      0x00007f826effad72:   cmp    $0x801,%r11d
           │      0x00007f826effad79:   mov    $0x0,%r8d
           │      0x00007f826effad7f:   cmovl  %r11d,%r8d                   ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@30 (line 105)
           │      0x00007f826effad83:   shl    $0x3,%rax                    ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@3 (line 104)
           │      0x00007f826effad87:   mov    $0x1,%r11d
           │      0x00007f826effad8d:   data16 xchg %ax,%ax                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@13 (line 104)
  26.24%   │ ↗↗   0x00007f826effad90:   cmp    %r11d,%r10d
           │╭││   0x00007f826effad93:   jle    0x00007f826effadb2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@16 (line 104)
  14.44%   ││││   0x00007f826effad99:   mov    0x10(%rax,%r11,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@22 (line 104)
  16.24%   ││││   0x00007f826effad9e:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@38 (line 104)
   0.13%   ││││   0x00007f826effada1:   cmp    $0x801,%r9d
           ││╰│   0x00007f826effada8:   jge    0x00007f826effad90           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
           ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@30 (line 105)
  25.04%   ││ │   0x00007f826effadaa:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@36 (line 106)
  15.86%   ││ │   0x00007f826effadad:   mov    %r9d,%r8d
   0.29%   ││ ╰   0x00007f826effadb0:   jmp    0x00007f826effad90           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@38 (line 104)
   0.01%   │↘  ↗  0x00007f826effadb2:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@45 (line 110)
           │   │  0x00007f826effadb5:   mov    0x10(%rsp),%rbp
   0.01%   │   │  0x00007f826effadba:   add    $0x18,%rsp
           │   │  0x00007f826effadbe:   mov    0x348(%r15),%rcx
           │   │  0x00007f826effadc5:   test   %eax,(%rcx)                  ;   {poll_return}
   0.01%   │   │  0x00007f826effadc7:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@16 (line 104)
           │   │  0x00007f826effadc8:   mov    $0x0,%r8d
           │   ╰  0x00007f826effadce:   jmp    0x00007f826effadb2           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@45 (line 110)
           ↘      0x00007f826effadd0:   movl   $0xffffffe5,0x370(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@8 (line 104)
                  0x00007f826effaddb:   movq   $0x14,0x378(%r15)
                  0x00007f826effade6:   call   0x00007f826750527a           ; ImmutableOopMap {rsi=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@0 (line 102)
....................................................................................................
  98.25%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 3, compile id 723 
   0.41%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_unpredictable_if_branch_jmhTest::unpredictable_if_branch_avgt_jmhStub, version 5, compile id 753 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  fileStream::write 
   0.01%               kernel  [unknown] 
   0.75%  <...other 272 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.26%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 3, compile id 723 
   1.40%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_unpredictable_if_branch_jmhTest::unpredictable_if_branch_avgt_jmhStub, version 5, compile id 753 
   0.02%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  ptmalloc_init.part.0 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.14%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.28%       jvmci, level 4
   1.40%               kernel
   0.13%            libjvm.so
   0.08%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.01%          interpreter
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:33

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
IfConditionalBranchBenchmark.no_if_branch                   16384  avgt    5   7849.190 ±  6.376  ns/op
IfConditionalBranchBenchmark.no_if_branch:·asm              16384  avgt             NaN             ---
IfConditionalBranchBenchmark.predictable_if_branch          16384  avgt    5   9597.536 ± 59.380  ns/op
IfConditionalBranchBenchmark.predictable_if_branch:·asm     16384  avgt             NaN             ---
IfConditionalBranchBenchmark.unpredictable_if_branch        16384  avgt    5  79298.246 ± 11.011  ns/op
IfConditionalBranchBenchmark.unpredictable_if_branch:·asm   16384  avgt             NaN             ---
