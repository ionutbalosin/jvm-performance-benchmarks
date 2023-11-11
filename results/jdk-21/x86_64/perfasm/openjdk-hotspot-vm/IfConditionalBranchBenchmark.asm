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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.no_if_branch
# Parameters: (size = 16384)

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6424.150 ns/op
# Warmup Iteration   2: 6340.682 ns/op
# Warmup Iteration   3: 6340.293 ns/op
# Warmup Iteration   4: 6340.026 ns/op
# Warmup Iteration   5: 6339.978 ns/op
Iteration   1: 6340.033 ns/op
Iteration   2: 6340.031 ns/op
Iteration   3: 6340.133 ns/op
Iteration   4: 6340.149 ns/op
Iteration   5: 6340.184 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.no_if_branch":
  6340.106 ±(99.9%) 0.269 ns/op [Average]
  (min, avg, max) = (6340.031, 6340.106, 6340.184), stdev = 0.070
  CI (99.9%): [6339.837, 6340.375] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.no_if_branch:asm":
PrintAssembly processed: 133215 total address lines.
Perf output processed (skipped 56.451 seconds):
 Column 1: cycles (50692 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch, version 4, compile id 583 

                    # {method} {0x00007f36c447afc8} &apos;no_if_branch&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/IfConditionalBranchBenchmark&apos;
                    #           [sp+0x30]  (sp of caller)
                    0x00007f374863aca0:   mov    0x8(%rsi),%r10d
                    0x00007f374863aca4:   movabs $0x7f36cf000000,%r11
                    0x00007f374863acae:   add    %r11,%r10
                    0x00007f374863acb1:   cmp    %r10,%rax
                    0x00007f374863acb4:   jne    0x00007f37480c4080           ;   {runtime_call ic_miss_stub}
                    0x00007f374863acba:   xchg   %ax,%ax
                    0x00007f374863acbc:   nopl   0x0(%rax)
                  [Verified Entry Point]
   0.01%            0x00007f374863acc0:   mov    %eax,-0x14000(%rsp)
                    0x00007f374863acc7:   push   %rbp
                    0x00007f374863acc8:   sub    $0x20,%rsp
   0.01%            0x00007f374863accc:   cmpl   $0x1,0x20(%r15)
                    0x00007f374863acd4:   jne    0x00007f374863ae26           ;*synchronization entry
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@-1 (line 76)
                    0x00007f374863acda:   mov    0x18(%rsi),%ebp              ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@3 (line 78)
   0.01%            0x00007f374863acdd:   data16 xchg %ax,%ax
                    0x00007f374863ace0:   mov    0xc(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007f374863adfc
                                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@8 (line 78)
                    0x00007f374863ace5:   xor    %r10d,%r10d
                    0x00007f374863ace8:   test   %r11d,%r11d
          ╭         0x00007f374863aceb:   jbe    0x00007f374863addf           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 78)
   0.01%  │         0x00007f374863acf1:   mov    %r11d,%r9d
          │         0x00007f374863acf4:   dec    %r9d
          │         0x00007f374863acf7:   cmp    %r11d,%r9d
          │         0x00007f374863acfa:   nopw   0x0(%rax,%rax,1)
   0.01%  │╭        0x00007f374863ad00:   jae    0x00007f374863ade3
   0.00%  ││        0x00007f374863ad06:   mov    0x10(%r12,%rbp,8),%eax       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@22 (line 78)
   0.00%  ││        0x00007f374863ad0b:   lea    (%r12,%rbp,8),%r8            ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@3 (line 78)
          ││        0x00007f374863ad0f:   lea    -0xf(%r11),%r9d
   0.01%  ││        0x00007f374863ad13:   mov    $0x1,%ecx
          ││        0x00007f374863ad18:   nopl   0x0(%rax,%rax,1)
   0.00%  ││        0x00007f374863ad20:   cmp    $0x1,%r9d
          ││╭       0x00007f374863ad24:   jle    0x00007f374863adb9
          │││       0x00007f374863ad2a:   mov    $0x3e80,%ebx
          │││ ↗     0x00007f374863ad2f:   mov    %r11d,%edx
          │││ │     0x00007f374863ad32:   sub    %ecx,%edx
   0.00%  │││ │     0x00007f374863ad34:   add    $0xfffffff1,%edx
   0.00%  │││ │     0x00007f374863ad37:   cmp    %ecx,%r9d
   0.01%  │││ │     0x00007f374863ad3a:   cmovl  %r10d,%edx
          │││ │     0x00007f374863ad3e:   cmp    $0x3e80,%edx
          │││ │     0x00007f374863ad44:   cmova  %ebx,%edx
   0.01%  │││ │     0x00007f374863ad47:   add    %ecx,%edx
          │││ │     0x00007f374863ad49:   nopl   0x0(%rax)                    ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@19 (line 78)
   0.00%  │││↗│     0x00007f374863ad50:   add    0x10(%r8,%rcx,4),%eax
   6.12%  │││││     0x00007f374863ad55:   add    0x14(%r8,%rcx,4),%eax
   6.26%  │││││     0x00007f374863ad5a:   add    0x18(%r8,%rcx,4),%eax
   6.27%  │││││     0x00007f374863ad5f:   add    0x1c(%r8,%rcx,4),%eax
   6.00%  │││││     0x00007f374863ad64:   add    0x20(%r8,%rcx,4),%eax
   6.00%  │││││     0x00007f374863ad69:   add    0x24(%r8,%rcx,4),%eax
   6.04%  │││││     0x00007f374863ad6e:   add    0x28(%r8,%rcx,4),%eax
   6.22%  │││││     0x00007f374863ad73:   add    0x2c(%r8,%rcx,4),%eax
   6.08%  │││││     0x00007f374863ad78:   add    0x30(%r8,%rcx,4),%eax
   6.07%  │││││     0x00007f374863ad7d:   add    0x34(%r8,%rcx,4),%eax
   5.89%  │││││     0x00007f374863ad82:   add    0x38(%r8,%rcx,4),%eax
   6.30%  │││││     0x00007f374863ad87:   add    0x3c(%r8,%rcx,4),%eax
   6.08%  │││││     0x00007f374863ad8c:   add    0x40(%r8,%rcx,4),%eax
   6.07%  │││││     0x00007f374863ad91:   add    0x44(%r8,%rcx,4),%eax
   6.20%  │││││     0x00007f374863ad96:   add    0x48(%r8,%rcx,4),%eax
   6.18%  │││││     0x00007f374863ad9b:   add    0x4c(%r8,%rcx,4),%eax        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@28 (line 79)
   6.10%  │││││     0x00007f374863ada0:   add    $0x10,%ecx                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@30 (line 78)
          │││││     0x00007f374863ada3:   cmp    %edx,%ecx
          │││╰│     0x00007f374863ada5:   jl     0x00007f374863ad50           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 78)
          │││ │     0x00007f374863ada7:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {r8=Oop }
          │││ │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││ │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@33 (line 78)
          │││ │     0x00007f374863adae:   test   %eax,(%rdi)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@33 (line 78)
          │││ │                                                               ;   {poll}
   0.02%  │││ │     0x00007f374863adb0:   cmp    %r9d,%ecx
          │││ ╰     0x00007f374863adb3:   jl     0x00007f374863ad2f
          ││↘       0x00007f374863adb9:   cmp    %r11d,%ecx
          ││   ╭    0x00007f374863adbc:   jge    0x00007f374863adcc
          ││   │    0x00007f374863adbe:   xchg   %ax,%ax                      ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@19 (line 78)
   0.04%  ││   │↗   0x00007f374863adc0:   add    0x10(%r8,%rcx,4),%eax        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@28 (line 79)
   0.03%  ││   ││   0x00007f374863adc5:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@30 (line 78)
   0.00%  ││   ││   0x00007f374863adc7:   cmp    %r11d,%ecx
          ││   │╰   0x00007f374863adca:   jl     0x00007f374863adc0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 78)
          ││   ↘ ↗  0x00007f374863adcc:   add    $0x20,%rsp
   0.00%  ││     │  0x00007f374863add0:   pop    %rbp
   0.00%  ││     │  0x00007f374863add1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││     │  0x00007f374863add8:   ja     0x00007f374863ae10
          ││     │  0x00007f374863adde:   ret    
          ↘│     │  0x00007f374863addf:   xor    %eax,%eax
           │     ╰  0x00007f374863ade1:   jmp    0x00007f374863adcc
           ↘        0x00007f374863ade3:   mov    $0xffffff76,%esi
                    0x00007f374863ade8:   mov    %r11d,0x4(%rsp)
                    0x00007f374863aded:   xchg   %ax,%ax
                    0x00007f374863adef:   call   0x00007f37480c9f00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                              ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@16 (line 78)
....................................................................................................
  98.04%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch, version 4, compile id 583 
   0.55%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_no_if_branch_jmhTest::no_if_branch_avgt_jmhStub, version 5, compile id 614 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.81%  <...other 274 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch, version 4, compile id 583 
   1.63%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_no_if_branch_jmhTest::no_if_branch_avgt_jmhStub, version 5, compile id 614 
   0.02%      hsdis-amd64.so  print_insn 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%  libpthread-2.31.so  __libc_write 
   0.12%  <...other 49 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.07%         c2, level 4
   1.63%              kernel
   0.14%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.03%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.predictable_if_branch
# Parameters: (size = 16384)

# Run progress: 33.33% complete, ETA 00:03:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7726.862 ns/op
# Warmup Iteration   2: 7580.868 ns/op
# Warmup Iteration   3: 7574.806 ns/op
# Warmup Iteration   4: 7574.455 ns/op
# Warmup Iteration   5: 7572.497 ns/op
Iteration   1: 7574.914 ns/op
Iteration   2: 7571.529 ns/op
Iteration   3: 7574.910 ns/op
Iteration   4: 7574.989 ns/op
Iteration   5: 7576.245 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.predictable_if_branch":
  7574.517 ±(99.9%) 6.793 ns/op [Average]
  (min, avg, max) = (7571.529, 7574.517, 7576.245), stdev = 1.764
  CI (99.9%): [7567.725, 7581.310] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.predictable_if_branch:asm":
PrintAssembly processed: 135124 total address lines.
Perf output processed (skipped 56.545 seconds):
 Column 1: cycles (50665 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 3, compile id 588 

                        0x00007f65f863b024:   movabs $0x7f657f000000,%r11
                        0x00007f65f863b02e:   add    %r11,%r10
                        0x00007f65f863b031:   cmp    %r10,%rax
                        0x00007f65f863b034:   jne    0x00007f65f80c4080           ;   {runtime_call ic_miss_stub}
                        0x00007f65f863b03a:   xchg   %ax,%ax
                        0x00007f65f863b03c:   nopl   0x0(%rax)
                      [Verified Entry Point]
                        0x00007f65f863b040:   mov    %eax,-0x14000(%rsp)
                        0x00007f65f863b047:   push   %rbp
                        0x00007f65f863b048:   sub    $0x20,%rsp
   0.01%                0x00007f65f863b04c:   cmpl   $0x1,0x20(%r15)
                        0x00007f65f863b054:   jne    0x00007f65f863b2b6           ;*synchronization entry
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@-1 (line 89)
                        0x00007f65f863b05a:   mov    0x18(%rsi),%ebp              ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@3 (line 91)
   0.01%                0x00007f65f863b05d:   data16 xchg %ax,%ax
                        0x00007f65f863b060:   mov    0xc(%r12,%rbp,8),%ebx        ; implicit exception: dispatches to 0x00007f65f863b28e
                                                                                  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@8 (line 91)
   0.06%                0x00007f65f863b065:   xor    %eax,%eax
                        0x00007f65f863b067:   test   %ebx,%ebx
          ╭             0x00007f65f863b069:   jbe    0x00007f65f863b219           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@16 (line 91)
   0.01%  │             0x00007f65f863b06f:   mov    %ebx,%r10d
          │             0x00007f65f863b072:   dec    %r10d
          │             0x00007f65f863b075:   cmp    %ebx,%r10d
          │             0x00007f65f863b078:   jae    0x00007f65f863b26c
   0.01%  │             0x00007f65f863b07e:   mov    0x10(%r12,%rbp,8),%r14d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 91)
   0.04%  │             0x00007f65f863b083:   cmp    $0x1000,%r14d
          │             0x00007f65f863b08a:   jge    0x00007f65f863b284           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 92)
   0.00%  │             0x00007f65f863b090:   lea    (%r12,%rbp,8),%r11           ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@3 (line 91)
          │             0x00007f65f863b094:   lea    -0x7(%rbx),%r10d
          │             0x00007f65f863b098:   mov    $0x1,%edx
          │             0x00007f65f863b09d:   data16 xchg %ax,%ax
   0.00%  │             0x00007f65f863b0a0:   cmp    $0x1,%r10d
          │╭            0x00007f65f863b0a4:   jle    0x00007f65f863b1ee
          ││            0x00007f65f863b0aa:   mov    $0x1f40,%r8d
          ││      ↗     0x00007f65f863b0b0:   mov    %ebx,%ecx
          ││      │     0x00007f65f863b0b2:   sub    %edx,%ecx
   0.00%  ││      │     0x00007f65f863b0b4:   add    $0xfffffff9,%ecx
   0.01%  ││      │     0x00007f65f863b0b7:   cmp    %edx,%r10d
          ││      │     0x00007f65f863b0ba:   cmovl  %eax,%ecx
          ││      │     0x00007f65f863b0bd:   cmp    $0x1f40,%ecx
   0.01%  ││      │     0x00007f65f863b0c3:   cmova  %r8d,%ecx
   0.01%  ││      │     0x00007f65f863b0c7:   add    %edx,%ecx
          ││      │     0x00007f65f863b0c9:   nopl   0x0(%rax)                    ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@19 (line 91)
   2.48%  ││     ↗│     0x00007f65f863b0d0:   mov    0x10(%r11,%rdx,4),%edi       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 91)
   2.73%  ││     ││     0x00007f65f863b0d5:   data16 data16 nopw 0x0(%rax,%rax,1)
   2.62%  ││     ││     0x00007f65f863b0e0:   cmp    $0x1000,%edi
          ││╭    ││     0x00007f65f863b0e6:   jge    0x00007f65f863b237           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 92)
   2.58%  │││    ││     0x00007f65f863b0ec:   mov    0x14(%r11,%rdx,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 91)
   2.54%  │││    ││     0x00007f65f863b0f1:   add    %edi,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 93)
   2.52%  │││    ││     0x00007f65f863b0f4:   nopl   0x0(%rax,%rax,1)
   2.51%  │││    ││     0x00007f65f863b0fc:   data16 data16 xchg %ax,%ax
   2.66%  │││    ││     0x00007f65f863b100:   cmp    $0x1000,%r9d
          │││    ││     0x00007f65f863b107:   jge    0x00007f65f863b247           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 92)
   2.44%  │││    ││     0x00007f65f863b10d:   mov    0x18(%r11,%rdx,4),%edi       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 91)
   2.58%  │││    ││     0x00007f65f863b112:   add    %r9d,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 93)
   2.45%  │││    ││     0x00007f65f863b115:   data16 data16 nopw 0x0(%rax,%rax,1)
   2.75%  │││    ││     0x00007f65f863b120:   cmp    $0x1000,%edi
          │││╭   ││     0x00007f65f863b126:   jge    0x00007f65f863b22f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││   ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 92)
   2.49%  ││││   ││     0x00007f65f863b12c:   mov    0x1c(%r11,%rdx,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││││   ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 91)
   2.67%  ││││   ││     0x00007f65f863b131:   add    %edi,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││   ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 93)
          ││││   ││                                                               ;   {no_reloc}
   2.51%  ││││   ││     0x00007f65f863b134:   nopl   0x0(%rax,%rax,1)
   2.52%  ││││   ││     0x00007f65f863b13c:   data16 data16 xchg %ax,%ax
   2.63%  ││││   ││     0x00007f65f863b140:   cmp    $0x1000,%r9d
          ││││   ││     0x00007f65f863b147:   jge    0x00007f65f863b23f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││   ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 92)
   2.51%  ││││   ││     0x00007f65f863b14d:   mov    0x20(%r11,%rdx,4),%edi       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││││   ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 91)
   2.60%  ││││   ││     0x00007f65f863b152:   add    %r9d,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││   ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 93)
   2.62%  ││││   ││     0x00007f65f863b155:   data16 data16 nopw 0x0(%rax,%rax,1)
   2.48%  ││││   ││     0x00007f65f863b160:   cmp    $0x1000,%edi
          ││││╭  ││     0x00007f65f863b166:   jge    0x00007f65f863b234           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 92)
   2.64%  │││││  ││     0x00007f65f863b16c:   mov    0x24(%r11,%rdx,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││││  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 91)
   2.46%  │││││  ││     0x00007f65f863b171:   add    %edi,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 93)
   2.51%  │││││  ││     0x00007f65f863b174:   nopl   0x0(%rax,%rax,1)
   2.53%  │││││  ││     0x00007f65f863b17c:   data16 data16 xchg %ax,%ax
   2.60%  │││││  ││     0x00007f65f863b180:   cmp    $0x1000,%r9d
          │││││  ││     0x00007f65f863b187:   jge    0x00007f65f863b244           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 92)
   2.53%  │││││  ││     0x00007f65f863b18d:   mov    0x28(%r11,%rdx,4),%edi       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││││  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 91)
   2.61%  │││││  ││     0x00007f65f863b192:   add    %r9d,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 93)
   2.51%  │││││  ││     0x00007f65f863b195:   data16 data16 nopw 0x0(%rax,%rax,1)
   2.70%  │││││  ││     0x00007f65f863b1a0:   cmp    $0x1000,%edi
          │││││╭ ││     0x00007f65f863b1a6:   jge    0x00007f65f863b22c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 92)
   2.57%  ││││││ ││     0x00007f65f863b1ac:   mov    0x2c(%r11,%rdx,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 91)
   2.55%  ││││││ ││     0x00007f65f863b1b1:   add    %edi,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 93)
   2.58%  ││││││ ││     0x00007f65f863b1b4:   nopl   0x0(%rax,%rax,1)
   2.59%  ││││││ ││     0x00007f65f863b1bc:   data16 data16 xchg %ax,%ax
   2.45%  ││││││ ││     0x00007f65f863b1c0:   cmp    $0x1000,%r9d
          ││││││╭││     0x00007f65f863b1c7:   jge    0x00007f65f863b23c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 92)
   2.51%  │││││││││     0x00007f65f863b1cd:   add    %r9d,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 93)
   2.41%  │││││││││     0x00007f65f863b1d0:   add    $0x8,%edx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@38 (line 91)
   2.55%  │││││││││     0x00007f65f863b1d3:   cmp    %ecx,%edx
          │││││││╰│     0x00007f65f863b1d5:   jl     0x00007f65f863b0d0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@16 (line 91)
   0.00%  │││││││ │     0x00007f65f863b1db:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r11=Oop rbp=NarrowOop }
          │││││││ │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││││ │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@41 (line 91)
   0.07%  │││││││ │     0x00007f65f863b1e2:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@41 (line 91)
          │││││││ │                                                               ;   {poll}
   0.15%  │││││││ │     0x00007f65f863b1e5:   cmp    %r10d,%edx
          │││││││ ╰     0x00007f65f863b1e8:   jl     0x00007f65f863b0b0
   0.00%  │↘│││││       0x00007f65f863b1ee:   cmp    %ebx,%edx
          │ │││││  ╭    0x00007f65f863b1f0:   jge    0x00007f65f863b216
   0.03%  │ │││││  │    0x00007f65f863b1f2:   xchg   %ax,%ax                      ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │││││  │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@19 (line 91)
          │ │││││  │↗   0x00007f65f863b1f4:   mov    0x10(%r11,%rdx,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@22 (line 91)
   0.06%  │ │││││  ││   0x00007f65f863b1f9:   nopl   0x0(%rax)
          │ │││││  ││   0x00007f65f863b200:   cmp    $0x1000,%r9d
          │ │││││  ││   0x00007f65f863b207:   jge    0x00007f65f863b249           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │││││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@30 (line 92)
   0.02%  │ │││││  ││   0x00007f65f863b20d:   add    %r9d,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │││││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 93)
   0.01%  │ │││││  ││   0x00007f65f863b210:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@38 (line 91)
   0.01%  │ │││││  ││   0x00007f65f863b212:   cmp    %ebx,%edx
          │ │││││  │╰   0x00007f65f863b214:   jl     0x00007f65f863b1f4
   0.01%  │ │││││  ↘    0x00007f65f863b216:   mov    %r14d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@16 (line 91)
          ↘ │││││       0x00007f65f863b219:   add    $0x20,%rsp
   0.02%    │││││       0x00007f65f863b21d:   pop    %rbp
   0.05%    │││││       0x00007f65f863b21e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │││││       0x00007f65f863b225:   ja     0x00007f65f863b2a0
            │││││       0x00007f65f863b22b:   ret    
            │││↘│       0x00007f65f863b22c:   add    $0x4,%edx
            │↘│ │       0x00007f65f863b22f:   add    $0x2,%edx
            │ │ │    ╭  0x00007f65f863b232:   jmp    0x00007f65f863b237
            │ ↘ │    │  0x00007f65f863b234:   add    $0x4,%edx
            ↘   │    ↘  0x00007f65f863b237:   mov    %edi,%r9d
                │       0x00007f65f863b23a:   jmp    0x00007f65f863b249
                ↘       0x00007f65f863b23c:   add    $0x4,%edx
                        0x00007f65f863b23f:   add    $0x2,%edx
....................................................................................................
  97.80%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.80%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 3, compile id 588 
   0.45%              kernel  [unknown] 
   0.21%              kernel  [unknown] 
   0.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_predictable_if_branch_jmhTest::predictable_if_branch_avgt_jmhStub, version 5, compile id 618 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.87%  <...other 279 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.80%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 3, compile id 588 
   1.82%              kernel  [unknown] 
   0.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_predictable_if_branch_jmhTest::predictable_if_branch_avgt_jmhStub, version 5, compile id 618 
   0.04%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%        libc-2.31.so  ___vsnprintf 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%         interpreter  method entry point (kind = zerolocals)  
   0.00%           libjvm.so  xmlTextStream::flush 
   0.12%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.91%         c2, level 4
   1.82%              kernel
   0.11%           libjvm.so
   0.08%        libc-2.31.so
   0.04%                    
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch
# Parameters: (size = 16384)

# Run progress: 66.67% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12938.550 ns/op
# Warmup Iteration   2: 12694.620 ns/op
# Warmup Iteration   3: 12692.041 ns/op
# Warmup Iteration   4: 12696.459 ns/op
# Warmup Iteration   5: 12693.639 ns/op
Iteration   1: 12691.300 ns/op
Iteration   2: 12697.804 ns/op
Iteration   3: 12691.692 ns/op
Iteration   4: 12696.697 ns/op
Iteration   5: 12687.526 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch":
  12693.004 ±(99.9%) 16.257 ns/op [Average]
  (min, avg, max) = (12687.526, 12693.004, 12697.804), stdev = 4.222
  CI (99.9%): [12676.746, 12709.261] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch:asm":
PrintAssembly processed: 128042 total address lines.
Perf output processed (skipped 56.239 seconds):
 Column 1: cycles (50600 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 3, compile id 576 

                     # {method} {0x00007f508347b228} &apos;unpredictable_if_branch&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/IfConditionalBranchBenchmark&apos;
                     #           [sp+0x30]  (sp of caller)
                     0x00007f510463a220:   mov    0x8(%rsi),%r10d
                     0x00007f510463a224:   movabs $0x7f5087000000,%r11
                     0x00007f510463a22e:   add    %r11,%r10
                     0x00007f510463a231:   cmp    %r10,%rax
                     0x00007f510463a234:   jne    0x00007f51040c4080           ;   {runtime_call ic_miss_stub}
                     0x00007f510463a23a:   xchg   %ax,%ax
                     0x00007f510463a23c:   nopl   0x0(%rax)
                   [Verified Entry Point]
   0.01%             0x00007f510463a240:   mov    %eax,-0x14000(%rsp)
                     0x00007f510463a247:   push   %rbp
                     0x00007f510463a248:   sub    $0x20,%rsp
   0.01%             0x00007f510463a24c:   cmpl   $0x1,0x20(%r15)
                     0x00007f510463a254:   jne    0x00007f510463a426           ;*synchronization entry
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@-1 (line 103)
                     0x00007f510463a25a:   mov    0x18(%rsi),%ebp              ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@3 (line 105)
   0.00%             0x00007f510463a25d:   data16 xchg %ax,%ax
                     0x00007f510463a260:   mov    0xc(%r12,%rbp,8),%ecx        ; implicit exception: dispatches to 0x00007f510463a3fc
                                                                               ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@8 (line 105)
   0.02%             0x00007f510463a265:   test   %ecx,%ecx
          ╭          0x00007f510463a267:   jbe    0x00007f510463a3e1           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@16 (line 105)
          │          0x00007f510463a26d:   mov    %ecx,%r11d
          │          0x00007f510463a270:   dec    %r11d
          │          0x00007f510463a273:   cmp    %ecx,%r11d
          │╭         0x00007f510463a276:   jae    0x00007f510463a3e5
   0.00%  ││         0x00007f510463a27c:   mov    0x10(%r12,%rbp,8),%eax       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@22 (line 105)
   0.02%  ││         0x00007f510463a281:   lea    (%r12,%rbp,8),%r14           ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@3 (line 105)
          ││         0x00007f510463a285:   xor    %r10d,%r10d
          ││         0x00007f510463a288:   cmp    $0x800,%eax
   0.00%  ││         0x00007f510463a28d:   cmovg  %r10d,%eax                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@38 (line 105)
   0.01%  ││         0x00007f510463a291:   lea    -0x7(%rcx),%r10d
          ││         0x00007f510463a295:   mov    $0x1,%ebp
          ││         0x00007f510463a29a:   nopw   0x0(%rax,%rax,1)
          ││         0x00007f510463a2a0:   cmp    $0x1,%r10d
          ││╭        0x00007f510463a2a4:   jle    0x00007f510463a3ad           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@41 (line 105)
   0.00%  │││╭       0x00007f510463a2aa:   jmp    0x00007f510463a2b4
          ││││ ↗     0x00007f510463a2ac:   vmovd  %xmm0,%ecx
          ││││ │     0x00007f510463a2b0:   mov    (%rsp),%r10d
          │││↘ │     0x00007f510463a2b4:   mov    %ecx,%r13d
   0.00%  │││  │     0x00007f510463a2b7:   sub    %ebp,%r13d
          │││  │     0x00007f510463a2ba:   add    $0xfffffff9,%r13d
   0.01%  │││  │     0x00007f510463a2be:   xor    %r8d,%r8d
          │││  │     0x00007f510463a2c1:   cmp    %ebp,%r10d
          │││  │     0x00007f510463a2c4:   cmovl  %r8d,%r13d
          │││  │     0x00007f510463a2c8:   cmp    $0x1f40,%r13d
   0.00%  │││  │     0x00007f510463a2cf:   mov    $0x1f40,%r8d
          │││  │     0x00007f510463a2d5:   cmova  %r8d,%r13d
   0.00%  │││  │     0x00007f510463a2d9:   add    %ebp,%r13d
   0.00%  │││  │     0x00007f510463a2dc:   vmovd  %ecx,%xmm0
          │││  │     0x00007f510463a2e0:   mov    %r10d,(%rsp)
   0.01%  │││  │     0x00007f510463a2e4:   nopl   0x0(%rax,%rax,1)
          │││  │     0x00007f510463a2ec:   data16 data16 xchg %ax,%ax          ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@19 (line 105)
   0.00%  │││ ↗│     0x00007f510463a2f0:   mov    0x10(%r14,%rbp,4),%r10d
   1.76%  │││ ││     0x00007f510463a2f5:   mov    0x14(%r14,%rbp,4),%r8d
   4.41%  │││ ││     0x00007f510463a2fa:   mov    0x18(%r14,%rbp,4),%r11d
   0.13%  │││ ││     0x00007f510463a2ff:   mov    0x1c(%r14,%rbp,4),%ecx
   0.00%  │││ ││     0x00007f510463a304:   mov    0x20(%r14,%rbp,4),%r9d
   1.56%  │││ ││     0x00007f510463a309:   mov    0x24(%r14,%rbp,4),%edi
   4.35%  │││ ││     0x00007f510463a30e:   mov    0x28(%r14,%rbp,4),%ebx
   0.17%  │││ ││     0x00007f510463a313:   mov    0x2c(%r14,%rbp,4),%esi       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@22 (line 105)
   0.00%  │││ ││     0x00007f510463a318:   lea    (%rax,%r10,1),%edx
   1.63%  │││ ││     0x00007f510463a31c:   cmp    $0x800,%r10d
   4.42%  │││ ││     0x00007f510463a323:   cmovle %edx,%eax
   0.14%  │││ ││     0x00007f510463a326:   lea    (%rax,%r8,1),%edx
   0.01%  │││ ││     0x00007f510463a32a:   cmp    $0x800,%r8d
   1.61%  │││ ││     0x00007f510463a331:   cmovle %edx,%eax                    ;   {no_reloc}
   7.64%  │││ ││     0x00007f510463a334:   lea    (%rax,%r11,1),%r8d
   5.77%  │││ ││     0x00007f510463a338:   cmp    $0x800,%r11d
   0.01%  │││ ││     0x00007f510463a33f:   cmovle %r8d,%eax
   5.04%  │││ ││     0x00007f510463a343:   lea    (%rax,%rcx,1),%r10d
   6.21%  │││ ││     0x00007f510463a347:   cmp    $0x800,%ecx
   0.48%  │││ ││     0x00007f510463a34d:   cmovle %r10d,%eax
   6.72%  │││ ││     0x00007f510463a351:   lea    (%rax,%r9,1),%r11d
   8.91%  │││ ││     0x00007f510463a355:   cmp    $0x800,%r9d
   0.41%  │││ ││     0x00007f510463a35c:   cmovle %r11d,%eax
   4.43%  │││ ││     0x00007f510463a360:   lea    (%rax,%rdi,1),%r10d
   5.30%  │││ ││     0x00007f510463a364:   cmp    $0x800,%edi
   2.47%  │││ ││     0x00007f510463a36a:   cmovle %r10d,%eax
   0.67%  │││ ││     0x00007f510463a36e:   lea    (%rax,%rbx,1),%r11d
   9.77%  │││ ││     0x00007f510463a372:   cmp    $0x800,%ebx
   1.16%  │││ ││     0x00007f510463a378:   cmovle %r11d,%eax
   2.50%  │││ ││     0x00007f510463a37c:   lea    (%rax,%rsi,1),%r10d
   3.99%  │││ ││     0x00007f510463a380:   cmp    $0x800,%esi
   1.65%  │││ ││     0x00007f510463a386:   cmovle %r10d,%eax
   4.30%  │││ ││     0x00007f510463a38a:   add    $0x8,%ebp                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@38 (line 105)
   0.15%  │││ ││     0x00007f510463a38d:   cmp    %r13d,%ebp
          │││ ╰│     0x00007f510463a390:   jl     0x00007f510463a2f0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@16 (line 105)
          │││  │     0x00007f510463a396:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r14=Oop }
          │││  │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││  │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@41 (line 105)
          │││  │     0x00007f510463a39d:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@41 (line 105)
          │││  │                                                               ;   {poll}
   0.01%  │││  │     0x00007f510463a3a0:   cmp    (%rsp),%ebp
          │││  ╰     0x00007f510463a3a3:   jl     0x00007f510463a2ac
          │││        0x00007f510463a3a9:   vmovd  %xmm0,%ecx
          ││↘        0x00007f510463a3ad:   cmp    %ecx,%ebp
          ││    ╭    0x00007f510463a3af:   jge    0x00007f510463a3ce
          ││    │    0x00007f510463a3b1:   data16 xchg %ax,%ax                 ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@19 (line 105)
   0.00%  ││    │↗   0x00007f510463a3b4:   mov    0x10(%r14,%rbp,4),%r10d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@22 (line 105)
   0.00%  ││    ││   0x00007f510463a3b9:   lea    (%rax,%r10,1),%r8d
   0.02%  ││    ││   0x00007f510463a3bd:   cmp    $0x800,%r10d
          ││    ││   0x00007f510463a3c4:   cmovle %r8d,%eax
   0.02%  ││    ││   0x00007f510463a3c8:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@38 (line 105)
          ││    ││   0x00007f510463a3ca:   cmp    %ecx,%ebp
          ││    │╰   0x00007f510463a3cc:   jl     0x00007f510463a3b4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@16 (line 105)
          ││    ↘ ↗  0x00007f510463a3ce:   add    $0x20,%rsp
   0.01%  ││      │  0x00007f510463a3d2:   pop    %rbp
   0.01%  ││      │  0x00007f510463a3d3:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││      │  0x00007f510463a3da:   ja     0x00007f510463a410
          ││      │  0x00007f510463a3e0:   ret    
          ↘│      │  0x00007f510463a3e1:   xor    %eax,%eax
           │      ╰  0x00007f510463a3e3:   jmp    0x00007f510463a3ce
           ↘         0x00007f510463a3e5:   mov    $0xffffff76,%esi
                     0x00007f510463a3ea:   mov    %ecx,0x4(%rsp)
                     0x00007f510463a3ee:   nop
                     0x00007f510463a3ef:   call   0x00007f51040c9f00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                               ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@16 (line 105)
....................................................................................................
  97.93%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.93%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 3, compile id 576 
   0.31%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_unpredictable_if_branch_jmhTest::unpredictable_if_branch_avgt_jmhStub, version 5, compile id 605 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.10%  <...other 339 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.93%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 3, compile id 576 
   1.68%              kernel  [unknown] 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_unpredictable_if_branch_jmhTest::unpredictable_if_branch_avgt_jmhStub, version 5, compile id 605 
   0.04%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __pthread_mutex_lock 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.14%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.01%         c2, level 4
   1.68%              kernel
   0.12%           libjvm.so
   0.09%        libc-2.31.so
   0.04%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:27

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

Benchmark                                                 (size)  Mode  Cnt      Score    Error  Units
IfConditionalBranchBenchmark.no_if_branch                  16384  avgt    5   6340.106 ±  0.269  ns/op
IfConditionalBranchBenchmark.no_if_branch:asm              16384  avgt             NaN             ---
IfConditionalBranchBenchmark.predictable_if_branch         16384  avgt    5   7574.517 ±  6.793  ns/op
IfConditionalBranchBenchmark.predictable_if_branch:asm     16384  avgt             NaN             ---
IfConditionalBranchBenchmark.unpredictable_if_branch       16384  avgt    5  12693.004 ± 16.257  ns/op
IfConditionalBranchBenchmark.unpredictable_if_branch:asm   16384  avgt             NaN             ---
