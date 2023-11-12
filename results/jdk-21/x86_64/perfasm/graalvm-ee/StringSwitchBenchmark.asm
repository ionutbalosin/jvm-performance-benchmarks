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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 3)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.159 ns/op
# Warmup Iteration   2: 3.136 ns/op
# Warmup Iteration   3: 3.110 ns/op
# Warmup Iteration   4: 3.109 ns/op
# Warmup Iteration   5: 3.109 ns/op
Iteration   1: 3.108 ns/op
Iteration   2: 3.109 ns/op
Iteration   3: 3.113 ns/op
Iteration   4: 3.111 ns/op
Iteration   5: 3.109 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  3.110 ±(99.9%) 0.007 ns/op [Average]
  (min, avg, max) = (3.108, 3.110, 3.113), stdev = 0.002
  CI (99.9%): [3.102, 3.117] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 231637 total address lines.
Perf output processed (skipped 60.786 seconds):
 Column 1: cycles (51321 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 967 

            # {method} {0x00007ff62f47dd40} &apos;chained_ifs&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
            #           [sp+0x30]  (sp of caller)
            0x00007ff6aed7f7a0:   mov    0x8(%rsi),%r10d
            0x00007ff6aed7f7a4:   movabs $0x7ff633000000,%r12
            0x00007ff6aed7f7ae:   add    %r12,%r10
            0x00007ff6aed7f7b1:   xor    %r12,%r12
            0x00007ff6aed7f7b4:   cmp    %r10,%rax
            0x00007ff6aed7f7b7:   jne    0x00007ff6ae764080           ;   {runtime_call ic_miss_stub}
            0x00007ff6aed7f7bd:   data16 xchg %ax,%ax
          [Verified Entry Point]
   0.01%    0x00007ff6aed7f7c0:   mov    %eax,-0x14000(%rsp)
   0.01%    0x00007ff6aed7f7c7:   sub    $0x28,%rsp
   0.01%    0x00007ff6aed7f7cb:   nop
            0x00007ff6aed7f7cc:   cmpl   $0x1,0x20(%r15)
            0x00007ff6aed7f7d4:   jne    0x00007ff6aed7fb18
   0.00%    0x00007ff6aed7f7da:   mov    %rbp,0x20(%rsp)
   0.00%    0x00007ff6aed7f7df:   mov    %rsi,%r10
            0x00007ff6aed7f7e2:   mov    %r10,0x8(%rsp)
            0x00007ff6aed7f7e7:   mov    0x18(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop [8]=Oop }
                                                                      ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@0 (line 125)
   0.00%    0x00007ff6aed7f7eb:   mov    0xc(,%rsi,8),%r11d           ; implicit exception: dispatches to 0x00007ff6aed7fb3c
   0.02%    0x00007ff6aed7f7f3:   mov    %r11d,0x14(%rsp)
   0.02%    0x00007ff6aed7f7f8:   mov    %esi,%r8d
            0x00007ff6aed7f7fb:   shl    $0x3,%r8
            0x00007ff6aed7f7ff:   movabs $0x7fec34ff0,%r9             ;   {oop([B{0x00000007fec34ff0})}
            0x00007ff6aed7f809:   movabs $0x7fec34fc0,%rbx            ;   {oop([B{0x00000007fec34fc0})}
   0.02%    0x00007ff6aed7f813:   movabs $0x7fec34f90,%rbp            ;   {oop([B{0x00000007fec34f90})}
            0x00007ff6aed7f81d:   mov    $0x0,%r14d
            0x00007ff6aed7f823:   mov    $0x0,%r13d
            0x00007ff6aed7f829:   nopl   0x0(%rax)                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
   0.01%    0x00007ff6aed7f830:   cmp    %r14d,%r11d
            0x00007ff6aed7f833:   jbe    0x00007ff6aed7fac5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   4.00%    0x00007ff6aed7f839:   mov    0x10(%r8,%r14,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   4.09%    0x00007ff6aed7f83e:   mov    %r14d,%eax
   4.05%    0x00007ff6aed7f841:   inc    %eax
   0.02%    0x00007ff6aed7f843:   cmp    $0xffd869ef,%ecx             ;   {oop(&quot;MOPED&quot;{0x00000007fec34f78})}
            0x00007ff6aed7f849:   je     0x00007ff6aed7fa3e
   4.07%    0x00007ff6aed7f84f:   test   %ecx,%ecx
            0x00007ff6aed7f851:   je     0x00007ff6aed7fa4c
   0.00%    0x00007ff6aed7f857:   nopw   0x0(%rax,%rax,1)
   4.09%    0x00007ff6aed7f860:   cmpb   $0x0,0x10(,%rcx,8)
   4.08%    0x00007ff6aed7f868:   jne    0x00007ff6aed7fa5c
   0.02%    0x00007ff6aed7f86e:   mov    0x14(,%rcx,8),%esi           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   3.93%    0x00007ff6aed7f875:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rcx=NarrowOop rbx=Oop rbp=Oop rsi=NarrowOop r8=Oop r9=Oop [8]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
   0.00%    0x00007ff6aed7f880:   cmpl   $0x5,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007ff6aed7fb5f
   7.85%    0x00007ff6aed7f888:   jne    0x00007ff6aed7fa6c
            0x00007ff6aed7f88e:   mov    %r14d,0x10(%rsp)
            0x00007ff6aed7f893:   shl    $0x3,%rsi
            0x00007ff6aed7f897:   mov    %rbp,%rdi
            0x00007ff6aed7f89a:   mov    $0x5,%edx
            0x00007ff6aed7f89f:   mov    %eax,%r10d
            0x00007ff6aed7f8a2:   mov    $0x10,%rax
            0x00007ff6aed7f8a9:   mov    %ecx,%r14d
            0x00007ff6aed7f8ac:   mov    $0x10,%rcx
            0x00007ff6aed7f8b3:   add    %rax,%rsi
            0x00007ff6aed7f8b6:   add    %rcx,%rdi
....................................................................................................
  36.31%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 967 

                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007ff6aed7fa4c:   mov    %eax,%r10d
            0x00007ff6aed7fa4f:   mov    %r14d,0x10(%rsp)
            0x00007ff6aed7fa54:   mov    %ecx,%r14d
            0x00007ff6aed7fa57:   jmp    0x00007ff6aed7f8ed
            0x00007ff6aed7fa5c:   mov    %eax,%r10d
            0x00007ff6aed7fa5f:   mov    %r14d,0x10(%rsp)
            0x00007ff6aed7fa64:   mov    %ecx,%r14d
            0x00007ff6aed7fa67:   jmp    0x00007ff6aed7f8dc
   8.03%    0x00007ff6aed7fa6c:   mov    %eax,%r10d
            0x00007ff6aed7fa6f:   mov    %r14d,0x10(%rsp)
   0.04%    0x00007ff6aed7fa74:   mov    %ecx,%r14d
            0x00007ff6aed7fa77:   jmp    0x00007ff6aed7f8dc
            0x00007ff6aed7fa7c:   mov    %r11,(%rsp)                  ;   {no_reloc}
            0x00007ff6aed7fa80:   jmp    0x00007ff6aed7f98d           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   3.88%    0x00007ff6aed7fa85:   lea    0x2(%r13),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
            0x00007ff6aed7fa89:   mov    %r10d,%r14d
            0x00007ff6aed7fa8c:   mov    %eax,%r13d
            0x00007ff6aed7fa8f:   mov    0x14(%rsp),%r11d
   4.13%    0x00007ff6aed7fa94:   jmp    0x00007ff6aed7f830
            0x00007ff6aed7fa99:   mov    %r11,(%rsp)
            0x00007ff6aed7fa9d:   data16 xchg %ax,%ax
            0x00007ff6aed7faa0:   jmp    0x00007ff6aed7f975
   4.12%    0x00007ff6aed7faa5:   mov    %r11,(%rsp)
   0.00%    0x00007ff6aed7faa9:   jmp    0x00007ff6aed7f975           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   3.86%    0x00007ff6aed7faae:   lea    0x3(%r13),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
            0x00007ff6aed7fab2:   mov    %r10d,%r14d
            0x00007ff6aed7fab5:   mov    %eax,%r13d
            0x00007ff6aed7fab8:   mov    0x14(%rsp),%r11d
   3.97%    0x00007ff6aed7fabd:   data16 xchg %ax,%ax
            0x00007ff6aed7fac0:   jmp    0x00007ff6aed7f830
   0.07%    0x00007ff6aed7fac5:   mov    %r13d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@41 (line 129)
   0.02%    0x00007ff6aed7fac8:   mov    0x20(%rsp),%rbp
   0.10%    0x00007ff6aed7facd:   add    $0x28,%rsp
            0x00007ff6aed7fad1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            0x00007ff6aed7fad8:   ja     0x00007ff6aed7fb28
   0.02%    0x00007ff6aed7fade:   vzeroupper 
   0.00%    0x00007ff6aed7fae1:   ret    
            0x00007ff6aed7fae2:   mov    (%rsp),%r11
            0x00007ff6aed7fae6:   mov    0x10(%rsp),%r14d
            0x00007ff6aed7faeb:   mov    0x14(%rsp),%r10d
            0x00007ff6aed7faf0:   mov    0x8(%rsp),%r9
            0x00007ff6aed7faf5:   movl   $0xffffffed,0x484(%r15)      ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007ff6aed7fb00:   movq   $0x14,0x490(%r15)
            0x00007ff6aed7fb0b:   call   0x00007ff6ae76a17a           ; ImmutableOopMap {r8=Oop r9=Oop r11=Oop }
....................................................................................................
  28.25%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 967 

            0x00007ff6aed7f8c9:   xor    %rdi,%rdi
            0x00007ff6aed7f8cc:   or     %rsi,%rdx
            0x00007ff6aed7f8cf:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007ff6aed7f8d3:   test   %r11d,%r11d
            0x00007ff6aed7f8d6:   jne    0x00007ff6aed7fa2e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   8.01%    0x00007ff6aed7f8dc:   nopl   0x0(%rax)
            0x00007ff6aed7f8e0:   cmp    $0xffd869f5,%r14d            ;   {oop(&quot;BICYCLE&quot;{0x00000007fec34fa8})}
            0x00007ff6aed7f8e7:   je     0x00007ff6aed7fa85
            0x00007ff6aed7f8ed:   mov    %r14d,%r11d
            0x00007ff6aed7f8f0:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   3.90%    0x00007ff6aed7f8f4:   test   %r14d,%r14d
            0x00007ff6aed7f8f7:   je     0x00007ff6aed7fa7c
            0x00007ff6aed7f8fd:   data16 xchg %ax,%ax
            0x00007ff6aed7f900:   cmpb   $0x0,0x10(,%r14,8)
   4.02%    0x00007ff6aed7f909:   jne    0x00007ff6aed7fa99
            0x00007ff6aed7f90f:   mov    0x14(,%r14,8),%esi           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007ff6aed7f917:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=Oop r9=Oop r11=Oop r14=NarrowOop [8]=Oop }
                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007ff6aed7f920:   cmpl   $0x7,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007ff6aed7fb82
   7.90%    0x00007ff6aed7f928:   jne    0x00007ff6aed7faa5
            0x00007ff6aed7f92e:   mov    %r11,(%rsp)
            0x00007ff6aed7f932:   shl    $0x3,%rsi
            0x00007ff6aed7f936:   mov    %rbx,%rdi
            0x00007ff6aed7f939:   mov    $0x7,%edx
            0x00007ff6aed7f93e:   mov    $0x10,%rax
            0x00007ff6aed7f945:   mov    $0x10,%rcx
            0x00007ff6aed7f94c:   add    %rax,%rsi
            0x00007ff6aed7f94f:   add    %rcx,%rdi
            0x00007ff6aed7f952:   mov    $0x1,%r11d
            0x00007ff6aed7f958:   mov    (%rsi),%edx
....................................................................................................
  23.83%  <total for region 3>

....[Hottest Regions]...............................................................................
  36.31%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 967 
  28.25%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 967 
  23.83%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 967 
   3.93%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 967 
   3.93%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 967 
   1.81%              kernel  [unknown] 
   0.20%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 990 
   0.11%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.05%  <...other 355 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.25%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 967 
   3.14%              kernel  [unknown] 
   0.20%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 990 
   0.07%                      <unknown> 
   0.04%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  defaultStream::write 
   0.02%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  stringStream::write 
   0.01%      hsdis-amd64.so  putop 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%      hsdis-amd64.so  print_insn 
   0.14%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.46%      jvmci, level 4
   3.14%              kernel
   0.15%        libc-2.31.so
   0.15%           libjvm.so
   0.07%                    
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.00%          ld-2.31.so
   0.00%    perf-2151896.map
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 6)

# Run progress: 8.33% complete, ETA 00:21:09
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.000 ns/op
# Warmup Iteration   2: 4.921 ns/op
# Warmup Iteration   3: 4.921 ns/op
# Warmup Iteration   4: 4.921 ns/op
# Warmup Iteration   5: 4.921 ns/op
Iteration   1: 4.927 ns/op
Iteration   2: 4.921 ns/op
Iteration   3: 4.921 ns/op
Iteration   4: 4.921 ns/op
Iteration   5: 4.925 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  4.923 ±(99.9%) 0.011 ns/op [Average]
  (min, avg, max) = (4.921, 4.923, 4.927), stdev = 0.003
  CI (99.9%): [4.913, 4.934] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 227949 total address lines.
Perf output processed (skipped 60.645 seconds):
 Column 1: cycles (50587 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 955 

   0.02%    0x00007f623ad82c13:   mov    %r11d,0x34(%rsp)
   0.01%    0x00007f623ad82c18:   mov    %esi,%r8d
            0x00007f623ad82c1b:   shl    $0x3,%r8                     ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@3 (line 126)
            0x00007f623ad82c1f:   mov    %r8,0x20(%rsp)
            0x00007f623ad82c24:   movabs $0x7fec34af8,%r9             ;   {oop([B{0x00000007fec34af8})}
   0.00%    0x00007f623ad82c2e:   mov    %r9,0x18(%rsp)
            0x00007f623ad82c33:   movabs $0x7fec34ac8,%rbx            ;   {oop([B{0x00000007fec34ac8})}
            0x00007f623ad82c3d:   movabs $0x7fec34a90,%rbp            ;   {oop([B{0x00000007fec34a90})}
            0x00007f623ad82c47:   movabs $0x7fec34a58,%r13            ;   {oop([B{0x00000007fec34a58})}
   0.01%    0x00007f623ad82c51:   movabs $0x7fec34a28,%r14            ;   {oop([B{0x00000007fec34a28})}
            0x00007f623ad82c5b:   movabs $0x7fec349f8,%rcx            ;   {oop([B{0x00000007fec349f8})}
            0x00007f623ad82c65:   mov    %rcx,0x10(%rsp)
            0x00007f623ad82c6a:   mov    $0x0,%edx
   0.01%    0x00007f623ad82c6f:   mov    $0x0,%eax
            0x00007f623ad82c74:   nopl   0x0(%rax,%rax,1)
            0x00007f623ad82c7c:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
   1.22%    0x00007f623ad82c80:   cmp    %edx,%r11d
            0x00007f623ad82c83:   jbe    0x00007f623ad831e5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   1.40%    0x00007f623ad82c89:   mov    0x10(%r8,%rdx,4),%edi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   5.08%    0x00007f623ad82c8e:   mov    %edx,%esi
   0.00%    0x00007f623ad82c90:   inc    %esi
   1.21%    0x00007f623ad82c92:   cmp    $0xffd8693c,%edi             ;   {oop(&quot;MOPED&quot;{0x00000007fec349e0})}
            0x00007f623ad82c98:   je     0x00007f623ad830e5
   1.28%    0x00007f623ad82c9e:   xchg   %ax,%ax
   5.11%    0x00007f623ad82ca0:   test   %edi,%edi
            0x00007f623ad82ca2:   je     0x00007f623ad83107
   0.01%    0x00007f623ad82ca8:   cmpb   $0x0,0x10(,%rdi,8)
   1.35%    0x00007f623ad82cb0:   jne    0x00007f623ad83119
   5.29%    0x00007f623ad82cb6:   mov    0x14(,%rdi,8),%r10d          ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007f623ad82cbe:   xchg   %ax,%ax                      ; ImmutableOopMap {rcx=Oop rbx=Oop rbp=Oop rdi=NarrowOop r8=Oop r10=NarrowOop r13=Oop r14=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
            0x00007f623ad82cc0:   cmpl   $0x5,0xc(,%r10,8)            ; implicit exception: dispatches to 0x00007f623ad83284
   6.41%    0x00007f623ad82cc9:   jne    0x00007f623ad8312b
            0x00007f623ad82ccf:   mov    %edx,0x30(%rsp)
            0x00007f623ad82cd3:   shl    $0x3,%r10
            0x00007f623ad82cd7:   mov    %esi,%r11d
            0x00007f623ad82cda:   mov    %r10,%rsi
            0x00007f623ad82cdd:   mov    %edi,%r10d
            0x00007f623ad82ce0:   mov    %rcx,%rdi
            0x00007f623ad82ce3:   mov    $0x5,%edx
            0x00007f623ad82ce8:   mov    %eax,%r8d
            0x00007f623ad82ceb:   mov    $0x10,%rax
            0x00007f623ad82cf2:   mov    $0x10,%rcx
....................................................................................................
  28.38%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 955 

            0x00007f623ad83107:   mov    %edi,%r10d
            0x00007f623ad8310a:   mov    %edx,0x30(%rsp)
            0x00007f623ad8310e:   mov    %esi,%r11d
            0x00007f623ad83111:   mov    %eax,%r8d
            0x00007f623ad83114:   jmp    0x00007f623ad82d36
            0x00007f623ad83119:   mov    %edi,%r10d
            0x00007f623ad8311c:   mov    %edx,0x30(%rsp)
            0x00007f623ad83120:   mov    %esi,%r11d
            0x00007f623ad83123:   mov    %eax,%r8d
            0x00007f623ad83126:   jmp    0x00007f623ad82d29
   0.03%    0x00007f623ad8312b:   mov    %edi,%r10d
            0x00007f623ad8312e:   mov    %edx,0x30(%rsp)
   1.32%    0x00007f623ad83132:   mov    %esi,%r11d
   4.91%    0x00007f623ad83135:   mov    %eax,%r8d
   0.07%    0x00007f623ad83138:   jmp    0x00007f623ad82d29
            0x00007f623ad8313d:   mov    %r9,0x8(%rsp)
            0x00007f623ad83142:   jmp    0x00007f623ad82dcd           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.35%    0x00007f623ad83147:   lea    0x2(%r8),%eax                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
            0x00007f623ad8314b:   mov    %r11d,%edx
            0x00007f623ad8314e:   mov    0x10(%rsp),%rcx
            0x00007f623ad83153:   mov    0x20(%rsp),%r8
   1.25%    0x00007f623ad83158:   mov    0x34(%rsp),%r11d
   0.00%    0x00007f623ad8315d:   data16 xchg %ax,%ax
            0x00007f623ad83160:   jmp    0x00007f623ad82c80
            0x00007f623ad83165:   mov    %r9,0x8(%rsp)
            0x00007f623ad8316a:   jmp    0x00007f623ad82db6
            0x00007f623ad8316f:   mov    %r9,0x8(%rsp)
   1.30%    0x00007f623ad83174:   jmp    0x00007f623ad82db6           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.30%    0x00007f623ad83179:   lea    0x3(%r8),%eax                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
            0x00007f623ad8317d:   mov    %r11d,%edx
            0x00007f623ad83180:   mov    0x10(%rsp),%rcx
            0x00007f623ad83185:   mov    0x20(%rsp),%r8
   1.28%    0x00007f623ad8318a:   mov    0x34(%rsp),%r11d
            0x00007f623ad8318f:   jmp    0x00007f623ad82c80           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.41%    0x00007f623ad83194:   lea    0x4(%r8),%eax                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
            0x00007f623ad83198:   mov    %r11d,%edx
            0x00007f623ad8319b:   mov    0x10(%rsp),%rcx              ;   {no_reloc}
            0x00007f623ad831a0:   mov    0x20(%rsp),%r8
   1.30%    0x00007f623ad831a5:   mov    0x34(%rsp),%r11d
            0x00007f623ad831aa:   jmp    0x00007f623ad82c80           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.24%    0x00007f623ad831af:   lea    0x5(%r8),%eax                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
            0x00007f623ad831b3:   mov    %r11d,%edx
            0x00007f623ad831b6:   mov    0x10(%rsp),%rcx
            0x00007f623ad831bb:   mov    0x20(%rsp),%r8
   1.29%    0x00007f623ad831c0:   mov    0x34(%rsp),%r11d
            0x00007f623ad831c5:   jmp    0x00007f623ad82c80           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007f623ad831ca:   lea    0x6(%r8),%eax                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
            0x00007f623ad831ce:   mov    %r11d,%edx
   1.25%    0x00007f623ad831d1:   mov    0x10(%rsp),%rcx
            0x00007f623ad831d6:   mov    0x20(%rsp),%r8
            0x00007f623ad831db:   mov    0x34(%rsp),%r11d
            0x00007f623ad831e0:   jmp    0x00007f623ad82c80
   0.02%    0x00007f623ad831e5:   mov    %eax,%r8d
   0.02%    0x00007f623ad831e8:   mov    0x40(%rsp),%rbp
   0.08%    0x00007f623ad831ed:   add    $0x48,%rsp
            0x00007f623ad831f1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            0x00007f623ad831f8:   ja     0x00007f623ad8324d
   0.03%    0x00007f623ad831fe:   vzeroupper 
   0.00%    0x00007f623ad83201:   ret    
            0x00007f623ad83202:   mov    0x8(%rsp),%r9
            0x00007f623ad83207:   mov    0x30(%rsp),%edx
            0x00007f623ad8320b:   mov    0x20(%rsp),%r10
            0x00007f623ad83210:   mov    0x34(%rsp),%r11d
            0x00007f623ad83215:   mov    0x28(%rsp),%rcx
            0x00007f623ad8321a:   movl   $0xffffffed,0x484(%r15)      ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007f623ad83225:   movq   $0x14,0x490(%r15)
....................................................................................................
  19.43%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 955 

            0x00007f623ad82d12:   or     %rsi,%rdx
            0x00007f623ad82d15:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007f623ad82d19:   nopl   0x0(%rax)
            0x00007f623ad82d20:   test   %r9d,%r9d
            0x00007f623ad82d23:   jne    0x00007f623ad83045
            0x00007f623ad82d29:   cmp    $0xffd86942,%r10d            ;   {oop(&quot;BICYCLE&quot;{0x00000007fec34a10})}
            0x00007f623ad82d30:   je     0x00007f623ad83147
   1.25%    0x00007f623ad82d36:   mov    %r10d,%r9d
   3.89%    0x00007f623ad82d39:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   0.02%    0x00007f623ad82d3d:   data16 xchg %ax,%ax
            0x00007f623ad82d40:   test   %r10d,%r10d
            0x00007f623ad82d43:   je     0x00007f623ad8313d
   1.32%    0x00007f623ad82d49:   cmpb   $0x0,0x10(,%r10,8)
   3.88%    0x00007f623ad82d52:   jne    0x00007f623ad83165           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007f623ad82d58:   mov    0x14(,%r10,8),%esi           ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r9=Oop r10=NarrowOop r13=Oop r14=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop }
                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.25%    0x00007f623ad82d60:   cmpl   $0x7,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f623ad832a7
   3.80%    0x00007f623ad82d68:   jne    0x00007f623ad8316f
            0x00007f623ad82d6e:   mov    %r9,0x8(%rsp)
            0x00007f623ad82d73:   shl    $0x3,%rsi
            0x00007f623ad82d77:   mov    %r14,%rdi
            0x00007f623ad82d7a:   mov    $0x7,%edx
            0x00007f623ad82d7f:   mov    $0x10,%rax
            0x00007f623ad82d86:   mov    $0x10,%rcx
            0x00007f623ad82d8d:   add    %rax,%rsi
            0x00007f623ad82d90:   add    %rcx,%rdi
            0x00007f623ad82d93:   mov    $0x1,%r9d
            0x00007f623ad82d99:   mov    (%rsi),%edx
....................................................................................................
  15.42%  <total for region 3>

....[Hottest Regions]...............................................................................
  28.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 955 
  19.43%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 955 
  15.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 955 
   8.97%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 955 
   7.85%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 955 
   4.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 955 
   3.86%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 955 
   3.83%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 955 
   2.70%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 955 
   2.64%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 955 
   0.27%              kernel  [unknown] 
   0.15%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 978 
   0.12%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 955 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.03%  <...other 308 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 955 
   1.36%              kernel  [unknown] 
   0.15%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 978 
   0.07%                      <unknown> 
   0.03%           libjvm.so  xmlStream::write_text 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%      hsdis-amd64.so  print_insn 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.15%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.26%      jvmci, level 4
   1.36%              kernel
   0.16%           libjvm.so
   0.09%        libc-2.31.so
   0.07%                    
   0.02%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%      libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 12)

# Run progress: 16.67% complete, ETA 00:19:02
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.961 ns/op
# Warmup Iteration   2: 10.733 ns/op
# Warmup Iteration   3: 10.718 ns/op
# Warmup Iteration   4: 10.723 ns/op
# Warmup Iteration   5: 10.671 ns/op
Iteration   1: 10.725 ns/op
Iteration   2: 10.723 ns/op
Iteration   3: 10.724 ns/op
Iteration   4: 10.717 ns/op
Iteration   5: 10.725 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  10.723 ±(99.9%) 0.012 ns/op [Average]
  (min, avg, max) = (10.717, 10.723, 10.725), stdev = 0.003
  CI (99.9%): [10.710, 10.735] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 225875 total address lines.
Perf output processed (skipped 60.378 seconds):
 Column 1: cycles (50621 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 953 

            0x00007f1d12d82578:   mov    %rbx,0x30(%rsp)
            0x00007f1d12d8257d:   movabs $0x7fec35158,%rbp            ;   {oop([B{0x00000007fec35158})}
   0.00%    0x00007f1d12d82587:   mov    %rbp,0x28(%rsp)
            0x00007f1d12d8258c:   movabs $0x7fec35128,%r13            ;   {oop([B{0x00000007fec35128})}
            0x00007f1d12d82596:   mov    %r13,0x20(%rsp)
   0.00%    0x00007f1d12d8259b:   movabs $0x7fec350f0,%r14            ;   {oop([B{0x00000007fec350f0})}
   0.00%    0x00007f1d12d825a5:   mov    %r14,0x18(%rsp)
            0x00007f1d12d825aa:   movabs $0x7fec350c0,%rcx            ;   {oop([B{0x00000007fec350c0})}
            0x00007f1d12d825b4:   movabs $0x7fec35090,%rax            ;   {oop([B{0x00000007fec35090})}
            0x00007f1d12d825be:   movabs $0x7fec35060,%rdx            ;   {oop([B{0x00000007fec35060})}
   0.00%    0x00007f1d12d825c8:   movabs $0x7fec35028,%rdi            ;   {oop([B{0x00000007fec35028})}
            0x00007f1d12d825d2:   movabs $0x7fec34ff0,%rsi            ;   {oop([B{0x00000007fec34ff0})}
            0x00007f1d12d825dc:   mov    %r10,0x10(%rsp)
   0.01%    0x00007f1d12d825e1:   movabs $0x7fec34fc0,%r10            ;   {oop([B{0x00000007fec34fc0})}
            0x00007f1d12d825eb:   movabs $0x7fec34f90,%r9             ;   {oop([B{0x00000007fec34f90})}
            0x00007f1d12d825f5:   mov    %r9,0x8(%rsp)
   0.01%    0x00007f1d12d825fa:   movl   $0x0,0x50(%rsp)
   0.00%    0x00007f1d12d82602:   mov    $0x0,%ebx
            0x00007f1d12d82607:   nopw   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
   0.80%    0x00007f1d12d82610:   cmp    %ebx,%r11d
            0x00007f1d12d82613:   jbe    0x00007f1d12d832cb           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.00%    0x00007f1d12d82619:   mov    0x10(%r8,%rbx,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   0.70%    0x00007f1d12d8261e:   mov    %ebx,%r8d
   2.05%    0x00007f1d12d82621:   inc    %r8d
   0.78%    0x00007f1d12d82624:   cmp    $0xffd869ef,%r11d            ;   {oop(&quot;MOPED&quot;{0x00000007fec34f78})}
            0x00007f1d12d8262b:   je     0x00007f1d12d82fcd
   0.02%    0x00007f1d12d82631:   test   %r11d,%r11d
            0x00007f1d12d82634:   je     0x00007f1d12d83006
   0.61%    0x00007f1d12d8263a:   nopw   0x0(%rax,%rax,1)
   1.98%    0x00007f1d12d82640:   cmpb   $0x0,0x10(,%r11,8)
   0.99%    0x00007f1d12d82649:   jne    0x00007f1d12d83025
   0.78%    0x00007f1d12d8264f:   mov    %ebx,0x48(%rsp)
   1.75%    0x00007f1d12d82653:   mov    0x14(,%r11,8),%ebx           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.73%    0x00007f1d12d8265b:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop rcx=Oop rdx=Oop rbx=NarrowOop rsi=Oop rdi=Oop r9=Oop r10=Oop r11=NarrowOop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
            0x00007f1d12d82660:   cmpl   $0x5,0xc(,%rbx,8)            ; implicit exception: dispatches to 0x00007f1d12d83374
   4.36%    0x00007f1d12d82668:   jne    0x00007f1d12d83045
   0.03%    0x00007f1d12d8266e:   mov    %r8d,0x4c(%rsp)
            0x00007f1d12d82673:   shl    $0x3,%rbx
            0x00007f1d12d82677:   mov    %rsi,%r8
   0.34%    0x00007f1d12d8267a:   mov    %rbx,%rsi
   0.03%    0x00007f1d12d8267d:   mov    %rdi,%rbx
            0x00007f1d12d82680:   mov    %r9,%rdi
            0x00007f1d12d82683:   mov    %rdx,%r9
   0.29%    0x00007f1d12d82686:   mov    $0x5,%edx
   0.02%    0x00007f1d12d8268b:   mov    %rax,%rbp
            0x00007f1d12d8268e:   mov    $0x10,%rax
            0x00007f1d12d82695:   mov    %rcx,%r13
   0.26%    0x00007f1d12d82698:   mov    $0x10,%rcx
   0.04%    0x00007f1d12d8269f:   add    %rax,%rsi
            0x00007f1d12d826a2:   add    %rcx,%rdi
            0x00007f1d12d826a5:   mov    $0x1,%r14d
   0.26%    0x00007f1d12d826ab:   mov    (%rsi),%edx
   0.04%    0x00007f1d12d826ad:   xor    (%rdi),%edx
            0x00007f1d12d826af:   mov    0x1(%rsi),%esi
            0x00007f1d12d826b2:   xor    0x1(%rdi),%esi
   0.24%    0x00007f1d12d826b5:   xor    %rdi,%rdi
   0.04%    0x00007f1d12d826b8:   or     %rsi,%rdx
            0x00007f1d12d826bb:   cmovne %edi,%r14d                   ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007f1d12d826bf:   nop
   0.28%    0x00007f1d12d826c0:   test   %r14d,%r14d
            0x00007f1d12d826c3:   jne    0x00007f1d12d82d87
   1.08%    0x00007f1d12d826c9:   cmp    $0xffd869f5,%r11d            ;   {oop(&quot;BICYCLE&quot;{0x00000007fec34fa8})}
            0x00007f1d12d826d0:   je     0x00007f1d12d83067
   0.99%    0x00007f1d12d826d6:   mov    %r11d,%r14d
            0x00007f1d12d826d9:   shl    $0x3,%r14                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   0.82%    0x00007f1d12d826dd:   data16 xchg %ax,%ax
   1.07%    0x00007f1d12d826e0:   test   %r11d,%r11d
            0x00007f1d12d826e3:   je     0x00007f1d12d8305e
   1.04%    0x00007f1d12d826e9:   cmpb   $0x0,0x10(,%r11,8)
   0.79%    0x00007f1d12d826f2:   jne    0x00007f1d12d8309b           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.11%    0x00007f1d12d826f8:   mov    0x14(,%r11,8),%esi           ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=Oop r9=Oop r10=Oop r11=NarrowOop r13=Oop r14=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.05%    0x00007f1d12d82700:   cmpl   $0x7,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f1d12d83397
   0.78%    0x00007f1d12d82708:   jne    0x00007f1d12d830a5
   0.28%    0x00007f1d12d8270e:   mov    %r14,(%rsp)
   0.03%    0x00007f1d12d82712:   shl    $0x3,%rsi
            0x00007f1d12d82716:   mov    %r10,%rdi
            0x00007f1d12d82719:   mov    $0x7,%edx
   0.26%    0x00007f1d12d8271e:   mov    $0x10,%rax
   0.02%    0x00007f1d12d82725:   mov    $0x10,%rcx
            0x00007f1d12d8272c:   add    %rax,%rsi
            0x00007f1d12d8272f:   add    %rcx,%rdi
   0.28%    0x00007f1d12d82732:   mov    $0x1,%r14d
   0.02%    0x00007f1d12d82738:   mov    (%rsi),%edx
            0x00007f1d12d8273a:   xor    (%rdi),%edx
            0x00007f1d12d8273c:   mov    0x3(%rsi),%esi
   0.26%    0x00007f1d12d8273f:   xor    0x3(%rdi),%esi
   0.02%    0x00007f1d12d82742:   xor    %rdi,%rdi
            0x00007f1d12d82745:   or     %rsi,%rdx
            0x00007f1d12d82748:   cmovne %edi,%r14d                   ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.25%    0x00007f1d12d8274c:   test   %r14d,%r14d
            0x00007f1d12d8274f:   jne    0x00007f1d12d82dbb           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.63%    0x00007f1d12d82755:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007f1d12d82760:   cmp    $0xffd869fb,%r11d            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fec34fd8})}
            0x00007f1d12d82767:   je     0x00007f1d12d830ae
            0x00007f1d12d8276d:   test   %r11d,%r11d
            0x00007f1d12d82770:   je     0x00007f1d12d8280d
   1.00%    0x00007f1d12d82776:   data16 nopw 0x0(%rax,%rax,1)
   1.64%    0x00007f1d12d82780:   cmpb   $0x0,0x10(,%r11,8)
            0x00007f1d12d82789:   jne    0x00007f1d12d827f5
   0.99%    0x00007f1d12d8278f:   mov    0x14(,%r11,8),%esi           ;* unwind (locked if synchronized)
....................................................................................................
  29.23%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 953 

                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.30%             0x00007f1d12d8288c:   test   %r14d,%r14d
                     0x00007f1d12d8288f:   jne    0x00007f1d12d82e25           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@41 (line 252)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.55%             0x00007f1d12d82895:   data16 data16 nopw 0x0(%rax,%rax,1)
                     0x00007f1d12d828a0:   cmp    $0xffd86a09,%r11d            ;   {oop(&quot;CAR&quot;{0x00000007fec35048})}
                     0x00007f1d12d828a7:   je     0x00007f1d12d83119
                     0x00007f1d12d828ad:   test   %r11d,%r11d
          ╭          0x00007f1d12d828b0:   je     0x00007f1d12d8294d
   0.73%  │          0x00007f1d12d828b6:   data16 nopw 0x0(%rax,%rax,1)
   1.37%  │          0x00007f1d12d828c0:   cmpb   $0x0,0x10(,%r11,8)
   0.17%  │╭         0x00007f1d12d828c9:   jne    0x00007f1d12d82937
   0.73%  ││         0x00007f1d12d828cf:   mov    0x14(,%r11,8),%esi           ;* unwind (locked if synchronized)
          ││                                                                   ; - java.lang.String::equals@-3
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.25%  ││         0x00007f1d12d828d7:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=Oop r9=Oop r10=Oop r11=NarrowOop r13=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                                   ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@41 (line 252)
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││         0x00007f1d12d828e0:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f1d12d83400
   0.81%  ││╭        0x00007f1d12d828e8:   jne    0x00007f1d12d82937
   0.54%  │││        0x00007f1d12d828ee:   shl    $0x3,%rsi
          │││        0x00007f1d12d828f2:   mov    %r9,%rdi
          │││        0x00007f1d12d828f5:   mov    $0x3,%edx
   0.40%  │││        0x00007f1d12d828fa:   mov    $0x10,%rax
   0.55%  │││        0x00007f1d12d82901:   mov    $0x10,%rcx
          │││        0x00007f1d12d82908:   add    %rax,%rsi
          │││        0x00007f1d12d8290b:   add    %rcx,%rdi
   0.40%  │││        0x00007f1d12d8290e:   mov    $0x1,%r14d
   0.52%  │││        0x00007f1d12d82914:   movzwq (%rsi),%rdx
          │││        0x00007f1d12d82918:   xor    (%rdi),%dx
          │││        0x00007f1d12d8291b:   movzwq 0x1(%rsi),%rsi
   0.33%  │││        0x00007f1d12d82920:   xor    0x1(%rdi),%si
   0.52%  │││        0x00007f1d12d82924:   xor    %rdi,%rdi
          │││        0x00007f1d12d82927:   or     %rsi,%rdx
          │││        0x00007f1d12d8292a:   cmovne %edi,%r14d                   ;* unwind (locked if synchronized)
          │││                                                                  ; - java.lang.String::equals@-3
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.41%  │││        0x00007f1d12d8292e:   test   %r14d,%r14d
          │││        0x00007f1d12d82931:   jne    0x00007f1d12d82e59           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@52 (line 254)
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.20%  │↘↘        0x00007f1d12d82937:   nopw   0x0(%rax,%rax,1)
          │          0x00007f1d12d82940:   cmp    $0xffd86a0f,%r11d            ;   {oop(&quot;SUV&quot;{0x00000007fec35078})}
          │          0x00007f1d12d82947:   je     0x00007f1d12d8314d
          ↘          0x00007f1d12d8294d:   test   %r11d,%r11d
             ╭       0x00007f1d12d82950:   je     0x00007f1d12d829ed
   0.73%     │       0x00007f1d12d82956:   data16 nopw 0x0(%rax,%rax,1)
   1.08%     │       0x00007f1d12d82960:   cmpb   $0x0,0x10(,%r11,8)
   0.15%     │╭      0x00007f1d12d82969:   jne    0x00007f1d12d829d7
   0.87%     ││      0x00007f1d12d8296f:   mov    0x14(,%r11,8),%esi           ;* unwind (locked if synchronized)
             ││                                                                ; - java.lang.String::equals@-3
             ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
             ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.92%     ││      0x00007f1d12d82977:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=Oop r9=Oop r10=Oop r11=NarrowOop r13=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop }
             ││                                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
             ││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@52 (line 254)
             ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
             ││      0x00007f1d12d82980:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f1d12d83423
   1.13%     ││╭     0x00007f1d12d82988:   jne    0x00007f1d12d829d7
   0.22%     │││     0x00007f1d12d8298e:   shl    $0x3,%rsi
             │││     0x00007f1d12d82992:   mov    %rbp,%rdi
             │││     0x00007f1d12d82995:   mov    $0x3,%edx
   0.33%     │││     0x00007f1d12d8299a:   mov    $0x10,%rax
   0.23%     │││     0x00007f1d12d829a1:   mov    $0x10,%rcx
             │││     0x00007f1d12d829a8:   add    %rax,%rsi
             │││     0x00007f1d12d829ab:   add    %rcx,%rdi
   0.43%     │││     0x00007f1d12d829ae:   mov    $0x1,%r14d
   0.23%     │││     0x00007f1d12d829b4:   movzwq (%rsi),%rdx
             │││     0x00007f1d12d829b8:   xor    (%rdi),%dx
             │││     0x00007f1d12d829bb:   movzwq 0x1(%rsi),%rsi
   0.36%     │││     0x00007f1d12d829c0:   xor    0x1(%rdi),%si
   0.24%     │││     0x00007f1d12d829c4:   xor    %rdi,%rdi
             │││     0x00007f1d12d829c7:   or     %rsi,%rdx
             │││     0x00007f1d12d829ca:   cmovne %edi,%r14d                   ;* unwind (locked if synchronized)
             │││                                                               ; - java.lang.String::equals@-3
             │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
             │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.44%     │││     0x00007f1d12d829ce:   test   %r14d,%r14d
             │││     0x00007f1d12d829d1:   jne    0x00007f1d12d82e8d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@63 (line 256)
             │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.91%     │↘↘     0x00007f1d12d829d7:   nopw   0x0(%rax,%rax,1)
             │       0x00007f1d12d829e0:   cmp    $0xffd86a15,%r11d            ;   {oop(&quot;VAN&quot;{0x00000007fec350a8})}
             │       0x00007f1d12d829e7:   je     0x00007f1d12d83185
             ↘       0x00007f1d12d829ed:   test   %r11d,%r11d
                ╭    0x00007f1d12d829f0:   je     0x00007f1d12d82a8d
   0.56%        │    0x00007f1d12d829f6:   data16 nopw 0x0(%rax,%rax,1)
   0.90%        │    0x00007f1d12d82a00:   cmpb   $0x0,0x10(,%r11,8)
                │╭   0x00007f1d12d82a09:   jne    0x00007f1d12d82a77
   0.54%        ││   0x00007f1d12d82a0f:   mov    0x14(,%r11,8),%esi           ;* unwind (locked if synchronized)
                ││                                                             ; - java.lang.String::equals@-3
                ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@72 (line 258)
                ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.91%        ││   0x00007f1d12d82a17:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=Oop r9=Oop r10=Oop r11=NarrowOop r13=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop }
                ││                                                             ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@63 (line 256)
                ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
                ││   0x00007f1d12d82a20:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f1d12d83446
   0.53%        ││╭  0x00007f1d12d82a28:   jne    0x00007f1d12d82a77
   0.20%        │││  0x00007f1d12d82a2e:   shl    $0x3,%rsi
                │││  0x00007f1d12d82a32:   mov    %r13,%rdi
                │││  0x00007f1d12d82a35:   mov    $0x3,%edx
   0.08%        │││  0x00007f1d12d82a3a:   mov    $0x10,%rax
   0.25%        │││  0x00007f1d12d82a41:   mov    $0x10,%rcx
                │││  0x00007f1d12d82a48:   add    %rax,%rsi
                │││  0x00007f1d12d82a4b:   add    %rcx,%rdi
   0.06%        │││  0x00007f1d12d82a4e:   mov    $0x1,%r14d
   0.23%        │││  0x00007f1d12d82a54:   movzwq (%rsi),%rdx
                │││  0x00007f1d12d82a58:   xor    (%rdi),%dx
                │││  0x00007f1d12d82a5b:   movzwq 0x1(%rsi),%rsi
   0.07%        │││  0x00007f1d12d82a60:   xor    0x1(%rdi),%si
   0.21%        │││  0x00007f1d12d82a64:   xor    %rdi,%rdi
                │││  0x00007f1d12d82a67:   or     %rsi,%rdx
                │││  0x00007f1d12d82a6a:   cmovne %edi,%r14d                   ;* unwind (locked if synchronized)
                │││                                                            ; - java.lang.String::equals@-3
                │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@72 (line 258)
                │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.08%        │││  0x00007f1d12d82a6e:   test   %r14d,%r14d
                │││  0x00007f1d12d82a71:   jne    0x00007f1d12d82ec5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@75 (line 258)
                │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.87%        │↘↘  0x00007f1d12d82a77:   nopw   0x0(%rax,%rax,1)
                │    0x00007f1d12d82a80:   cmp    $0xffd86a1b,%r11d            ;   {oop(&quot;MOTOR_HOME&quot;{0x00000007fec350d8})}
                │    0x00007f1d12d82a87:   je     0x00007f1d12d831b9
                ↘    0x00007f1d12d82a8d:   test   %r11d,%r11d
                     0x00007f1d12d82a90:   je     0x00007f1d12d82b2d
   0.29%             0x00007f1d12d82a96:   data16 nopw 0x0(%rax,%rax,1)
   0.90%             0x00007f1d12d82aa0:   cmpb   $0x0,0x10(,%r11,8)
                     0x00007f1d12d82aa9:   jne    0x00007f1d12d82b17
   0.28%             0x00007f1d12d82aaf:   mov    0x14(,%r11,8),%esi           ;* unwind (locked if synchronized)
                                                                               ; - java.lang.String::equals@-3
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@84 (line 260)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.85%             0x00007f1d12d82ab7:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=Oop r9=Oop r10=Oop r11=NarrowOop r13=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                               ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@75 (line 258)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
                     0x00007f1d12d82ac0:   cmpl   $0xa,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f1d12d8346d
   0.30%             0x00007f1d12d82ac8:   jne    0x00007f1d12d82b17
                     0x00007f1d12d82ace:   shl    $0x3,%rsi
                     0x00007f1d12d82ad2:   mov    0x18(%rsp),%rdi
                     0x00007f1d12d82ad7:   mov    $0xa,%edx
                     0x00007f1d12d82adc:   mov    $0x10,%rax
                     0x00007f1d12d82ae3:   mov    $0x10,%rcx
                     0x00007f1d12d82aea:   add    %rax,%rsi
                     0x00007f1d12d82aed:   add    %rcx,%rdi
                     0x00007f1d12d82af0:   mov    $0x1,%r14d
                     0x00007f1d12d82af6:   mov    (%rsi),%rdx
                     0x00007f1d12d82af9:   xor    (%rdi),%rdx
....................................................................................................
  26.29%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 953 

            0x00007f1d12d83020:   jmp    0x00007f1d12d826d6
            0x00007f1d12d83025:   mov    %r8d,0x4c(%rsp)
            0x00007f1d12d8302a:   mov    %ebx,0x48(%rsp)
            0x00007f1d12d8302e:   mov    %rsi,%r8
            0x00007f1d12d83031:   mov    %rdi,%rbx
            0x00007f1d12d83034:   mov    %rdx,%r9
            0x00007f1d12d83037:   mov    %rax,%rbp
            0x00007f1d12d8303a:   mov    %rcx,%r13
            0x00007f1d12d8303d:   data16 xchg %ax,%ax
            0x00007f1d12d83040:   jmp    0x00007f1d12d826c9
   1.36%    0x00007f1d12d83045:   mov    %r8d,0x4c(%rsp)
            0x00007f1d12d8304a:   mov    %rsi,%r8
   0.50%    0x00007f1d12d8304d:   mov    %rdi,%rbx
   1.05%    0x00007f1d12d83050:   mov    %rdx,%r9
   1.31%    0x00007f1d12d83053:   mov    %rax,%rbp
            0x00007f1d12d83056:   mov    %rcx,%r13
   0.56%    0x00007f1d12d83059:   jmp    0x00007f1d12d826c9
            0x00007f1d12d8305e:   mov    %r14,(%rsp)
            0x00007f1d12d83062:   jmp    0x00007f1d12d8276d           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.31%    0x00007f1d12d83067:   mov    0x50(%rsp),%r14d
            0x00007f1d12d8306c:   lea    0x2(%r14),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
            0x00007f1d12d83070:   mov    %eax,0x50(%rsp)
            0x00007f1d12d83074:   mov    %r8,%rsi
   0.29%    0x00007f1d12d83077:   mov    %rbx,%rdi
            0x00007f1d12d8307a:   mov    %r9,%rdx
            0x00007f1d12d8307d:   mov    %rbp,%rax
            0x00007f1d12d83080:   mov    %r13,%rcx
   0.26%    0x00007f1d12d83083:   mov    0x40(%rsp),%r8
            0x00007f1d12d83088:   mov    0x54(%rsp),%r11d
            0x00007f1d12d8308d:   mov    0x4c(%rsp),%ebx
            0x00007f1d12d83091:   mov    0x8(%rsp),%r9
   0.25%    0x00007f1d12d83096:   jmp    0x00007f1d12d82610
            0x00007f1d12d8309b:   mov    %r14,(%rsp)
            0x00007f1d12d8309f:   nop
            0x00007f1d12d830a0:   jmp    0x00007f1d12d82755
   0.84%    0x00007f1d12d830a5:   mov    %r14,(%rsp)
   1.01%    0x00007f1d12d830a9:   jmp    0x00007f1d12d82755           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.30%    0x00007f1d12d830ae:   mov    0x50(%rsp),%r14d
            0x00007f1d12d830b3:   lea    0x3(%r14),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
            0x00007f1d12d830b7:   mov    %eax,0x50(%rsp)
            0x00007f1d12d830bb:   mov    %r8,%rsi
   0.29%    0x00007f1d12d830be:   mov    %rbx,%rdi
            0x00007f1d12d830c1:   mov    %r9,%rdx
            0x00007f1d12d830c4:   mov    %rbp,%rax
            0x00007f1d12d830c7:   mov    %r13,%rcx
   0.33%    0x00007f1d12d830ca:   mov    0x40(%rsp),%r8
            0x00007f1d12d830cf:   mov    0x54(%rsp),%r11d
            0x00007f1d12d830d4:   mov    0x4c(%rsp),%ebx
            0x00007f1d12d830d8:   mov    0x8(%rsp),%r9                ;   {no_reloc}
   0.31%    0x00007f1d12d830dd:   data16 xchg %ax,%ax
            0x00007f1d12d830e0:   jmp    0x00007f1d12d82610           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.28%    0x00007f1d12d830e5:   mov    0x50(%rsp),%r14d
            0x00007f1d12d830ea:   lea    0x4(%r14),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
            0x00007f1d12d830ee:   mov    %eax,0x50(%rsp)
            0x00007f1d12d830f2:   mov    %r8,%rsi
   0.29%    0x00007f1d12d830f5:   mov    %rbx,%rdi
            0x00007f1d12d830f8:   mov    %r9,%rdx
            0x00007f1d12d830fb:   mov    %rbp,%rax
            0x00007f1d12d830fe:   mov    %r13,%rcx
   0.29%    0x00007f1d12d83101:   mov    0x40(%rsp),%r8
            0x00007f1d12d83106:   mov    0x54(%rsp),%r11d
            0x00007f1d12d8310b:   mov    0x4c(%rsp),%ebx
            0x00007f1d12d8310f:   mov    0x8(%rsp),%r9
   0.31%    0x00007f1d12d83114:   jmp    0x00007f1d12d82610           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.26%    0x00007f1d12d83119:   mov    0x50(%rsp),%r14d
            0x00007f1d12d8311e:   lea    0x5(%r14),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
            0x00007f1d12d83122:   mov    %eax,0x50(%rsp)
            0x00007f1d12d83126:   mov    %r8,%rsi
   0.30%    0x00007f1d12d83129:   mov    %rbx,%rdi
            0x00007f1d12d8312c:   mov    %r9,%rdx
            0x00007f1d12d8312f:   mov    %rbp,%rax
            0x00007f1d12d83132:   mov    %r13,%rcx
   0.31%    0x00007f1d12d83135:   mov    0x40(%rsp),%r8
            0x00007f1d12d8313a:   mov    0x54(%rsp),%r11d
            0x00007f1d12d8313f:   mov    0x4c(%rsp),%ebx
            0x00007f1d12d83143:   mov    0x8(%rsp),%r9
   0.29%    0x00007f1d12d83148:   jmp    0x00007f1d12d82610           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007f1d12d8314d:   mov    0x50(%rsp),%r14d
            0x00007f1d12d83152:   lea    0x6(%r14),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
   0.28%    0x00007f1d12d83156:   mov    %eax,0x50(%rsp)
            0x00007f1d12d8315a:   mov    %r8,%rsi
            0x00007f1d12d8315d:   mov    %rbx,%rdi
            0x00007f1d12d83160:   mov    %r9,%rdx
   0.30%    0x00007f1d12d83163:   mov    %rbp,%rax
            0x00007f1d12d83166:   mov    %r13,%rcx
            0x00007f1d12d83169:   mov    0x40(%rsp),%r8
            0x00007f1d12d8316e:   mov    0x54(%rsp),%r11d
   0.30%    0x00007f1d12d83173:   mov    0x4c(%rsp),%ebx
            0x00007f1d12d83177:   mov    0x8(%rsp),%r9
            0x00007f1d12d8317c:   nopl   0x0(%rax)
            0x00007f1d12d83180:   jmp    0x00007f1d12d82610           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@72 (line 258)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007f1d12d83185:   mov    0x50(%rsp),%r14d
   0.32%    0x00007f1d12d8318a:   lea    0x7(%r14),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
            0x00007f1d12d8318e:   mov    %eax,0x50(%rsp)
            0x00007f1d12d83192:   mov    %r8,%rsi
            0x00007f1d12d83195:   mov    %rbx,%rdi
   0.30%    0x00007f1d12d83198:   mov    %r9,%rdx
            0x00007f1d12d8319b:   mov    %rbp,%rax
            0x00007f1d12d8319e:   mov    %r13,%rcx
            0x00007f1d12d831a1:   mov    0x40(%rsp),%r8
   0.33%    0x00007f1d12d831a6:   mov    0x54(%rsp),%r11d
            0x00007f1d12d831ab:   mov    0x4c(%rsp),%ebx
            0x00007f1d12d831af:   mov    0x8(%rsp),%r9
            0x00007f1d12d831b4:   jmp    0x00007f1d12d82610           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@84 (line 260)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.27%    0x00007f1d12d831b9:   mov    0x50(%rsp),%r14d
            0x00007f1d12d831be:   lea    0x8(%r14),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
            0x00007f1d12d831c2:   mov    %eax,0x50(%rsp)
            0x00007f1d12d831c6:   mov    %r8,%rsi
   0.28%    0x00007f1d12d831c9:   mov    %rbx,%rdi
            0x00007f1d12d831cc:   mov    %r9,%rdx
            0x00007f1d12d831cf:   mov    %rbp,%rax
            0x00007f1d12d831d2:   mov    %r13,%rcx
   0.36%    0x00007f1d12d831d5:   mov    0x40(%rsp),%r8
            0x00007f1d12d831da:   mov    0x54(%rsp),%r11d             ;   {no_reloc}
            0x00007f1d12d831df:   mov    0x4c(%rsp),%ebx
            0x00007f1d12d831e3:   mov    0x8(%rsp),%r9
   0.31%    0x00007f1d12d831e8:   jmp    0x00007f1d12d82610           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@96 (line 262)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.30%    0x00007f1d12d831ed:   mov    0x50(%rsp),%r14d
            0x00007f1d12d831f2:   lea    0x9(%r14),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
            0x00007f1d12d831f6:   mov    %eax,0x50(%rsp)
            0x00007f1d12d831fa:   mov    %r8,%rsi
   0.31%    0x00007f1d12d831fd:   mov    %rbx,%rdi
            0x00007f1d12d83200:   mov    %r9,%rdx
            0x00007f1d12d83203:   mov    %rbp,%rax
            0x00007f1d12d83206:   mov    %r13,%rcx
   0.31%    0x00007f1d12d83209:   mov    0x40(%rsp),%r8
            0x00007f1d12d8320e:   mov    0x54(%rsp),%r11d
            0x00007f1d12d83213:   mov    0x4c(%rsp),%ebx
            0x00007f1d12d83217:   mov    0x8(%rsp),%r9
   0.31%    0x00007f1d12d8321c:   nopl   0x0(%rax)
            0x00007f1d12d83220:   jmp    0x00007f1d12d82610           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@108 (line 264)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.33%    0x00007f1d12d83225:   mov    0x50(%rsp),%r14d
            0x00007f1d12d8322a:   lea    0xa(%r14),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
            0x00007f1d12d8322e:   mov    %eax,0x50(%rsp)
            0x00007f1d12d83232:   mov    %r8,%rsi
   0.29%    0x00007f1d12d83235:   mov    %rbx,%rdi
            0x00007f1d12d83238:   mov    %r9,%rdx
            0x00007f1d12d8323b:   mov    %rbp,%rax
            0x00007f1d12d8323e:   mov    %r13,%rcx
   0.35%    0x00007f1d12d83241:   mov    0x40(%rsp),%r8
            0x00007f1d12d83246:   mov    0x54(%rsp),%r11d
            0x00007f1d12d8324b:   mov    0x4c(%rsp),%ebx
            0x00007f1d12d8324f:   mov    0x8(%rsp),%r9
   0.28%    0x00007f1d12d83254:   jmp    0x00007f1d12d82610
            0x00007f1d12d83259:   mov    0x50(%rsp),%r14d
            0x00007f1d12d8325e:   xchg   %ax,%ax
            0x00007f1d12d83260:   jmp    0x00007f1d12d82ced           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@120 (line 266)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.35%    0x00007f1d12d83265:   mov    0x50(%rsp),%r14d
            0x00007f1d12d8326a:   lea    0xb(%r14),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
            0x00007f1d12d8326e:   mov    %eax,0x50(%rsp)
            0x00007f1d12d83272:   mov    %r8,%rsi
   0.34%    0x00007f1d12d83275:   mov    %rbx,%rdi
            0x00007f1d12d83278:   mov    %r9,%rdx
            0x00007f1d12d8327b:   mov    %rbp,%rax
            0x00007f1d12d8327e:   mov    %r13,%rcx
   0.27%    0x00007f1d12d83281:   mov    0x40(%rsp),%r8
            0x00007f1d12d83286:   mov    0x54(%rsp),%r11d
            0x00007f1d12d8328b:   mov    0x4c(%rsp),%ebx
            0x00007f1d12d8328f:   mov    0x8(%rsp),%r9
   0.28%    0x00007f1d12d83294:   jmp    0x00007f1d12d82610           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@132 (line 268)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.22%    0x00007f1d12d83299:   mov    0x4c(%rsp),%eax
            0x00007f1d12d8329d:   lea    0xc(%r14),%r11d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
            0x00007f1d12d832a1:   mov    %r11d,0x50(%rsp)
   0.07%    0x00007f1d12d832a6:   mov    %r8,%rsi
   0.19%    0x00007f1d12d832a9:   mov    %rbx,%rdi
            0x00007f1d12d832ac:   mov    %r9,%rdx
            0x00007f1d12d832af:   mov    %r13,%rcx
   0.08%    0x00007f1d12d832b2:   mov    0x40(%rsp),%r8
   0.25%    0x00007f1d12d832b7:   mov    0x54(%rsp),%r11d
            0x00007f1d12d832bc:   mov    %eax,%ebx
            0x00007f1d12d832be:   mov    0x8(%rsp),%r9
   0.07%    0x00007f1d12d832c3:   mov    %rbp,%rax
   0.25%    0x00007f1d12d832c6:   jmp    0x00007f1d12d82610
   0.02%    0x00007f1d12d832cb:   mov    0x50(%rsp),%r14d
   0.05%    0x00007f1d12d832d0:   mov    %r14d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@41 (line 129)
            0x00007f1d12d832d3:   mov    0x60(%rsp),%rbp
   0.00%    0x00007f1d12d832d8:   add    $0x68,%rsp                   ;   {no_reloc}
            0x00007f1d12d832dc:   nopl   0x0(%rax)
            0x00007f1d12d832e0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            0x00007f1d12d832e7:   ja     0x00007f1d12d8333d
   0.02%    0x00007f1d12d832ed:   vzeroupper 
            0x00007f1d12d832f0:   ret    
            0x00007f1d12d832f1:   mov    (%rsp),%r10
            0x00007f1d12d832f5:   mov    0x48(%rsp),%ebx
            0x00007f1d12d832f9:   mov    0x40(%rsp),%r8
            0x00007f1d12d832fe:   mov    0x54(%rsp),%r11d
            0x00007f1d12d83303:   mov    0x10(%rsp),%r9
            0x00007f1d12d83308:   movl   $0xffffffed,0x484(%r15)
            0x00007f1d12d83313:   movq   $0x14,0x490(%r15)            ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@132 (line 268)
....................................................................................................
  19.31%  <total for region 3>

....[Hottest Regions]...............................................................................
  29.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 953 
  26.29%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 953 
  19.31%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 953 
   8.35%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 953 
   6.43%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 953 
   2.97%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 953 
   1.85%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 953 
   1.80%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 953 
   0.96%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 953 
   0.87%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 953 
   0.28%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 980 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 953 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   1.00%  <...other 295 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 953 
   1.43%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 980 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  fileStream::write 
   0.00%           libjvm.so  Relocation::copy_into 
   0.00%           libjvm.so  os::vsnprintf 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.12%  <...other 56 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.21%      jvmci, level 4
   1.43%              kernel
   0.12%           libjvm.so
   0.12%        libc-2.31.so
   0.08%                    
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%              [vdso]
   0.00%         interpreter
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 24)

# Run progress: 25.00% complete, ETA 00:17:05
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 21.098 ns/op
# Warmup Iteration   2: 20.280 ns/op
# Warmup Iteration   3: 20.254 ns/op
# Warmup Iteration   4: 20.251 ns/op
# Warmup Iteration   5: 20.254 ns/op
Iteration   1: 20.286 ns/op
Iteration   2: 20.283 ns/op
Iteration   3: 20.256 ns/op
Iteration   4: 20.268 ns/op
Iteration   5: 20.285 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  20.276 ±(99.9%) 0.051 ns/op [Average]
  (min, avg, max) = (20.256, 20.276, 20.286), stdev = 0.013
  CI (99.9%): [20.224, 20.327] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 231587 total address lines.
Perf output processed (skipped 60.679 seconds):
 Column 1: cycles (50976 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 

                           0x00007f2dc2d81b40:   xor    %rsi,%rsi
                           0x00007f2dc2d81b43:   vptest %xmm0,%xmm0
                           0x00007f2dc2d81b48:   cmovne %esi,%r9d                    ;* unwind (locked if synchronized)
                                                                                     ; - java.lang.String::equals@-3
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
                           0x00007f2dc2d81b4c:   test   %r9d,%r9d
                           0x00007f2dc2d81b4f:   jne    0x00007f2dc2d8282f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.33%                   0x00007f2dc2d81b55:   data16 data16 nopw 0x0(%rax,%rax,1)
                           0x00007f2dc2d81b60:   cmp    $0xffd86a02,%r11d            ;   {oop(&quot;MOTORCYCLE&quot;{0x00000007fec35010})}
                           0x00007f2dc2d81b67:   je     0x00007f2dc2d82e1f
   0.00%                   0x00007f2dc2d81b6d:   test   %r11d,%r11d
          ╭                0x00007f2dc2d81b70:   je     0x00007f2dc2d81c0d
   0.26%  │                0x00007f2dc2d81b76:   data16 nopw 0x0(%rax,%rax,1)
   1.37%  │                0x00007f2dc2d81b80:   cmpb   $0x0,0x10(,%r11,8)
   0.00%  │╭               0x00007f2dc2d81b89:   jne    0x00007f2dc2d81bf5
   0.28%  ││               0x00007f2dc2d81b8f:   mov    0x14(,%r11,8),%esi           ;* unwind (locked if synchronized)
          ││                                                                         ; - java.lang.String::equals@-3
          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.31%  ││               0x00007f2dc2d81b97:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=Oop r10=Oop r11=NarrowOop r13=Oop r14=Oop [8]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [120]=Oop [128]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop }
          ││                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││               0x00007f2dc2d81ba0:   cmpl   $0xa,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f2dc2d83417
   0.27%  ││╭              0x00007f2dc2d81ba8:   jne    0x00007f2dc2d81bf5
   0.31%  │││              0x00007f2dc2d81bae:   shl    $0x3,%rsi
          │││              0x00007f2dc2d81bb2:   mov    %r13,%rdi
   0.01%  │││              0x00007f2dc2d81bb5:   mov    $0xa,%edx
   0.01%  │││              0x00007f2dc2d81bba:   mov    $0x10,%rax
   0.28%  │││              0x00007f2dc2d81bc1:   mov    $0x10,%rcx
          │││              0x00007f2dc2d81bc8:   add    %rax,%rsi
   0.00%  │││              0x00007f2dc2d81bcb:   add    %rcx,%rdi
   0.00%  │││              0x00007f2dc2d81bce:   mov    $0x1,%r9d
   0.34%  │││              0x00007f2dc2d81bd4:   mov    (%rsi),%rdx
          │││              0x00007f2dc2d81bd7:   xor    (%rdi),%rdx
   0.01%  │││              0x00007f2dc2d81bda:   mov    0x2(%rsi),%rsi
   0.01%  │││              0x00007f2dc2d81bde:   xor    0x2(%rdi),%rsi
   0.28%  │││              0x00007f2dc2d81be2:   xor    %rdi,%rdi
          │││              0x00007f2dc2d81be5:   or     %rsi,%rdx
   0.01%  │││              0x00007f2dc2d81be8:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
          │││                                                                        ; - java.lang.String::equals@-3
          │││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
          │││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.06%  │││              0x00007f2dc2d81bec:   test   %r9d,%r9d
          │││              0x00007f2dc2d81bef:   jne    0x00007f2dc2d82869           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@41 (line 252)
          │││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.28%  │↘↘              0x00007f2dc2d81bf5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │                0x00007f2dc2d81c00:   cmp    $0xffd86a09,%r11d            ;   {oop(&quot;CAR&quot;{0x00000007fec35048})}
          │                0x00007f2dc2d81c07:   je     0x00007f2dc2d82e59
   0.00%  ↘                0x00007f2dc2d81c0d:   test   %r11d,%r11d
             ╭             0x00007f2dc2d81c10:   je     0x00007f2dc2d81cad
   0.26%     │             0x00007f2dc2d81c16:   data16 nopw 0x0(%rax,%rax,1)
   1.19%     │             0x00007f2dc2d81c20:   cmpb   $0x0,0x10(,%r11,8)
   0.00%     │╭            0x00007f2dc2d81c29:   jne    0x00007f2dc2d81c97
   0.29%     ││            0x00007f2dc2d81c2f:   mov    0x14(,%r11,8),%esi           ;* unwind (locked if synchronized)
             ││                                                                      ; - java.lang.String::equals@-3
             ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
             ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.25%     ││            0x00007f2dc2d81c37:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=Oop r10=Oop r11=NarrowOop r13=Oop r14=Oop [8]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [120]=Oop [128]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop }
             ││                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
             ││                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@41 (line 252)
             ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
             ││            0x00007f2dc2d81c40:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f2dc2d8343a
   0.33%     ││╭           0x00007f2dc2d81c48:   jne    0x00007f2dc2d81c97
   0.17%     │││           0x00007f2dc2d81c4e:   shl    $0x3,%rsi
             │││           0x00007f2dc2d81c52:   mov    %rbp,%rdi
             │││           0x00007f2dc2d81c55:   mov    $0x3,%edx
   0.03%     │││           0x00007f2dc2d81c5a:   mov    $0x10,%rax
   0.18%     │││           0x00007f2dc2d81c61:   mov    $0x10,%rcx
             │││           0x00007f2dc2d81c68:   add    %rax,%rsi
             │││           0x00007f2dc2d81c6b:   add    %rcx,%rdi
   0.03%     │││           0x00007f2dc2d81c6e:   mov    $0x1,%r9d
   0.21%     │││           0x00007f2dc2d81c74:   movzwq (%rsi),%rdx
             │││           0x00007f2dc2d81c78:   xor    (%rdi),%dx
             │││           0x00007f2dc2d81c7b:   movzwq 0x1(%rsi),%rsi
   0.03%     │││           0x00007f2dc2d81c80:   xor    0x1(%rdi),%si
   0.22%     │││           0x00007f2dc2d81c84:   xor    %rdi,%rdi
             │││           0x00007f2dc2d81c87:   or     %rsi,%rdx
             │││           0x00007f2dc2d81c8a:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
             │││                                                                     ; - java.lang.String::equals@-3
             │││                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
             │││                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.04%     │││           0x00007f2dc2d81c8e:   test   %r9d,%r9d
             │││           0x00007f2dc2d81c91:   jne    0x00007f2dc2d828a5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │││                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@52 (line 254)
             │││                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.17%     │↘↘           0x00007f2dc2d81c97:   nopw   0x0(%rax,%rax,1)
             │             0x00007f2dc2d81ca0:   cmp    $0xffd86a0f,%r11d            ;   {oop(&quot;SUV&quot;{0x00000007fec35078})}
             │             0x00007f2dc2d81ca7:   je     0x00007f2dc2d82e93
   0.01%     ↘             0x00007f2dc2d81cad:   test   %r11d,%r11d
                ╭          0x00007f2dc2d81cb0:   je     0x00007f2dc2d81d4d
   0.31%        │          0x00007f2dc2d81cb6:   data16 nopw 0x0(%rax,%rax,1)
   1.11%        │          0x00007f2dc2d81cc0:   cmpb   $0x0,0x10(,%r11,8)
   0.00%        │╭         0x00007f2dc2d81cc9:   jne    0x00007f2dc2d81d39
   0.26%        ││         0x00007f2dc2d81ccf:   mov    0x14(,%r11,8),%esi           ;* unwind (locked if synchronized)
                ││                                                                   ; - java.lang.String::equals@-3
                ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
                ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.10%        ││         0x00007f2dc2d81cd7:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=Oop r10=Oop r11=NarrowOop r13=Oop r14=Oop [8]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [120]=Oop [128]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop }
                ││                                                                   ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                ││                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@52 (line 254)
                ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
                ││         0x00007f2dc2d81ce0:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f2dc2d8345d
   0.28%        ││╭        0x00007f2dc2d81ce8:   jne    0x00007f2dc2d81d39
   0.12%        │││        0x00007f2dc2d81cee:   shl    $0x3,%rsi
                │││        0x00007f2dc2d81cf2:   mov    0x20(%rsp),%rdi
                │││        0x00007f2dc2d81cf7:   mov    $0x3,%edx
   0.03%        │││        0x00007f2dc2d81cfc:   mov    $0x10,%rax
   0.13%        │││        0x00007f2dc2d81d03:   mov    $0x10,%rcx
                │││        0x00007f2dc2d81d0a:   add    %rax,%rsi
                │││        0x00007f2dc2d81d0d:   add    %rcx,%rdi
   0.04%        │││        0x00007f2dc2d81d10:   mov    $0x1,%r9d
   0.12%        │││        0x00007f2dc2d81d16:   movzwq (%rsi),%rdx
                │││        0x00007f2dc2d81d1a:   xor    (%rdi),%dx
                │││        0x00007f2dc2d81d1d:   movzwq 0x1(%rsi),%rsi
   0.02%        │││        0x00007f2dc2d81d22:   xor    0x1(%rdi),%si
   0.15%        │││        0x00007f2dc2d81d26:   xor    %rdi,%rdi
                │││        0x00007f2dc2d81d29:   or     %rsi,%rdx
                │││        0x00007f2dc2d81d2c:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
                │││                                                                  ; - java.lang.String::equals@-3
                │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
                │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.02%        │││        0x00007f2dc2d81d30:   test   %r9d,%r9d
                │││        0x00007f2dc2d81d33:   jne    0x00007f2dc2d828df           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@63 (line 256)
                │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.08%        │↘↘        0x00007f2dc2d81d39:   nopl   0x0(%rax)
                │          0x00007f2dc2d81d40:   cmp    $0xffd86a15,%r11d            ;   {oop(&quot;VAN&quot;{0x00000007fec350a8})}
                │          0x00007f2dc2d81d47:   je     0x00007f2dc2d82ecd
   0.01%        ↘          0x00007f2dc2d81d4d:   test   %r11d,%r11d
                   ╭       0x00007f2dc2d81d50:   je     0x00007f2dc2d81ded
   0.24%           │       0x00007f2dc2d81d56:   data16 nopw 0x0(%rax,%rax,1)
   0.97%           │       0x00007f2dc2d81d60:   cmpb   $0x0,0x10(,%r11,8)
   0.00%           │╭      0x00007f2dc2d81d69:   jne    0x00007f2dc2d81dd7
   0.20%           ││      0x00007f2dc2d81d6f:   mov    0x14(,%r11,8),%esi           ;* unwind (locked if synchronized)
                   ││                                                                ; - java.lang.String::equals@-3
                   ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@72 (line 258)
                   ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.08%           ││      0x00007f2dc2d81d77:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=Oop r10=Oop r11=NarrowOop r13=Oop r14=Oop [8]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [120]=Oop [128]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop }
                   ││                                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                   ││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@63 (line 256)
                   ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
                   ││      0x00007f2dc2d81d80:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f2dc2d83480
   0.30%           ││╭     0x00007f2dc2d81d88:   jne    0x00007f2dc2d81dd7
   0.08%           │││     0x00007f2dc2d81d8e:   shl    $0x3,%rsi
                   │││     0x00007f2dc2d81d92:   mov    %rbx,%rdi
                   │││     0x00007f2dc2d81d95:   mov    $0x3,%edx
                   │││     0x00007f2dc2d81d9a:   mov    $0x10,%rax
   0.07%           │││     0x00007f2dc2d81da1:   mov    $0x10,%rcx
                   │││     0x00007f2dc2d81da8:   add    %rax,%rsi
                   │││     0x00007f2dc2d81dab:   add    %rcx,%rdi
                   │││     0x00007f2dc2d81dae:   mov    $0x1,%r9d
   0.08%           │││     0x00007f2dc2d81db4:   movzwq (%rsi),%rdx
                   │││     0x00007f2dc2d81db8:   xor    (%rdi),%dx
                   │││     0x00007f2dc2d81dbb:   movzwq 0x1(%rsi),%rsi
                   │││     0x00007f2dc2d81dc0:   xor    0x1(%rdi),%si
   0.06%           │││     0x00007f2dc2d81dc4:   xor    %rdi,%rdi
                   │││     0x00007f2dc2d81dc7:   or     %rsi,%rdx
                   │││     0x00007f2dc2d81dca:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
                   │││                                                               ; - java.lang.String::equals@-3
                   │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@72 (line 258)
                   │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
                   │││     0x00007f2dc2d81dce:   test   %r9d,%r9d
                   │││     0x00007f2dc2d81dd1:   jne    0x00007f2dc2d82919           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                   │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@75 (line 258)
                   │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.10%           │↘↘     0x00007f2dc2d81dd7:   nopw   0x0(%rax,%rax,1)
                   │       0x00007f2dc2d81de0:   cmp    $0xffd86a1b,%r11d            ;   {oop(&quot;MOTOR_HOME&quot;{0x00000007fec350d8})}
                   │       0x00007f2dc2d81de7:   je     0x00007f2dc2d82f07
                   ↘       0x00007f2dc2d81ded:   test   %r11d,%r11d
                      ╭    0x00007f2dc2d81df0:   je     0x00007f2dc2d81e8d
   0.25%              │    0x00007f2dc2d81df6:   data16 nopw 0x0(%rax,%rax,1)
   1.06%              │    0x00007f2dc2d81e00:   cmpb   $0x0,0x10(,%r11,8)
                      │╭   0x00007f2dc2d81e09:   jne    0x00007f2dc2d81e75
   0.25%              ││   0x00007f2dc2d81e0f:   mov    0x14(,%r11,8),%esi           ;* unwind (locked if synchronized)
                      ││                                                             ; - java.lang.String::equals@-3
                      ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@84 (line 260)
                      ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.99%              ││   0x00007f2dc2d81e17:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=Oop r10=Oop r11=NarrowOop r13=Oop r14=Oop [8]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [120]=Oop [128]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop }
                      ││                                                             ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                      ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@75 (line 258)
                      ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
                      ││   0x00007f2dc2d81e20:   cmpl   $0xa,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f2dc2d834a3
   0.19%              ││╭  0x00007f2dc2d81e28:   jne    0x00007f2dc2d81e75
   0.23%              │││  0x00007f2dc2d81e2e:   shl    $0x3,%rsi
                      │││  0x00007f2dc2d81e32:   mov    %r8,%rdi
                      │││  0x00007f2dc2d81e35:   mov    $0xa,%edx
                      │││  0x00007f2dc2d81e3a:   mov    $0x10,%rax
   0.22%              │││  0x00007f2dc2d81e41:   mov    $0x10,%rcx
                      │││  0x00007f2dc2d81e48:   add    %rax,%rsi
                      │││  0x00007f2dc2d81e4b:   add    %rcx,%rdi
                      │││  0x00007f2dc2d81e4e:   mov    $0x1,%r9d
   0.23%              │││  0x00007f2dc2d81e54:   mov    (%rsi),%rdx
                      │││  0x00007f2dc2d81e57:   xor    (%rdi),%rdx
                      │││  0x00007f2dc2d81e5a:   mov    0x2(%rsi),%rsi
                      │││  0x00007f2dc2d81e5e:   xor    0x2(%rdi),%rsi
   0.24%              │││  0x00007f2dc2d81e62:   xor    %rdi,%rdi
                      │││  0x00007f2dc2d81e65:   or     %rsi,%rdx
                      │││  0x00007f2dc2d81e68:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
                      │││                                                            ; - java.lang.String::equals@-3
                      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@84 (line 260)
                      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
                      │││  0x00007f2dc2d81e6c:   test   %r9d,%r9d
                      │││  0x00007f2dc2d81e6f:   jne    0x00007f2dc2d82953           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@87 (line 260)
                      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.01%              │↘↘  0x00007f2dc2d81e75:   data16 data16 nopw 0x0(%rax,%rax,1)
                      │    0x00007f2dc2d81e80:   cmp    $0xffd86a22,%r11d            ;   {oop(&quot;TRUCK&quot;{0x00000007fec35110})}
                      │    0x00007f2dc2d81e87:   je     0x00007f2dc2d82f45
                      ↘    0x00007f2dc2d81e8d:   test   %r11d,%r11d
                           0x00007f2dc2d81e90:   je     0x00007f2dc2d81f20
   0.16%                   0x00007f2dc2d81e96:   data16 nopw 0x0(%rax,%rax,1)
   0.98%                   0x00007f2dc2d81ea0:   cmpb   $0x0,0x10(,%r11,8)
                           0x00007f2dc2d81ea9:   jne    0x00007f2dc2d81f13
   0.16%                   0x00007f2dc2d81eaf:   mov    0x14(,%r11,8),%esi           ;* unwind (locked if synchronized)
....................................................................................................
  26.48%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 

            0x00007f2dc2d81923:   mov    %r9,0x10(%rsp)
            0x00007f2dc2d81928:   movabs $0x7fec34f90,%r9             ;   {oop([B{0x00000007fec34f90})}
            0x00007f2dc2d81932:   mov    %r9,0x8(%rsp)
   0.00%    0x00007f2dc2d81937:   movl   $0x0,0xc0(%rsp)
            0x00007f2dc2d81942:   mov    $0x0,%ebx
            0x00007f2dc2d81947:   mov    0x10(%rsp),%rcx
            0x00007f2dc2d8194c:   mov    0x18(%rsp),%rax
            0x00007f2dc2d81951:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007f2dc2d8195c:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
   0.32%    0x00007f2dc2d81960:   cmp    %ebx,%r11d
            0x00007f2dc2d81963:   jbe    0x00007f2dc2d832f5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.21%    0x00007f2dc2d81969:   mov    0x10(%r8,%rbx,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   1.39%    0x00007f2dc2d8196e:   mov    %ebx,%r8d
   0.10%    0x00007f2dc2d81971:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@34 (line 126)
   0.26%    0x00007f2dc2d81974:   nopl   0x0(%rax,%rax,1)
   0.20%    0x00007f2dc2d8197c:   data16 data16 xchg %ax,%ax
   1.16%    0x00007f2dc2d81980:   cmp    $0xffd869ef,%r11d            ;   {oop(&quot;MOPED&quot;{0x00000007fec34f78})}
            0x00007f2dc2d81987:   je     0x00007f2dc2d82cff
   0.20%    0x00007f2dc2d8198d:   test   %r11d,%r11d
            0x00007f2dc2d81990:   je     0x00007f2dc2d82d45
   0.96%    0x00007f2dc2d81996:   data16 nopw 0x0(%rax,%rax,1)
   0.21%    0x00007f2dc2d819a0:   cmpb   $0x0,0x10(,%r11,8)
   3.51%    0x00007f2dc2d819a9:   jne    0x00007f2dc2d82d5f
   1.07%    0x00007f2dc2d819af:   mov    %ebx,0xb8(%rsp)
   0.11%    0x00007f2dc2d819b6:   mov    0x14(,%r11,8),%ebx           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.54%    0x00007f2dc2d819be:   xchg   %ax,%ax                      ; ImmutableOopMap {rax=Oop rcx=Oop rbx=NarrowOop rbp=Oop r9=Oop r10=Oop r11=NarrowOop r13=Oop r14=Oop [8]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [120]=Oop [128]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
   0.04%    0x00007f2dc2d819c0:   cmpl   $0x5,0xc(,%rbx,8)            ; implicit exception: dispatches to 0x00007f2dc2d833ae
   4.51%    0x00007f2dc2d819c8:   jne    0x00007f2dc2d82d79
   0.07%    0x00007f2dc2d819ce:   mov    %r8d,0xbc(%rsp)
            0x00007f2dc2d819d6:   shl    $0x3,%rbx
            0x00007f2dc2d819da:   mov    %rbx,%rsi
   0.07%    0x00007f2dc2d819dd:   mov    %r9,%rdi
   0.06%    0x00007f2dc2d819e0:   mov    $0x5,%edx
            0x00007f2dc2d819e5:   mov    %rax,%r8
            0x00007f2dc2d819e8:   mov    $0x10,%rax
   0.08%    0x00007f2dc2d819ef:   mov    %rcx,%rbx
   0.05%    0x00007f2dc2d819f2:   mov    $0x10,%rcx
            0x00007f2dc2d819f9:   add    %rax,%rsi
            0x00007f2dc2d819fc:   add    %rcx,%rdi
   0.09%    0x00007f2dc2d819ff:   mov    $0x1,%r9d
   0.08%    0x00007f2dc2d81a05:   mov    (%rsi),%edx
            0x00007f2dc2d81a07:   xor    (%rdi),%edx
            0x00007f2dc2d81a09:   mov    0x1(%rsi),%esi
   0.08%    0x00007f2dc2d81a0c:   xor    0x1(%rdi),%esi
   0.06%    0x00007f2dc2d81a0f:   xor    %rdi,%rdi
            0x00007f2dc2d81a12:   or     %rsi,%rdx
            0x00007f2dc2d81a15:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.06%    0x00007f2dc2d81a19:   nopl   0x0(%rax)
   0.06%    0x00007f2dc2d81a20:   test   %r9d,%r9d
            0x00007f2dc2d81a23:   jne    0x00007f2dc2d827bb
   1.51%    0x00007f2dc2d81a29:   cmp    $0xffd869f5,%r11d            ;   {oop(&quot;BICYCLE&quot;{0x00000007fec34fa8})}
            0x00007f2dc2d81a30:   je     0x00007f2dc2d82d96
            0x00007f2dc2d81a36:   mov    %r11d,%r9d
   0.13%    0x00007f2dc2d81a39:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   0.07%    0x00007f2dc2d81a3d:   data16 xchg %ax,%ax
   1.44%    0x00007f2dc2d81a40:   test   %r11d,%r11d
            0x00007f2dc2d81a43:   je     0x00007f2dc2d82d8c
   0.01%    0x00007f2dc2d81a49:   cmpb   $0x0,0x10(,%r11,8)
   0.17%    0x00007f2dc2d81a52:   jne    0x00007f2dc2d82dd0           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.49%    0x00007f2dc2d81a58:   mov    0x14(,%r11,8),%esi           ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=Oop r9=Oop r10=Oop r11=NarrowOop r13=Oop r14=Oop [8]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [120]=Oop [128]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop }
                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.01%    0x00007f2dc2d81a60:   cmpl   $0x7,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f2dc2d833d1
   0.20%    0x00007f2dc2d81a68:   jne    0x00007f2dc2d82dda
   0.14%    0x00007f2dc2d81a6e:   mov    %r9,0x18(%rsp)
            0x00007f2dc2d81a73:   shl    $0x3,%rsi
            0x00007f2dc2d81a77:   mov    %r10,%rdi
            0x00007f2dc2d81a7a:   mov    $0x7,%edx
   0.16%    0x00007f2dc2d81a7f:   mov    $0x10,%rax
            0x00007f2dc2d81a86:   mov    $0x10,%rcx
            0x00007f2dc2d81a8d:   add    %rax,%rsi
            0x00007f2dc2d81a90:   add    %rcx,%rdi
   0.14%    0x00007f2dc2d81a93:   mov    $0x1,%r9d
            0x00007f2dc2d81a99:   mov    (%rsi),%edx
            0x00007f2dc2d81a9b:   xor    (%rdi),%edx
            0x00007f2dc2d81a9d:   mov    0x3(%rsi),%esi
   0.15%    0x00007f2dc2d81aa0:   xor    0x3(%rdi),%esi
            0x00007f2dc2d81aa3:   xor    %rdi,%rdi
            0x00007f2dc2d81aa6:   or     %rsi,%rdx
            0x00007f2dc2d81aa9:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.14%    0x00007f2dc2d81aad:   test   %r9d,%r9d
            0x00007f2dc2d81ab0:   jne    0x00007f2dc2d827f5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.43%    0x00007f2dc2d81ab6:   data16 nopw 0x0(%rax,%rax,1)
   0.00%    0x00007f2dc2d81ac0:   cmp    $0xffd869fb,%r11d            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fec34fd8})}
            0x00007f2dc2d81ac7:   je     0x00007f2dc2d82de5
   0.01%    0x00007f2dc2d81acd:   test   %r11d,%r11d
            0x00007f2dc2d81ad0:   je     0x00007f2dc2d81b6d
   0.27%    0x00007f2dc2d81ad6:   data16 nopw 0x0(%rax,%rax,1)
   1.37%    0x00007f2dc2d81ae0:   cmpb   $0x0,0x10(,%r11,8)
   0.01%    0x00007f2dc2d81ae9:   jne    0x00007f2dc2d81b55
   0.28%    0x00007f2dc2d81aef:   mov    0x14(,%r11,8),%esi           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.37%    0x00007f2dc2d81af7:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=Oop r10=Oop r11=NarrowOop r13=Oop r14=Oop [8]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [120]=Oop [128]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop }
                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007f2dc2d81b00:   cmpl   $0x10,0xc(,%rsi,8)           ; implicit exception: dispatches to 0x00007f2dc2d833f4
   0.31%    0x00007f2dc2d81b08:   jne    0x00007f2dc2d81b55
            0x00007f2dc2d81b0e:   shl    $0x3,%rsi
            0x00007f2dc2d81b12:   mov    %r14,%rdi
            0x00007f2dc2d81b15:   mov    $0x10,%edx
            0x00007f2dc2d81b1a:   mov    $0x10,%rax
            0x00007f2dc2d81b21:   mov    $0x10,%rcx
            0x00007f2dc2d81b28:   add    %rax,%rsi
            0x00007f2dc2d81b2b:   add    %rcx,%rdi
            0x00007f2dc2d81b2e:   mov    $0x1,%r9d
            0x00007f2dc2d81b34:   vmovdqu (%rsi),%xmm0
            0x00007f2dc2d81b38:   vmovdqu (%rdi),%xmm1
....................................................................................................
  26.37%  <total for region 2>

....[Hottest Regions]...............................................................................
  26.48%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 
  26.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 
   8.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 
   5.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 
   4.39%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 
   4.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 
   4.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 
   4.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 
   3.97%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 
   3.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 
   2.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 
   1.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 
   1.02%               kernel  [unknown] 
   0.93%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 
   0.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 
   0.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 
   0.22%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 
   0.22%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   1.68%  <...other 394 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 969 
   2.40%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 998 
   0.02%         libc-2.31.so  _IO_fwrite 
   0.02%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%         libc-2.31.so  _itoa_word 
   0.00%         libc-2.31.so  memcpy@GLIBC_2.2.5 
   0.00%            libjvm.so  RelocIterator::initialize 
   0.00%         libc-2.31.so  syscall 
   0.17%  <...other 81 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  97.24%       jvmci, level 4
   2.40%               kernel
   0.13%            libjvm.so
   0.09%         libc-2.31.so
   0.04%                     
   0.04%  libjvmcicompiler.so
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.00%               [vdso]
....................................................................................................
  99.99%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 3)

# Run progress: 33.33% complete, ETA 00:15:09
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.694 ns/op
# Warmup Iteration   2: 3.628 ns/op
# Warmup Iteration   3: 3.628 ns/op
# Warmup Iteration   4: 3.628 ns/op
# Warmup Iteration   5: 3.628 ns/op
Iteration   1: 3.628 ns/op
Iteration   2: 3.628 ns/op
Iteration   3: 3.628 ns/op
Iteration   4: 3.628 ns/op
Iteration   5: 3.628 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  3.628 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (3.628, 3.628, 3.628), stdev = 0.001
  CI (99.9%): [3.628, 3.628] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 226061 total address lines.
Perf output processed (skipped 60.675 seconds):
 Column 1: cycles (50652 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 

            # {method} {0x00007f508347dc00} &apos;switch_expressions&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
            #           [sp+0x60]  (sp of caller)
            0x00007f5102d807a0:   mov    0x8(%rsi),%r10d
            0x00007f5102d807a4:   movabs $0x7f5087000000,%r12
            0x00007f5102d807ae:   add    %r12,%r10
            0x00007f5102d807b1:   xor    %r12,%r12
            0x00007f5102d807b4:   cmp    %r10,%rax
            0x00007f5102d807b7:   jne    0x00007f5102764080           ;   {runtime_call ic_miss_stub}
            0x00007f5102d807bd:   data16 xchg %ax,%ax
          [Verified Entry Point]
   0.01%    0x00007f5102d807c0:   mov    %eax,-0x14000(%rsp)
   0.01%    0x00007f5102d807c7:   sub    $0x58,%rsp
   0.01%    0x00007f5102d807cb:   nop
            0x00007f5102d807cc:   cmpl   $0x1,0x20(%r15)
            0x00007f5102d807d4:   jne    0x00007f5102d80dc6
   0.00%    0x00007f5102d807da:   mov    %rbp,0x50(%rsp)
   0.00%    0x00007f5102d807df:   mov    %rsi,%rbp
            0x00007f5102d807e2:   mov    %rbp,0x38(%rsp)
            0x00007f5102d807e7:   mov    0x18(%rbp),%esi              ; ImmutableOopMap {rbp=Oop rsi=NarrowOop [56]=Oop }
                                                                      ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@0 (line 114)
   0.01%    0x00007f5102d807ea:   mov    0xc(,%rsi,8),%r13d           ; implicit exception: dispatches to 0x00007f5102d80dea
   0.01%    0x00007f5102d807f2:   mov    %r13d,0x44(%rsp)
   0.02%    0x00007f5102d807f7:   mov    %esi,%r14d
            0x00007f5102d807fa:   shl    $0x3,%r14                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
            0x00007f5102d807fe:   mov    %r14,0x30(%rsp)
            0x00007f5102d80803:   movabs $0x7fec34a28,%rdi            ;   {oop([B{0x00000007fec34a28})}
   0.01%    0x00007f5102d8080d:   mov    %rdi,0x28(%rsp)
            0x00007f5102d80812:   movabs $0x7fec349f8,%r10            ;   {oop([B{0x00000007fec349f8})}
            0x00007f5102d8081c:   mov    %r10,0x20(%rsp)
            0x00007f5102d80821:   movabs $0x7fec34a58,%r11            ;   {oop([B{0x00000007fec34a58})}
   0.01%    0x00007f5102d8082b:   mov    %r11,0x18(%rsp)
            0x00007f5102d80830:   mov    $0x0,%r10d
            0x00007f5102d80836:   mov    $0x0,%edi
            0x00007f5102d8083b:   nopl   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
   0.02%    0x00007f5102d80840:   cmp    %r10d,%r13d
            0x00007f5102d80843:   jbe    0x00007f5102d80cb3           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.01%    0x00007f5102d80849:   mov    0x10(%r14,%r10,4),%ebx       ; ImmutableOopMap {rbx=NarrowOop r14=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
  10.51%    0x00007f5102d8084e:   mov    0xc(,%rbx,8),%ecx            ; implicit exception: dispatches to 0x00007f5102d80e0d
  10.35%    0x00007f5102d80855:   movsbl 0x10(,%rbx,8),%eax           ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::isLatin1@7 (line 4817)
                                                                      ; - java.lang.String::hashCode@17 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.02%    0x00007f5102d8085d:   mov    0x14(,%rbx,8),%edx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@24 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.23%    0x00007f5102d80864:   mov    %edx,%esi
   7.17%    0x00007f5102d80866:   shl    $0x3,%rsi                    ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   3.51%    0x00007f5102d8086a:   test   %ecx,%ecx
            0x00007f5102d8086c:   je     0x00007f5102d80ba6           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@6 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.03%    0x00007f5102d80872:   mov    %rsi,0x10(%rsp)
  17.16%    0x00007f5102d80877:   mov    %edx,0xc(%rsp)
   0.04%    0x00007f5102d8087b:   mov    %eax,%ebp
   0.02%    0x00007f5102d8087d:   mov    %ebx,%r14d
   0.02%    0x00007f5102d80880:   mov    %r10d,%r13d
  10.26%    0x00007f5102d80883:   mov    %ecx,%r10d
   0.02%    0x00007f5102d80886:   mov    %r14d,%ebx
   0.03%    0x00007f5102d80889:   shl    $0x3,%rbx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   0.02%    0x00007f5102d8088d:   mov    %r13d,%r11d
  10.28%    0x00007f5102d80890:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
   0.02%    0x00007f5102d80893:   cmp    $0x462300d,%r10d
            0x00007f5102d8089a:   je     0x00007f5102d809df
   0.00%    0x00007f5102d808a0:   cmp    $0x9ef434af,%r10d
            0x00007f5102d808a7:   je     0x00007f5102d80a69
            0x00007f5102d808ad:   cmp    $0x23c6acdf,%r10d
            0x00007f5102d808b4:   je     0x00007f5102d80b0a
            0x00007f5102d808ba:   cmp    $0x90663ad4,%r10d
            0x00007f5102d808c1:   je     0x00007f5102d80da8
            0x00007f5102d808c7:   cmp    $0xa2a1be40,%r10d
            0x00007f5102d808ce:   je     0x00007f5102d80da8
            0x00007f5102d808d4:   cmp    $0xaf2874e8,%r10d
            0x00007f5102d808db:   nopl   0x0(%rax,%rax,1)
            0x00007f5102d808e0:   je     0x00007f5102d80da8
....................................................................................................
  69.80%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 

            0x00007f5102d80c18:   mov    %rsi,0x10(%rsp)
            0x00007f5102d80c1d:   mov    %edx,0xc(%rsp)
            0x00007f5102d80c21:   mov    %eax,%ebp
            0x00007f5102d80c23:   mov    %ebx,%r14d
            0x00007f5102d80c26:   mov    %r10d,%r13d
            0x00007f5102d80c29:   mov    %ecx,%r10d
            0x00007f5102d80c2c:   jmp    0x00007f5102d80886           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.01%    0x00007f5102d80c31:   mov    %r11d,%r10d
            0x00007f5102d80c34:   mov    %r8d,%edi
   0.00%    0x00007f5102d80c37:   mov    0x30(%rsp),%r14
   3.55%    0x00007f5102d80c3c:   mov    0x44(%rsp),%r13d
   0.02%    0x00007f5102d80c41:   jmp    0x00007f5102d80840
   0.02%    0x00007f5102d80c46:   mov    %r11d,%r10d
            0x00007f5102d80c49:   mov    %r8d,%edi
   0.01%    0x00007f5102d80c4c:   mov    0x30(%rsp),%r14
   3.40%    0x00007f5102d80c51:   mov    0x44(%rsp),%r13d
   0.02%    0x00007f5102d80c56:   jmp    0x00007f5102d80840
   0.01%    0x00007f5102d80c5b:   mov    %r11d,%r10d
   0.01%    0x00007f5102d80c5e:   mov    %r8d,%edi
            0x00007f5102d80c61:   mov    0x30(%rsp),%r14
   3.44%    0x00007f5102d80c66:   mov    0x44(%rsp),%r13d
   0.02%    0x00007f5102d80c6b:   jmp    0x00007f5102d80840           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
            0x00007f5102d80c70:   mov    %rsi,0x10(%rsp)
            0x00007f5102d80c75:   mov    %eax,%ebp
            0x00007f5102d80c77:   mov    %edi,%r9d
            0x00007f5102d80c7a:   mov    %ebx,%r14d
            0x00007f5102d80c7d:   mov    %r10d,%r13d
            0x00007f5102d80c80:   movsbl 0x10(,%rdx,8),%eax
            0x00007f5102d80c88:   movsbl %al,%r10d                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.StringLatin1::hashCode@34 (line 190)
                                                                      ; - java.lang.String::hashCode@27 (line 2365)
....................................................................................................
  10.52%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
  10.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   6.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   6.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   3.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   0.35%               kernel  [unknown] 
   0.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 991 
   0.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.24%  <...other 392 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   1.75%               kernel  [unknown] 
   0.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 991 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%            libjvm.so  fileStream::flush 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.19%  <...other 87 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.88%       jvmci, level 4
   1.75%               kernel
   0.13%            libjvm.so
   0.09%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.04%                     
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%       libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 6)

# Run progress: 41.67% complete, ETA 00:13:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.567 ns/op
# Warmup Iteration   2: 4.466 ns/op
# Warmup Iteration   3: 4.466 ns/op
# Warmup Iteration   4: 4.468 ns/op
# Warmup Iteration   5: 4.466 ns/op
Iteration   1: 4.466 ns/op
Iteration   2: 4.466 ns/op
Iteration   3: 4.466 ns/op
Iteration   4: 4.466 ns/op
Iteration   5: 4.466 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  4.466 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (4.466, 4.466, 4.466), stdev = 0.001
  CI (99.9%): [4.466, 4.466] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 226887 total address lines.
Perf output processed (skipped 60.608 seconds):
 Column 1: cycles (50852 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 981 

   0.01%    0x00007f516ad7f892:   mov    %r13d,0x54(%rsp)
   0.01%    0x00007f516ad7f897:   mov    %esi,%r14d
            0x00007f516ad7f89a:   shl    $0x3,%r14                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
            0x00007f516ad7f89e:   mov    %r14,0x40(%rsp)
            0x00007f516ad7f8a3:   movabs $0x7fec35028,%rdi            ;   {oop([B{0x00000007fec35028})}
            0x00007f516ad7f8ad:   mov    %rdi,0x38(%rsp)
            0x00007f516ad7f8b2:   movabs $0x7fec34fc0,%r10            ;   {oop([B{0x00000007fec34fc0})}
            0x00007f516ad7f8bc:   mov    %r10,0x30(%rsp)
            0x00007f516ad7f8c1:   movabs $0x7fec34f90,%r11            ;   {oop([B{0x00000007fec34f90})}
   0.01%    0x00007f516ad7f8cb:   mov    %r11,0x28(%rsp)
            0x00007f516ad7f8d0:   movabs $0x7fec35090,%r8             ;   {oop([B{0x00000007fec35090})}
            0x00007f516ad7f8da:   mov    %r8,0x20(%rsp)
            0x00007f516ad7f8df:   movabs $0x7fec35060,%r9             ;   {oop([B{0x00000007fec35060})}
   0.01%    0x00007f516ad7f8e9:   mov    %r9,0x18(%rsp)
   0.01%    0x00007f516ad7f8ee:   movabs $0x7fec34ff0,%rbx            ;   {oop([B{0x00000007fec34ff0})}
            0x00007f516ad7f8f8:   mov    %rbx,0x10(%rsp)
   0.00%    0x00007f516ad7f8fd:   mov    $0x0,%r11d
            0x00007f516ad7f903:   mov    $0x0,%r10d
   0.00%    0x00007f516ad7f909:   nopl   0x0(%rax)                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
   1.52%    0x00007f516ad7f910:   cmp    %r11d,%r13d
            0x00007f516ad7f913:   jbe    0x00007f516ad7fff5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   2.78%    0x00007f516ad7f919:   mov    0x10(%r14,%r11,4),%edx       ; ImmutableOopMap {rdx=NarrowOop r14=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
   2.85%    0x00007f516ad7f91e:   mov    0xc(,%rdx,8),%esi            ; implicit exception: dispatches to 0x00007f516ad8031d
   6.98%    0x00007f516ad7f925:   movsbl 0x10(,%rdx,8),%ebp           ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::isLatin1@7 (line 4817)
                                                                      ; - java.lang.String::hashCode@17 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   1.36%    0x00007f516ad7f92d:   mov    0x14(,%rdx,8),%r13d          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@24 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   4.24%    0x00007f516ad7f935:   mov    %r13d,%r14d
   7.07%    0x00007f516ad7f938:   shl    $0x3,%r14                    ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@257 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   9.69%    0x00007f516ad7f93c:   nopl   0x0(%rax)
   0.02%    0x00007f516ad7f940:   test   %esi,%esi
            0x00007f516ad7f942:   je     0x00007f516ad7fe91           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@6 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.01%    0x00007f516ad7f948:   mov    %r14,0x8(%rsp)
   9.88%    0x00007f516ad7f94d:   mov    %r13d,0x4(%rsp)
            0x00007f516ad7f952:   mov    %edx,%r14d
   0.02%    0x00007f516ad7f955:   mov    %r11d,%edi
            0x00007f516ad7f958:   mov    %r10d,%r13d
   8.33%    0x00007f516ad7f95b:   mov    %esi,%r10d
            0x00007f516ad7f95e:   mov    %r14d,%r11d
   0.02%    0x00007f516ad7f961:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
            0x00007f516ad7f965:   mov    %edi,%r8d
   8.47%    0x00007f516ad7f968:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
            0x00007f516ad7f96b:   cmp    $0x33eb4d91,%r10d
            0x00007f516ad7f972:   je     0x00007f516ad7fab8
   0.01%    0x00007f516ad7f978:   cmp    $0x9ef434af,%r10d
            0x00007f516ad7f97f:   nop
   7.03%    0x00007f516ad7f980:   je     0x00007f516ad7fb5f
            0x00007f516ad7f986:   cmp    $0x462300d,%r10d
            0x00007f516ad7f98d:   je     0x00007f516ad7fc0f
   0.02%    0x00007f516ad7f993:   cmp    $0x23c6acdf,%r10d
            0x00007f516ad7f99a:   je     0x00007f516ad7fcab
            0x00007f516ad7f9a0:   cmp    $0x103b4,%r10d
            0x00007f516ad7f9a7:   je     0x00007f516ad7fd4b
   2.73%    0x00007f516ad7f9ad:   cmp    $0x14234,%r10d
            0x00007f516ad7f9b4:   je     0x00007f516ad7fdef
            0x00007f516ad7f9ba:   cmp    $0x90663ad4,%r10d
            0x00007f516ad7f9c1:   je     0x00007f516ad80258
            0x00007f516ad7f9c7:   cmp    $0xa2a1be40,%r10d
            0x00007f516ad7f9ce:   je     0x00007f516ad80258
            0x00007f516ad7f9d4:   cmp    $0xaf2874e8,%r10d
            0x00007f516ad7f9db:   nopl   0x0(%rax,%rax,1)
            0x00007f516ad7f9e0:   je     0x00007f516ad80258
            0x00007f516ad7f9e6:   cmp    $0xba6eabe2,%r10d
            0x00007f516ad7f9ed:   je     0x00007f516ad80258           ;   {no_reloc}
....................................................................................................
  73.05%  <total for region 1>

....[Hottest Regions]...............................................................................
  73.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 981 
   9.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 981 
   2.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 981 
   2.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 981 
   2.89%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 981 
   2.80%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 981 
   1.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 981 
   1.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 981 
   0.75%              kernel  [unknown] 
   0.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 1008 
   0.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 981 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 981 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   1.07%  <...other 328 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.59%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 981 
   1.90%              kernel  [unknown] 
   0.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 1008 
   0.07%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_str_init_static_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  resource_allocate_bytes 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%      hsdis-amd64.so  putop 
   0.15%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.75%      jvmci, level 4
   1.90%              kernel
   0.13%           libjvm.so
   0.08%        libc-2.31.so
   0.07%                    
   0.03%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%    perf-2152226.map
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 12)

# Run progress: 50.00% complete, ETA 00:11:21
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.262 ns/op
# Warmup Iteration   2: 5.095 ns/op
# Warmup Iteration   3: 5.100 ns/op
# Warmup Iteration   4: 5.099 ns/op
# Warmup Iteration   5: 5.098 ns/op
Iteration   1: 5.101 ns/op
Iteration   2: 5.099 ns/op
Iteration   3: 5.099 ns/op
Iteration   4: 5.099 ns/op
Iteration   5: 5.098 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  5.099 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (5.098, 5.099, 5.101), stdev = 0.001
  CI (99.9%): [5.096, 5.103] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 231209 total address lines.
Perf output processed (skipped 60.683 seconds):
 Column 1: cycles (50499 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 

            # {method} {0x00007f9c2347dc00} &apos;switch_expressions&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
            #           [sp+0xa0]  (sp of caller)
            0x00007f9ca6d84b00:   mov    0x8(%rsi),%r10d
            0x00007f9ca6d84b04:   movabs $0x7f9c27000000,%r12
            0x00007f9ca6d84b0e:   add    %r12,%r10
            0x00007f9ca6d84b11:   xor    %r12,%r12
            0x00007f9ca6d84b14:   cmp    %r10,%rax
            0x00007f9ca6d84b17:   jne    0x00007f9ca6764080           ;   {runtime_call ic_miss_stub}
            0x00007f9ca6d84b1d:   data16 xchg %ax,%ax
          [Verified Entry Point]
   0.01%    0x00007f9ca6d84b20:   mov    %eax,-0x14000(%rsp)
   0.01%    0x00007f9ca6d84b27:   sub    $0x98,%rsp
            0x00007f9ca6d84b2e:   xchg   %ax,%ax
            0x00007f9ca6d84b30:   cmpl   $0x1,0x20(%r15)
            0x00007f9ca6d84b38:   jne    0x00007f9ca6d85b7e
   0.00%    0x00007f9ca6d84b3e:   mov    %rbp,0x90(%rsp)
            0x00007f9ca6d84b46:   mov    %rsi,%rbp
            0x00007f9ca6d84b49:   mov    0x18(%rbp),%esi              ; ImmutableOopMap {rbp=Oop rsi=NarrowOop }
                                                                      ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@0 (line 114)
            0x00007f9ca6d84b4c:   mov    0xc(,%rsi,8),%r13d           ; implicit exception: dispatches to 0x00007f9ca6d85ba6
   0.02%    0x00007f9ca6d84b54:   mov    %r13d,0x84(%rsp)
   0.01%    0x00007f9ca6d84b5c:   mov    %esi,%r14d
            0x00007f9ca6d84b5f:   shl    $0x3,%r14                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
            0x00007f9ca6d84b63:   mov    %r14,0x70(%rsp)
            0x00007f9ca6d84b68:   movabs $0x7fec34b58,%rdi            ;   {oop([B{0x00000007fec34b58})}
   0.01%    0x00007f9ca6d84b72:   mov    %rdi,0x68(%rsp)
            0x00007f9ca6d84b77:   movabs $0x7fec34a90,%r10            ;   {oop([B{0x00000007fec34a90})}
            0x00007f9ca6d84b81:   mov    %r10,0x60(%rsp)
            0x00007f9ca6d84b86:   movabs $0x7fec34a28,%r11            ;   {oop([B{0x00000007fec34a28})}
   0.01%    0x00007f9ca6d84b90:   mov    %r11,0x58(%rsp)
            0x00007f9ca6d84b95:   movabs $0x7fec34c20,%r8             ;   {oop([B{0x00000007fec34c20})}
            0x00007f9ca6d84b9f:   mov    %r8,0x50(%rsp)
            0x00007f9ca6d84ba4:   movabs $0x7fec34b90,%r9             ;   {oop([B{0x00000007fec34b90})}
   0.00%    0x00007f9ca6d84bae:   mov    %r9,0x48(%rsp)
            0x00007f9ca6d84bb3:   movabs $0x7fec349f8,%rbx            ;   {oop([B{0x00000007fec349f8})}
            0x00007f9ca6d84bbd:   mov    %rbx,0x40(%rsp)
   0.02%    0x00007f9ca6d84bc2:   movabs $0x7fec34b28,%rax            ;   {oop([B{0x00000007fec34b28})}
            0x00007f9ca6d84bcc:   mov    %rax,0x38(%rsp)
   0.01%    0x00007f9ca6d84bd1:   movabs $0x7fec34af8,%rcx            ;   {oop([B{0x00000007fec34af8})}
            0x00007f9ca6d84bdb:   mov    %rcx,0x30(%rsp)
   0.01%    0x00007f9ca6d84be0:   movabs $0x7fec34ac8,%rdx            ;   {oop([B{0x00000007fec34ac8})}
            0x00007f9ca6d84bea:   movabs $0x7fec34bc0,%rsi            ;   {oop([B{0x00000007fec34bc0})}
   0.00%    0x00007f9ca6d84bf4:   mov    %rsi,0x28(%rsp)
            0x00007f9ca6d84bf9:   mov    %rbp,0x20(%rsp)
   0.01%    0x00007f9ca6d84bfe:   movabs $0x7fec34bf0,%rbp            ;   {oop([B{0x00000007fec34bf0})}
            0x00007f9ca6d84c08:   mov    %rbp,0x18(%rsp)
   0.00%    0x00007f9ca6d84c0d:   movabs $0x7fec34a58,%rbp            ;   {oop([B{0x00000007fec34a58})}
            0x00007f9ca6d84c17:   mov    %rbp,0x10(%rsp)
   0.01%    0x00007f9ca6d84c1c:   movl   $0x0,0x80(%rsp)
   0.00%    0x00007f9ca6d84c27:   mov    $0x0,%r10d
            0x00007f9ca6d84c2d:   data16 xchg %ax,%ax                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
   0.67%    0x00007f9ca6d84c30:   cmp    %r10d,%r13d
            0x00007f9ca6d84c33:   jbe    0x00007f9ca6d858df           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   3.14%    0x00007f9ca6d84c39:   mov    0x10(%r14,%r10,4),%ebp       ; ImmutableOopMap {rdx=Oop rbp=NarrowOop r14=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
   2.96%    0x00007f9ca6d84c3e:   mov    0xc(,%rbp,8),%r13d           ; implicit exception: dispatches to 0x00007f9ca6d85bcd
  14.39%    0x00007f9ca6d84c46:   movsbl 0x10(,%rbp,8),%r14d          ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::isLatin1@7 (line 4817)
                                                                      ; - java.lang.String::hashCode@17 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   1.42%    0x00007f9ca6d84c4f:   mov    0x14(,%rbp,8),%edi           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@24 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   4.10%    0x00007f9ca6d84c56:   mov    %r10d,0x7c(%rsp)
   0.01%    0x00007f9ca6d84c5b:   mov    %edi,%r10d
   2.11%    0x00007f9ca6d84c5e:   shl    $0x3,%r10                    ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@314 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   5.35%    0x00007f9ca6d84c62:   test   %r13d,%r13d
            0x00007f9ca6d84c65:   je     0x00007f9ca6d84f5d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@6 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.01%    0x00007f9ca6d84c6b:   mov    %r10,0x8(%rsp)
  12.67%    0x00007f9ca6d84c70:   mov    %edi,0x4(%rsp)
            0x00007f9ca6d84c74:   mov    %rdx,%rdi
   0.00%    0x00007f9ca6d84c77:   mov    %r13d,%r10d
   0.01%    0x00007f9ca6d84c7a:   mov    0x7c(%rsp),%r13d
   7.55%    0x00007f9ca6d84c7f:   mov    %ebp,%r11d
            0x00007f9ca6d84c82:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   0.01%    0x00007f9ca6d84c86:   mov    %r13d,%r8d
   0.00%    0x00007f9ca6d84c89:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
   7.42%    0x00007f9ca6d84c8c:   cmp    $0x4c5f9e8,%r10d
            0x00007f9ca6d84c93:   jge    0x00007f9ca6d84de5
   0.01%    0x00007f9ca6d84c99:   cmp    $0x14234,%r10d
            0x00007f9ca6d84ca0:   jge    0x00007f9ca6d84d98
            0x00007f9ca6d84ca6:   cmp    $0xfce7bd80,%r10d
            0x00007f9ca6d84cad:   jge    0x00007f9ca6d84d5e
            0x00007f9ca6d84cb3:   cmp    $0xa2a1be40,%r10d
            0x00007f9ca6d84cba:   jge    0x00007f9ca6d84cdf
   1.21%    0x00007f9ca6d84cc0:   cmp    $0x90663ad4,%r10d
            0x00007f9ca6d84cc7:   je     0x00007f9ca6d85a25
   0.00%    0x00007f9ca6d84ccd:   cmp    $0x9ef434af,%r10d
            0x00007f9ca6d84cd4:   je     0x00007f9ca6d84fd7
            0x00007f9ca6d84cda:   jmp    0x00007f9ca6d85a25
....................................................................................................
  61.95%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 

            0x00007f9ca6d85700:   mov    %edi,0x4(%rsp)
            0x00007f9ca6d85704:   mov    %rdx,%rdi
            0x00007f9ca6d85707:   mov    %r13d,%r10d
            0x00007f9ca6d8570a:   mov    0x7c(%rsp),%r13d
            0x00007f9ca6d8570f:   jmp    0x00007f9ca6d84c7f           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@257 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
            0x00007f9ca6d85714:   mov    %r8d,%r10d
            0x00007f9ca6d85717:   mov    %r9d,0x80(%rsp)
   0.62%    0x00007f9ca6d8571f:   mov    %rdi,%rdx
            0x00007f9ca6d85722:   mov    0x70(%rsp),%r14
            0x00007f9ca6d85727:   mov    0x84(%rsp),%r13d
            0x00007f9ca6d8572f:   jmp    0x00007f9ca6d84c30
            0x00007f9ca6d85734:   mov    %r8d,%r10d
            0x00007f9ca6d85737:   mov    %eax,0x80(%rsp)
   0.01%    0x00007f9ca6d8573e:   mov    %rbx,%rdx
   0.67%    0x00007f9ca6d85741:   mov    0x70(%rsp),%r14
            0x00007f9ca6d85746:   mov    0x84(%rsp),%r13d
            0x00007f9ca6d8574e:   jmp    0x00007f9ca6d84c30
   0.01%    0x00007f9ca6d85753:   mov    %r8d,%r10d
   0.00%    0x00007f9ca6d85756:   mov    %eax,0x80(%rsp)
            0x00007f9ca6d8575d:   mov    %rbx,%rdx
   0.61%    0x00007f9ca6d85760:   mov    0x70(%rsp),%r14
   0.01%    0x00007f9ca6d85765:   mov    0x84(%rsp),%r13d             ;   {no_reloc}
   0.01%    0x00007f9ca6d8576d:   jmp    0x00007f9ca6d84c30
   0.64%    0x00007f9ca6d85772:   mov    %r8d,%r10d
            0x00007f9ca6d85775:   mov    %eax,0x80(%rsp)
            0x00007f9ca6d8577c:   mov    %rbx,%rdx
            0x00007f9ca6d8577f:   mov    0x70(%rsp),%r14
   0.65%    0x00007f9ca6d85784:   mov    0x84(%rsp),%r13d
            0x00007f9ca6d8578c:   jmp    0x00007f9ca6d84c30
   0.60%    0x00007f9ca6d85791:   mov    %r8d,%r10d
            0x00007f9ca6d85794:   mov    %eax,0x80(%rsp)
   0.02%    0x00007f9ca6d8579b:   mov    %rbx,%rdx
            0x00007f9ca6d8579e:   mov    0x70(%rsp),%r14
   0.61%    0x00007f9ca6d857a3:   mov    0x84(%rsp),%r13d
            0x00007f9ca6d857ab:   jmp    0x00007f9ca6d84c30
   0.44%    0x00007f9ca6d857b0:   mov    %r8d,%r10d
            0x00007f9ca6d857b3:   mov    %eax,0x80(%rsp)
            0x00007f9ca6d857ba:   mov    %rbx,%rdx
   0.21%    0x00007f9ca6d857bd:   mov    0x70(%rsp),%r14
   0.42%    0x00007f9ca6d857c2:   mov    0x84(%rsp),%r13d
            0x00007f9ca6d857ca:   jmp    0x00007f9ca6d84c30
   0.58%    0x00007f9ca6d857cf:   mov    %r8d,%r10d
            0x00007f9ca6d857d2:   mov    %eax,0x80(%rsp)
            0x00007f9ca6d857d9:   mov    %rbx,%rdx
   0.01%    0x00007f9ca6d857dc:   mov    0x70(%rsp),%r14
   0.56%    0x00007f9ca6d857e1:   mov    0x84(%rsp),%r13d
            0x00007f9ca6d857e9:   jmp    0x00007f9ca6d84c30
            0x00007f9ca6d857ee:   mov    %r8d,%r10d
   0.02%    0x00007f9ca6d857f1:   mov    %eax,0x80(%rsp)
            0x00007f9ca6d857f8:   mov    %rbx,%rdx
   0.59%    0x00007f9ca6d857fb:   mov    0x70(%rsp),%r14
            0x00007f9ca6d85800:   mov    0x84(%rsp),%r13d
   0.01%    0x00007f9ca6d85808:   jmp    0x00007f9ca6d84c30
   0.63%    0x00007f9ca6d8580d:   mov    %r8d,%r10d
   0.00%    0x00007f9ca6d85810:   mov    %eax,0x80(%rsp)
            0x00007f9ca6d85817:   mov    %rbx,%rdx
            0x00007f9ca6d8581a:   mov    0x70(%rsp),%r14
   0.59%    0x00007f9ca6d8581f:   mov    0x84(%rsp),%r13d
   0.01%    0x00007f9ca6d85827:   jmp    0x00007f9ca6d84c30
   0.01%    0x00007f9ca6d8582c:   mov    %r8d,%r10d
   0.01%    0x00007f9ca6d8582f:   mov    %eax,0x80(%rsp)
            0x00007f9ca6d85836:   mov    %rbx,%rdx
   0.58%    0x00007f9ca6d85839:   mov    0x70(%rsp),%r14
   0.01%    0x00007f9ca6d8583e:   mov    0x84(%rsp),%r13d
   0.01%    0x00007f9ca6d85846:   jmp    0x00007f9ca6d84c30
   0.00%    0x00007f9ca6d8584b:   mov    %r8d,%r10d
            0x00007f9ca6d8584e:   mov    %eax,0x80(%rsp)
            0x00007f9ca6d85855:   mov    %rbx,%rdx
   0.62%    0x00007f9ca6d85858:   mov    0x70(%rsp),%r14
            0x00007f9ca6d8585d:   mov    0x84(%rsp),%r13d
            0x00007f9ca6d85865:   jmp    0x00007f9ca6d84c30           ;   {no_reloc}
            0x00007f9ca6d8586a:   mov    %r8d,%r10d
   0.64%    0x00007f9ca6d8586d:   mov    %eax,0x80(%rsp)
            0x00007f9ca6d85874:   mov    %rbx,%rdx
            0x00007f9ca6d85877:   mov    0x70(%rsp),%r14
            0x00007f9ca6d8587c:   mov    0x84(%rsp),%r13d
   0.59%    0x00007f9ca6d85884:   jmp    0x00007f9ca6d84c30           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
            0x00007f9ca6d85889:   mov    %r10,0x8(%rsp)
            0x00007f9ca6d8588e:   mov    %edi,%ecx
            0x00007f9ca6d85890:   mov    0x7c(%rsp),%r13d
            0x00007f9ca6d85895:   mov    0x80(%rsp),%r9d
            0x00007f9ca6d8589d:   mov    %rdx,%rbx
            0x00007f9ca6d858a0:   mov    0x30(%rsp),%r10
            0x00007f9ca6d858a5:   movsbl 0x10(,%rcx,8),%eax
            0x00007f9ca6d858ad:   movsbl %al,%r11d                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.StringLatin1::hashCode@34 (line 190)
....................................................................................................
  10.99%  <total for region 2>

....[Hottest Regions]...............................................................................
  61.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
  10.99%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   3.83%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   2.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   2.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   1.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   1.56%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   1.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   1.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   1.32%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   1.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   1.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   1.25%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   1.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   1.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   1.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   0.65%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   0.59%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   0.57%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   0.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   1.72%  <...other 291 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.28%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 957 
   1.28%              kernel  [unknown] 
   0.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 981 
   0.05%                      <unknown> 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%           libjvm.so  ObjectSynchronizer::is_async_deflation_needed 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%        libc-2.31.so  _IO_file_write@@GLIBC_2.2.5 
   0.00%           libjvm.so  defaultStream::hold 
   0.11%  <...other 55 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.44%      jvmci, level 4
   1.28%              kernel
   0.12%           libjvm.so
   0.08%        libc-2.31.so
   0.05%                    
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 24)

# Run progress: 58.33% complete, ETA 00:09:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.294 ns/op
# Warmup Iteration   2: 6.032 ns/op
# Warmup Iteration   3: 6.024 ns/op
# Warmup Iteration   4: 6.035 ns/op
# Warmup Iteration   5: 6.032 ns/op
Iteration   1: 6.037 ns/op
Iteration   2: 6.034 ns/op
Iteration   3: 6.032 ns/op
Iteration   4: 6.032 ns/op
Iteration   5: 6.034 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  6.034 ±(99.9%) 0.008 ns/op [Average]
  (min, avg, max) = (6.032, 6.034, 6.037), stdev = 0.002
  CI (99.9%): [6.026, 6.041] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 231285 total address lines.
Perf output processed (skipped 60.691 seconds):
 Column 1: cycles (50898 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 

             0x00007f7d52d89bc3:   mov    %r14,0xd8(%rsp)
             0x00007f7d52d89bcb:   movabs $0x7fec350f0,%rdi            ;   {oop([B{0x00000007fec350f0})}
   0.00%     0x00007f7d52d89bd5:   mov    %rdi,0xd0(%rsp)
             0x00007f7d52d89bdd:   movabs $0x7fec35028,%r10            ;   {oop([B{0x00000007fec35028})}
             0x00007f7d52d89be7:   mov    %r10,0xc8(%rsp)
             0x00007f7d52d89bef:   movabs $0x7fec35280,%r11            ;   {oop([B{0x00000007fec35280})}
   0.01%     0x00007f7d52d89bf9:   mov    %r11,0xc0(%rsp)
             0x00007f7d52d89c01:   movabs $0x7fec34fc0,%r8             ;   {oop([B{0x00000007fec34fc0})}
             0x00007f7d52d89c0b:   mov    %r8,0xb8(%rsp)
             0x00007f7d52d89c13:   movabs $0x7fec351b8,%r9             ;   {oop([B{0x00000007fec351b8})}
   0.00%     0x00007f7d52d89c1d:   mov    %r9,0xb0(%rsp)
   0.00%     0x00007f7d52d89c25:   movabs $0x7fec353c0,%rbx            ;   {oop([B{0x00000007fec353c0})}
             0x00007f7d52d89c2f:   mov    %rbx,0xa8(%rsp)
   0.00%     0x00007f7d52d89c37:   movabs $0x7fec35390,%rax            ;   {oop([B{0x00000007fec35390})}
             0x00007f7d52d89c41:   mov    %rax,0xa0(%rsp)
   0.01%     0x00007f7d52d89c49:   movabs $0x7fec35128,%rcx            ;   {oop([B{0x00000007fec35128})}
             0x00007f7d52d89c53:   mov    %rcx,0x98(%rsp)
   0.01%     0x00007f7d52d89c5b:   movabs $0x7fec351e8,%rdx            ;   {oop([B{0x00000007fec351e8})}
             0x00007f7d52d89c65:   mov    %rdx,0x90(%rsp)
   0.00%     0x00007f7d52d89c6d:   movabs $0x7fec34f90,%rsi            ;   {oop([B{0x00000007fec34f90})}
             0x00007f7d52d89c77:   mov    %rsi,0x88(%rsp)
   0.02%     0x00007f7d52d89c7f:   mov    %rbp,0x80(%rsp)
   0.00%     0x00007f7d52d89c87:   movabs $0x7fec352b8,%rbp            ;   {oop([B{0x00000007fec352b8})}
             0x00007f7d52d89c91:   mov    %rbp,0x78(%rsp)
   0.00%     0x00007f7d52d89c96:   movabs $0x7fec350c0,%rbp            ;   {oop([B{0x00000007fec350c0})}
             0x00007f7d52d89ca0:   mov    %rbp,0x70(%rsp)
   0.01%     0x00007f7d52d89ca5:   movabs $0x7fec35090,%rbp            ;   {oop([B{0x00000007fec35090})}
             0x00007f7d52d89caf:   mov    %rbp,0x68(%rsp)
   0.01%     0x00007f7d52d89cb4:   movabs $0x7fec35060,%rbp            ;   {oop([B{0x00000007fec35060})}
             0x00007f7d52d89cbe:   mov    %rbp,0x60(%rsp)
   0.00%     0x00007f7d52d89cc3:   movabs $0x7fec35158,%rbp            ;   {oop([B{0x00000007fec35158})}
             0x00007f7d52d89ccd:   mov    %rbp,0x58(%rsp)
   0.00%     0x00007f7d52d89cd2:   movabs $0x7fec352e8,%rbp            ;   {oop([B{0x00000007fec352e8})}
             0x00007f7d52d89cdc:   mov    %rbp,0x50(%rsp)
   0.01%     0x00007f7d52d89ce1:   movabs $0x7fec35188,%rbp            ;   {oop([B{0x00000007fec35188})}
             0x00007f7d52d89ceb:   mov    %rbp,0x48(%rsp)
             0x00007f7d52d89cf0:   movabs $0x7fec35248,%rbp            ;   {oop([B{0x00000007fec35248})}
             0x00007f7d52d89cfa:   mov    %rbp,0x40(%rsp)
   0.01%     0x00007f7d52d89cff:   movabs $0x7fec35218,%rbp            ;   {oop([B{0x00000007fec35218})}
             0x00007f7d52d89d09:   mov    %rbp,0x38(%rsp)
   0.00%     0x00007f7d52d89d0e:   movabs $0x7fec35320,%rbp            ;   {oop([B{0x00000007fec35320})}
             0x00007f7d52d89d18:   mov    %rbp,0x30(%rsp)
   0.01%     0x00007f7d52d89d1d:   movabs $0x7fec35358,%rbp            ;   {oop([B{0x00000007fec35358})}
             0x00007f7d52d89d27:   mov    %rbp,0x28(%rsp)
   0.00%     0x00007f7d52d89d2c:   movabs $0x7fec353f8,%rbp            ;   {oop([B{0x00000007fec353f8})}
             0x00007f7d52d89d36:   mov    %rbp,0x20(%rsp)
   0.01%     0x00007f7d52d89d3b:   movabs $0x7fec34ff0,%rbp            ;   {oop([B{0x00000007fec34ff0})}
             0x00007f7d52d89d45:   mov    %rbp,0x18(%rsp)
   0.01%     0x00007f7d52d89d4a:   movabs $0x7fec35430,%rbp            ;   {oop([B{0x00000007fec35430})}
             0x00007f7d52d89d54:   mov    %rbp,0x10(%rsp)
   0.01%     0x00007f7d52d89d59:   movl   $0x0,0xe0(%rsp)
   0.01%     0x00007f7d52d89d64:   mov    $0x0,%r11d
             0x00007f7d52d89d6a:   mov    0x28(%rsp),%rbx
             0x00007f7d52d89d6f:   nop                                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
   0.53%     0x00007f7d52d89d70:   cmp    %r11d,%r13d
             0x00007f7d52d89d73:   jbe    0x00007f7d52d8b274           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.54%     0x00007f7d52d89d79:   mov    0x10(%r14,%r11,4),%ebp       ; ImmutableOopMap {rbx=Oop rbp=NarrowOop r14=Oop [16]=Oop [24]=Oop [32]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [120]=Oop [128]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop [200]=Oop [208]=Oop [216]=Oop }
                                                                       ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
   1.05%     0x00007f7d52d89d7e:   mov    0xc(,%rbp,8),%r13d           ; implicit exception: dispatches to 0x00007f7d52d8b3a3
  17.22%     0x00007f7d52d89d86:   movsbl 0x10(,%rbp,8),%r14d          ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::isLatin1@7 (line 4817)
                                                                       ; - java.lang.String::hashCode@17 (line 2365)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.26%     0x00007f7d52d89d8f:   mov    0x14(,%rbp,8),%edi           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::hashCode@24 (line 2365)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   5.52%     0x00007f7d52d89d96:   mov    %edi,%r10d
             0x00007f7d52d89d99:   shl    $0x3,%r10                    ;* unwind (locked if synchronized)
                                                                       ; - java.lang.String::equals@-3
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@314 (line 214)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   5.94%     0x00007f7d52d89d9d:   data16 xchg %ax,%ax
   0.24%     0x00007f7d52d89da0:   test   %r13d,%r13d
             0x00007f7d52d89da3:   je     0x00007f7d52d8a090           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::hashCode@6 (line 2364)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
             0x00007f7d52d89da9:   mov    %r10,0x28(%rsp)
  11.24%     0x00007f7d52d89dae:   mov    %edi,0xc(%rsp)
   0.27%     0x00007f7d52d89db2:   mov    %rbx,%rdi
   0.28%     0x00007f7d52d89db5:   mov    %r13d,%r10d
             0x00007f7d52d89db8:   mov    %r11d,%r13d
   5.74%     0x00007f7d52d89dbb:   mov    %ebp,%r11d
   0.29%     0x00007f7d52d89dbe:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   0.26%     0x00007f7d52d89dc2:   mov    %r13d,%r8d
             0x00007f7d52d89dc5:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
   5.54%     0x00007f7d52d89dc8:   cmp    $0x1f3140,%r10d
             0x00007f7d52d89dcf:   jge    0x00007f7d52d89ef8
   0.01%     0x00007f7d52d89dd5:   cmp    $0xeb2c8617,%r10d
   0.20%     0x00007f7d52d89ddc:   nopl   0x0(%rax)
             0x00007f7d52d89de0:   jge    0x00007f7d52d89e78
   1.87%     0x00007f7d52d89de6:   cmp    $0xba6eabe2,%r10d
             0x00007f7d52d89ded:   jge    0x00007f7d52d89e3e
   0.00%     0x00007f7d52d89df3:   cmp    $0xa2a1be40,%r10d
          ╭  0x00007f7d52d89dfa:   jge    0x00007f7d52d89e1f
          │  0x00007f7d52d89e00:   cmp    $0x90663ad4,%r10d
          │  0x00007f7d52d89e07:   je     0x00007f7d52d8ab4e
          │  0x00007f7d52d89e0d:   cmp    $0x9ef434af,%r10d
          │  0x00007f7d52d89e14:   je     0x00007f7d52d8a26e
          │  0x00007f7d52d89e1a:   jmp    0x00007f7d52d8b32e
          ↘  0x00007f7d52d89e1f:   cmp    $0xa2a1be40,%r10d
             0x00007f7d52d89e26:   je     0x00007f7d52d8acae
             0x00007f7d52d89e2c:   cmp    $0xaf2874e8,%r10d
             0x00007f7d52d89e33:   je     0x00007f7d52d8abfd
....................................................................................................
  57.16%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 

                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
                                 0x00007f7d52d8b0b4:   mov    %r10,0x28(%rsp)
                                 0x00007f7d52d8b0b9:   mov    %edi,0xc(%rsp)
                                 0x00007f7d52d8b0bd:   mov    %rbx,%rdi
                                 0x00007f7d52d8b0c0:   mov    %r13d,%r10d
                                 0x00007f7d52d8b0c3:   mov    %r11d,%r13d
                                 0x00007f7d52d8b0c6:   jmp    0x00007f7d52d89dbb           ;* unwind (locked if synchronized)
                                                                                           ; - java.lang.String::equals@-3
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@257 (line 214)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.28%                         0x00007f7d52d8b0cb:   mov    $0x4,%eax
                                 0x00007f7d52d8b0d0:   mov    0xe0(%rsp),%ebx
                                 0x00007f7d52d8b0d7:   mov    %rdi,%r10
   4.89%  ↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗  0x00007f7d52d8b0da:   mov    0x30(%rsp),%r11
   0.53%  │││││││││││││││││││││  0x00007f7d52d8b0df:   add    %ebx,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@32 (line 116)
   0.65%  │││││││││││││││││││││  0x00007f7d52d8b0e1:   mov    %eax,0xe0(%rsp)
   0.30%  │││││││││││││││││││││  0x00007f7d52d8b0e8:   mov    %r10,%rbx
   4.90%  │││││││││││││││││││││  0x00007f7d52d8b0eb:   mov    0xd8(%rsp),%r14
   0.53%  │││││││││││││││││││││  0x00007f7d52d8b0f3:   mov    0xe4(%rsp),%r13d
   0.54%  │││││││││││││││││││││  0x00007f7d52d8b0fb:   mov    %r8d,%r11d
   0.30%  │││││││││││││││││││││  0x00007f7d52d8b0fe:   xchg   %ax,%ax
   4.92%  │││││││││││││││││││││  0x00007f7d52d8b100:   jmp    0x00007f7d52d89d70           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
          │││││││││││││││││││││  0x00007f7d52d8b105:   mov    $0x2,%eax
   0.27%  │││││││││││││││││││││  0x00007f7d52d8b10a:   mov    %rcx,%r10
          ╰││││││││││││││││││││  0x00007f7d52d8b10d:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
           ││││││││││││││││││││                                                            ; - java.lang.String::equals@-3
           ││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
           ││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.22%   ││││││││││││││││││││  0x00007f7d52d8b10f:   mov    $0x1,%eax
           ││││││││││││││││││││  0x00007f7d52d8b114:   mov    %rcx,%r10
           ╰│││││││││││││││││││  0x00007f7d52d8b117:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
            │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
            │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@271 (line 214)
            │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.25%    │││││││││││││││││││  0x00007f7d52d8b119:   mov    $0x5,%eax
            │││││││││││││││││││  0x00007f7d52d8b11e:   mov    %rcx,%r10                    ;   {no_reloc}
   0.01%    ╰││││││││││││││││││  0x00007f7d52d8b121:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
             ││││││││││││││││││                                                            ; - java.lang.String::equals@-3
             ││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
             ││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.24%     ││││││││││││││││││  0x00007f7d52d8b123:   mov    $0x3,%eax
             ││││││││││││││││││  0x00007f7d52d8b128:   mov    %rcx,%r10
             ╰│││││││││││││││││  0x00007f7d52d8b12b:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
              │││││││││││││││││                                                            ; - java.lang.String::equals@-3
              │││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@285 (line 214)
              │││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.28%      │││││││││││││││││  0x00007f7d52d8b12d:   mov    $0x6,%eax
              │││││││││││││││││  0x00007f7d52d8b132:   mov    %rcx,%r10
              ╰││││││││││││││││  0x00007f7d52d8b135:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
               ││││││││││││││││                                                            ; - java.lang.String::equals@-3
               ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@404 (line 214)
               ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
               ││││││││││││││││  0x00007f7d52d8b137:   mov    $0xe,%eax
   0.21%       ││││││││││││││││  0x00007f7d52d8b13c:   mov    %rcx,%r10
               ││││││││││││││││  0x00007f7d52d8b13f:   nop
               ╰│││││││││││││││  0x00007f7d52d8b140:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
                │││││││││││││││                                                            ; - java.lang.String::equals@-3
                │││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@299 (line 214)
                │││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.25%        │││││││││││││││  0x00007f7d52d8b142:   mov    $0x7,%eax
                │││││││││││││││  0x00007f7d52d8b147:   mov    %rcx,%r10
                ╰││││││││││││││  0x00007f7d52d8b14a:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
                 ││││││││││││││                                                            ; - java.lang.String::equals@-3
                 ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@389 (line 214)
                 ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.26%         ││││││││││││││  0x00007f7d52d8b14c:   mov    $0xd,%eax
                 ││││││││││││││  0x00007f7d52d8b151:   mov    %rcx,%r10
                 ╰│││││││││││││  0x00007f7d52d8b154:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
                  │││││││││││││                                                            ; - java.lang.String::equals@-3
                  │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@344 (line 214)
                  │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.28%          │││││││││││││  0x00007f7d52d8b156:   mov    $0xa,%eax
                  │││││││││││││  0x00007f7d52d8b15b:   mov    %rcx,%r10
                  │││││││││││││  0x00007f7d52d8b15e:   xchg   %ax,%ax
                  ╰││││││││││││  0x00007f7d52d8b160:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
                   ││││││││││││                                                            ; - java.lang.String::equals@-3
                   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@434 (line 214)
                   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.20%           ││││││││││││  0x00007f7d52d8b165:   mov    $0x10,%eax
   0.06%           ││││││││││││  0x00007f7d52d8b16a:   mov    %rcx,%r10
                   ╰│││││││││││  0x00007f7d52d8b16d:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
                    │││││││││││                                                            ; - java.lang.String::equals@-3
                    │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@329 (line 214)
                    │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.26%            │││││││││││  0x00007f7d52d8b172:   mov    $0x9,%eax
                    │││││││││││  0x00007f7d52d8b177:   mov    %rcx,%r10
                    ╰││││││││││  0x00007f7d52d8b17a:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
                     ││││││││││                                                            ; - java.lang.String::equals@-3
                     ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@359 (line 214)
                     ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.29%             ││││││││││  0x00007f7d52d8b17f:   mov    $0xb,%eax
                     ││││││││││  0x00007f7d52d8b184:   mov    %rcx,%r10
                     ╰│││││││││  0x00007f7d52d8b187:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
                      │││││││││                                                            ; - java.lang.String::equals@-3
                      │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@314 (line 214)
                      │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
                      │││││││││  0x00007f7d52d8b18c:   mov    $0x8,%eax
                      │││││││││  0x00007f7d52d8b191:   mov    %rcx,%r10
                      ╰││││││││  0x00007f7d52d8b194:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
                       ││││││││                                                            ; - java.lang.String::equals@-3
                       ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@374 (line 214)
                       ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.24%               ││││││││  0x00007f7d52d8b199:   mov    $0xc,%eax
                       ││││││││  0x00007f7d52d8b19e:   mov    %rcx,%r10
                       ╰│││││││  0x00007f7d52d8b1a1:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
                        │││││││                                                            ; - java.lang.String::equals@-3
                        │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@419 (line 214)
                        │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.24%                │││││││  0x00007f7d52d8b1a6:   mov    $0xf,%eax
                        │││││││  0x00007f7d52d8b1ab:   mov    %rcx,%r10
                        ╰││││││  0x00007f7d52d8b1ae:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
                         ││││││                                                            ; - java.lang.String::equals@-3
                         ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@524 (line 214)
                         ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.28%                 ││││││  0x00007f7d52d8b1b3:   mov    $0x16,%eax
                         ││││││  0x00007f7d52d8b1b8:   mov    %rcx,%r10
                         ╰│││││  0x00007f7d52d8b1bb:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
                          │││││                                                            ; - java.lang.String::equals@-3
                          │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@494 (line 214)
                          │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
                          │││││  0x00007f7d52d8b1c0:   mov    $0x14,%eax
   0.25%                  │││││  0x00007f7d52d8b1c5:   mov    %rcx,%r10
                          ╰││││  0x00007f7d52d8b1c8:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
                           ││││                                                            ; - java.lang.String::equals@-3
                           ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@539 (line 214)
                           ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.00%                   ││││  0x00007f7d52d8b1cd:   mov    $0x17,%eax
                           ││││  0x00007f7d52d8b1d2:   mov    %rcx,%r10
                           ╰│││  0x00007f7d52d8b1d5:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
                            │││                                                            ; - java.lang.String::equals@-3
                            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@554 (line 214)
                            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.26%                    │││  0x00007f7d52d8b1da:   mov    $0x18,%eax
   0.00%                    │││  0x00007f7d52d8b1df:   mov    %rcx,%r10
                            ╰││  0x00007f7d52d8b1e2:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
                             ││                                                            ; - java.lang.String::equals@-3
                             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@509 (line 214)
                             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.22%                     ││  0x00007f7d52d8b1e7:   mov    $0x15,%eax
                             ││  0x00007f7d52d8b1ec:   mov    %rcx,%r10
   0.02%                     ╰│  0x00007f7d52d8b1ef:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
                              │                                                            ; - java.lang.String::equals@-3
                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@449 (line 214)
                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.27%                      │  0x00007f7d52d8b1f4:   mov    $0x11,%eax
                              │  0x00007f7d52d8b1f9:   mov    %rcx,%r10
                              │  0x00007f7d52d8b1fc:   nopl   0x0(%rax)
                              ╰  0x00007f7d52d8b200:   jmp    0x00007f7d52d8b0da           ;* unwind (locked if synchronized)
                                                                                           ; - java.lang.String::equals@-3
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@464 (line 214)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
                                 0x00007f7d52d8b205:   mov    $0x12,%eax
....................................................................................................
  22.71%  <total for region 2>

....[Hottest Regions]...............................................................................
  57.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
  22.71%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   3.00%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   2.36%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   1.51%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   1.25%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   0.72%              kernel  [unknown] 
   0.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   0.55%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   0.54%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   0.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   0.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   0.51%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   0.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   0.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   0.45%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   0.43%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   0.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   0.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   0.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   5.30%  <...other 393 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 964 
   2.02%              kernel  [unknown] 
   0.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 988 
   0.07%                      <unknown> 
   0.02%      hsdis-amd64.so  print_insn 
   0.02%           libjvm.so  defaultStream::write 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  syscall 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.19%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.52%      jvmci, level 4
   2.02%              kernel
   0.17%           libjvm.so
   0.12%        libc-2.31.so
   0.07%                    
   0.03%  libpthread-2.31.so
   0.03%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%         c1, level 3
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 3)

# Run progress: 66.67% complete, ETA 00:07:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.691 ns/op
# Warmup Iteration   2: 3.628 ns/op
# Warmup Iteration   3: 3.628 ns/op
# Warmup Iteration   4: 3.628 ns/op
# Warmup Iteration   5: 3.628 ns/op
Iteration   1: 3.628 ns/op
Iteration   2: 3.628 ns/op
Iteration   3: 3.628 ns/op
Iteration   4: 3.628 ns/op
Iteration   5: 3.628 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  3.628 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (3.628, 3.628, 3.628), stdev = 0.001
  CI (99.9%): [3.628, 3.628] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 231241 total address lines.
Perf output processed (skipped 60.709 seconds):
 Column 1: cycles (51088 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 978 

            # {method} {0x00007fdaf447dac0} &apos;switch_statements&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
            #           [sp+0x60]  (sp of caller)
            0x00007fdb7ad81420:   mov    0x8(%rsi),%r10d
            0x00007fdb7ad81424:   movabs $0x7fdaff000000,%r12
            0x00007fdb7ad8142e:   add    %r12,%r10
            0x00007fdb7ad81431:   xor    %r12,%r12
            0x00007fdb7ad81434:   cmp    %r10,%rax
            0x00007fdb7ad81437:   jne    0x00007fdb7a764080           ;   {runtime_call ic_miss_stub}
            0x00007fdb7ad8143d:   data16 xchg %ax,%ax
          [Verified Entry Point]
   0.01%    0x00007fdb7ad81440:   mov    %eax,-0x14000(%rsp)
   0.01%    0x00007fdb7ad81447:   sub    $0x58,%rsp
   0.00%    0x00007fdb7ad8144b:   nop
            0x00007fdb7ad8144c:   cmpl   $0x1,0x20(%r15)
   0.00%    0x00007fdb7ad81454:   jne    0x00007fdb7ad81a46
   0.00%    0x00007fdb7ad8145a:   mov    %rbp,0x50(%rsp)
   0.00%    0x00007fdb7ad8145f:   mov    %rsi,%rbp
            0x00007fdb7ad81462:   mov    %rbp,0x38(%rsp)
            0x00007fdb7ad81467:   mov    0x18(%rbp),%esi              ; ImmutableOopMap {rbp=Oop rsi=NarrowOop [56]=Oop }
                                                                      ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@0 (line 103)
            0x00007fdb7ad8146a:   mov    0xc(,%rsi,8),%r13d           ; implicit exception: dispatches to 0x00007fdb7ad81a6a
   0.02%    0x00007fdb7ad81472:   mov    %r13d,0x44(%rsp)
   0.02%    0x00007fdb7ad81477:   mov    %esi,%r14d
            0x00007fdb7ad8147a:   shl    $0x3,%r14                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
            0x00007fdb7ad8147e:   mov    %r14,0x30(%rsp)
            0x00007fdb7ad81483:   movabs $0x7fec34fc0,%rdi            ;   {oop([B{0x00000007fec34fc0})}
   0.01%    0x00007fdb7ad8148d:   mov    %rdi,0x28(%rsp)
            0x00007fdb7ad81492:   movabs $0x7fec34f90,%r10            ;   {oop([B{0x00000007fec34f90})}
            0x00007fdb7ad8149c:   mov    %r10,0x20(%rsp)
            0x00007fdb7ad814a1:   movabs $0x7fec34ff0,%r11            ;   {oop([B{0x00000007fec34ff0})}
   0.01%    0x00007fdb7ad814ab:   mov    %r11,0x18(%rsp)
            0x00007fdb7ad814b0:   mov    $0x0,%r10d
            0x00007fdb7ad814b6:   mov    $0x0,%edi
            0x00007fdb7ad814bb:   nopl   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
   0.02%    0x00007fdb7ad814c0:   cmp    %r10d,%r13d
            0x00007fdb7ad814c3:   jbe    0x00007fdb7ad81933           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   0.01%    0x00007fdb7ad814c9:   mov    0x10(%r14,%r10,4),%ebx       ; ImmutableOopMap {rbx=NarrowOop r14=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
  10.28%    0x00007fdb7ad814ce:   mov    0xc(,%rbx,8),%ecx            ; implicit exception: dispatches to 0x00007fdb7ad81a8d
  10.33%    0x00007fdb7ad814d5:   movsbl 0x10(,%rbx,8),%eax           ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::isLatin1@7 (line 4817)
                                                                      ; - java.lang.String::hashCode@17 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.01%    0x00007fdb7ad814dd:   mov    0x14(,%rbx,8),%edx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@24 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.12%    0x00007fdb7ad814e4:   mov    %edx,%esi
   7.10%    0x00007fdb7ad814e6:   shl    $0x3,%rsi                    ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   3.52%    0x00007fdb7ad814ea:   test   %ecx,%ecx
            0x00007fdb7ad814ec:   je     0x00007fdb7ad81826           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@6 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.02%    0x00007fdb7ad814f2:   mov    %rsi,0x10(%rsp)
  16.98%    0x00007fdb7ad814f7:   mov    %edx,0xc(%rsp)
   0.02%    0x00007fdb7ad814fb:   mov    %eax,%ebp
   0.02%    0x00007fdb7ad814fd:   mov    %ebx,%r14d
   0.01%    0x00007fdb7ad81500:   mov    %r10d,%r13d
  10.31%    0x00007fdb7ad81503:   mov    %ecx,%r10d
   0.02%    0x00007fdb7ad81506:   mov    %r14d,%ebx
   0.01%    0x00007fdb7ad81509:   shl    $0x3,%rbx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
   0.01%    0x00007fdb7ad8150d:   mov    %r13d,%r11d
  10.16%    0x00007fdb7ad81510:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
   0.02%    0x00007fdb7ad81513:   cmp    $0x462300d,%r10d
            0x00007fdb7ad8151a:   je     0x00007fdb7ad8165f
   0.01%    0x00007fdb7ad81520:   cmp    $0x9ef434af,%r10d
            0x00007fdb7ad81527:   je     0x00007fdb7ad816e9
            0x00007fdb7ad8152d:   cmp    $0x23c6acdf,%r10d
            0x00007fdb7ad81534:   je     0x00007fdb7ad8178a
            0x00007fdb7ad8153a:   cmp    $0x90663ad4,%r10d
            0x00007fdb7ad81541:   je     0x00007fdb7ad81a28
            0x00007fdb7ad81547:   cmp    $0xa2a1be40,%r10d
            0x00007fdb7ad8154e:   je     0x00007fdb7ad81a28
            0x00007fdb7ad81554:   cmp    $0xaf2874e8,%r10d
            0x00007fdb7ad8155b:   nopl   0x0(%rax,%rax,1)
            0x00007fdb7ad81560:   je     0x00007fdb7ad81a28
....................................................................................................
  69.03%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 978 

            0x00007fdb7ad81898:   mov    %rsi,0x10(%rsp)
            0x00007fdb7ad8189d:   mov    %edx,0xc(%rsp)
            0x00007fdb7ad818a1:   mov    %eax,%ebp
            0x00007fdb7ad818a3:   mov    %ebx,%r14d
            0x00007fdb7ad818a6:   mov    %r10d,%r13d
            0x00007fdb7ad818a9:   mov    %ecx,%r10d
            0x00007fdb7ad818ac:   jmp    0x00007fdb7ad81506           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.00%    0x00007fdb7ad818b1:   mov    %r11d,%r10d
            0x00007fdb7ad818b4:   mov    %r8d,%edi
            0x00007fdb7ad818b7:   mov    0x30(%rsp),%r14
   3.45%    0x00007fdb7ad818bc:   mov    0x44(%rsp),%r13d
   0.00%    0x00007fdb7ad818c1:   jmp    0x00007fdb7ad814c0
            0x00007fdb7ad818c6:   mov    %r11d,%r10d
   0.01%    0x00007fdb7ad818c9:   mov    %r8d,%edi
            0x00007fdb7ad818cc:   mov    0x30(%rsp),%r14
   3.42%    0x00007fdb7ad818d1:   mov    0x44(%rsp),%r13d
   0.00%    0x00007fdb7ad818d6:   jmp    0x00007fdb7ad814c0
   0.03%    0x00007fdb7ad818db:   mov    %r11d,%r10d
            0x00007fdb7ad818de:   mov    %r8d,%edi
            0x00007fdb7ad818e1:   mov    0x30(%rsp),%r14
   3.46%    0x00007fdb7ad818e6:   mov    0x44(%rsp),%r13d
   0.03%    0x00007fdb7ad818eb:   jmp    0x00007fdb7ad814c0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
            0x00007fdb7ad818f0:   mov    %rsi,0x10(%rsp)
            0x00007fdb7ad818f5:   mov    %eax,%ebp
            0x00007fdb7ad818f7:   mov    %edi,%r9d
            0x00007fdb7ad818fa:   mov    %ebx,%r14d
            0x00007fdb7ad818fd:   mov    %r10d,%r13d
            0x00007fdb7ad81900:   movsbl 0x10(,%rdx,8),%eax
            0x00007fdb7ad81908:   movsbl %al,%r10d                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.StringLatin1::hashCode@34 (line 190)
                                                                      ; - java.lang.String::hashCode@27 (line 2365)
....................................................................................................
  10.40%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 978 
  10.40%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 978 
   7.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 978 
   6.98%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 978 
   3.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 978 
   1.26%              kernel  [unknown] 
   0.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 978 
   0.19%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1002 
   0.13%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.83%  <...other 289 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 978 
   2.32%              kernel  [unknown] 
   0.19%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1002 
   0.09%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.14%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.31%      jvmci, level 4
   2.32%              kernel
   0.15%           libjvm.so
   0.09%                    
   0.09%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%      hsdis-amd64.so
   0.00%    perf-2152422.map
   0.00%      libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 6)

# Run progress: 75.00% complete, ETA 00:05:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.696 ns/op
# Warmup Iteration   2: 3.612 ns/op
# Warmup Iteration   3: 3.611 ns/op
# Warmup Iteration   4: 3.607 ns/op
# Warmup Iteration   5: 3.613 ns/op
Iteration   1: 3.615 ns/op
Iteration   2: 3.611 ns/op
Iteration   3: 3.614 ns/op
Iteration   4: 3.618 ns/op
Iteration   5: 3.614 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  3.615 ±(99.9%) 0.009 ns/op [Average]
  (min, avg, max) = (3.611, 3.615, 3.618), stdev = 0.002
  CI (99.9%): [3.605, 3.624] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 231747 total address lines.
Perf output processed (skipped 60.770 seconds):
 Column 1: cycles (50803 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 972 

            # {method} {0x00007f215047dac0} &apos;switch_statements&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
            #           [sp+0x70]  (sp of caller)
            0x00007f21d6d829c0:   mov    0x8(%rsi),%r10d
            0x00007f21d6d829c4:   movabs $0x7f215b000000,%r12
            0x00007f21d6d829ce:   add    %r12,%r10
            0x00007f21d6d829d1:   xor    %r12,%r12
            0x00007f21d6d829d4:   cmp    %r10,%rax
            0x00007f21d6d829d7:   jne    0x00007f21d6764080           ;   {runtime_call ic_miss_stub}
            0x00007f21d6d829dd:   data16 xchg %ax,%ax
          [Verified Entry Point]
   0.01%    0x00007f21d6d829e0:   mov    %eax,-0x14000(%rsp)
   0.03%    0x00007f21d6d829e7:   sub    $0x68,%rsp
   0.00%    0x00007f21d6d829eb:   nop
            0x00007f21d6d829ec:   cmpl   $0x1,0x20(%r15)
            0x00007f21d6d829f4:   jne    0x00007f21d6d83297
   0.01%    0x00007f21d6d829fa:   mov    %rbp,0x60(%rsp)
            0x00007f21d6d829ff:   mov    %rsi,%rbp
            0x00007f21d6d82a02:   mov    %rbp,0x48(%rsp)
   0.00%    0x00007f21d6d82a07:   mov    0x18(%rbp),%esi              ; ImmutableOopMap {rbp=Oop rsi=NarrowOop [72]=Oop }
                                                                      ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@0 (line 103)
   0.01%    0x00007f21d6d82a0a:   mov    0xc(,%rsi,8),%r13d           ; implicit exception: dispatches to 0x00007f21d6d832bb
   0.02%    0x00007f21d6d82a12:   mov    %r13d,0x54(%rsp)
   0.01%    0x00007f21d6d82a17:   mov    %esi,%r14d
            0x00007f21d6d82a1a:   shl    $0x3,%r14                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
            0x00007f21d6d82a1e:   mov    %r14,0x40(%rsp)
            0x00007f21d6d82a23:   movabs $0x7fec35028,%rdi            ;   {oop([B{0x00000007fec35028})}
   0.00%    0x00007f21d6d82a2d:   mov    %rdi,0x38(%rsp)
            0x00007f21d6d82a32:   movabs $0x7fec34fc0,%r10            ;   {oop([B{0x00000007fec34fc0})}
            0x00007f21d6d82a3c:   mov    %r10,0x30(%rsp)
            0x00007f21d6d82a41:   movabs $0x7fec34f90,%r11            ;   {oop([B{0x00000007fec34f90})}
   0.01%    0x00007f21d6d82a4b:   mov    %r11,0x28(%rsp)
            0x00007f21d6d82a50:   movabs $0x7fec35090,%r8             ;   {oop([B{0x00000007fec35090})}
            0x00007f21d6d82a5a:   mov    %r8,0x20(%rsp)
            0x00007f21d6d82a5f:   movabs $0x7fec35060,%r9             ;   {oop([B{0x00000007fec35060})}
   0.01%    0x00007f21d6d82a69:   mov    %r9,0x18(%rsp)
            0x00007f21d6d82a6e:   movabs $0x7fec34ff0,%rbx            ;   {oop([B{0x00000007fec34ff0})}
            0x00007f21d6d82a78:   mov    %rbx,0x10(%rsp)
            0x00007f21d6d82a7d:   mov    $0x0,%r10d
   0.00%    0x00007f21d6d82a83:   mov    $0x0,%edi
            0x00007f21d6d82a88:   nopl   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
   2.63%    0x00007f21d6d82a90:   cmp    %r10d,%r13d
            0x00007f21d6d82a93:   jbe    0x00007f21d6d83107           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   5.06%    0x00007f21d6d82a99:   mov    0x10(%r14,%r10,4),%edx       ; ImmutableOopMap {rdx=NarrowOop r14=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
   2.65%    0x00007f21d6d82a9e:   mov    0xc(,%rdx,8),%esi            ; implicit exception: dispatches to 0x00007f21d6d832de
   3.25%    0x00007f21d6d82aa5:   movsbl 0x10(,%rdx,8),%ebp           ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::isLatin1@7 (line 4817)
                                                                      ; - java.lang.String::hashCode@17 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   1.83%    0x00007f21d6d82aad:   mov    0x14(,%rdx,8),%r13d          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@24 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   7.21%    0x00007f21d6d82ab5:   mov    %r13d,%r14d
   2.60%    0x00007f21d6d82ab8:   shl    $0x3,%r14                    ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   5.55%    0x00007f21d6d82abc:   nopl   0x0(%rax)
   1.31%    0x00007f21d6d82ac0:   test   %esi,%esi
            0x00007f21d6d82ac2:   je     0x00007f21d6d82fac           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@6 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   5.19%    0x00007f21d6d82ac8:   mov    %r14,0x8(%rsp)
   5.00%    0x00007f21d6d82acd:   mov    %r13d,0x4(%rsp)
   0.02%    0x00007f21d6d82ad2:   mov    %edx,%r13d
   1.06%    0x00007f21d6d82ad5:   mov    %r10d,%r14d
   4.85%    0x00007f21d6d82ad8:   mov    %esi,%r10d
   4.41%    0x00007f21d6d82adb:   mov    %r13d,%r11d
   0.04%    0x00007f21d6d82ade:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
   1.10%    0x00007f21d6d82ae2:   mov    %r14d,%r8d
   5.87%    0x00007f21d6d82ae5:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
   4.61%    0x00007f21d6d82ae8:   cmp    $0x9ef434af,%r10d
            0x00007f21d6d82aef:   je     0x00007f21d6d82cc8
   0.01%    0x00007f21d6d82af5:   cmp    $0x462300d,%r10d
   0.97%    0x00007f21d6d82afc:   nopl   0x0(%rax)
   3.21%    0x00007f21d6d82b00:   je     0x00007f21d6d82d53
   2.82%    0x00007f21d6d82b06:   cmp    $0x23c6acdf,%r10d
            0x00007f21d6d82b0d:   je     0x00007f21d6d82c38
   0.02%    0x00007f21d6d82b13:   cmp    $0x33eb4d91,%r10d
            0x00007f21d6d82b1a:   je     0x00007f21d6d82de6
   0.96%    0x00007f21d6d82b20:   cmp    $0x103b4,%r10d
            0x00007f21d6d82b27:   je     0x00007f21d6d82e73
   0.01%    0x00007f21d6d82b2d:   cmp    $0x14234,%r10d
            0x00007f21d6d82b34:   je     0x00007f21d6d82f0c
            0x00007f21d6d82b3a:   cmp    $0x90663ad4,%r10d
            0x00007f21d6d82b41:   je     0x00007f21d6d83265
            0x00007f21d6d82b47:   cmp    $0xa2a1be40,%r10d
            0x00007f21d6d82b4e:   je     0x00007f21d6d83265
            0x00007f21d6d82b54:   cmp    $0xaf2874e8,%r10d
            0x00007f21d6d82b5b:   nopl   0x0(%rax,%rax,1)
            0x00007f21d6d82b60:   je     0x00007f21d6d83265
            0x00007f21d6d82b66:   cmp    $0xba6eabe2,%r10d
            0x00007f21d6d82b6d:   je     0x00007f21d6d83265           ;   {no_reloc}
....................................................................................................
  72.34%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 972 

            0x00007f21d6d83030:   mov    %r13d,0x4(%rsp)
            0x00007f21d6d83035:   mov    %edx,%r13d
            0x00007f21d6d83038:   mov    %r10d,%r14d
            0x00007f21d6d8303b:   mov    %esi,%r10d
            0x00007f21d6d8303e:   xchg   %ax,%ax
            0x00007f21d6d83040:   jmp    0x00007f21d6d82adb           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
            0x00007f21d6d83045:   mov    %r8d,%r10d
   0.01%    0x00007f21d6d83048:   mov    %r9d,%edi
   1.68%    0x00007f21d6d8304b:   mov    0x40(%rsp),%r14
   0.01%    0x00007f21d6d83050:   mov    0x54(%rsp),%r13d
            0x00007f21d6d83055:   jmp    0x00007f21d6d82a90
            0x00007f21d6d8305a:   mov    %r8d,%r10d
   0.04%    0x00007f21d6d8305d:   mov    %r9d,%edi
   1.48%    0x00007f21d6d83060:   mov    0x40(%rsp),%r14
   0.08%    0x00007f21d6d83065:   mov    0x54(%rsp),%r13d
            0x00007f21d6d8306a:   jmp    0x00007f21d6d82a90
   0.13%    0x00007f21d6d8306f:   mov    %r8d,%r10d
            0x00007f21d6d83072:   mov    %r9d,%edi
   0.00%    0x00007f21d6d83075:   mov    0x40(%rsp),%r14
   1.55%    0x00007f21d6d8307a:   mov    0x54(%rsp),%r13d
   0.10%    0x00007f21d6d8307f:   nop
            0x00007f21d6d83080:   jmp    0x00007f21d6d82a90
   0.03%    0x00007f21d6d83085:   mov    %r8d,%r10d
   1.54%    0x00007f21d6d83088:   mov    %r9d,%edi
   0.07%    0x00007f21d6d8308b:   mov    0x40(%rsp),%r14
            0x00007f21d6d83090:   mov    0x54(%rsp),%r13d
   0.04%    0x00007f21d6d83095:   jmp    0x00007f21d6d82a90
   0.03%    0x00007f21d6d8309a:   mov    %r8d,%r10d
   0.05%    0x00007f21d6d8309d:   mov    %r9d,%edi
   0.01%    0x00007f21d6d830a0:   mov    0x40(%rsp),%r14
   1.64%    0x00007f21d6d830a5:   mov    0x54(%rsp),%r13d
   0.02%    0x00007f21d6d830aa:   jmp    0x00007f21d6d82a90
   0.79%    0x00007f21d6d830af:   mov    %r8d,%r10d
   0.01%    0x00007f21d6d830b2:   mov    %r9d,%edi
   0.93%    0x00007f21d6d830b5:   mov    0x40(%rsp),%r14
   0.06%    0x00007f21d6d830ba:   mov    0x54(%rsp),%r13d
   0.78%    0x00007f21d6d830bf:   nop
   0.02%    0x00007f21d6d830c0:   jmp    0x00007f21d6d82a90           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
            0x00007f21d6d830c5:   mov    %r14,0x8(%rsp)
            0x00007f21d6d830ca:   mov    %r13d,%ecx
            0x00007f21d6d830cd:   mov    %edx,%r13d
            0x00007f21d6d830d0:   mov    %r10d,%r14d
            0x00007f21d6d830d3:   mov    %edi,%ebx
            0x00007f21d6d830d5:   movsbl 0x10(,%rcx,8),%eax
            0x00007f21d6d830dd:   movsbl %al,%r10d                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.StringLatin1::hashCode@34 (line 190)
                                                                      ; - java.lang.String::hashCode@27 (line 2365)
....................................................................................................
  11.09%  <total for region 2>

....[Hottest Regions]...............................................................................
  72.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 972 
  11.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 972 
   3.54%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 972 
   3.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 972 
   1.85%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 972 
   1.78%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 972 
   1.75%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 972 
   1.69%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 972 
   0.71%              kernel  [unknown] 
   0.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 972 
   0.15%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 994 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.01%  <...other 319 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.66%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 972 
   1.77%              kernel  [unknown] 
   0.15%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 994 
   0.10%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  outputStream::print 
   0.15%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.82%      jvmci, level 4
   1.77%              kernel
   0.15%           libjvm.so
   0.13%        libc-2.31.so
   0.10%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 12)

# Run progress: 83.33% complete, ETA 00:03:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.376 ns/op
# Warmup Iteration   2: 5.203 ns/op
# Warmup Iteration   3: 5.192 ns/op
# Warmup Iteration   4: 5.202 ns/op
# Warmup Iteration   5: 5.193 ns/op
Iteration   1: 5.184 ns/op
Iteration   2: 5.182 ns/op
Iteration   3: 5.200 ns/op
Iteration   4: 5.203 ns/op
Iteration   5: 5.199 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  5.194 ±(99.9%) 0.039 ns/op [Average]
  (min, avg, max) = (5.182, 5.194, 5.203), stdev = 0.010
  CI (99.9%): [5.155, 5.232] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 230448 total address lines.
Perf output processed (skipped 60.737 seconds):
 Column 1: cycles (50520 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 

             # {method} {0x00007f03dc47dac0} &apos;switch_statements&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
             #           [sp+0xa0]  (sp of caller)
             0x00007f0462d82c80:   mov    0x8(%rsi),%r10d
             0x00007f0462d82c84:   movabs $0x7f03e7000000,%r12
             0x00007f0462d82c8e:   add    %r12,%r10
             0x00007f0462d82c91:   xor    %r12,%r12
             0x00007f0462d82c94:   cmp    %r10,%rax
             0x00007f0462d82c97:   jne    0x00007f0462764080           ;   {runtime_call ic_miss_stub}
             0x00007f0462d82c9d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.01%     0x00007f0462d82ca0:   mov    %eax,-0x14000(%rsp)
   0.01%     0x00007f0462d82ca7:   sub    $0x98,%rsp
   0.00%     0x00007f0462d82cae:   xchg   %ax,%ax
             0x00007f0462d82cb0:   cmpl   $0x0,0x20(%r15)
             0x00007f0462d82cb8:   jne    0x00007f0462d83cea
   0.00%     0x00007f0462d82cbe:   mov    %rbp,0x90(%rsp)
   0.00%     0x00007f0462d82cc6:   mov    %rsi,%rbp
             0x00007f0462d82cc9:   mov    0x18(%rbp),%esi              ; ImmutableOopMap {rbp=Oop rsi=NarrowOop }
                                                                       ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@0 (line 103)
             0x00007f0462d82ccc:   mov    0xc(,%rsi,8),%r13d           ; implicit exception: dispatches to 0x00007f0462d83d11
   0.03%     0x00007f0462d82cd4:   mov    %r13d,0x84(%rsp)
   0.01%     0x00007f0462d82cdc:   mov    %esi,%r14d
             0x00007f0462d82cdf:   shl    $0x3,%r14                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
             0x00007f0462d82ce3:   mov    %r14,0x70(%rsp)
             0x00007f0462d82ce8:   movabs $0x7fec350f0,%rdi            ;   {oop([B{0x00000007fec350f0})}
   0.01%     0x00007f0462d82cf2:   mov    %rdi,0x68(%rsp)
             0x00007f0462d82cf7:   movabs $0x7fec35028,%r10            ;   {oop([B{0x00000007fec35028})}
             0x00007f0462d82d01:   mov    %r10,0x60(%rsp)
             0x00007f0462d82d06:   movabs $0x7fec34fc0,%r11            ;   {oop([B{0x00000007fec34fc0})}
   0.00%     0x00007f0462d82d10:   mov    %r11,0x58(%rsp)
             0x00007f0462d82d15:   movabs $0x7fec351b8,%r8             ;   {oop([B{0x00000007fec351b8})}
             0x00007f0462d82d1f:   mov    %r8,0x50(%rsp)
             0x00007f0462d82d24:   movabs $0x7fec35128,%r9             ;   {oop([B{0x00000007fec35128})}
   0.00%     0x00007f0462d82d2e:   mov    %r9,0x48(%rsp)
             0x00007f0462d82d33:   movabs $0x7fec34f90,%rbx            ;   {oop([B{0x00000007fec34f90})}
             0x00007f0462d82d3d:   mov    %rbx,0x40(%rsp)
   0.01%     0x00007f0462d82d42:   movabs $0x7fec350c0,%rax            ;   {oop([B{0x00000007fec350c0})}
             0x00007f0462d82d4c:   mov    %rax,0x38(%rsp)
   0.01%     0x00007f0462d82d51:   movabs $0x7fec35090,%rcx            ;   {oop([B{0x00000007fec35090})}
             0x00007f0462d82d5b:   mov    %rcx,0x30(%rsp)
   0.00%     0x00007f0462d82d60:   movabs $0x7fec35060,%rdx            ;   {oop([B{0x00000007fec35060})}
             0x00007f0462d82d6a:   movabs $0x7fec35158,%rsi            ;   {oop([B{0x00000007fec35158})}
   0.00%     0x00007f0462d82d74:   mov    %rsi,0x28(%rsp)
             0x00007f0462d82d79:   mov    %rbp,0x20(%rsp)
   0.01%     0x00007f0462d82d7e:   movabs $0x7fec35188,%rbp            ;   {oop([B{0x00000007fec35188})}
             0x00007f0462d82d88:   mov    %rbp,0x18(%rsp)
   0.01%     0x00007f0462d82d8d:   movabs $0x7fec34ff0,%rbp            ;   {oop([B{0x00000007fec34ff0})}
             0x00007f0462d82d97:   mov    %rbp,0x10(%rsp)
   0.01%     0x00007f0462d82d9c:   movl   $0x0,0x80(%rsp)
   0.01%     0x00007f0462d82da7:   mov    $0x0,%r10d
             0x00007f0462d82dad:   data16 xchg %ax,%ax                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
   1.12%     0x00007f0462d82db0:   cmp    %r10d,%r13d
             0x00007f0462d82db3:   jbe    0x00007f0462d83a5f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   2.43%     0x00007f0462d82db9:   mov    0x10(%r14,%r10,4),%ebp       ; ImmutableOopMap {rdx=Oop rbp=NarrowOop r14=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop }
                                                                       ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
   3.95%     0x00007f0462d82dbe:   mov    0xc(,%rbp,8),%r13d           ; implicit exception: dispatches to 0x00007f0462d83d34
  16.21%     0x00007f0462d82dc6:   movsbl 0x10(,%rbp,8),%r14d          ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::isLatin1@7 (line 4817)
                                                                       ; - java.lang.String::hashCode@17 (line 2365)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   1.00%     0x00007f0462d82dcf:   mov    0x14(,%rbp,8),%edi           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::hashCode@24 (line 2365)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   4.18%     0x00007f0462d82dd6:   mov    %r10d,0x7c(%rsp)
             0x00007f0462d82ddb:   mov    %edi,%r10d
   2.12%     0x00007f0462d82dde:   shl    $0x3,%r10                    ;* unwind (locked if synchronized)
                                                                       ; - java.lang.String::equals@-3
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@321 (line 135)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   5.10%     0x00007f0462d82de2:   test   %r13d,%r13d
             0x00007f0462d82de5:   je     0x00007f0462d830dd           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::hashCode@6 (line 2364)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.02%     0x00007f0462d82deb:   mov    %r10,0x8(%rsp)
  12.62%     0x00007f0462d82df0:   mov    %edi,0x4(%rsp)
   0.00%     0x00007f0462d82df4:   mov    %rdx,%rdi
   0.04%     0x00007f0462d82df7:   mov    %r13d,%r10d
   0.01%     0x00007f0462d82dfa:   mov    0x7c(%rsp),%r13d
   7.26%     0x00007f0462d82dff:   mov    %ebp,%r11d
             0x00007f0462d82e02:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
   0.04%     0x00007f0462d82e06:   mov    %r13d,%r8d
   0.01%     0x00007f0462d82e09:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
   7.35%     0x00007f0462d82e0c:   cmp    $0x4c5f9e8,%r10d
             0x00007f0462d82e13:   jge    0x00007f0462d82f65
             0x00007f0462d82e19:   cmp    $0x14234,%r10d
             0x00007f0462d82e20:   jge    0x00007f0462d82f18
   0.04%     0x00007f0462d82e26:   cmp    $0xfce7bd80,%r10d
             0x00007f0462d82e2d:   jge    0x00007f0462d82ede
             0x00007f0462d82e33:   cmp    $0xa2a1be40,%r10d
          ╭  0x00007f0462d82e3a:   jge    0x00007f0462d82e5f
   1.20%  │  0x00007f0462d82e40:   cmp    $0x90663ad4,%r10d
          │  0x00007f0462d82e47:   je     0x00007f0462d83b95
          │  0x00007f0462d82e4d:   cmp    $0x9ef434af,%r10d
          │  0x00007f0462d82e54:   je     0x00007f0462d83157
          │  0x00007f0462d82e5a:   jmp    0x00007f0462d83b95
   1.14%  ↘  0x00007f0462d82e5f:   cmp    $0xeb2c8617,%r10d
             0x00007f0462d82e66:   jg     0x00007f0462d83b95
             0x00007f0462d82e6c:   cmp    $0xeb2c8617,%r10d
             0x00007f0462d82e73:   jge    0x00007f0462d83737
             0x00007f0462d82e79:   cmp    $0xc517aa2b,%r10d
             0x00007f0462d82e80:   jge    0x00007f0462d82ebf
             0x00007f0462d82e86:   cmp    $0xba6eabe2,%r10d            ;   {no_reloc}
             0x00007f0462d82e8d:   jg     0x00007f0462d83b95
             0x00007f0462d82e93:   cmp    $0xba6eabe2,%r10d
             0x00007f0462d82e9a:   jge    0x00007f0462d83b95
             0x00007f0462d82ea0:   cmp    $0xa2a1be40,%r10d
....................................................................................................
  65.98%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 

            0x00007f0462d8387b:   mov    %r10,0x8(%rsp)
            0x00007f0462d83880:   mov    %edi,0x4(%rsp)
            0x00007f0462d83884:   mov    %rdx,%rdi
            0x00007f0462d83887:   mov    %r13d,%r10d
            0x00007f0462d8388a:   mov    0x7c(%rsp),%r13d
            0x00007f0462d8388f:   jmp    0x00007f0462d82dff           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
            0x00007f0462d83894:   mov    %r8d,%r10d
   0.01%    0x00007f0462d83897:   mov    %r9d,0x80(%rsp)
   0.64%    0x00007f0462d8389f:   mov    %rdi,%rdx
            0x00007f0462d838a2:   mov    0x70(%rsp),%r14
            0x00007f0462d838a7:   mov    0x84(%rsp),%r13d
   0.00%    0x00007f0462d838af:   jmp    0x00007f0462d82db0
            0x00007f0462d838b4:   mov    %r8d,%r10d
            0x00007f0462d838b7:   mov    %eax,0x80(%rsp)
   0.22%    0x00007f0462d838be:   mov    %rbx,%rdx
   0.41%    0x00007f0462d838c1:   mov    0x70(%rsp),%r14
            0x00007f0462d838c6:   mov    0x84(%rsp),%r13d
            0x00007f0462d838ce:   jmp    0x00007f0462d82db0
   0.01%    0x00007f0462d838d3:   mov    %r8d,%r10d
            0x00007f0462d838d6:   mov    %eax,0x80(%rsp)
   0.00%    0x00007f0462d838dd:   mov    %rbx,%rdx
   0.58%    0x00007f0462d838e0:   mov    0x70(%rsp),%r14
   0.00%    0x00007f0462d838e5:   mov    0x84(%rsp),%r13d             ;   {no_reloc}
            0x00007f0462d838ed:   jmp    0x00007f0462d82db0
   0.59%    0x00007f0462d838f2:   mov    %r8d,%r10d
   0.00%    0x00007f0462d838f5:   mov    %eax,0x80(%rsp)
            0x00007f0462d838fc:   mov    %rbx,%rdx
            0x00007f0462d838ff:   mov    0x70(%rsp),%r14
   0.62%    0x00007f0462d83904:   mov    0x84(%rsp),%r13d
            0x00007f0462d8390c:   jmp    0x00007f0462d82db0
   0.34%    0x00007f0462d83911:   mov    %r8d,%r10d
   0.01%    0x00007f0462d83914:   mov    %eax,0x80(%rsp)
   0.22%    0x00007f0462d8391b:   mov    %rbx,%rdx
   0.02%    0x00007f0462d8391e:   mov    0x70(%rsp),%r14
   0.32%    0x00007f0462d83923:   mov    0x84(%rsp),%r13d
   0.00%    0x00007f0462d8392b:   jmp    0x00007f0462d82db0
   0.43%    0x00007f0462d83930:   mov    %r8d,%r10d
            0x00007f0462d83933:   mov    %eax,0x80(%rsp)
   0.11%    0x00007f0462d8393a:   mov    %rbx,%rdx
            0x00007f0462d8393d:   mov    0x70(%rsp),%r14
   0.52%    0x00007f0462d83942:   mov    0x84(%rsp),%r13d
            0x00007f0462d8394a:   jmp    0x00007f0462d82db0
   0.63%    0x00007f0462d8394f:   mov    %r8d,%r10d
            0x00007f0462d83952:   mov    %eax,0x80(%rsp)
   0.00%    0x00007f0462d83959:   mov    %rbx,%rdx
            0x00007f0462d8395c:   mov    0x70(%rsp),%r14
   0.56%    0x00007f0462d83961:   mov    0x84(%rsp),%r13d
            0x00007f0462d83969:   jmp    0x00007f0462d82db0
   0.53%    0x00007f0462d8396e:   mov    %r8d,%r10d
            0x00007f0462d83971:   mov    %eax,0x80(%rsp)
            0x00007f0462d83978:   mov    %rbx,%rdx
   0.11%    0x00007f0462d8397b:   mov    0x70(%rsp),%r14
   0.54%    0x00007f0462d83980:   mov    0x84(%rsp),%r13d
            0x00007f0462d83988:   jmp    0x00007f0462d82db0
   0.65%    0x00007f0462d8398d:   mov    %r8d,%r10d
            0x00007f0462d83990:   mov    %eax,0x80(%rsp)
            0x00007f0462d83997:   mov    %rbx,%rdx
   0.01%    0x00007f0462d8399a:   mov    0x70(%rsp),%r14
   0.61%    0x00007f0462d8399f:   mov    0x84(%rsp),%r13d
            0x00007f0462d839a7:   jmp    0x00007f0462d82db0
   0.00%    0x00007f0462d839ac:   mov    %r8d,%r10d
            0x00007f0462d839af:   mov    %eax,0x80(%rsp)
            0x00007f0462d839b6:   mov    %rbx,%rdx
   0.60%    0x00007f0462d839b9:   mov    0x70(%rsp),%r14
            0x00007f0462d839be:   mov    0x84(%rsp),%r13d
            0x00007f0462d839c6:   jmp    0x00007f0462d82db0
            0x00007f0462d839cb:   mov    %r8d,%r10d
            0x00007f0462d839ce:   mov    %eax,0x80(%rsp)
   0.00%    0x00007f0462d839d5:   mov    %rbx,%rdx
   0.59%    0x00007f0462d839d8:   mov    0x70(%rsp),%r14
            0x00007f0462d839dd:   mov    0x84(%rsp),%r13d
            0x00007f0462d839e5:   jmp    0x00007f0462d82db0           ;   {no_reloc}
   0.54%    0x00007f0462d839ea:   mov    %r8d,%r10d
            0x00007f0462d839ed:   mov    %eax,0x80(%rsp)
            0x00007f0462d839f4:   mov    %rbx,%rdx
   0.04%    0x00007f0462d839f7:   mov    0x70(%rsp),%r14
   0.57%    0x00007f0462d839fc:   mov    0x84(%rsp),%r13d
            0x00007f0462d83a04:   jmp    0x00007f0462d82db0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
            0x00007f0462d83a09:   mov    %r10,0x8(%rsp)
            0x00007f0462d83a0e:   mov    %edi,%ecx
            0x00007f0462d83a10:   mov    0x7c(%rsp),%r13d
            0x00007f0462d83a15:   mov    0x80(%rsp),%r9d
            0x00007f0462d83a1d:   mov    %rdx,%rbx
            0x00007f0462d83a20:   mov    0x30(%rsp),%r10
            0x00007f0462d83a25:   movsbl 0x10(,%rcx,8),%eax
            0x00007f0462d83a2d:   movsbl %al,%r11d                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  11.02%  <total for region 2>

....[Hottest Regions]...............................................................................
  65.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
  11.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   3.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   1.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   1.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   1.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   1.30%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   1.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   1.24%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   1.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   1.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   1.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   1.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   0.96%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   0.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   0.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   0.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   0.58%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   0.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   0.18%               kernel  [unknown] 
   1.57%  <...other 296 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 949 
   1.29%               kernel  [unknown] 
   0.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 975 
   0.04%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  syscall 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.00%         libc-2.31.so  __strlen_avx2 
   0.00%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%            libjvm.so  ObjectSynchronizer::is_async_deflation_needed 
   0.00%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.14%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.40%       jvmci, level 4
   1.29%               kernel
   0.12%            libjvm.so
   0.09%         libc-2.31.so
   0.04%                     
   0.02%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.01%   libpthread-2.31.so
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 24)

# Run progress: 91.67% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.979 ns/op
# Warmup Iteration   2: 5.704 ns/op
# Warmup Iteration   3: 5.708 ns/op
# Warmup Iteration   4: 5.714 ns/op
# Warmup Iteration   5: 5.711 ns/op
Iteration   1: 5.708 ns/op
Iteration   2: 5.703 ns/op
Iteration   3: 5.717 ns/op
Iteration   4: 5.718 ns/op
Iteration   5: 5.711 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  5.711 ±(99.9%) 0.025 ns/op [Average]
  (min, avg, max) = (5.703, 5.711, 5.718), stdev = 0.006
  CI (99.9%): [5.687, 5.736] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 231926 total address lines.
Perf output processed (skipped 60.739 seconds):
 Column 1: cycles (50965 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 

            0x00007f925ed854c3:   mov    %r14,0xd0(%rsp)
            0x00007f925ed854cb:   movabs $0x7fec350f0,%rdi            ;   {oop([B{0x00000007fec350f0})}
   0.01%    0x00007f925ed854d5:   mov    %rdi,0xc8(%rsp)
            0x00007f925ed854dd:   movabs $0x7fec35028,%r10            ;   {oop([B{0x00000007fec35028})}
            0x00007f925ed854e7:   mov    %r10,0xc0(%rsp)
            0x00007f925ed854ef:   movabs $0x7fec35280,%r11            ;   {oop([B{0x00000007fec35280})}
   0.01%    0x00007f925ed854f9:   mov    %r11,0xb8(%rsp)
            0x00007f925ed85501:   movabs $0x7fec34fc0,%r8             ;   {oop([B{0x00000007fec34fc0})}
            0x00007f925ed8550b:   mov    %r8,0xb0(%rsp)
            0x00007f925ed85513:   movabs $0x7fec351b8,%r9             ;   {oop([B{0x00000007fec351b8})}
   0.00%    0x00007f925ed8551d:   mov    %r9,0xa8(%rsp)
            0x00007f925ed85525:   movabs $0x7fec353c0,%rbx            ;   {oop([B{0x00000007fec353c0})}
            0x00007f925ed8552f:   mov    %rbx,0xa0(%rsp)
   0.01%    0x00007f925ed85537:   movabs $0x7fec35390,%rax            ;   {oop([B{0x00000007fec35390})}
            0x00007f925ed85541:   mov    %rax,0x98(%rsp)
   0.01%    0x00007f925ed85549:   movabs $0x7fec35128,%rcx            ;   {oop([B{0x00000007fec35128})}
            0x00007f925ed85553:   mov    %rcx,0x90(%rsp)
   0.00%    0x00007f925ed8555b:   movabs $0x7fec351e8,%rdx            ;   {oop([B{0x00000007fec351e8})}
            0x00007f925ed85565:   mov    %rdx,0x88(%rsp)
   0.02%    0x00007f925ed8556d:   movabs $0x7fec34f90,%rsi            ;   {oop([B{0x00000007fec34f90})}
            0x00007f925ed85577:   mov    %rsi,0x80(%rsp)
   0.01%    0x00007f925ed8557f:   mov    %rbp,0x78(%rsp)
   0.01%    0x00007f925ed85584:   movabs $0x7fec352b8,%rbp            ;   {oop([B{0x00000007fec352b8})}
            0x00007f925ed8558e:   mov    %rbp,0x70(%rsp)
   0.00%    0x00007f925ed85593:   movabs $0x7fec350c0,%rbp            ;   {oop([B{0x00000007fec350c0})}
            0x00007f925ed8559d:   mov    %rbp,0x68(%rsp)
   0.01%    0x00007f925ed855a2:   movabs $0x7fec35090,%rbp            ;   {oop([B{0x00000007fec35090})}
            0x00007f925ed855ac:   mov    %rbp,0x60(%rsp)
   0.01%    0x00007f925ed855b1:   movabs $0x7fec35060,%rbp            ;   {oop([B{0x00000007fec35060})}
            0x00007f925ed855bb:   mov    %rbp,0x58(%rsp)
   0.01%    0x00007f925ed855c0:   movabs $0x7fec35158,%rbp            ;   {oop([B{0x00000007fec35158})}
            0x00007f925ed855ca:   mov    %rbp,0x50(%rsp)
   0.01%    0x00007f925ed855cf:   movabs $0x7fec352e8,%rbp            ;   {oop([B{0x00000007fec352e8})}
            0x00007f925ed855d9:   mov    %rbp,0x48(%rsp)
   0.00%    0x00007f925ed855de:   movabs $0x7fec35188,%rbp            ;   {oop([B{0x00000007fec35188})}
            0x00007f925ed855e8:   mov    %rbp,0x40(%rsp)
   0.01%    0x00007f925ed855ed:   movabs $0x7fec35248,%rbp            ;   {oop([B{0x00000007fec35248})}
            0x00007f925ed855f7:   mov    %rbp,0x38(%rsp)
   0.00%    0x00007f925ed855fc:   movabs $0x7fec35218,%rbp            ;   {oop([B{0x00000007fec35218})}
            0x00007f925ed85606:   mov    %rbp,0x30(%rsp)
   0.00%    0x00007f925ed8560b:   movabs $0x7fec35320,%rbp            ;   {oop([B{0x00000007fec35320})}
            0x00007f925ed85615:   mov    %rbp,0x28(%rsp)
   0.01%    0x00007f925ed8561a:   movabs $0x7fec35358,%rbp            ;   {oop([B{0x00000007fec35358})}
            0x00007f925ed85624:   mov    %rbp,0x20(%rsp)
   0.00%    0x00007f925ed85629:   movabs $0x7fec353f8,%rbp            ;   {oop([B{0x00000007fec353f8})}
            0x00007f925ed85633:   mov    %rbp,0x18(%rsp)
   0.01%    0x00007f925ed85638:   movabs $0x7fec34ff0,%rbp            ;   {oop([B{0x00000007fec34ff0})}
            0x00007f925ed85642:   mov    %rbp,0x10(%rsp)
   0.01%    0x00007f925ed85647:   movabs $0x7fec35430,%rbp            ;   {oop([B{0x00000007fec35430})}
            0x00007f925ed85651:   mov    %rbp,0x8(%rsp)
   0.01%    0x00007f925ed85656:   movl   $0x0,0xe0(%rsp)
            0x00007f925ed85661:   mov    $0x0,%r10d
            0x00007f925ed85667:   mov    0x20(%rsp),%rbx
            0x00007f925ed8566c:   nopl   0x0(%rax)                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
   1.88%    0x00007f925ed85670:   cmp    %r10d,%r13d
            0x00007f925ed85673:   jbe    0x00007f925ed86e2e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   3.42%    0x00007f925ed85679:   mov    0x10(%r14,%r10,4),%ebp       ; ImmutableOopMap {rbx=Oop rbp=NarrowOop r14=Oop [8]=Oop [16]=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [120]=Oop [128]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop [200]=Oop [208]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
   2.09%    0x00007f925ed8567e:   mov    0xc(,%rbp,8),%r13d           ; implicit exception: dispatches to 0x00007f925ed86f60
  19.70%    0x00007f925ed85686:   movsbl 0x10(,%rbp,8),%r14d          ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::isLatin1@7 (line 4817)
                                                                      ; - java.lang.String::hashCode@17 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.60%    0x00007f925ed8568f:   mov    0x14(,%rbp,8),%edi           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@24 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   3.61%    0x00007f925ed85696:   mov    %r10d,0xdc(%rsp)
            0x00007f925ed8569e:   mov    %edi,%r10d
   2.34%    0x00007f925ed856a1:   shl    $0x3,%r10                    ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@321 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   4.03%    0x00007f925ed856a5:   test   %r13d,%r13d
            0x00007f925ed856a8:   je     0x00007f925ed85995           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@6 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.01%    0x00007f925ed856ae:   mov    %r10,0x20(%rsp)
  10.81%    0x00007f925ed856b3:   mov    %edi,0x4(%rsp)
   0.01%    0x00007f925ed856b7:   mov    %rbx,%rdi
   0.01%    0x00007f925ed856ba:   mov    %r13d,%r10d
   0.00%    0x00007f925ed856bd:   mov    0xdc(%rsp),%r13d
   6.45%    0x00007f925ed856c5:   mov    %ebp,%r11d
   0.00%    0x00007f925ed856c8:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
   0.01%    0x00007f925ed856cc:   mov    %r13d,%r8d
   0.00%    0x00007f925ed856cf:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
   6.65%    0x00007f925ed856d2:   cmp    $0x1f3140,%r10d
            0x00007f925ed856d9:   jge    0x00007f925ed857fe
   0.00%    0x00007f925ed856df:   cmp    $0xeb2c8617,%r10d
            0x00007f925ed856e6:   jge    0x00007f925ed8577e
            0x00007f925ed856ec:   cmp    $0xba6eabe2,%r10d
            0x00007f925ed856f3:   jge    0x00007f925ed85745
            0x00007f925ed856f9:   cmp    $0xa2a1be40,%r10d
   1.05%    0x00007f925ed85700:   jge    0x00007f925ed85725
   0.30%    0x00007f925ed85706:   cmp    $0x90663ad4,%r10d
            0x00007f925ed8570d:   je     0x00007f925ed865ac
            0x00007f925ed85713:   cmp    $0x9ef434af,%r10d
            0x00007f925ed8571a:   je     0x00007f925ed85a1d
            0x00007f925ed85720:   jmp    0x00007f925ed86e8f
....................................................................................................
  61.76%  <total for region 1>

....[Hottest Regions]...............................................................................
  61.76%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   3.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   2.72%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   2.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   1.65%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   1.49%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   1.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   1.25%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   1.17%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   1.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   1.07%              kernel  [unknown] 
   1.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   0.94%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   0.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   0.89%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   0.86%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   0.86%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   0.85%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   0.83%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   0.82%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
  13.37%  <...other 372 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 962 
   2.34%              kernel  [unknown] 
   0.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 988 
   0.05%                      <unknown> 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%  libpthread-2.31.so  __pthread_getspecific 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.15%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.33%      jvmci, level 4
   2.34%              kernel
   0.14%           libjvm.so
   0.07%        libc-2.31.so
   0.05%                    
   0.04%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%              [vdso]
   0.00%         interpreter
   0.00%    perf-2152614.map
   0.00%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:22:44

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

Benchmark                                     (branches)  Mode  Cnt   Score    Error  Units
StringSwitchBenchmark.chained_ifs                      3  avgt    5   3.110 ±  0.007  ns/op
StringSwitchBenchmark.chained_ifs:asm                  3  avgt          NaN             ---
StringSwitchBenchmark.chained_ifs                      6  avgt    5   4.923 ±  0.011  ns/op
StringSwitchBenchmark.chained_ifs:asm                  6  avgt          NaN             ---
StringSwitchBenchmark.chained_ifs                     12  avgt    5  10.723 ±  0.012  ns/op
StringSwitchBenchmark.chained_ifs:asm                 12  avgt          NaN             ---
StringSwitchBenchmark.chained_ifs                     24  avgt    5  20.276 ±  0.051  ns/op
StringSwitchBenchmark.chained_ifs:asm                 24  avgt          NaN             ---
StringSwitchBenchmark.switch_expressions               3  avgt    5   3.628 ±  0.001  ns/op
StringSwitchBenchmark.switch_expressions:asm           3  avgt          NaN             ---
StringSwitchBenchmark.switch_expressions               6  avgt    5   4.466 ±  0.001  ns/op
StringSwitchBenchmark.switch_expressions:asm           6  avgt          NaN             ---
StringSwitchBenchmark.switch_expressions              12  avgt    5   5.099 ±  0.004  ns/op
StringSwitchBenchmark.switch_expressions:asm          12  avgt          NaN             ---
StringSwitchBenchmark.switch_expressions              24  avgt    5   6.034 ±  0.008  ns/op
StringSwitchBenchmark.switch_expressions:asm          24  avgt          NaN             ---
StringSwitchBenchmark.switch_statements                3  avgt    5   3.628 ±  0.001  ns/op
StringSwitchBenchmark.switch_statements:asm            3  avgt          NaN             ---
StringSwitchBenchmark.switch_statements                6  avgt    5   3.615 ±  0.009  ns/op
StringSwitchBenchmark.switch_statements:asm            6  avgt          NaN             ---
StringSwitchBenchmark.switch_statements               12  avgt    5   5.194 ±  0.039  ns/op
StringSwitchBenchmark.switch_statements:asm           12  avgt          NaN             ---
StringSwitchBenchmark.switch_statements               24  avgt    5   5.711 ±  0.025  ns/op
StringSwitchBenchmark.switch_statements:asm           24  avgt          NaN             ---
