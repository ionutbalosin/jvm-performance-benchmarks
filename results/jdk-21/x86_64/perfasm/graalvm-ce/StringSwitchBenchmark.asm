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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 3)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.171 ns/op
# Warmup Iteration   2: 3.057 ns/op
# Warmup Iteration   3: 3.110 ns/op
# Warmup Iteration   4: 3.109 ns/op
# Warmup Iteration   5: 3.097 ns/op
Iteration   1: 3.108 ns/op
Iteration   2: 3.099 ns/op
Iteration   3: 3.118 ns/op
Iteration   4: 3.103 ns/op
Iteration   5: 3.107 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  3.107 ±(99.9%) 0.028 ns/op [Average]
  (min, avg, max) = (3.099, 3.107, 3.118), stdev = 0.007
  CI (99.9%): [3.079, 3.135] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 217554 total address lines.
Perf output processed (skipped 60.276 seconds):
 Column 1: cycles (50923 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 971 

                  0x00007f12fb23eed4:   cmovne %esi,%r11d                   ;* unwind (locked if synchronized)
                                                                            ; - java.lang.String::equals@-3
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
                  0x00007f12fb23eed8:   nopl   0x0(%rax,%rax,1)
                  0x00007f12fb23eee0:   test   %r11d,%r11d
                  0x00007f12fb23eee3:   je     0x00007f12fb23f033           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
                  0x00007f12fb23eee9:   mov    $0x3,%eax
  11.98%   ↗↗↗↗↗  0x00007f12fb23eeee:   add    %eax,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
           │││││  0x00007f12fb23eef1:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@34 (line 126)
           │││││  0x00007f12fb23eef4:   mov    0x14(%rsp),%r11d             ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
   0.01%   │││││  0x00007f12fb23eef9:   nopl   0x0(%rax)
  12.32%   │││││  0x00007f12fb23ef00:   cmp    %r10d,%r11d
           │││││  0x00007f12fb23ef03:   jg     0x00007f12fb23ed40
   0.05%  ╭│││││  0x00007f12fb23ef09:   jmp    0x00007f12fb23ef4c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
          ││││││  0x00007f12fb23ef0e:   mov    $0x2,%eax
          │╰││││  0x00007f12fb23ef13:   jmp    0x00007f12fb23eeee           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │ ││││  0x00007f12fb23ef15:   mov    $0x1,%eax
          │ ╰│││  0x00007f12fb23ef1a:   jmp    0x00007f12fb23eeee
   4.14%  │  │││  0x00007f12fb23ef1c:   mov    $0x1,%eax
          │  ╰││  0x00007f12fb23ef21:   jmp    0x00007f12fb23eeee           ;* unwind (locked if synchronized)
          │   ││                                                            ; - java.lang.String::equals@-3
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   4.05%  │   ││  0x00007f12fb23ef23:   mov    $0x2,%eax
          │   ╰│  0x00007f12fb23ef28:   jmp    0x00007f12fb23eeee
          │    │  0x00007f12fb23ef2a:   mov    %r11,(%rsp)
          │    │  0x00007f12fb23ef2e:   jmp    0x00007f12fb23ee5a
          │    │  0x00007f12fb23ef33:   mov    %r11,(%rsp)
          │    │  0x00007f12fb23ef37:   jmp    0x00007f12fb23ee5a
   0.02%  │    │  0x00007f12fb23ef3c:   mov    %r11,(%rsp)
   4.07%  │    │  0x00007f12fb23ef40:   jmp    0x00007f12fb23ee5a           ;* unwind (locked if synchronized)
          │    │                                                            ; - java.lang.String::equals@-3
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   4.10%  │    │  0x00007f12fb23ef45:   mov    $0x3,%eax
          │    ╰  0x00007f12fb23ef4a:   jmp    0x00007f12fb23eeee           ;* unwind (locked if synchronized)
          │                                                                 ; - java.lang.String::equals@-3
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.05%  ↘       0x00007f12fb23ef4c:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@41 (line 129)
   0.01%          0x00007f12fb23ef4f:   mov    0x20(%rsp),%rbp
   0.13%          0x00007f12fb23ef54:   add    $0x28,%rsp
                  0x00007f12fb23ef58:   nopl   0x0(%rax,%rax,1)             ;   {no_reloc}
                  0x00007f12fb23ef60:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                  0x00007f12fb23ef67:   ja     0x00007f12fb23f0d4
   0.02%          0x00007f12fb23ef6d:   vzeroupper 
   0.02%          0x00007f12fb23ef70:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
                  0x00007f12fb23ef71:   mov    $0x2,%r10d
                  0x00007f12fb23ef77:   jmp    0x00007f12fb23ecef           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
                  0x00007f12fb23ef7c:   mov    %r10,0x8(%rsp)
                  0x00007f12fb23ef81:   mov    $0x1,%r10d
                  0x00007f12fb23ef87:   jmp    0x00007f12fb23ecef
                  0x00007f12fb23ef8c:   mov    %r10,0x8(%rsp)
....................................................................................................
  40.97%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 971 

   0.01%    0x00007f12fb23ed13:   mov    %r10d,%r8d
            0x00007f12fb23ed16:   mov    $0x1,%r10d
            0x00007f12fb23ed1c:   nopl   0x0(%rax)
            0x00007f12fb23ed20:   jmp    0x00007f12fb23eef9           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
            0x00007f12fb23ed25:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007f12fb23ed30:   data16 data16 xchg %ax,%ax
            0x00007f12fb23ed34:   nopl   0x0(%rax,%rax,1)
            0x00007f12fb23ed3c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.01%    0x00007f12fb23ed40:   mov    0x10(%r9,%r10,4),%r14d
   0.05%    0x00007f12fb23ed45:   cmp    $0xffd869ef,%r14d            ;   {oop(&quot;MOPED&quot;{0x00000007fec34f78})}
            0x00007f12fb23ed4c:   je     0x00007f12fb23ef1c
   0.01%    0x00007f12fb23ed52:   test   %r14d,%r14d
            0x00007f12fb23ed55:   je     0x00007f12fb23edd1
   8.09%    0x00007f12fb23ed5b:   nopl   0x0(%rax,%rax,1)
   0.01%    0x00007f12fb23ed60:   cmpb   $0x0,0x10(,%r14,8)
   3.05%    0x00007f12fb23ed69:   jne    0x00007f12fb23edd1
   8.07%    0x00007f12fb23ed6f:   mov    0x14(,%r14,8),%esi           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007f12fb23ed77:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r9=Oop r13=Oop r14=NarrowOop [8]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
            0x00007f12fb23ed80:   cmpl   $0x5,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f12fb23f176
  21.01%    0x00007f12fb23ed88:   jne    0x00007f12fb23edd1
            0x00007f12fb23ed8e:   shl    $0x3,%rsi
            0x00007f12fb23ed92:   mov    %r13,%rdi
            0x00007f12fb23ed95:   mov    $0x5,%edx
            0x00007f12fb23ed9a:   mov    $0x10,%rax
            0x00007f12fb23eda1:   mov    $0x10,%rcx
            0x00007f12fb23eda8:   add    %rax,%rsi
            0x00007f12fb23edab:   add    %rcx,%rdi
            0x00007f12fb23edae:   mov    $0x1,%r11d
            0x00007f12fb23edb4:   mov    (%rsi),%edx
            0x00007f12fb23edb6:   xor    (%rdi),%edx
....................................................................................................
  40.31%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 971 

            0x00007f12fb23edb8:   mov    0x1(%rsi),%esi
            0x00007f12fb23edbb:   xor    0x1(%rdi),%esi
            0x00007f12fb23edbe:   xor    %rdi,%rdi
            0x00007f12fb23edc1:   or     %rsi,%rdx
            0x00007f12fb23edc4:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007f12fb23edc8:   test   %r11d,%r11d
            0x00007f12fb23edcb:   jne    0x00007f12fb23ef15
   8.03%    0x00007f12fb23edd1:   cmp    $0xffd869f5,%r14d            ;   {oop(&quot;BICYCLE&quot;{0x00000007fec34fa8})}
            0x00007f12fb23edd8:   je     0x00007f12fb23ef23           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007f12fb23edde:   mov    %r14d,%r11d
            0x00007f12fb23ede1:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   0.02%    0x00007f12fb23ede5:   test   %r14d,%r14d
            0x00007f12fb23ede8:   je     0x00007f12fb23ef2a
   3.95%    0x00007f12fb23edee:   cmpb   $0x0,0x10(,%r14,8)
            0x00007f12fb23edf7:   jne    0x00007f12fb23ef33           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.00%    0x00007f12fb23edfd:   mov    0x14(,%r14,8),%esi           ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r9=Oop r11=Oop r13=Oop r14=NarrowOop [8]=Oop }
                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   3.99%    0x00007f12fb23ee05:   cmpl   $0x7,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f12fb23f199
            0x00007f12fb23ee0d:   jne    0x00007f12fb23ef3c
            0x00007f12fb23ee13:   mov    %r11,(%rsp)
            0x00007f12fb23ee17:   shl    $0x3,%rsi
            0x00007f12fb23ee1b:   mov    %rbp,%rdi
            0x00007f12fb23ee1e:   mov    $0x7,%edx
            0x00007f12fb23ee23:   mov    $0x10,%rax
            0x00007f12fb23ee2a:   mov    $0x10,%rcx
....................................................................................................
  16.00%  <total for region 3>

....[Hottest Regions]...............................................................................
  40.97%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 971 
  40.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 971 
  16.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 971 
   0.92%               kernel  [unknown] 
   0.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 999 
   0.16%               kernel  [unknown] 
   0.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 971 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 971 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.86%  <...other 287 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.44%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 971 
   2.00%               kernel  [unknown] 
   0.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 999 
   0.03%                       <unknown> 
   0.02%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  outputStream::print 
   0.01%         libc-2.31.so  _IO_str_init_static_internal 
   0.01%            libjvm.so  defaultStream::hold 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.00%         libc-2.31.so  __strlen_avx2 
   0.17%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.65%       jvmci, level 4
   2.00%               kernel
   0.14%            libjvm.so
   0.09%         libc-2.31.so
   0.03%                     
   0.03%  libjvmcicompiler.so
   0.03%   libpthread-2.31.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.00%           ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 6)

# Run progress: 8.33% complete, ETA 00:20:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.853 ns/op
# Warmup Iteration   2: 5.733 ns/op
# Warmup Iteration   3: 5.728 ns/op
# Warmup Iteration   4: 5.729 ns/op
# Warmup Iteration   5: 5.731 ns/op
Iteration   1: 5.730 ns/op
Iteration   2: 5.739 ns/op
Iteration   3: 5.737 ns/op
Iteration   4: 5.728 ns/op
Iteration   5: 5.729 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  5.732 ±(99.9%) 0.020 ns/op [Average]
  (min, avg, max) = (5.728, 5.732, 5.739), stdev = 0.005
  CI (99.9%): [5.713, 5.752] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 216102 total address lines.
Perf output processed (skipped 60.034 seconds):
 Column 1: cycles (50794 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 943 

            0x00007f867723e353:   mov    %r8d,%ecx
            0x00007f867723e356:   mov    $0x1,%r8d
   0.00%    0x00007f867723e35c:   mov    0x20(%rsp),%rax
            0x00007f867723e361:   mov    0x28(%rsp),%r9
            0x00007f867723e366:   jmp    0x00007f867723e74a           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
            0x00007f867723e36b:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007f867723e376:   data16 data16 xchg %ax,%ax
            0x00007f867723e37a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   5.66%    0x00007f867723e380:   mov    0x10(%r9,%r8,4),%edx
   0.05%    0x00007f867723e385:   cmp    $0xffd869ef,%edx             ;   {oop(&quot;MOPED&quot;{0x00000007fec34f78})}
            0x00007f867723e38b:   je     0x00007f867723e77b
   0.02%    0x00007f867723e391:   test   %edx,%edx
            0x00007f867723e393:   je     0x00007f867723e78a
   0.02%    0x00007f867723e399:   nopl   0x0(%rax)
   5.52%    0x00007f867723e3a0:   cmpb   $0x0,0x10(,%rdx,8)
   1.45%    0x00007f867723e3a8:   jne    0x00007f867723e79a
   1.58%    0x00007f867723e3ae:   mov    0x14(,%rdx,8),%esi           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   3.96%    0x00007f867723e3b5:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rax=Oop rdx=NarrowOop rbx=Oop rbp=Oop rsi=NarrowOop r9=Oop r10=Oop r13=Oop r14=Oop [24]=Oop [32]=Oop [40]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
            0x00007f867723e3c0:   cmpl   $0x5,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f867723eb16
   7.88%    0x00007f867723e3c8:   jne    0x00007f867723e7aa
            0x00007f867723e3ce:   mov    %r8d,0x30(%rsp)
            0x00007f867723e3d3:   shl    $0x3,%rsi
            0x00007f867723e3d7:   mov    %rax,%rdi
            0x00007f867723e3da:   mov    %edx,%r11d
            0x00007f867723e3dd:   mov    $0x5,%edx
            0x00007f867723e3e2:   mov    $0x10,%rax
            0x00007f867723e3e9:   mov    %ecx,%r9d
            0x00007f867723e3ec:   mov    $0x10,%rcx
            0x00007f867723e3f3:   add    %rax,%rsi
            0x00007f867723e3f6:   add    %rcx,%rdi
....................................................................................................
  26.13%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 943 

            0x00007f867723e409:   xor    %rdi,%rdi
            0x00007f867723e40c:   or     %rsi,%rdx
            0x00007f867723e40f:   cmovne %edi,%r8d                    ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007f867723e413:   test   %r8d,%r8d
            0x00007f867723e416:   jne    0x00007f867723e758           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   5.35%    0x00007f867723e41c:   nopl   0x0(%rax)
            0x00007f867723e420:   cmp    $0xffd869f5,%r11d            ;   {oop(&quot;BICYCLE&quot;{0x00000007fec34fa8})}
            0x00007f867723e427:   je     0x00007f867723e7ba           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007f867723e42d:   mov    %r11d,%r8d
            0x00007f867723e430:   shl    $0x3,%r8                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   4.36%    0x00007f867723e434:   test   %r11d,%r11d
            0x00007f867723e437:   je     0x00007f867723e7c5
            0x00007f867723e43d:   data16 xchg %ax,%ax
            0x00007f867723e440:   cmpb   $0x0,0x10(,%r11,8)
   4.15%    0x00007f867723e449:   jne    0x00007f867723e7cf
            0x00007f867723e44f:   mov    0x14(,%r11,8),%esi           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007f867723e457:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=Oop r10=Oop r11=NarrowOop r13=Oop r14=Oop [24]=Oop [32]=Oop [40]=Oop }
                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007f867723e460:   cmpl   $0x7,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f867723eb39
   4.33%    0x00007f867723e468:   jne    0x00007f867723e7d9
            0x00007f867723e46e:   mov    %r8,0x8(%rsp)
            0x00007f867723e473:   shl    $0x3,%rsi
            0x00007f867723e477:   mov    %r10,%rdi
            0x00007f867723e47a:   mov    $0x7,%edx
            0x00007f867723e47f:   mov    $0x10,%rax
            0x00007f867723e486:   mov    $0x10,%rcx
            0x00007f867723e48d:   add    %rax,%rsi
            0x00007f867723e490:   add    %rcx,%rdi
            0x00007f867723e493:   mov    $0x1,%r8d
            0x00007f867723e499:   mov    (%rsi),%edx
....................................................................................................
  18.20%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 943 

              0x00007f867723e716:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
                                                                        ; - java.lang.String::equals@-3
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
              0x00007f867723e71a:   nopw   0x0(%rax,%rax,1)
              0x00007f867723e720:   test   %r11d,%r11d
              0x00007f867723e723:   je     0x00007f867723e968           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@63 (line 256)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
              0x00007f867723e729:   mov    $0x6,%eax
   5.38%  ↗↗  0x00007f867723e72e:   mov    %r9d,%ecx
          ││  0x00007f867723e731:   add    %eax,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
          ││  0x00007f867723e733:   mov    0x30(%rsp),%r8d
   1.00%  ││  0x00007f867723e738:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@34 (line 126)
   5.53%  ││  0x00007f867723e73b:   mov    0x20(%rsp),%rax
          ││  0x00007f867723e740:   mov    0x28(%rsp),%r9
          ││  0x00007f867723e745:   mov    0x34(%rsp),%r11d             ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
   1.05%  ││  0x00007f867723e74a:   cmp    %r8d,%r11d
          ││  0x00007f867723e74d:   jg     0x00007f867723e380
   0.01%  ││  0x00007f867723e753:   jmp    0x00007f867723e80f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
          ││  0x00007f867723e758:   mov    $0x1,%eax
          ╰│  0x00007f867723e75d:   jmp    0x00007f867723e72e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
           │  0x00007f867723e75f:   mov    $0x2,%eax
           ╰  0x00007f867723e764:   jmp    0x00007f867723e72e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
              0x00007f867723e766:   mov    $0x3,%eax
....................................................................................................
  12.97%  <total for region 3>

....[Hottest Regions]...............................................................................
  26.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 943 
  18.20%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 943 
  12.97%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 943 
   9.67%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 943 
   8.82%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 943 
   7.65%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 943 
   6.56%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 943 
   6.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 943 
   1.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 943 
   0.53%              kernel  [unknown] 
   0.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 971 
   0.13%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 943 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   1.08%  <...other 343 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.74%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 943 
   1.70%              kernel  [unknown] 
   0.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 971 
   0.13%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.16%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.87%      jvmci, level 4
   1.70%              kernel
   0.15%           libjvm.so
   0.13%                    
   0.10%        libc-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 12)

# Run progress: 16.67% complete, ETA 00:18:57
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 16.289 ns/op
# Warmup Iteration   2: 16.140 ns/op
# Warmup Iteration   3: 16.071 ns/op
# Warmup Iteration   4: 16.073 ns/op
# Warmup Iteration   5: 16.293 ns/op
Iteration   1: 16.317 ns/op
Iteration   2: 16.158 ns/op
Iteration   3: 16.157 ns/op
Iteration   4: 16.262 ns/op
Iteration   5: 16.228 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  16.224 ±(99.9%) 0.266 ns/op [Average]
  (min, avg, max) = (16.157, 16.224, 16.317), stdev = 0.069
  CI (99.9%): [15.958, 16.491] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 222187 total address lines.
Perf output processed (skipped 60.391 seconds):
 Column 1: cycles (50691 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 945 

                  # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
                  #           [sp+0x20]  (sp of caller)
                  0x00007f605f23dc80:   mov    0x8(%rsi),%r10d
                  0x00007f605f23dc84:   movabs $0x7f5fe3000000,%r12
                  0x00007f605f23dc8e:   add    %r12,%r10
                  0x00007f605f23dc91:   xor    %r12,%r12
                  0x00007f605f23dc94:   cmp    %r10,%rax
                  0x00007f605f23dc97:   jne    0x00007f605ec2f080           ;   {runtime_call ic_miss_stub}
                  0x00007f605f23dc9d:   data16 xchg %ax,%ax
                [Verified Entry Point]
   0.01%          0x00007f605f23dca0:   mov    %eax,-0x14000(%rsp)
   2.57%          0x00007f605f23dca7:   sub    $0x18,%rsp
   0.00%          0x00007f605f23dcab:   nop
   0.02%          0x00007f605f23dcac:   cmpl   $0x1,0x20(%r15)
   0.00%          0x00007f605f23dcb4:   jne    0x00007f605f23e517
   2.26%          0x00007f605f23dcba:   mov    %rbp,0x10(%rsp)
   0.01%          0x00007f605f23dcbf:   mov    %rdx,%r10
   0.00%          0x00007f605f23dcc2:   movabs $0x7fec34f78,%rsi            ;   {oop(&quot;MOPED&quot;{0x00000007fec34f78})}
                  0x00007f605f23dccc:   cmp    %r10,%rsi
                  0x00007f605f23dccf:   je     0x00007f605f23e376
   2.21%          0x00007f605f23dcd5:   test   %r10,%r10
          ╭       0x00007f605f23dcd8:   je     0x00007f605f23dd49
   0.00%  │       0x00007f605f23dcde:   xchg   %ax,%ax
   0.01%  │       0x00007f605f23dce0:   cmpb   $0x0,0x10(%r10)
   4.10%  │╭      0x00007f605f23dce5:   jne    0x00007f605f23dd49           ;* unwind (locked if synchronized)
          ││                                                                ; - java.lang.String::equals@-3
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   2.19%  ││      0x00007f605f23dceb:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
          ││                                                                ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@0 (line 244)
          ││      0x00007f605f23dcef:   cmpl   $0x5,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f605f23e626
   8.39%  ││╭     0x00007f605f23dcf7:   jne    0x00007f605f23dd49
   0.18%  │││     0x00007f605f23dcfd:   shl    $0x3,%rsi
          │││     0x00007f605f23dd01:   movabs $0x7fec34f90,%rdi            ;   {oop([B{0x00000007fec34f90})}
          │││     0x00007f605f23dd0b:   mov    $0x5,%edx
          │││     0x00007f605f23dd10:   mov    $0x10,%rax
   0.22%  │││     0x00007f605f23dd17:   mov    $0x10,%rcx
          │││     0x00007f605f23dd1e:   add    %rax,%rsi
          │││     0x00007f605f23dd21:   add    %rcx,%rdi
          │││     0x00007f605f23dd24:   mov    $0x1,%r11d
   0.19%  │││     0x00007f605f23dd2a:   mov    (%rsi),%edx
          │││     0x00007f605f23dd2c:   xor    (%rdi),%edx
          │││     0x00007f605f23dd2e:   mov    0x1(%rsi),%esi
          │││     0x00007f605f23dd31:   xor    0x1(%rdi),%esi
   0.19%  │││     0x00007f605f23dd34:   xor    %rdi,%rdi
          │││     0x00007f605f23dd37:   or     %rsi,%rdx
   0.01%  │││     0x00007f605f23dd3a:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          │││                                                               ; - java.lang.String::equals@-3
          │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   0.21%  │││     0x00007f605f23dd3e:   xchg   %ax,%ax
          │││     0x00007f605f23dd40:   test   %r11d,%r11d
          │││     0x00007f605f23dd43:   jne    0x00007f605f23e376
   2.29%  ↘↘↘     0x00007f605f23dd49:   movabs $0x7fec34fa8,%rsi            ;   {oop(&quot;BICYCLE&quot;{0x00000007fec34fa8})}
                  0x00007f605f23dd53:   cmp    %r10,%rsi
                  0x00007f605f23dd56:   je     0x00007f605f23e395
                  0x00007f605f23dd5c:   nopl   0x0(%rax)
                  0x00007f605f23dd60:   test   %r10,%r10
             ╭    0x00007f605f23dd63:   je     0x00007f605f23ddd8
   1.82%     │    0x00007f605f23dd69:   cmpb   $0x0,0x10(%r10)
             │╭   0x00007f605f23dd6e:   jne    0x00007f605f23ddd8
             ││   0x00007f605f23dd74:   mov    0x14(%r10),%esi              ;* unwind (locked if synchronized)
             ││                                                             ; - java.lang.String::equals@-3
             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
             ││   0x00007f605f23dd78:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
             ││                                                             ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
             ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
   1.88%     ││   0x00007f605f23dd80:   cmpl   $0x7,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f605f23e64d
             ││╭  0x00007f605f23dd88:   jne    0x00007f605f23ddd8
             │││  0x00007f605f23dd8e:   shl    $0x3,%rsi
   0.21%     │││  0x00007f605f23dd92:   movabs $0x7fec34fc0,%rdi            ;   {oop([B{0x00000007fec34fc0})}
             │││  0x00007f605f23dd9c:   mov    $0x7,%edx
             │││  0x00007f605f23dda1:   mov    $0x10,%rax
             │││  0x00007f605f23dda8:   mov    $0x10,%rcx
   0.20%     │││  0x00007f605f23ddaf:   add    %rax,%rsi
             │││  0x00007f605f23ddb2:   add    %rcx,%rdi
             │││  0x00007f605f23ddb5:   mov    $0x1,%r11d
             │││  0x00007f605f23ddbb:   mov    (%rsi),%edx
   0.21%     │││  0x00007f605f23ddbd:   xor    (%rdi),%edx
             │││  0x00007f605f23ddbf:   mov    0x3(%rsi),%esi
             │││  0x00007f605f23ddc2:   xor    0x3(%rdi),%esi
             │││  0x00007f605f23ddc5:   xor    %rdi,%rdi
   0.19%     │││  0x00007f605f23ddc8:   or     %rsi,%rdx
             │││  0x00007f605f23ddcb:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
             │││                                                            ; - java.lang.String::equals@-3
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
   0.09%     │││  0x00007f605f23ddcf:   test   %r11d,%r11d
             │││  0x00007f605f23ddd2:   jne    0x00007f605f23e395
   0.11%     ↘↘↘  0x00007f605f23ddd8:   movabs $0x7fec34fd8,%rsi            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fec34fd8})}
   1.74%          0x00007f605f23dde2:   cmp    %r10,%rsi
                  0x00007f605f23dde5:   je     0x00007f605f23e3b4
                  0x00007f605f23ddeb:   test   %r10,%r10
                  0x00007f605f23ddee:   je     0x00007f605f23de5f
                  0x00007f605f23ddf4:   cmpb   $0x0,0x10(%r10)
   0.17%          0x00007f605f23ddf9:   jne    0x00007f605f23de5f           ;* unwind (locked if synchronized)
                                                                            ; - java.lang.String::equals@-3
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
   1.61%          0x00007f605f23ddff:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
                                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
                  0x00007f605f23de03:   cmpl   $0x10,0xc(,%rsi,8)           ; implicit exception: dispatches to 0x00007f605f23e670
   1.11%          0x00007f605f23de0b:   jne    0x00007f605f23de5f
                  0x00007f605f23de11:   shl    $0x3,%rsi
                  0x00007f605f23de15:   movabs $0x7fec34ff0,%rdi            ;   {oop([B{0x00000007fec34ff0})}
                  0x00007f605f23de1f:   mov    $0x10,%edx
                  0x00007f605f23de24:   mov    $0x10,%rax
                  0x00007f605f23de2b:   mov    $0x10,%rcx
                  0x00007f605f23de32:   add    %rax,%rsi
                  0x00007f605f23de35:   add    %rcx,%rdi
                  0x00007f605f23de38:   mov    $0x1,%r11d
                  0x00007f605f23de3e:   vmovdqu (%rsi),%xmm0
                  0x00007f605f23de42:   vmovdqu (%rdi),%xmm1
....................................................................................................
  34.40%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 945 

                        0x00007f605f23de3e:   vmovdqu (%rsi),%xmm0
                        0x00007f605f23de42:   vmovdqu (%rdi),%xmm1
                        0x00007f605f23de46:   vpxor  %xmm1,%xmm0,%xmm0
                        0x00007f605f23de4a:   xor    %rsi,%rsi
                        0x00007f605f23de4d:   vptest %xmm0,%xmm0
                        0x00007f605f23de52:   cmovne %esi,%r11d                   ;* unwind (locked if synchronized)
                                                                                  ; - java.lang.String::equals@-3
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
                        0x00007f605f23de56:   test   %r11d,%r11d
                        0x00007f605f23de59:   jne    0x00007f605f23e3b4
   1.68%                0x00007f605f23de5f:   movabs $0x7fec35010,%rsi            ;   {oop(&quot;MOTORCYCLE&quot;{0x00000007fec35010})}
                        0x00007f605f23de69:   cmp    %r10,%rsi
                        0x00007f605f23de6c:   je     0x00007f605f23e3d3
                        0x00007f605f23de72:   test   %r10,%r10
          ╭             0x00007f605f23de75:   je     0x00007f605f23deeb
   0.06%  │             0x00007f605f23de7b:   nopl   0x0(%rax,%rax,1)
   1.44%  │             0x00007f605f23de80:   cmpb   $0x0,0x10(%r10)
          │╭            0x00007f605f23de85:   jne    0x00007f605f23deeb           ;* unwind (locked if synchronized)
          ││                                                                      ; - java.lang.String::equals@-3
          ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
          ││            0x00007f605f23de8b:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
          ││                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
   0.06%  ││            0x00007f605f23de8f:   cmpl   $0xa,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f605f23e693
   1.96%  ││╭           0x00007f605f23de97:   jne    0x00007f605f23deeb
   0.13%  │││           0x00007f605f23de9d:   shl    $0x3,%rsi
          │││           0x00007f605f23dea1:   movabs $0x7fec35028,%rdi            ;   {oop([B{0x00000007fec35028})}
   0.06%  │││           0x00007f605f23deab:   mov    $0xa,%edx
          │││           0x00007f605f23deb0:   mov    $0x10,%rax
   0.13%  │││           0x00007f605f23deb7:   mov    $0x10,%rcx
          │││           0x00007f605f23debe:   add    %rax,%rsi
   0.05%  │││           0x00007f605f23dec1:   add    %rcx,%rdi
          │││           0x00007f605f23dec4:   mov    $0x1,%r11d
   0.11%  │││           0x00007f605f23deca:   mov    (%rsi),%rdx
          │││           0x00007f605f23decd:   xor    (%rdi),%rdx
   0.06%  │││           0x00007f605f23ded0:   mov    0x2(%rsi),%rsi
          │││           0x00007f605f23ded4:   xor    0x2(%rdi),%rsi
   0.62%  │││           0x00007f605f23ded8:   xor    %rdi,%rdi
          │││           0x00007f605f23dedb:   or     %rsi,%rdx
   0.23%  │││           0x00007f605f23dede:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          │││                                                                     ; - java.lang.String::equals@-3
          │││                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
   0.18%  │││           0x00007f605f23dee2:   test   %r11d,%r11d
          │││           0x00007f605f23dee5:   jne    0x00007f605f23e3d3
   0.63%  ↘↘↘           0x00007f605f23deeb:   movabs $0x7fec35048,%rsi            ;   {oop(&quot;CAR&quot;{0x00000007fec35048})}
   0.03%                0x00007f605f23def5:   cmp    %r10,%rsi
                        0x00007f605f23def8:   je     0x00007f605f23e3f2
   0.63%                0x00007f605f23defe:   xchg   %ax,%ax
                        0x00007f605f23df00:   test   %r10,%r10
             ╭          0x00007f605f23df03:   je     0x00007f605f23df7e
   0.59%     │          0x00007f605f23df09:   cmpb   $0x0,0x10(%r10)
   0.03%     │╭         0x00007f605f23df0e:   jne    0x00007f605f23df7e
   0.70%     ││         0x00007f605f23df14:   mov    0x14(%r10),%esi              ;* unwind (locked if synchronized)
             ││                                                                   ; - java.lang.String::equals@-3
             ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
             ││         0x00007f605f23df18:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
             ││                                                                   ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
             ││                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@41 (line 252)
   0.58%     ││         0x00007f605f23df20:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f605f23e6b6
   1.97%     ││╭        0x00007f605f23df28:   jne    0x00007f605f23df7e
   0.35%     │││        0x00007f605f23df2e:   shl    $0x3,%rsi
   0.02%     │││        0x00007f605f23df32:   movabs $0x7fec35060,%rdi            ;   {oop([B{0x00000007fec35060})}
             │││        0x00007f605f23df3c:   mov    $0x3,%edx
   0.25%     │││        0x00007f605f23df41:   mov    $0x10,%rax
   0.33%     │││        0x00007f605f23df48:   mov    $0x10,%rcx
   0.02%     │││        0x00007f605f23df4f:   add    %rax,%rsi
             │││        0x00007f605f23df52:   add    %rcx,%rdi
   0.19%     │││        0x00007f605f23df55:   mov    $0x1,%r11d
   0.34%     │││        0x00007f605f23df5b:   movzwq (%rsi),%rdx
   0.01%     │││        0x00007f605f23df5f:   xor    (%rdi),%dx
   0.07%     │││        0x00007f605f23df62:   movzwq 0x1(%rsi),%rsi
   0.24%     │││        0x00007f605f23df67:   xor    0x1(%rdi),%si
   0.24%     │││        0x00007f605f23df6b:   xor    %rdi,%rdi
   0.01%     │││        0x00007f605f23df6e:   or     %rsi,%rdx
   0.18%     │││        0x00007f605f23df71:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
             │││                                                                  ; - java.lang.String::equals@-3
             │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
   0.58%     │││        0x00007f605f23df75:   test   %r11d,%r11d
             │││        0x00007f605f23df78:   jne    0x00007f605f23e3f2
   0.74%     ↘↘↘        0x00007f605f23df7e:   movabs $0x7fec35078,%rsi            ;   {oop(&quot;SUV&quot;{0x00000007fec35078})}
   0.24%                0x00007f605f23df88:   cmp    %r10,%rsi
                        0x00007f605f23df8b:   je     0x00007f605f23e411
   0.01%                0x00007f605f23df91:   test   %r10,%r10
                ╭       0x00007f605f23df94:   je     0x00007f605f23e00d
   0.25%        │       0x00007f605f23df9a:   nopw   0x0(%rax,%rax,1)
   0.67%        │       0x00007f605f23dfa0:   cmpb   $0x0,0x10(%r10)
   0.29%        │╭      0x00007f605f23dfa5:   jne    0x00007f605f23e00d           ;* unwind (locked if synchronized)
                ││                                                                ; - java.lang.String::equals@-3
                ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
   0.01%        ││      0x00007f605f23dfab:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
                ││                                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                ││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@52 (line 254)
   0.27%        ││      0x00007f605f23dfaf:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f605f23e6d9
   1.02%        ││╭     0x00007f605f23dfb7:   jne    0x00007f605f23e00d
   0.20%        │││     0x00007f605f23dfbd:   shl    $0x3,%rsi
   0.06%        │││     0x00007f605f23dfc1:   movabs $0x7fec35090,%rdi            ;   {oop([B{0x00000007fec35090})}
   0.11%        │││     0x00007f605f23dfcb:   mov    $0x3,%edx
                │││     0x00007f605f23dfd0:   mov    $0x10,%rax
   0.20%        │││     0x00007f605f23dfd7:   mov    $0x10,%rcx
   0.07%        │││     0x00007f605f23dfde:   add    %rax,%rsi
   0.13%        │││     0x00007f605f23dfe1:   add    %rcx,%rdi
                │││     0x00007f605f23dfe4:   mov    $0x1,%r11d
   0.23%        │││     0x00007f605f23dfea:   movzwq (%rsi),%rdx
   0.10%        │││     0x00007f605f23dfee:   xor    (%rdi),%dx
   0.19%        │││     0x00007f605f23dff1:   movzwq 0x1(%rsi),%rsi
                │││     0x00007f605f23dff6:   xor    0x1(%rdi),%si
   0.17%        │││     0x00007f605f23dffa:   xor    %rdi,%rdi
   0.06%        │││     0x00007f605f23dffd:   or     %rsi,%rdx
   0.25%        │││     0x00007f605f23e000:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
                │││                                                               ; - java.lang.String::equals@-3
                │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
   0.24%        │││     0x00007f605f23e004:   test   %r11d,%r11d
                │││     0x00007f605f23e007:   jne    0x00007f605f23e411
   0.61%        ↘↘↘     0x00007f605f23e00d:   movabs $0x7fec350a8,%rsi            ;   {oop(&quot;VAN&quot;{0x00000007fec350a8})}
   0.14%                0x00007f605f23e017:   cmp    %r10,%rsi
                        0x00007f605f23e01a:   je     0x00007f605f23e431
   0.12%                0x00007f605f23e020:   test   %r10,%r10
                   ╭    0x00007f605f23e023:   je     0x00007f605f23e09e
   0.27%           │    0x00007f605f23e029:   cmpb   $0x0,0x10(%r10)
   0.36%           │╭   0x00007f605f23e02e:   jne    0x00007f605f23e09e
   0.14%           ││   0x00007f605f23e034:   mov    0x14(%r10),%esi              ;* unwind (locked if synchronized)
                   ││                                                             ; - java.lang.String::equals@-3
                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@72 (line 258)
   0.14%           ││   0x00007f605f23e038:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
                   ││                                                             ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                   ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@63 (line 256)
   0.26%           ││   0x00007f605f23e040:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f605f23e6fc
   1.77%           ││╭  0x00007f605f23e048:   jne    0x00007f605f23e09e
   0.14%           │││  0x00007f605f23e04e:   shl    $0x3,%rsi
                   │││  0x00007f605f23e052:   movabs $0x7fec350c0,%rdi            ;   {oop([B{0x00000007fec350c0})}
   0.04%           │││  0x00007f605f23e05c:   mov    $0x3,%edx
   0.00%           │││  0x00007f605f23e061:   mov    $0x10,%rax
   0.16%           │││  0x00007f605f23e068:   mov    $0x10,%rcx
                   │││  0x00007f605f23e06f:   add    %rax,%rsi
   0.06%           │││  0x00007f605f23e072:   add    %rcx,%rdi
                   │││  0x00007f605f23e075:   mov    $0x1,%r11d
   0.17%           │││  0x00007f605f23e07b:   movzwq (%rsi),%rdx
   0.02%           │││  0x00007f605f23e07f:   xor    (%rdi),%dx
   0.07%           │││  0x00007f605f23e082:   movzwq 0x1(%rsi),%rsi
   0.00%           │││  0x00007f605f23e087:   xor    0x1(%rdi),%si
   0.10%           │││  0x00007f605f23e08b:   xor    %rdi,%rdi
                   │││  0x00007f605f23e08e:   or     %rsi,%rdx
   0.15%           │││  0x00007f605f23e091:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
                   │││                                                            ; - java.lang.String::equals@-3
                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@72 (line 258)
   0.15%           │││  0x00007f605f23e095:   test   %r11d,%r11d
                   │││  0x00007f605f23e098:   jne    0x00007f605f23e431
   0.81%           ↘↘↘  0x00007f605f23e09e:   movabs $0x7fec350d8,%rsi            ;   {oop(&quot;MOTOR_HOME&quot;{0x00000007fec350d8})}
   0.06%                0x00007f605f23e0a8:   cmp    %r10,%rsi
                        0x00007f605f23e0ab:   je     0x00007f605f23e451
   0.01%                0x00007f605f23e0b1:   test   %r10,%r10
                        0x00007f605f23e0b4:   je     0x00007f605f23e12b
   0.04%                0x00007f605f23e0ba:   nopw   0x0(%rax,%rax,1)
   0.73%                0x00007f605f23e0c0:   cmpb   $0x0,0x10(%r10)
                        0x00007f605f23e0c5:   jne    0x00007f605f23e12b           ;* unwind (locked if synchronized)
                                                                                  ; - java.lang.String::equals@-3
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@84 (line 260)
   0.01%                0x00007f605f23e0cb:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
                                                                                  ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                                  ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@75 (line 258)
   0.05%                0x00007f605f23e0cf:   cmpl   $0xa,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f605f23e71f
   0.75%                0x00007f605f23e0d7:   jne    0x00007f605f23e12b
                        0x00007f605f23e0dd:   shl    $0x3,%rsi
                        0x00007f605f23e0e1:   movabs $0x7fec350f0,%rdi            ;   {oop([B{0x00000007fec350f0})}
                        0x00007f605f23e0eb:   mov    $0xa,%edx
                        0x00007f605f23e0f0:   mov    $0x10,%rax
                        0x00007f605f23e0f7:   mov    $0x10,%rcx
                        0x00007f605f23e0fe:   add    %rax,%rsi
                        0x00007f605f23e101:   add    %rcx,%rdi
                        0x00007f605f23e104:   mov    $0x1,%r11d
                        0x00007f605f23e10a:   mov    (%rsi),%rdx
                        0x00007f605f23e10d:   xor    (%rdi),%rdx
....................................................................................................
  27.63%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 950 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
              0x00007f605f23fb28:   shl    $0x3,%rdx                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@3 (line 126)
              0x00007f605f23fb2c:   mov    %rdx,0x8(%rsp)
              0x00007f605f23fb31:   mov    %rsi,%r8
              0x00007f605f23fb34:   mov    %r11,%rdx
              0x00007f605f23fb37:   call   0x00007f605f23dca0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
                                                                        ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
                                                                        ;   {optimized virtual_call}
   0.01%      0x00007f605f23fb3c:   nopl   0x100022c(%rax,%rax,1)       ;   {other}
              0x00007f605f23fb44:   mov    %eax,0x20(%rsp)
   0.00%      0x00007f605f23fb48:   mov    $0x1,%r11d
          ╭   0x00007f605f23fb4e:   jmp    0x00007f605f23fb94           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
          │   0x00007f605f23fb53:   nopw   0x0(%rax,%rax,1)
          │   0x00007f605f23fb5c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   2.13%  │↗  0x00007f605f23fb60:   mov    0x10(%rdx,%r11,4),%r9d
   5.85%  ││  0x00007f605f23fb65:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   2.18%  ││  0x00007f605f23fb69:   mov    %rsi,%rcx
   0.00%  ││  0x00007f605f23fb6c:   mov    %r9,%rdx                     ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.01%  ││  0x00007f605f23fb6f:   mov    %r11d,0x1c(%rsp)
   0.02%  ││  0x00007f605f23fb74:   data16 xchg %ax,%ax
   2.31%  ││  0x00007f605f23fb77:   call   0x00007f605f23dca0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          ││                                                            ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││                                                            ;   {optimized virtual_call}
   1.81%  ││  0x00007f605f23fb7c:   nopl   0x200026c(%rax,%rax,1)       ;   {other}
   0.06%  ││  0x00007f605f23fb84:   add    0x20(%rsp),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
   6.41%  ││  0x00007f605f23fb88:   mov    0x1c(%rsp),%r11d
   0.10%  ││  0x00007f605f23fb8d:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@34 (line 126)
   0.70%  ││  0x00007f605f23fb90:   mov    %eax,0x20(%rsp)              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
   3.13%  ↘│  0x00007f605f23fb94:   mov    0x8(%rsp),%rdx
   0.14%   │  0x00007f605f23fb99:   mov    0x24(%rsp),%r10d
   0.06%   │  0x00007f605f23fb9e:   mov    0x10(%rsp),%rsi
   0.00%   │  0x00007f605f23fba3:   cmp    %r11d,%r10d
           ╰  0x00007f605f23fba6:   jg     0x00007f605f23fb60           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.02%      0x00007f605f23fba8:   mov    0x20(%rsp),%eax              ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@40 (line 129)
   0.04%      0x00007f605f23fbac:   mov    0x30(%rsp),%rbp
              0x00007f605f23fbb1:   add    $0x38,%rsp
              0x00007f605f23fbb5:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f605f23fbc0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007f605f23fbc7:   ja     0x00007f605f23fc08
   0.00%      0x00007f605f23fbcd:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
              0x00007f605f23fbce:   mov    $0x0,%eax
              0x00007f605f23fbd3:   jmp    0x00007f605f23fbac           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@40 (line 129)
....................................................................................................
  24.98%  <total for region 3>

....[Hottest Regions]...............................................................................
  34.40%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 945 
  27.63%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 945 
  24.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 950 
   6.48%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 945 
   1.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 945 
   1.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 945 
   0.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 945 
   0.49%               kernel  [unknown] 
   0.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 945 
   0.10%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 975 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.91%  <...other 255 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  72.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 945 
  25.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 950 
   1.64%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 975 
   0.03%                       <unknown> 
   0.02%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%  libjvmcicompiler.so  java.lang.AbstractStringBuilder::append 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  os::current_thread_id 
   0.01%            libjvm.so  defaultStream::write 
   0.00%         libc-2.31.so  _IO_str_init_static_internal 
   0.16%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.05%       jvmci, level 4
   1.64%               kernel
   0.11%            libjvm.so
   0.09%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.03%                     
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 24)

# Run progress: 25.00% complete, ETA 00:17:03
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.120 ns/op
# Warmup Iteration   2: 24.637 ns/op
# Warmup Iteration   3: 24.635 ns/op
# Warmup Iteration   4: 24.672 ns/op
# Warmup Iteration   5: 24.704 ns/op
Iteration   1: 24.760 ns/op
Iteration   2: 24.573 ns/op
Iteration   3: 24.656 ns/op
Iteration   4: 24.598 ns/op
Iteration   5: 24.701 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  24.658 ±(99.9%) 0.293 ns/op [Average]
  (min, avg, max) = (24.573, 24.658, 24.760), stdev = 0.076
  CI (99.9%): [24.364, 24.951] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 218436 total address lines.
Perf output processed (skipped 60.358 seconds):
 Column 1: cycles (50441 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 963 

                              0x00007f410b23da3e:   vmovdqu (%rsi),%xmm0
                              0x00007f410b23da42:   vmovdqu (%rdi),%xmm1
                              0x00007f410b23da46:   vpxor  %xmm1,%xmm0,%xmm0
                              0x00007f410b23da4a:   xor    %rsi,%rsi
                              0x00007f410b23da4d:   vptest %xmm0,%xmm0
                              0x00007f410b23da52:   cmovne %esi,%r11d                   ;* unwind (locked if synchronized)
                                                                                        ; - java.lang.String::equals@-3
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
                              0x00007f410b23da56:   test   %r11d,%r11d
                              0x00007f410b23da59:   jne    0x00007f410b23e631
   1.38%                      0x00007f410b23da5f:   movabs $0x7fec35010,%rsi            ;   {oop(&quot;MOTORCYCLE&quot;{0x00000007fec35010})}
                              0x00007f410b23da69:   cmp    %r10,%rsi
                              0x00007f410b23da6c:   je     0x00007f410b23e651
                              0x00007f410b23da72:   test   %r10,%r10
          ╭                   0x00007f410b23da75:   je     0x00007f410b23daeb
   0.02%  │                   0x00007f410b23da7b:   nopl   0x0(%rax,%rax,1)
   1.25%  │                   0x00007f410b23da80:   cmpb   $0x0,0x10(%r10)
          │╭                  0x00007f410b23da85:   jne    0x00007f410b23daeb           ;* unwind (locked if synchronized)
          ││                                                                            ; - java.lang.String::equals@-3
          ││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
          ││                  0x00007f410b23da8b:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
          ││                                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
   0.02%  ││                  0x00007f410b23da8f:   cmpl   $0xa,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f410b23eb93
   1.96%  ││╭                 0x00007f410b23da97:   jne    0x00007f410b23daeb
   0.20%  │││                 0x00007f410b23da9d:   shl    $0x3,%rsi
          │││                 0x00007f410b23daa1:   movabs $0x7fec35028,%rdi            ;   {oop([B{0x00000007fec35028})}
   0.05%  │││                 0x00007f410b23daab:   mov    $0xa,%edx
          │││                 0x00007f410b23dab0:   mov    $0x10,%rax
   0.24%  │││                 0x00007f410b23dab7:   mov    $0x10,%rcx
          │││                 0x00007f410b23dabe:   add    %rax,%rsi
   0.04%  │││                 0x00007f410b23dac1:   add    %rcx,%rdi
          │││                 0x00007f410b23dac4:   mov    $0x1,%r11d
   0.22%  │││                 0x00007f410b23daca:   mov    (%rsi),%rdx
          │││                 0x00007f410b23dacd:   xor    (%rdi),%rdx
   0.04%  │││                 0x00007f410b23dad0:   mov    0x2(%rsi),%rsi
          │││                 0x00007f410b23dad4:   xor    0x2(%rdi),%rsi
   0.88%  │││                 0x00007f410b23dad8:   xor    %rdi,%rdi
          │││                 0x00007f410b23dadb:   or     %rsi,%rdx
   0.24%  │││                 0x00007f410b23dade:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          │││                                                                           ; - java.lang.String::equals@-3
          │││                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
   0.25%  │││                 0x00007f410b23dae2:   test   %r11d,%r11d
          │││                 0x00007f410b23dae5:   jne    0x00007f410b23e651
   0.65%  ↘↘↘                 0x00007f410b23daeb:   movabs $0x7fec35048,%rsi            ;   {oop(&quot;CAR&quot;{0x00000007fec35048})}
   0.02%                      0x00007f410b23daf5:   cmp    %r10,%rsi
                              0x00007f410b23daf8:   je     0x00007f410b23e671
   0.53%                      0x00007f410b23dafe:   xchg   %ax,%ax
                              0x00007f410b23db00:   test   %r10,%r10
             ╭                0x00007f410b23db03:   je     0x00007f410b23db7e
   0.65%     │                0x00007f410b23db09:   cmpb   $0x0,0x10(%r10)
   0.02%     │╭               0x00007f410b23db0e:   jne    0x00007f410b23db7e
   0.55%     ││               0x00007f410b23db14:   mov    0x14(%r10),%esi              ;* unwind (locked if synchronized)
             ││                                                                         ; - java.lang.String::equals@-3
             ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
             ││               0x00007f410b23db18:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
             ││                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
             ││                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@41 (line 252)
   0.61%     ││               0x00007f410b23db20:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f410b23ebb6
   0.97%     ││╭              0x00007f410b23db28:   jne    0x00007f410b23db7e
   0.18%     │││              0x00007f410b23db2e:   shl    $0x3,%rsi
   0.00%     │││              0x00007f410b23db32:   movabs $0x7fec35060,%rdi            ;   {oop([B{0x00000007fec35060})}
             │││              0x00007f410b23db3c:   mov    $0x3,%edx
   0.03%     │││              0x00007f410b23db41:   mov    $0x10,%rax
   0.18%     │││              0x00007f410b23db48:   mov    $0x10,%rcx
   0.00%     │││              0x00007f410b23db4f:   add    %rax,%rsi
             │││              0x00007f410b23db52:   add    %rcx,%rdi
   0.03%     │││              0x00007f410b23db55:   mov    $0x1,%r11d
   0.16%     │││              0x00007f410b23db5b:   movzwq (%rsi),%rdx
   0.00%     │││              0x00007f410b23db5f:   xor    (%rdi),%dx
   0.04%     │││              0x00007f410b23db62:   movzwq 0x1(%rsi),%rsi
   0.03%     │││              0x00007f410b23db67:   xor    0x1(%rdi),%si
   0.14%     │││              0x00007f410b23db6b:   xor    %rdi,%rdi
   0.00%     │││              0x00007f410b23db6e:   or     %rsi,%rdx
   0.07%     │││              0x00007f410b23db71:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
             │││                                                                        ; - java.lang.String::equals@-3
             │││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
   0.20%     │││              0x00007f410b23db75:   test   %r11d,%r11d
             │││              0x00007f410b23db78:   jne    0x00007f410b23e671
   0.34%     ↘↘↘              0x00007f410b23db7e:   movabs $0x7fec35078,%rsi            ;   {oop(&quot;SUV&quot;{0x00000007fec35078})}
   0.41%                      0x00007f410b23db88:   cmp    %r10,%rsi
                              0x00007f410b23db8b:   je     0x00007f410b23e691
   0.01%                      0x00007f410b23db91:   test   %r10,%r10
                ╭             0x00007f410b23db94:   je     0x00007f410b23dc0d
   0.36%        │             0x00007f410b23db9a:   nopw   0x0(%rax,%rax,1)
   0.31%        │             0x00007f410b23dba0:   cmpb   $0x0,0x10(%r10)
   0.38%        │╭            0x00007f410b23dba5:   jne    0x00007f410b23dc0d           ;* unwind (locked if synchronized)
                ││                                                                      ; - java.lang.String::equals@-3
                ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
   0.01%        ││            0x00007f410b23dbab:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
                ││                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                ││                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@52 (line 254)
   0.36%        ││            0x00007f410b23dbaf:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f410b23ebd9
   0.84%        ││╭           0x00007f410b23dbb7:   jne    0x00007f410b23dc0d
   0.08%        │││           0x00007f410b23dbbd:   shl    $0x3,%rsi
   0.00%        │││           0x00007f410b23dbc1:   movabs $0x7fec35090,%rdi            ;   {oop([B{0x00000007fec35090})}
   0.04%        │││           0x00007f410b23dbcb:   mov    $0x3,%edx
                │││           0x00007f410b23dbd0:   mov    $0x10,%rax
   0.08%        │││           0x00007f410b23dbd7:   mov    $0x10,%rcx
                │││           0x00007f410b23dbde:   add    %rax,%rsi
   0.05%        │││           0x00007f410b23dbe1:   add    %rcx,%rdi
                │││           0x00007f410b23dbe4:   mov    $0x1,%r11d
   0.12%        │││           0x00007f410b23dbea:   movzwq (%rsi),%rdx
   0.01%        │││           0x00007f410b23dbee:   xor    (%rdi),%dx
   0.06%        │││           0x00007f410b23dbf1:   movzwq 0x1(%rsi),%rsi
                │││           0x00007f410b23dbf6:   xor    0x1(%rdi),%si
   0.06%        │││           0x00007f410b23dbfa:   xor    %rdi,%rdi
   0.00%        │││           0x00007f410b23dbfd:   or     %rsi,%rdx
   0.07%        │││           0x00007f410b23dc00:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
                │││                                                                     ; - java.lang.String::equals@-3
                │││                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
   0.09%        │││           0x00007f410b23dc04:   test   %r11d,%r11d
                │││           0x00007f410b23dc07:   jne    0x00007f410b23e691
   0.40%        ↘↘↘           0x00007f410b23dc0d:   movabs $0x7fec350a8,%rsi            ;   {oop(&quot;VAN&quot;{0x00000007fec350a8})}
   0.28%                      0x00007f410b23dc17:   cmp    %r10,%rsi
                              0x00007f410b23dc1a:   je     0x00007f410b23e6b1
   0.04%                      0x00007f410b23dc20:   test   %r10,%r10
                   ╭          0x00007f410b23dc23:   je     0x00007f410b23dc9e
   0.45%           │          0x00007f410b23dc29:   cmpb   $0x0,0x10(%r10)
   0.34%           │╭         0x00007f410b23dc2e:   jne    0x00007f410b23dc9e
   0.27%           ││         0x00007f410b23dc34:   mov    0x14(%r10),%esi              ;* unwind (locked if synchronized)
                   ││                                                                   ; - java.lang.String::equals@-3
                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@72 (line 258)
   0.03%           ││         0x00007f410b23dc38:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
                   ││                                                                   ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                   ││                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@63 (line 256)
   0.45%           ││         0x00007f410b23dc40:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f410b23ebfc
   2.72%           ││╭        0x00007f410b23dc48:   jne    0x00007f410b23dc9e
   0.06%           │││        0x00007f410b23dc4e:   shl    $0x3,%rsi
                   │││        0x00007f410b23dc52:   movabs $0x7fec350c0,%rdi            ;   {oop([B{0x00000007fec350c0})}
   0.00%           │││        0x00007f410b23dc5c:   mov    $0x3,%edx
                   │││        0x00007f410b23dc61:   mov    $0x10,%rax
   0.06%           │││        0x00007f410b23dc68:   mov    $0x10,%rcx
                   │││        0x00007f410b23dc6f:   add    %rax,%rsi
   0.01%           │││        0x00007f410b23dc72:   add    %rcx,%rdi
                   │││        0x00007f410b23dc75:   mov    $0x1,%r11d
   0.05%           │││        0x00007f410b23dc7b:   movzwq (%rsi),%rdx
   0.01%           │││        0x00007f410b23dc7f:   xor    (%rdi),%dx
   0.02%           │││        0x00007f410b23dc82:   movzwq 0x1(%rsi),%rsi
                   │││        0x00007f410b23dc87:   xor    0x1(%rdi),%si
   0.04%           │││        0x00007f410b23dc8b:   xor    %rdi,%rdi
                   │││        0x00007f410b23dc8e:   or     %rsi,%rdx
   0.05%           │││        0x00007f410b23dc91:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
                   │││                                                                  ; - java.lang.String::equals@-3
                   │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@72 (line 258)
   0.06%           │││        0x00007f410b23dc95:   test   %r11d,%r11d
                   │││        0x00007f410b23dc98:   jne    0x00007f410b23e6b1
   0.96%           ↘↘↘        0x00007f410b23dc9e:   movabs $0x7fec350d8,%rsi            ;   {oop(&quot;MOTOR_HOME&quot;{0x00000007fec350d8})}
   0.04%                      0x00007f410b23dca8:   cmp    %r10,%rsi
                              0x00007f410b23dcab:   je     0x00007f410b23e6d1
   0.00%                      0x00007f410b23dcb1:   test   %r10,%r10
                      ╭       0x00007f410b23dcb4:   je     0x00007f410b23dd2b
   0.03%              │       0x00007f410b23dcba:   nopw   0x0(%rax,%rax,1)
   0.91%              │       0x00007f410b23dcc0:   cmpb   $0x0,0x10(%r10)
   0.03%              │╭      0x00007f410b23dcc5:   jne    0x00007f410b23dd2b           ;* unwind (locked if synchronized)
                      ││                                                                ; - java.lang.String::equals@-3
                      ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@84 (line 260)
   0.00%              ││      0x00007f410b23dccb:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
                      ││                                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                      ││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@75 (line 258)
   0.04%              ││      0x00007f410b23dccf:   cmpl   $0xa,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f410b23ec1f
   1.00%              ││╭     0x00007f410b23dcd7:   jne    0x00007f410b23dd2b
   0.00%              │││     0x00007f410b23dcdd:   shl    $0x3,%rsi
                      │││     0x00007f410b23dce1:   movabs $0x7fec350f0,%rdi            ;   {oop([B{0x00000007fec350f0})}
   0.15%              │││     0x00007f410b23dceb:   mov    $0xa,%edx
   0.04%              │││     0x00007f410b23dcf0:   mov    $0x10,%rax
   0.00%              │││     0x00007f410b23dcf7:   mov    $0x10,%rcx
                      │││     0x00007f410b23dcfe:   add    %rax,%rsi
   0.16%              │││     0x00007f410b23dd01:   add    %rcx,%rdi
   0.03%              │││     0x00007f410b23dd04:   mov    $0x1,%r11d
                      │││     0x00007f410b23dd0a:   mov    (%rsi),%rdx
                      │││     0x00007f410b23dd0d:   xor    (%rdi),%rdx
   0.12%              │││     0x00007f410b23dd10:   mov    0x2(%rsi),%rsi
   0.03%              │││     0x00007f410b23dd14:   xor    0x2(%rdi),%rsi
   0.01%              │││     0x00007f410b23dd18:   xor    %rdi,%rdi
                      │││     0x00007f410b23dd1b:   or     %rsi,%rdx
   0.14%              │││     0x00007f410b23dd1e:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
                      │││                                                               ; - java.lang.String::equals@-3
                      │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@84 (line 260)
   0.14%              │││     0x00007f410b23dd22:   test   %r11d,%r11d
                      │││     0x00007f410b23dd25:   jne    0x00007f410b23e6d1
   0.30%              ↘↘↘     0x00007f410b23dd2b:   movabs $0x7fec35110,%rsi            ;   {oop(&quot;TRUCK&quot;{0x00000007fec35110})}
   0.04%                      0x00007f410b23dd35:   cmp    %r10,%rsi
                              0x00007f410b23dd38:   je     0x00007f410b23e6f1
   0.61%                      0x00007f410b23dd3e:   xchg   %ax,%ax
   0.01%                      0x00007f410b23dd40:   test   %r10,%r10
                         ╭    0x00007f410b23dd43:   je     0x00007f410b23ddb8
   0.24%                 │    0x00007f410b23dd49:   cmpb   $0x0,0x10(%r10)
   0.04%                 │╭   0x00007f410b23dd4e:   jne    0x00007f410b23ddb8
   0.59%                 ││   0x00007f410b23dd54:   mov    0x14(%r10),%esi              ;* unwind (locked if synchronized)
                         ││                                                             ; - java.lang.String::equals@-3
                         ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@96 (line 262)
   0.02%                 ││   0x00007f410b23dd58:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
                         ││                                                             ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                         ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@87 (line 260)
   0.22%                 ││   0x00007f410b23dd60:   cmpl   $0x5,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f410b23ec42
   0.75%                 ││╭  0x00007f410b23dd68:   jne    0x00007f410b23ddb8
   0.00%                 │││  0x00007f410b23dd6e:   shl    $0x3,%rsi
                         │││  0x00007f410b23dd72:   movabs $0x7fec35128,%rdi            ;   {oop([B{0x00000007fec35128})}
                         │││  0x00007f410b23dd7c:   mov    $0x5,%edx
   0.07%                 │││  0x00007f410b23dd81:   mov    $0x10,%rax
                         │││  0x00007f410b23dd88:   mov    $0x10,%rcx
                         │││  0x00007f410b23dd8f:   add    %rax,%rsi
                         │││  0x00007f410b23dd92:   add    %rcx,%rdi
   0.09%                 │││  0x00007f410b23dd95:   mov    $0x1,%r11d
   0.01%                 │││  0x00007f410b23dd9b:   mov    (%rsi),%edx
                         │││  0x00007f410b23dd9d:   xor    (%rdi),%edx
   0.00%                 │││  0x00007f410b23dd9f:   mov    0x1(%rsi),%esi
   0.07%                 │││  0x00007f410b23dda2:   xor    0x1(%rdi),%esi
   0.01%                 │││  0x00007f410b23dda5:   xor    %rdi,%rdi
                         │││  0x00007f410b23dda8:   or     %rsi,%rdx
   0.05%                 │││  0x00007f410b23ddab:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
                         │││                                                            ; - java.lang.String::equals@-3
                         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@96 (line 262)
   0.05%                 │││  0x00007f410b23ddaf:   test   %r11d,%r11d
                         │││  0x00007f410b23ddb2:   jne    0x00007f410b23e6f1
   0.19%                 ↘↘↘  0x00007f410b23ddb8:   movabs $0x7fec35140,%rsi            ;   {oop(&quot;BUS&quot;{0x00000007fec35140})}
   0.11%                      0x00007f410b23ddc2:   cmp    %r10,%rsi
                              0x00007f410b23ddc5:   je     0x00007f410b23e711
   0.06%                      0x00007f410b23ddcb:   test   %r10,%r10
                              0x00007f410b23ddce:   je     0x00007f410b23de49
   0.59%                      0x00007f410b23ddd4:   cmpb   $0x0,0x10(%r10)
   0.19%                      0x00007f410b23ddd9:   jne    0x00007f410b23de49           ;* unwind (locked if synchronized)
                                                                                        ; - java.lang.String::equals@-3
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@108 (line 264)
   0.11%                      0x00007f410b23dddf:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
                                                                                        ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@99 (line 262)
   0.05%                      0x00007f410b23dde3:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f410b23ec65
   0.74%                      0x00007f410b23ddeb:   jne    0x00007f410b23de49
                              0x00007f410b23ddf1:   shl    $0x3,%rsi
                              0x00007f410b23ddf5:   movabs $0x7fec35158,%rdi            ;   {oop([B{0x00000007fec35158})}
                              0x00007f410b23ddff:   mov    $0x3,%edx
                              0x00007f410b23de04:   mov    $0x10,%rax
                              0x00007f410b23de0b:   mov    $0x10,%rcx
                              0x00007f410b23de12:   add    %rax,%rsi
                              0x00007f410b23de15:   add    %rcx,%rdi
                              0x00007f410b23de18:   mov    $0x1,%r11d
                              0x00007f410b23de1e:   movzwq (%rsi),%rdx
                              0x00007f410b23de22:   xor    (%rdi),%dx
....................................................................................................
  29.95%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 963 

                  # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
                  #           [sp+0x20]  (sp of caller)
                  0x00007f410b23d880:   mov    0x8(%rsi),%r10d
                  0x00007f410b23d884:   movabs $0x7f408f000000,%r12
                  0x00007f410b23d88e:   add    %r12,%r10
                  0x00007f410b23d891:   xor    %r12,%r12
                  0x00007f410b23d894:   cmp    %r10,%rax
                  0x00007f410b23d897:   jne    0x00007f410ac2f080           ;   {runtime_call ic_miss_stub}
                  0x00007f410b23d89d:   data16 xchg %ax,%ax
                [Verified Entry Point]
   0.00%          0x00007f410b23d8a0:   mov    %eax,-0x14000(%rsp)
   1.74%          0x00007f410b23d8a7:   sub    $0x18,%rsp
   0.00%          0x00007f410b23d8ab:   nop
                  0x00007f410b23d8ac:   cmpl   $0x1,0x20(%r15)
   0.00%          0x00007f410b23d8b4:   jne    0x00007f410b23e917
   1.58%          0x00007f410b23d8ba:   mov    %rbp,0x10(%rsp)
   0.00%          0x00007f410b23d8bf:   mov    %rdx,%r10
                  0x00007f410b23d8c2:   movabs $0x7fec34f78,%rsi            ;   {oop(&quot;MOPED&quot;{0x00000007fec34f78})}
   0.00%          0x00007f410b23d8cc:   cmp    %r10,%rsi
                  0x00007f410b23d8cf:   je     0x00007f410b23e5f1
   1.42%          0x00007f410b23d8d5:   test   %r10,%r10
          ╭       0x00007f410b23d8d8:   je     0x00007f410b23d949
          │       0x00007f410b23d8de:   xchg   %ax,%ax
          │       0x00007f410b23d8e0:   cmpb   $0x0,0x10(%r10)
   2.68%  │╭      0x00007f410b23d8e5:   jne    0x00007f410b23d949           ;* unwind (locked if synchronized)
          ││                                                                ; - java.lang.String::equals@-3
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   1.45%  ││      0x00007f410b23d8eb:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
          ││                                                                ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@0 (line 244)
   0.00%  ││      0x00007f410b23d8ef:   cmpl   $0x5,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f410b23eb26
   5.97%  ││╭     0x00007f410b23d8f7:   jne    0x00007f410b23d949
   0.11%  │││     0x00007f410b23d8fd:   shl    $0x3,%rsi
          │││     0x00007f410b23d901:   movabs $0x7fec34f90,%rdi            ;   {oop([B{0x00000007fec34f90})}
          │││     0x00007f410b23d90b:   mov    $0x5,%edx
          │││     0x00007f410b23d910:   mov    $0x10,%rax
   0.13%  │││     0x00007f410b23d917:   mov    $0x10,%rcx
          │││     0x00007f410b23d91e:   add    %rax,%rsi
          │││     0x00007f410b23d921:   add    %rcx,%rdi
          │││     0x00007f410b23d924:   mov    $0x1,%r11d
   0.14%  │││     0x00007f410b23d92a:   mov    (%rsi),%edx
          │││     0x00007f410b23d92c:   xor    (%rdi),%edx
   0.00%  │││     0x00007f410b23d92e:   mov    0x1(%rsi),%esi
          │││     0x00007f410b23d931:   xor    0x1(%rdi),%esi
   0.12%  │││     0x00007f410b23d934:   xor    %rdi,%rdi
          │││     0x00007f410b23d937:   or     %rsi,%rdx
   0.02%  │││     0x00007f410b23d93a:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          │││                                                               ; - java.lang.String::equals@-3
          │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   0.11%  │││     0x00007f410b23d93e:   xchg   %ax,%ax
          │││     0x00007f410b23d940:   test   %r11d,%r11d
          │││     0x00007f410b23d943:   jne    0x00007f410b23e5f1
   1.55%  ↘↘↘     0x00007f410b23d949:   movabs $0x7fec34fa8,%rsi            ;   {oop(&quot;BICYCLE&quot;{0x00000007fec34fa8})}
                  0x00007f410b23d953:   cmp    %r10,%rsi
                  0x00007f410b23d956:   je     0x00007f410b23e611
                  0x00007f410b23d95c:   nopl   0x0(%rax)
                  0x00007f410b23d960:   test   %r10,%r10
             ╭    0x00007f410b23d963:   je     0x00007f410b23d9d8
   1.41%     │    0x00007f410b23d969:   cmpb   $0x0,0x10(%r10)
             │╭   0x00007f410b23d96e:   jne    0x00007f410b23d9d8
             ││   0x00007f410b23d974:   mov    0x14(%r10),%esi              ;* unwind (locked if synchronized)
             ││                                                             ; - java.lang.String::equals@-3
             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
             ││   0x00007f410b23d978:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
             ││                                                             ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
             ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
   1.34%     ││   0x00007f410b23d980:   cmpl   $0x7,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f410b23eb4d
   0.00%     ││╭  0x00007f410b23d988:   jne    0x00007f410b23d9d8
             │││  0x00007f410b23d98e:   shl    $0x3,%rsi
   0.16%     │││  0x00007f410b23d992:   movabs $0x7fec34fc0,%rdi            ;   {oop([B{0x00000007fec34fc0})}
             │││  0x00007f410b23d99c:   mov    $0x7,%edx
             │││  0x00007f410b23d9a1:   mov    $0x10,%rax
             │││  0x00007f410b23d9a8:   mov    $0x10,%rcx
   0.13%     │││  0x00007f410b23d9af:   add    %rax,%rsi
             │││  0x00007f410b23d9b2:   add    %rcx,%rdi
             │││  0x00007f410b23d9b5:   mov    $0x1,%r11d
             │││  0x00007f410b23d9bb:   mov    (%rsi),%edx
   0.11%     │││  0x00007f410b23d9bd:   xor    (%rdi),%edx
             │││  0x00007f410b23d9bf:   mov    0x3(%rsi),%esi
             │││  0x00007f410b23d9c2:   xor    0x3(%rdi),%esi
             │││  0x00007f410b23d9c5:   xor    %rdi,%rdi
   0.12%     │││  0x00007f410b23d9c8:   or     %rsi,%rdx
   0.00%     │││  0x00007f410b23d9cb:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
             │││                                                            ; - java.lang.String::equals@-3
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
   0.07%     │││  0x00007f410b23d9cf:   test   %r11d,%r11d
             │││  0x00007f410b23d9d2:   jne    0x00007f410b23e611
   0.08%     ↘↘↘  0x00007f410b23d9d8:   movabs $0x7fec34fd8,%rsi            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fec34fd8})}
   1.23%          0x00007f410b23d9e2:   cmp    %r10,%rsi
                  0x00007f410b23d9e5:   je     0x00007f410b23e631
                  0x00007f410b23d9eb:   test   %r10,%r10
                  0x00007f410b23d9ee:   je     0x00007f410b23da5f
                  0x00007f410b23d9f4:   cmpb   $0x0,0x10(%r10)
   0.19%          0x00007f410b23d9f9:   jne    0x00007f410b23da5f           ;* unwind (locked if synchronized)
                                                                            ; - java.lang.String::equals@-3
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
   1.27%          0x00007f410b23d9ff:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
                                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
                  0x00007f410b23da03:   cmpl   $0x10,0xc(,%rsi,8)           ; implicit exception: dispatches to 0x00007f410b23eb70
   1.04%          0x00007f410b23da0b:   jne    0x00007f410b23da5f
                  0x00007f410b23da11:   shl    $0x3,%rsi
                  0x00007f410b23da15:   movabs $0x7fec34ff0,%rdi            ;   {oop([B{0x00000007fec34ff0})}
                  0x00007f410b23da1f:   mov    $0x10,%edx
                  0x00007f410b23da24:   mov    $0x10,%rax
                  0x00007f410b23da2b:   mov    $0x10,%rcx
                  0x00007f410b23da32:   add    %rax,%rsi
                  0x00007f410b23da35:   add    %rcx,%rdi
                  0x00007f410b23da38:   mov    $0x1,%r11d
                  0x00007f410b23da3e:   vmovdqu (%rsi),%xmm0
                  0x00007f410b23da42:   vmovdqu (%rdi),%xmm1
....................................................................................................
  24.20%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 968 

                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
                                                                         ;   {optimized virtual_call}
   0.00%       0x00007f410b2408bc:   nopl   0x100022c(%rax,%rax,1)       ;   {other}
               0x00007f410b2408c4:   mov    %eax,0x20(%rsp)
               0x00007f410b2408c8:   mov    $0x1,%r11d
          ╭    0x00007f410b2408ce:   jmp    0x00007f410b240914           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
          │    0x00007f410b2408d3:   nopw   0x0(%rax,%rax,1)
          │    0x00007f410b2408dc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   1.46%  │↗   0x00007f410b2408e0:   mov    0x10(%rdx,%r11,4),%r9d
   4.00%  ││   0x00007f410b2408e5:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   1.64%  ││   0x00007f410b2408e9:   mov    %rsi,%rcx
          ││   0x00007f410b2408ec:   mov    %r9,%rdx                     ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││   0x00007f410b2408ef:   mov    %r11d,0x1c(%rsp)
          ││   0x00007f410b2408f4:   data16 xchg %ax,%ax
   1.60%  ││   0x00007f410b2408f7:   call   0x00007f410b23d8a0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          ││                                                             ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││                                                             ;   {optimized virtual_call}
   0.94%  ││   0x00007f410b2408fc:   nopl   0x200026c(%rax,%rax,1)       ;   {other}
   0.16%  ││   0x00007f410b240904:   add    0x20(%rsp),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
   5.23%  ││   0x00007f410b240908:   mov    0x1c(%rsp),%r11d
   0.12%  ││   0x00007f410b24090d:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@34 (line 126)
   0.52%  ││   0x00007f410b240910:   mov    %eax,0x20(%rsp)              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
   2.15%  ↘│   0x00007f410b240914:   mov    0x8(%rsp),%rdx
           │   0x00007f410b240919:   mov    0x24(%rsp),%r10d
   0.07%   │   0x00007f410b24091e:   mov    0x10(%rsp),%rsi
   0.02%   │   0x00007f410b240923:   cmp    %r11d,%r10d
           ╰   0x00007f410b240926:   jg     0x00007f410b2408e0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.02%       0x00007f410b240928:   mov    0x20(%rsp),%eax              ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@40 (line 129)
   0.02%    ↗  0x00007f410b24092c:   mov    0x30(%rsp),%rbp
   0.00%    │  0x00007f410b240931:   add    $0x38,%rsp
            │  0x00007f410b240935:   data16 data16 nopw 0x0(%rax,%rax,1)
            │  0x00007f410b240940:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007f410b240947:   ja     0x00007f410b240988
   0.00%    │  0x00007f410b24094d:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
            │  0x00007f410b24094e:   mov    $0x0,%eax
            ╰  0x00007f410b240953:   jmp    0x00007f410b24092c           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@40 (line 129)
               0x00007f410b240955:   movl   $0xffffffe5,0x484(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@8 (line 126)
               0x00007f410b240960:   movq   $0x298,0x490(%r15)
               0x00007f410b24096b:   call   0x00007f410ac3517a           ; ImmutableOopMap {rsi=Oop }
                                                                         ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@0 (line 125)
....................................................................................................
  17.94%  <total for region 3>

....[Hottest Regions]...............................................................................
  29.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 963 
  24.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 963 
  17.94%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 968 
   7.51%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 963 
   5.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 963 
   4.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 963 
   3.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 963 
   2.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 963 
   0.77%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 963 
   0.70%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 963 
   0.46%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 963 
   0.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 963 
   0.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 963 
   0.18%               kernel  [unknown] 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 963 
   0.10%               kernel  [unknown] 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 963 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   1.07%  <...other 263 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  80.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 963 
  17.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 968 
   1.13%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 999 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  defaultStream::write 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  putop 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%            libjvm.so  outputStream::print 
   0.00%         libc-2.31.so  syscall 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%         libc-2.31.so  _itoa_word 
   0.15%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.55%       jvmci, level 4
   1.13%               kernel
   0.12%            libjvm.so
   0.09%         libc-2.31.so
   0.03%                     
   0.02%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.00%     perf-2131285.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 3)

# Run progress: 33.33% complete, ETA 00:15:08
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.163 ns/op
# Warmup Iteration   2: 5.088 ns/op
# Warmup Iteration   3: 5.064 ns/op
# Warmup Iteration   4: 5.066 ns/op
# Warmup Iteration   5: 5.068 ns/op
Iteration   1: 5.068 ns/op
Iteration   2: 5.067 ns/op
Iteration   3: 5.064 ns/op
Iteration   4: 5.063 ns/op
Iteration   5: 5.064 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  5.065 ±(99.9%) 0.007 ns/op [Average]
  (min, avg, max) = (5.063, 5.065, 5.068), stdev = 0.002
  CI (99.9%): [5.058, 5.073] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 212728 total address lines.
Perf output processed (skipped 60.048 seconds):
 Column 1: cycles (50560 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 954 

            # {method} {0x00007fb19347dc20} &apos;switch_expressions&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
            #           [sp+0x60]  (sp of caller)
            0x00007fb2132407c0:   mov    0x8(%rsi),%r10d
            0x00007fb2132407c4:   movabs $0x7fb197000000,%r12
            0x00007fb2132407ce:   add    %r12,%r10
            0x00007fb2132407d1:   xor    %r12,%r12
            0x00007fb2132407d4:   cmp    %r10,%rax
            0x00007fb2132407d7:   jne    0x00007fb212c2f080           ;   {runtime_call ic_miss_stub}
            0x00007fb2132407dd:   data16 xchg %ax,%ax
          [Verified Entry Point]
   0.00%    0x00007fb2132407e0:   mov    %eax,-0x14000(%rsp)
   0.01%    0x00007fb2132407e7:   sub    $0x58,%rsp
   0.00%    0x00007fb2132407eb:   nop
            0x00007fb2132407ec:   cmpl   $0x1,0x20(%r15)
            0x00007fb2132407f4:   jne    0x00007fb213240e40
   0.00%    0x00007fb2132407fa:   mov    %rbp,0x50(%rsp)
            0x00007fb2132407ff:   mov    %rsi,%rbp
            0x00007fb213240802:   mov    %rbp,0x30(%rsp)
            0x00007fb213240807:   mov    0x18(%rbp),%esi              ; ImmutableOopMap {rbp=Oop rsi=NarrowOop [48]=Oop }
                                                                      ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@0 (line 114)
            0x00007fb21324080a:   mov    0xc(,%rsi,8),%r13d           ; implicit exception: dispatches to 0x00007fb213240e66
   0.02%    0x00007fb213240812:   mov    %r13d,0x44(%rsp)
   0.01%    0x00007fb213240817:   mov    %esi,%r14d
            0x00007fb21324081a:   shl    $0x3,%r14                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
            0x00007fb21324081e:   mov    %r14,0x28(%rsp)
            0x00007fb213240823:   movabs $0x7fee34fc0,%rdi            ;   {oop([B{0x00000007fee34fc0})}
   0.01%    0x00007fb21324082d:   movabs $0x7fee34f90,%r10            ;   {oop([B{0x00000007fee34f90})}
   0.00%    0x00007fb213240837:   mov    %r10,0x20(%rsp)
            0x00007fb21324083c:   movabs $0x7fee34ff0,%r11            ;   {oop([B{0x00000007fee34ff0})}
            0x00007fb213240846:   mov    %r11,0x18(%rsp)
   0.00%    0x00007fb21324084b:   mov    $0x0,%r9d
            0x00007fb213240851:   movl   $0x0,0x40(%rsp)
            0x00007fb213240859:   jmp    0x00007fb213240aa2           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
            0x00007fb21324085e:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   4.85%    0x00007fb213240860:   mov    0x10(%r14,%r9,4),%ebx        ; ImmutableOopMap {rbx=NarrowOop rdi=Oop r14=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
   0.69%    0x00007fb213240865:   mov    0xc(,%rbx,8),%ecx            ; implicit exception: dispatches to 0x00007fb213240e8d
  24.01%    0x00007fb21324086c:   movsbl 0x10(,%rbx,8),%eax           ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::isLatin1@7 (line 4817)
                                                                      ; - java.lang.String::hashCode@17 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   2.58%    0x00007fb213240874:   mov    0x14(,%rbx,8),%edx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@24 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   2.31%    0x00007fb21324087b:   mov    %edx,%esi
            0x00007fb21324087d:   shl    $0x3,%rsi                    ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   6.33%    0x00007fb213240881:   mov    %ebx,%ebp
   1.13%    0x00007fb213240883:   shl    $0x3,%rbp                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   0.02%    0x00007fb213240887:   test   %ecx,%ecx
            0x00007fb213240889:   je     0x00007fb213240bd1           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@6 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
            0x00007fb21324088f:   mov    %rbp,0x10(%rsp)
   6.25%    0x00007fb213240894:   mov    %rsi,0x8(%rsp)
   4.94%    0x00007fb213240899:   mov    %edx,%ebp
   0.01%    0x00007fb21324089b:   mov    %r9d,0x3c(%rsp)
            0x00007fb2132408a0:   mov    %eax,%r13d
   2.73%    0x00007fb2132408a3:   mov    %ebx,%r14d                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@58 (line 2373)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   4.82%    0x00007fb2132408a6:   cmp    $0x462300d,%ecx
            0x00007fb2132408ac:   je     0x00007fb2132409db
   0.00%    0x00007fb2132408b2:   cmp    $0x9ef434af,%ecx
            0x00007fb2132408b8:   je     0x00007fb213240ab0
            0x00007fb2132408be:   cmp    $0x23c6acdf,%ecx
            0x00007fb2132408c4:   je     0x00007fb213240b34
            0x00007fb2132408ca:   cmp    $0x90663ad4,%ecx
            0x00007fb2132408d0:   je     0x00007fb213240d88
            0x00007fb2132408d6:   cmp    $0xa2a1be40,%ecx
            0x00007fb2132408dc:   nopl   0x0(%rax)
            0x00007fb2132408e0:   je     0x00007fb213240d88
            0x00007fb2132408e6:   cmp    $0xaf2874e8,%ecx
            0x00007fb2132408ec:   je     0x00007fb213240d88
....................................................................................................
  60.72%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 954 

                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   7.39%     0x00007fb213240a5d:   cmp    $0x0,%r11d
          ╭  0x00007fb213240a61:   je     0x00007fb213240a80
          │  0x00007fb213240a67:   cmp    $0x1,%r11d
          │  0x00007fb213240a6b:   je     0x00007fb213240bbd
          │  0x00007fb213240a71:   cmp    $0x2,%r11d
          │  0x00007fb213240a75:   je     0x00007fb213240bc7
          │  0x00007fb213240a7b:   jmp    0x00007fb213240e11           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@564 (line 214)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   2.46%  ↘  0x00007fb213240a80:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@792 (line 214)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   5.05%     0x00007fb213240a85:   add    0x40(%rsp),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@32 (line 116)
   0.00%     0x00007fb213240a89:   mov    0x3c(%rsp),%r9d
             0x00007fb213240a8e:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
   2.59%     0x00007fb213240a91:   mov    %eax,0x40(%rsp)
   4.95%     0x00007fb213240a95:   mov    %r10,%rdi
             0x00007fb213240a98:   mov    0x28(%rsp),%r14
             0x00007fb213240a9d:   mov    0x44(%rsp),%r13d             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
   2.39%     0x00007fb213240aa2:   cmp    %r9d,%r13d
             0x00007fb213240aa5:   jg     0x00007fb213240860
             0x00007fb213240aab:   jmp    0x00007fb213240caf           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
             0x00007fb213240ab0:   mov    %rdi,%r10
   1.41%     0x00007fb213240ab3:   cmp    $0xffdc69fb,%r14d            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fee34fd8})}
             0x00007fb213240aba:   je     0x00007fb213240c80           ;* unwind (locked if synchronized)
                                                                       ; - java.lang.String::equals@-3
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
             0x00007fb213240ac0:   test   %r13b,%r13b
             0x00007fb213240ac3:   jne    0x00007fb213240dbf           ; ImmutableOopMap {r10=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
                                                                       ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
....................................................................................................
  18.85%  <total for region 2>

....[Hottest Regions]...............................................................................
  60.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 954 
  18.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 954 
   7.39%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 954 
   4.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 954 
   3.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 954 
   2.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 954 
   0.19%               kernel  [unknown] 
   0.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 954 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 982 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 954 
   0.02%               kernel  [unknown] 
   1.01%  <...other 322 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 954 
   1.29%               kernel  [unknown] 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 982 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%  libjvmcicompiler.so  com.oracle.svm.core.code.IsolateEnterStub::JNIFunctions_ExceptionCheck_58d6e5b3e7f9e77fa71a316c155f7e7a40618b7f 
   0.01%            libjvm.so  AbstractDisassembler::print_location 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.22%  <...other 101 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.32%       jvmci, level 4
   1.29%               kernel
   0.11%            libjvm.so
   0.11%         libc-2.31.so
   0.07%  libjvmcicompiler.so
   0.04%                     
   0.02%          interpreter
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.00%       hsdis-amd64.so
   0.00%     perf-2131348.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 6)

# Run progress: 41.67% complete, ETA 00:13:13
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.414 ns/op
# Warmup Iteration   2: 6.265 ns/op
# Warmup Iteration   3: 6.252 ns/op
# Warmup Iteration   4: 6.259 ns/op
# Warmup Iteration   5: 6.264 ns/op
Iteration   1: 6.258 ns/op
Iteration   2: 6.258 ns/op
Iteration   3: 6.262 ns/op
Iteration   4: 6.266 ns/op
Iteration   5: 6.268 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  6.262 ±(99.9%) 0.017 ns/op [Average]
  (min, avg, max) = (6.258, 6.262, 6.268), stdev = 0.005
  CI (99.9%): [6.245, 6.280] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 224245 total address lines.
Perf output processed (skipped 60.426 seconds):
 Column 1: cycles (50780 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 970 

   0.01%    0x00007fcc27245a8b:   nop
            0x00007fcc27245a8c:   cmpl   $0x1,0x20(%r15)
            0x00007fcc27245a94:   jne    0x00007fcc27246445
            0x00007fcc27245a9a:   mov    %rbp,0x60(%rsp)
            0x00007fcc27245a9f:   mov    %rsi,%rbp
            0x00007fcc27245aa2:   mov    %rbp,0x48(%rsp)
            0x00007fcc27245aa7:   mov    0x18(%rbp),%esi              ; ImmutableOopMap {rbp=Oop rsi=NarrowOop [72]=Oop }
                                                                      ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@0 (line 114)
            0x00007fcc27245aaa:   mov    0xc(,%rsi,8),%r13d           ; implicit exception: dispatches to 0x00007fcc27246469
   0.01%    0x00007fcc27245ab2:   mov    %r13d,0x54(%rsp)
   0.01%    0x00007fcc27245ab7:   mov    %esi,%r14d
            0x00007fcc27245aba:   shl    $0x3,%r14                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
            0x00007fcc27245abe:   mov    %r14,0x40(%rsp)
            0x00007fcc27245ac3:   movabs $0x7fec35028,%rdi            ;   {oop([B{0x00000007fec35028})}
   0.01%    0x00007fcc27245acd:   mov    %rdi,0x38(%rsp)
            0x00007fcc27245ad2:   movabs $0x7fec34fc0,%r10            ;   {oop([B{0x00000007fec34fc0})}
            0x00007fcc27245adc:   mov    %r10,0x30(%rsp)
            0x00007fcc27245ae1:   movabs $0x7fec34f90,%r11            ;   {oop([B{0x00000007fec34f90})}
   0.01%    0x00007fcc27245aeb:   mov    %r11,0x28(%rsp)
            0x00007fcc27245af0:   movabs $0x7fec35090,%r8             ;   {oop([B{0x00000007fec35090})}
            0x00007fcc27245afa:   mov    %r8,0x20(%rsp)
            0x00007fcc27245aff:   movabs $0x7fec35060,%r9             ;   {oop([B{0x00000007fec35060})}
   0.01%    0x00007fcc27245b09:   mov    %r9,0x18(%rsp)
            0x00007fcc27245b0e:   movabs $0x7fec34ff0,%rbx            ;   {oop([B{0x00000007fec34ff0})}
            0x00007fcc27245b18:   mov    %rbx,0x10(%rsp)
   0.00%    0x00007fcc27245b1d:   mov    $0x0,%ecx
   0.00%    0x00007fcc27245b22:   mov    $0x0,%eax
            0x00007fcc27245b27:   jmp    0x00007fcc27245dbd           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
            0x00007fcc27245b2c:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007fcc27245b37:   data16 data16 xchg %ax,%ax
            0x00007fcc27245b3b:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.29%    0x00007fcc27245b40:   mov    0x10(%r14,%rcx,4),%edx       ; ImmutableOopMap {rdx=NarrowOop r14=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
  12.41%    0x00007fcc27245b45:   mov    0xc(,%rdx,8),%esi            ; implicit exception: dispatches to 0x00007fcc2724648d
  23.17%    0x00007fcc27245b4c:   movsbl 0x10(,%rdx,8),%ebp           ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::isLatin1@7 (line 4817)
                                                                      ; - java.lang.String::hashCode@17 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.02%    0x00007fcc27245b54:   mov    0x14(,%rdx,8),%r13d          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@24 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   3.03%    0x00007fcc27245b5c:   mov    %r13d,%r14d
   1.10%    0x00007fcc27245b5f:   shl    $0x3,%r14                    ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@257 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   5.03%    0x00007fcc27245b63:   mov    %edx,%edi
            0x00007fcc27245b65:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
            0x00007fcc27245b69:   test   %esi,%esi
            0x00007fcc27245b6b:   je     0x00007fcc272460da           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@6 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   1.02%    0x00007fcc27245b71:   mov    %rdi,(%rsp)
   5.10%    0x00007fcc27245b75:   mov    %r14,0x8(%rsp)
   3.13%    0x00007fcc27245b7a:   mov    %edx,%r14d
            0x00007fcc27245b7d:   mov    %ecx,0x50(%rsp)
   0.82%    0x00007fcc27245b81:   mov    %eax,%edi                    ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@58 (line 2373)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   2.02%    0x00007fcc27245b83:   cmp    $0x23c6acdf,%esi
            0x00007fcc27245b89:   je     0x00007fcc27245cb7
   2.64%    0x00007fcc27245b8f:   cmp    $0x9ef434af,%esi
            0x00007fcc27245b95:   je     0x00007fcc27245dce
            0x00007fcc27245b9b:   cmp    $0x462300d,%esi
            0x00007fcc27245ba1:   je     0x00007fcc27245e65
   0.73%    0x00007fcc27245ba7:   cmp    $0x33eb4d91,%esi
            0x00007fcc27245bad:   je     0x00007fcc27245ee9
   0.77%    0x00007fcc27245bb3:   cmp    $0x103b4,%esi
            0x00007fcc27245bb9:   je     0x00007fcc27245fa5
   0.68%    0x00007fcc27245bbf:   cmp    $0x14234,%esi
            0x00007fcc27245bc5:   je     0x00007fcc27246034
            0x00007fcc27245bcb:   cmp    $0x90663ad4,%esi
            0x00007fcc27245bd1:   je     0x00007fcc27246367
            0x00007fcc27245bd7:   cmp    $0xa2a1be40,%esi
            0x00007fcc27245bdd:   data16 xchg %ax,%ax
            0x00007fcc27245be0:   je     0x00007fcc27246367
            0x00007fcc27245be6:   cmp    $0xaf2874e8,%esi
            0x00007fcc27245bec:   je     0x00007fcc27246367
            0x00007fcc27245bf2:   cmp    $0xba6eabe2,%esi
            0x00007fcc27245bf8:   je     0x00007fcc27246367
....................................................................................................
  62.01%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 970 

             0x00007fcc27245d70:   cmp    $0x1,%r8d
          ╭  0x00007fcc27245d74:   je     0x00007fcc27245da5
          │  0x00007fcc27245d7a:   jmp    0x00007fcc27246344
   3.17%  │  0x00007fcc27245d7f:   cmp    $0x5,%r8d
          │  0x00007fcc27245d83:   jg     0x00007fcc27246344
          │  0x00007fcc27245d89:   cmp    $0x5,%r8d
          │  0x00007fcc27245d8d:   jge    0x00007fcc272460d0
          │  0x00007fcc27245d93:   cmp    $0x3,%r8d
          │  0x00007fcc27245d97:   je     0x00007fcc27245f85
          │  0x00007fcc27245d9d:   data16 xchg %ax,%ax
   0.95%  │  0x00007fcc27245da0:   jmp    0x00007fcc272460c6           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@564 (line 214)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          ↘  0x00007fcc27245da5:   mov    $0x2,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@792 (line 214)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   6.19%     0x00007fcc27245daa:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@32 (line 116)
             0x00007fcc27245dad:   mov    0x50(%rsp),%ecx
             0x00007fcc27245db1:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
   0.28%     0x00007fcc27245db3:   mov    0x40(%rsp),%r14
   5.85%     0x00007fcc27245db8:   mov    0x54(%rsp),%r13d             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
             0x00007fcc27245dbd:   data16 xchg %ax,%ax                 ;   {no_reloc}
   0.00%     0x00007fcc27245dc0:   cmp    %ecx,%r13d
             0x00007fcc27245dc3:   jg     0x00007fcc27245b40
   0.06%     0x00007fcc27245dc9:   jmp    0x00007fcc272461e8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
             0x00007fcc27245dce:   mov    (%rsp),%r8
   0.29%     0x00007fcc27245dd2:   mov    %edi,%r11d
   0.29%     0x00007fcc27245dd5:   mov    0x38(%rsp),%r10
   0.37%     0x00007fcc27245dda:   nopw   0x0(%rax,%rax,1)
             0x00007fcc27245de0:   cmp    $0xffd869fb,%r14d            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fec34fd8})}
             0x00007fcc27245de7:   je     0x00007fcc2724619b
             0x00007fcc27245ded:   test   %bpl,%bpl
             0x00007fcc27245df0:   jne    0x00007fcc27246438           ;* unwind (locked if synchronized)
                                                                       ; - java.lang.String::equals@-3
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
             0x00007fcc27245df6:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {r8=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
                                                                       ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
....................................................................................................
  14.27%  <total for region 2>

....[Hottest Regions]...............................................................................
  62.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 970 
  14.27%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 970 
   9.93%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 970 
   4.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 970 
   2.87%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 970 
   1.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 970 
   1.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 970 
   1.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 970 
   0.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 970 
   0.44%              kernel  [unknown] 
   0.40%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 970 
   0.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 970 
   0.11%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 999 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   1.22%  <...other 364 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.81%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 970 
   1.65%              kernel  [unknown] 
   0.10%                      <unknown> 
   0.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 999 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.16%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.90%      jvmci, level 4
   1.65%              kernel
   0.16%           libjvm.so
   0.11%        libc-2.31.so
   0.10%                    
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%          ld-2.31.so
   0.00%         interpreter
   0.00%    perf-2131409.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 12)

# Run progress: 50.00% complete, ETA 00:11:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.066 ns/op
# Warmup Iteration   2: 12.782 ns/op
# Warmup Iteration   3: 12.858 ns/op
# Warmup Iteration   4: 12.848 ns/op
# Warmup Iteration   5: 12.885 ns/op
Iteration   1: 12.900 ns/op
Iteration   2: 12.786 ns/op
Iteration   3: 12.896 ns/op
Iteration   4: 12.888 ns/op
Iteration   5: 12.879 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  12.870 ±(99.9%) 0.183 ns/op [Average]
  (min, avg, max) = (12.786, 12.870, 12.900), stdev = 0.047
  CI (99.9%): [12.687, 13.053] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 219298 total address lines.
Perf output processed (skipped 60.360 seconds):
 Column 1: cycles (50676 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 972 

                #           [sp+0x40]  (sp of caller)
                0x00007fde372402a0:   mov    0x8(%rsi),%r10d
                0x00007fde372402a4:   movabs $0x7fddbb000000,%r12
                0x00007fde372402ae:   add    %r12,%r10
                0x00007fde372402b1:   xor    %r12,%r12
                0x00007fde372402b4:   cmp    %r10,%rax
                0x00007fde372402b7:   jne    0x00007fde36c2f080           ;   {runtime_call ic_miss_stub}
                0x00007fde372402bd:   data16 xchg %ax,%ax
              [Verified Entry Point]
                0x00007fde372402c0:   mov    %eax,-0x14000(%rsp)
   0.01%        0x00007fde372402c7:   sub    $0x38,%rsp
                0x00007fde372402cb:   nop
                0x00007fde372402cc:   cmpl   $0x0,0x20(%r15)
   0.00%        0x00007fde372402d4:   jne    0x00007fde372403f8
                0x00007fde372402da:   mov    %rbp,0x30(%rsp)
                0x00007fde372402df:   mov    0x18(%rsi),%edx              ; ImmutableOopMap {rdx=NarrowOop rsi=Oop }
                                                                          ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@0 (line 114)
                0x00007fde372402e2:   mov    0xc(,%rdx,8),%r10d           ; implicit exception: dispatches to 0x00007fde3724041c
   0.00%        0x00007fde372402ea:   test   %r10d,%r10d
          ╭     0x00007fde372402ed:   je     0x00007fde372403ce           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.00%  │     0x00007fde372402f3:   mov    %rsi,0x10(%rsp)
          │     0x00007fde372402f8:   mov    %r10d,0x24(%rsp)
          │     0x00007fde372402fd:   mov    %r10d,%r11d
          │     0x00007fde37240300:   dec    %r11d
          │     0x00007fde37240303:   movslq %r11d,%r11
          │     0x00007fde37240306:   mov    %r10d,%r8d
   0.01%  │     0x00007fde37240309:   cmp    %r11,%r8
          │╭    0x00007fde3724030c:   ja     0x00007fde3724031c
          ││    0x00007fde37240312:   cmp    $0x2,%r10d
          ││    0x00007fde37240316:   jae    0x00007fde372403d5
   0.00%  │↘    0x00007fde3724031c:   mov    0x10(,%rdx,8),%r11d
          │     0x00007fde37240324:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   0.00%  │     0x00007fde37240328:   shl    $0x3,%rdx                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
          │     0x00007fde3724032c:   mov    %rdx,0x8(%rsp)
          │     0x00007fde37240331:   mov    %rsi,%r8
   0.00%  │     0x00007fde37240334:   mov    %r11,%rdx
          │     0x00007fde37240337:   call   0x00007fde36c2f380           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          │                                                               ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          │                                                               ;   {optimized virtual_call}
   0.00%  │     0x00007fde3724033c:   nopl   0x100022c(%rax,%rax,1)       ;   {other}
          │     0x00007fde37240344:   mov    %eax,0x20(%rsp)
   0.02%  │     0x00007fde37240348:   mov    $0x1,%r11d
          │ ╭   0x00007fde3724034e:   jmp    0x00007fde37240394           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
          │ │   0x00007fde37240353:   nopw   0x0(%rax,%rax,1)
          │ │   0x00007fde3724035c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   2.81%  │ │↗  0x00007fde37240360:   mov    0x10(%rdx,%r11,4),%r9d
   7.48%  │ ││  0x00007fde37240365:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   2.84%  │ ││  0x00007fde37240369:   mov    %rsi,%rcx
          │ ││  0x00007fde3724036c:   mov    %r9,%rdx                     ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          │ ││  0x00007fde3724036f:   mov    %r11d,0x1c(%rsp)
   0.02%  │ ││  0x00007fde37240374:   data16 xchg %ax,%ax
   2.81%  │ ││  0x00007fde37240377:   call   0x00007fde36c2f380           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          │ ││                                                            ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          │ ││                                                            ;   {optimized virtual_call}
   0.56%  │ ││  0x00007fde3724037c:   nopl   0x200026c(%rax,%rax,1)       ;   {other}
          │ ││  0x00007fde37240384:   add    0x20(%rsp),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@32 (line 116)
  17.68%  │ ││  0x00007fde37240388:   mov    0x1c(%rsp),%r11d
   0.01%  │ ││  0x00007fde3724038d:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
   0.29%  │ ││  0x00007fde37240390:   mov    %eax,0x20(%rsp)              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
   5.25%  │ ↘│  0x00007fde37240394:   mov    0x8(%rsp),%rdx
   0.11%  │  │  0x00007fde37240399:   mov    0x24(%rsp),%r10d
   0.00%  │  │  0x00007fde3724039e:   mov    0x10(%rsp),%rsi
          │  │  0x00007fde372403a3:   cmp    %r11d,%r10d
          │  ╰  0x00007fde372403a6:   jg     0x00007fde37240360           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.04%  │     0x00007fde372403a8:   mov    0x20(%rsp),%eax              ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@40 (line 118)
   0.04%  │     0x00007fde372403ac:   mov    0x30(%rsp),%rbp
          │     0x00007fde372403b1:   add    $0x38,%rsp
          │     0x00007fde372403b5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │     0x00007fde372403c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │     0x00007fde372403c7:   ja     0x00007fde37240408
   0.01%  │     0x00007fde372403cd:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
          ↘     0x00007fde372403ce:   mov    $0x0,%eax
                0x00007fde372403d3:   jmp    0x00007fde372403ac           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@40 (line 118)
....................................................................................................
  39.99%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 

             # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007fde3723d580:   mov    0x8(%rsi),%r10d
             0x00007fde3723d584:   movabs $0x7fddbb000000,%r12
             0x00007fde3723d58e:   add    %r12,%r10
             0x00007fde3723d591:   xor    %r12,%r12
             0x00007fde3723d594:   cmp    %r10,%rax
             0x00007fde3723d597:   jne    0x00007fde36c2f080           ;   {runtime_call ic_miss_stub}
             0x00007fde3723d59d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.00%     0x00007fde3723d5a0:   mov    %eax,-0x14000(%rsp)
   5.06%     0x00007fde3723d5a7:   sub    $0x18,%rsp
   0.00%     0x00007fde3723d5ab:   nop
             0x00007fde3723d5ac:   cmpl   $0x1,0x20(%r15)
   0.01%     0x00007fde3723d5b4:   jne    0x00007fde3723e42d
   3.06%     0x00007fde3723d5ba:   mov    %rbp,0x10(%rsp)
   0.00%     0x00007fde3723d5bf:   mov    %rdx,%rbp                    ; ImmutableOopMap {rbp=Oop }
                                                                       ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@0 (line 214)
             0x00007fde3723d5c2:   mov    0xc(%rbp),%r10d              ; implicit exception: dispatches to 0x00007fde3723e451
   6.99%     0x00007fde3723d5c6:   movsbl 0x10(%rbp),%edi              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::isLatin1@7 (line 4817)
                                                                       ; - java.lang.String::hashCode@17 (line 2365)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   0.67%     0x00007fde3723d5ca:   mov    0x14(%rbp),%r13d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::hashCode@24 (line 2365)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   1.24%     0x00007fde3723d5ce:   mov    %r13d,%r14d
             0x00007fde3723d5d1:   shl    $0x3,%r14                    ;* unwind (locked if synchronized)
                                                                       ; - java.lang.String::equals@-3
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@314 (line 214)
   2.34%     0x00007fde3723d5d5:   test   %r10d,%r10d
             0x00007fde3723d5d8:   je     0x00007fde3723d951           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::hashCode@6 (line 2364)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   0.68%     0x00007fde3723d5de:   cmp    $0x4c5f9e8,%r10d
             0x00007fde3723d5e5:   jge    0x00007fde3723d738
   0.46%     0x00007fde3723d5eb:   cmp    $0x14234,%r10d
             0x00007fde3723d5f2:   jge    0x00007fde3723d6eb
   0.60%     0x00007fde3723d5f8:   cmp    $0xfce7bd80,%r10d
   0.18%     0x00007fde3723d5ff:   nop
   0.34%     0x00007fde3723d600:   jge    0x00007fde3723d6b1
   0.19%     0x00007fde3723d606:   cmp    $0xa2a1be40,%r10d
          ╭  0x00007fde3723d60d:   jge    0x00007fde3723d632
   0.05%  │  0x00007fde3723d613:   cmp    $0x90663ad4,%r10d
          │  0x00007fde3723d61a:   je     0x00007fde3723e268
   0.12%  │  0x00007fde3723d620:   cmp    $0x9ef434af,%r10d
          │  0x00007fde3723d627:   je     0x00007fde3723d9bc
          │  0x00007fde3723d62d:   jmp    0x00007fde3723e268
   0.11%  ↘  0x00007fde3723d632:   cmp    $0xeb2c8617,%r10d
             0x00007fde3723d639:   jg     0x00007fde3723e268
   0.09%     0x00007fde3723d63f:   cmp    $0xeb2c8617,%r10d
             0x00007fde3723d646:   jge    0x00007fde3723de05
             0x00007fde3723d64c:   cmp    $0xc517aa2b,%r10d
             0x00007fde3723d653:   jge    0x00007fde3723d692
             0x00007fde3723d659:   cmp    $0xba6eabe2,%r10d
             0x00007fde3723d660:   jg     0x00007fde3723e268
             0x00007fde3723d666:   cmp    $0xba6eabe2,%r10d
             0x00007fde3723d66d:   jge    0x00007fde3723e268
             0x00007fde3723d673:   cmp    $0xa2a1be40,%r10d
             0x00007fde3723d67a:   je     0x00007fde3723e268
             0x00007fde3723d680:   cmp    $0xaf2874e8,%r10d
....................................................................................................
  22.19%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 

   0.51%    0x00007fde3723d900:   je     0x00007fde3723dde6
            0x00007fde3723d906:   jmp    0x00007fde3723ddd2
   0.70%    0x00007fde3723d90b:   cmp    $0xb,%r10d
            0x00007fde3723d90f:   jg     0x00007fde3723e128
            0x00007fde3723d915:   cmp    $0xb,%r10d
            0x00007fde3723d919:   jge    0x00007fde3723ddb4
            0x00007fde3723d91f:   cmp    $0x9,%r10d
            0x00007fde3723d923:   je     0x00007fde3723ddbe
            0x00007fde3723d929:   jmp    0x00007fde3723ddc8           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@564 (line 214)
   0.13%    0x00007fde3723d92e:   mov    $0x4,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@792 (line 214)
   2.66%    0x00007fde3723d933:   mov    0x10(%rsp),%rbp              ;   {no_reloc}
   2.39%    0x00007fde3723d938:   add    $0x18,%rsp
   0.00%    0x00007fde3723d93c:   nopl   0x0(%rax)
   0.02%    0x00007fde3723d940:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            0x00007fde3723d947:   ja     0x00007fde3723e43d
   4.66%    0x00007fde3723d94d:   vzeroupper 
   2.94%    0x00007fde3723d950:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@6 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
            0x00007fde3723d951:   cmpb   $0x0,0x11(%rbp)
            0x00007fde3723d955:   jne    0x00007fde3723d5de           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@13 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
            0x00007fde3723d95b:   nopl   0x0(%rax,%rax,1)
            0x00007fde3723d960:   test   %dil,%dil
            0x00007fde3723d963:   jne    0x00007fde3723e328           ; ImmutableOopMap {rbp=Oop r13=NarrowOop r14=Oop }
                                                                      ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  12.80%  <total for region 3>

....[Hottest Regions]...............................................................................
  39.99%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 972 
  22.19%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 
  12.80%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 
   9.31%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 
   6.46%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 
   2.84%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 
   2.43%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 
   0.44%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 
   0.28%              kernel  [unknown] 
   0.25%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 
   0.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 
   0.21%              kernel  [unknown] 
   0.20%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 
   0.19%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 
   0.17%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 
   0.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 
   0.15%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 
   0.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 
   0.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 
   0.08%              kernel  [unknown] 
   1.39%  <...other 299 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  58.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 967 
  40.00%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 972 
   1.55%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 999 
   0.06%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  stringStream::write 
   0.00%           libjvm.so  HighResTimeSampler::take_sample 
   0.16%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.10%      jvmci, level 4
   1.55%              kernel
   0.13%           libjvm.so
   0.09%        libc-2.31.so
   0.06%                    
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%    perf-2131478.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 24)

# Run progress: 58.33% complete, ETA 00:09:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.032 ns/op
# Warmup Iteration   2: 24.736 ns/op
# Warmup Iteration   3: 24.793 ns/op
# Warmup Iteration   4: 24.772 ns/op
# Warmup Iteration   5: 24.785 ns/op
Iteration   1: 24.780 ns/op
Iteration   2: 24.722 ns/op
Iteration   3: 24.754 ns/op
Iteration   4: 24.778 ns/op
Iteration   5: 24.785 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  24.764 ±(99.9%) 0.102 ns/op [Average]
  (min, avg, max) = (24.722, 24.764, 24.785), stdev = 0.026
  CI (99.9%): [24.662, 24.865] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 221130 total address lines.
Perf output processed (skipped 60.348 seconds):
 Column 1: cycles (50739 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 948 

               0x00007fbe7723fb06:   mov    %r10d,%r8d
               0x00007fbe7723fb09:   cmp    %r11,%r8
          ╭    0x00007fbe7723fb0c:   ja     0x00007fbe7723fb1c
          │    0x00007fbe7723fb12:   cmp    $0x2,%r10d
          │    0x00007fbe7723fb16:   jae    0x00007fbe7723fbd5
          ↘    0x00007fbe7723fb1c:   mov    0x10(,%rdx,8),%r11d
               0x00007fbe7723fb24:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
               0x00007fbe7723fb28:   shl    $0x3,%rdx                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
   0.00%       0x00007fbe7723fb2c:   mov    %rdx,0x8(%rsp)
               0x00007fbe7723fb31:   mov    %rsi,%r8
               0x00007fbe7723fb34:   mov    %r11,%rdx
               0x00007fbe7723fb37:   call   0x00007fbe7723c100           ; ImmutableOopMap {[8]=Oop [16]=Oop }
                                                                         ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
                                                                         ;   {optimized virtual_call}
               0x00007fbe7723fb3c:   nopl   0x100022c(%rax,%rax,1)       ;   {other}
               0x00007fbe7723fb44:   mov    %eax,0x20(%rsp)
   0.02%       0x00007fbe7723fb48:   mov    $0x1,%r11d
           ╭   0x00007fbe7723fb4e:   jmp    0x00007fbe7723fb94           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
           │   0x00007fbe7723fb53:   nopw   0x0(%rax,%rax,1)
           │   0x00007fbe7723fb5c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   1.42%   │↗  0x00007fbe7723fb60:   mov    0x10(%rdx,%r11,4),%r9d
   3.54%   ││  0x00007fbe7723fb65:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   1.50%   ││  0x00007fbe7723fb69:   mov    %rsi,%rcx
           ││  0x00007fbe7723fb6c:   mov    %r9,%rdx                     ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           ││  0x00007fbe7723fb6f:   mov    %r11d,0x1c(%rsp)
           ││  0x00007fbe7723fb74:   data16 xchg %ax,%ax
   1.43%   ││  0x00007fbe7723fb77:   call   0x00007fbe7723c100           ; ImmutableOopMap {[8]=Oop [16]=Oop }
           ││                                                            ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           ││                                                            ;   {optimized virtual_call}
           ││  0x00007fbe7723fb7c:   nopl   0x200026c(%rax,%rax,1)       ;   {other}
           ││  0x00007fbe7723fb84:   add    0x20(%rsp),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@32 (line 116)
  15.54%   ││  0x00007fbe7723fb88:   mov    0x1c(%rsp),%r11d
           ││  0x00007fbe7723fb8d:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
           ││  0x00007fbe7723fb90:   mov    %eax,0x20(%rsp)              ;*iload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
   3.07%   ↘│  0x00007fbe7723fb94:   mov    0x8(%rsp),%rdx
            │  0x00007fbe7723fb99:   mov    0x24(%rsp),%r10d
   0.00%    │  0x00007fbe7723fb9e:   mov    0x10(%rsp),%rsi
            │  0x00007fbe7723fba3:   cmp    %r11d,%r10d
            ╰  0x00007fbe7723fba6:   jg     0x00007fbe7723fb60           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.01%       0x00007fbe7723fba8:   mov    0x20(%rsp),%eax              ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@40 (line 118)
   0.02%       0x00007fbe7723fbac:   mov    0x30(%rsp),%rbp
               0x00007fbe7723fbb1:   add    $0x38,%rsp
               0x00007fbe7723fbb5:   data16 data16 nopw 0x0(%rax,%rax,1)
               0x00007fbe7723fbc0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               0x00007fbe7723fbc7:   ja     0x00007fbe7723fc08
   0.01%       0x00007fbe7723fbcd:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
               0x00007fbe7723fbce:   mov    $0x0,%eax
               0x00007fbe7723fbd3:   jmp    0x00007fbe7723fbac           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@40 (line 118)
....................................................................................................
  26.56%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 

            0x00007fbe7723c814:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
            0x00007fbe7723c818:   nopl   0x0(%rax,%rax,1)
            0x00007fbe7723c820:   test   %r10d,%r10d
            0x00007fbe7723c823:   je     0x00007fbe7723d570           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@232 (line 214)
            0x00007fbe7723c829:   mov    $0x1,%r10d
            0x00007fbe7723c82f:   jmp    0x00007fbe7723c3e2           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@563 (line 214)
   0.75%    0x00007fbe7723c834:   mov    $0x3,%eax
   0.42%    0x00007fbe7723c839:   jmp    0x00007fbe7723c465
   1.00%    0x00007fbe7723c83e:   mov    $0x4,%eax
   0.37%    0x00007fbe7723c843:   jmp    0x00007fbe7723c465
   0.88%    0x00007fbe7723c848:   mov    $0x1,%eax
   0.37%    0x00007fbe7723c84d:   jmp    0x00007fbe7723c465
   0.79%    0x00007fbe7723c852:   mov    $0x2,%eax
   0.42%    0x00007fbe7723c857:   jmp    0x00007fbe7723c465
   0.95%    0x00007fbe7723c85c:   mov    $0xd,%eax
   0.43%    0x00007fbe7723c861:   jmp    0x00007fbe7723c465
   0.93%    0x00007fbe7723c866:   mov    $0xf,%eax
   0.47%    0x00007fbe7723c86b:   jmp    0x00007fbe7723c465
   0.91%    0x00007fbe7723c870:   mov    $0xe,%eax
   0.42%    0x00007fbe7723c875:   jmp    0x00007fbe7723c465
   0.89%    0x00007fbe7723c87a:   mov    $0x5,%eax
   0.37%    0x00007fbe7723c87f:   nop
            0x00007fbe7723c880:   jmp    0x00007fbe7723c465
   0.89%    0x00007fbe7723c885:   mov    $0x9,%eax
   0.41%    0x00007fbe7723c88a:   jmp    0x00007fbe7723c465
   0.88%    0x00007fbe7723c88f:   mov    $0xb,%eax
   0.42%    0x00007fbe7723c894:   jmp    0x00007fbe7723c465
   0.68%    0x00007fbe7723c899:   mov    $0xc,%eax
   0.35%    0x00007fbe7723c89e:   xchg   %ax,%ax
            0x00007fbe7723c8a0:   jmp    0x00007fbe7723c465
   0.83%    0x00007fbe7723c8a5:   mov    $0xa,%eax
   0.43%    0x00007fbe7723c8aa:   jmp    0x00007fbe7723c465
   0.94%    0x00007fbe7723c8af:   mov    $0x6,%eax
   0.38%    0x00007fbe7723c8b4:   jmp    0x00007fbe7723c465
   0.77%    0x00007fbe7723c8b9:   mov    $0x7,%eax
   0.35%    0x00007fbe7723c8be:   xchg   %ax,%ax
            0x00007fbe7723c8c0:   jmp    0x00007fbe7723c465           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@792 (line 214)
   0.93%    0x00007fbe7723c8c5:   mov    $0x8,%eax
   0.44%    0x00007fbe7723c8ca:   jmp    0x00007fbe7723c465
            0x00007fbe7723c8cf:   movabs $0x7fed35200,%rsi            ;   {oop(&quot;JET_SKI&quot;{0x00000007fed35200})}
   0.08%    0x00007fbe7723c8d9:   nopl   0x0(%rax)
            0x00007fbe7723c8e0:   cmp    %rbp,%rsi
            0x00007fbe7723c8e3:   je     0x00007fbe7723d330
            0x00007fbe7723c8e9:   test   %dil,%dil
            0x00007fbe7723c8ec:   jne    0x00007fbe7723d3a5           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@404 (line 214)
            0x00007fbe7723c8f2:   data16 nopw 0x0(%rax,%rax,1)
            0x00007fbe7723c8fc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rbp=Oop r14=Oop }
                                                                      ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
....................................................................................................
  19.14%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 

            0x00007fbe7723c43e:   add    %al,(%rax)
            0x00007fbe7723c440:   gs or  $0xd590000,%eax
            0x00007fbe7723c446:   add    %al,(%rax)
            0x00007fbe7723c448:   cmp    0xd270000(%rip),%ecx        # 0x00007fbe844ac44e
            0x00007fbe7723c44e:   add    %al,(%rax)
            0x00007fbe7723c450:   xor    %ecx,0xd6f0000(%rip)        # 0x00007fbe8492c456
            0x00007fbe7723c456:   add    %al,(%rax)
            0x00007fbe7723c458:   rex.WRXB or $0xd450000,%rax
            0x00007fbe7723c45e:   add    %al,(%rax)                   ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@564 (line 214)
   0.93%    0x00007fbe7723c460:   mov    $0x10,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@792 (line 214)
   1.66%    0x00007fbe7723c465:   mov    0x10(%rsp),%rbp
   8.73%    0x00007fbe7723c46a:   add    $0x18,%rsp
            0x00007fbe7723c46e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            0x00007fbe7723c475:   ja     0x00007fbe7723d7a0
   6.05%    0x00007fbe7723c47b:   vzeroupper 
   1.54%    0x00007fbe7723c47e:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@6 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
            0x00007fbe7723c47f:   nop
            0x00007fbe7723c480:   cmpb   $0x0,0x11(%rbp)
            0x00007fbe7723c484:   jne    0x00007fbe7723c13e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@13 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
            0x00007fbe7723c48a:   test   %dil,%dil
            0x00007fbe7723c48d:   jne    0x00007fbe7723d719           ; ImmutableOopMap {rbp=Oop r13=NarrowOop r14=Oop }
                                                                      ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  18.90%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 

            0x00007fbe7723d10c:   or     %rsi,%rdx
            0x00007fbe7723d10f:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@539 (line 214)
            0x00007fbe7723d113:   test   %r10d,%r10d
            0x00007fbe7723d116:   je     0x00007fbe7723d668           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@542 (line 214)
            0x00007fbe7723d11c:   mov    $0x16,%r10d
            0x00007fbe7723d122:   jmp    0x00007fbe7723c3e2           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@563 (line 214)
   0.89%    0x00007fbe7723d127:   mov    $0x14,%eax
   0.45%    0x00007fbe7723d12c:   jmp    0x00007fbe7723c465
   0.97%    0x00007fbe7723d131:   mov    $0x15,%eax
   0.35%    0x00007fbe7723d136:   jmp    0x00007fbe7723c465
   0.71%    0x00007fbe7723d13b:   mov    $0x13,%eax
   0.37%    0x00007fbe7723d140:   jmp    0x00007fbe7723c465
   0.91%    0x00007fbe7723d145:   mov    $0x18,%eax
   0.35%    0x00007fbe7723d14a:   jmp    0x00007fbe7723c465
   0.96%    0x00007fbe7723d14f:   mov    $0x17,%eax
   0.40%    0x00007fbe7723d154:   jmp    0x00007fbe7723c465
   0.94%    0x00007fbe7723d159:   mov    $0x12,%eax
   0.35%    0x00007fbe7723d15e:   xchg   %ax,%ax
            0x00007fbe7723d160:   jmp    0x00007fbe7723c465
   0.91%    0x00007fbe7723d165:   mov    $0x11,%eax
   0.42%    0x00007fbe7723d16a:   jmp    0x00007fbe7723c465           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@792 (line 214)
   0.91%    0x00007fbe7723d16f:   mov    $0x16,%eax
   0.41%    0x00007fbe7723d174:   jmp    0x00007fbe7723c465
            0x00007fbe7723d179:   movabs $0x7fed352a0,%rsi            ;   {oop(&quot;BOAT&quot;{0x00000007fed352a0})}
            0x00007fbe7723d183:   cmp    %rbp,%rsi
            0x00007fbe7723d186:   je     0x00007fbe7723d388
            0x00007fbe7723d18c:   test   %dil,%dil
            0x00007fbe7723d18f:   jne    0x00007fbe7723d3a5           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@449 (line 214)
            0x00007fbe7723d195:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rbp=Oop r14=Oop }
                                                                      ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
....................................................................................................
  10.29%  <total for region 4>

....[Hottest Regions]...............................................................................
  26.56%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 948 
  19.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 
  18.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 
  10.29%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 
   9.43%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 
   3.66%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 
   3.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 
   1.92%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 
   1.67%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 
   0.81%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 
   0.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 
   0.29%              kernel  [unknown] 
   0.22%              kernel  [unknown] 
   0.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 
   0.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 
   0.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 
   0.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 
   0.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 
   0.11%              kernel  [unknown] 
   0.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 
   2.27%  <...other 339 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 943 
  26.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 948 
   1.64%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 977 
   0.02%           libjvm.so  fileStream::write 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  resource_allocate_bytes 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.15%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.98%      jvmci, level 4
   1.64%              kernel
   0.12%           libjvm.so
   0.11%                    
   0.11%        libc-2.31.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 3)

# Run progress: 66.67% complete, ETA 00:07:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.479 ns/op
# Warmup Iteration   2: 5.375 ns/op
# Warmup Iteration   3: 5.371 ns/op
# Warmup Iteration   4: 5.364 ns/op
# Warmup Iteration   5: 5.367 ns/op
Iteration   1: 5.367 ns/op
Iteration   2: 5.357 ns/op
Iteration   3: 5.365 ns/op
Iteration   4: 5.359 ns/op
Iteration   5: 5.367 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  5.363 ±(99.9%) 0.018 ns/op [Average]
  (min, avg, max) = (5.357, 5.363, 5.367), stdev = 0.005
  CI (99.9%): [5.345, 5.381] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 222143 total address lines.
Perf output processed (skipped 60.453 seconds):
 Column 1: cycles (50791 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 964 

            # {method} {0x00007f21bc47dac0} &apos;switch_statements&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
            #           [sp+0x60]  (sp of caller)
            0x00007f2243240e40:   mov    0x8(%rsi),%r10d
            0x00007f2243240e44:   movabs $0x7f21c7000000,%r12
            0x00007f2243240e4e:   add    %r12,%r10
            0x00007f2243240e51:   xor    %r12,%r12
            0x00007f2243240e54:   cmp    %r10,%rax
            0x00007f2243240e57:   jne    0x00007f2242c2f080           ;   {runtime_call ic_miss_stub}
            0x00007f2243240e5d:   data16 xchg %ax,%ax
          [Verified Entry Point]
   0.01%    0x00007f2243240e60:   mov    %eax,-0x14000(%rsp)
   0.02%    0x00007f2243240e67:   sub    $0x58,%rsp
   0.00%    0x00007f2243240e6b:   nop
            0x00007f2243240e6c:   cmpl   $0x1,0x20(%r15)
   0.00%    0x00007f2243240e74:   jne    0x00007f22432414ae
            0x00007f2243240e7a:   mov    %rbp,0x50(%rsp)
   0.01%    0x00007f2243240e7f:   mov    %rsi,%rbp
            0x00007f2243240e82:   mov    %rbp,0x30(%rsp)
            0x00007f2243240e87:   mov    0x18(%rbp),%esi              ; ImmutableOopMap {rbp=Oop rsi=NarrowOop [48]=Oop }
                                                                      ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@0 (line 103)
            0x00007f2243240e8a:   mov    0xc(,%rsi,8),%r13d           ; implicit exception: dispatches to 0x00007f22432414d2
   0.02%    0x00007f2243240e92:   mov    %r13d,0x44(%rsp)
   0.02%    0x00007f2243240e97:   mov    %esi,%r14d
            0x00007f2243240e9a:   shl    $0x3,%r14                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
            0x00007f2243240e9e:   mov    %r14,0x28(%rsp)
            0x00007f2243240ea3:   movabs $0x7fec34fc0,%rdi            ;   {oop([B{0x00000007fec34fc0})}
   0.01%    0x00007f2243240ead:   movabs $0x7fec34f90,%r10            ;   {oop([B{0x00000007fec34f90})}
            0x00007f2243240eb7:   mov    %r10,0x20(%rsp)
            0x00007f2243240ebc:   movabs $0x7fec34ff0,%r11            ;   {oop([B{0x00000007fec34ff0})}
            0x00007f2243240ec6:   mov    %r11,0x18(%rsp)
   0.00%    0x00007f2243240ecb:   mov    $0x0,%r9d
            0x00007f2243240ed1:   movl   $0x0,0x40(%rsp)
            0x00007f2243240ed9:   jmp    0x00007f2243241122           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
            0x00007f2243240ede:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   4.66%    0x00007f2243240ee0:   mov    0x10(%r14,%r9,4),%ebx        ; ImmutableOopMap {rbx=NarrowOop rdi=Oop r14=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
   1.48%    0x00007f2243240ee5:   mov    0xc(,%rbx,8),%ecx            ; implicit exception: dispatches to 0x00007f22432414f5
  26.02%    0x00007f2243240eec:   movsbl 0x10(,%rbx,8),%eax           ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::isLatin1@7 (line 4817)
                                                                      ; - java.lang.String::hashCode@17 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.02%    0x00007f2243240ef4:   mov    0x14(,%rbx,8),%edx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@24 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   4.27%    0x00007f2243240efb:   mov    %edx,%esi
            0x00007f2243240efd:   shl    $0x3,%rsi                    ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   7.06%    0x00007f2243240f01:   mov    %ebx,%ebp
   0.02%    0x00007f2243240f03:   shl    $0x3,%rbp                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
   0.01%    0x00007f2243240f07:   test   %ecx,%ecx
            0x00007f2243240f09:   je     0x00007f224324123d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@6 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
            0x00007f2243240f0f:   mov    %rbp,0x10(%rsp)
   7.01%    0x00007f2243240f14:   mov    %rsi,0x8(%rsp)
   4.17%    0x00007f2243240f19:   mov    %edx,%ebp
   0.01%    0x00007f2243240f1b:   mov    %r9d,0x3c(%rsp)
            0x00007f2243240f20:   mov    %eax,%r13d
   2.84%    0x00007f2243240f23:   mov    %ebx,%r14d                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@58 (line 2373)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   4.42%    0x00007f2243240f26:   cmp    $0x462300d,%ecx
            0x00007f2243240f2c:   je     0x00007f224324105b
   0.00%    0x00007f2243240f32:   cmp    $0x9ef434af,%ecx
            0x00007f2243240f38:   je     0x00007f224324113e
            0x00007f2243240f3e:   cmp    $0x23c6acdf,%ecx
            0x00007f2243240f44:   je     0x00007f22432411c5
            0x00007f2243240f4a:   cmp    $0x90663ad4,%ecx
            0x00007f2243240f50:   je     0x00007f224324140e
            0x00007f2243240f56:   cmp    $0xa2a1be40,%ecx
            0x00007f2243240f5c:   nopl   0x0(%rax)
            0x00007f2243240f60:   je     0x00007f224324140e
            0x00007f2243240f66:   cmp    $0xaf2874e8,%ecx
            0x00007f2243240f6c:   je     0x00007f224324140e
....................................................................................................
  62.10%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 964 

                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   7.03%         0x00007f22432410dd:   cmp    $0x0,%r11d
          ╭      0x00007f22432410e1:   je     0x00007f2243241100
          │      0x00007f22432410e7:   cmp    $0x1,%r11d
          │╭     0x00007f22432410eb:   je     0x00007f2243241130
          ││     0x00007f22432410f1:   cmp    $0x2,%r11d
          ││╭    0x00007f22432410f5:   je     0x00007f2243241137
          │││    0x00007f22432410fb:   jmp    0x00007f224324141a           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@589 (line 135)
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   2.43%  ↘││    0x00007f2243241100:   mov    $0x1,%eax                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@836 (line 210)
           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   4.68%   ││↗↗  0x00007f2243241105:   add    0x40(%rsp),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@32 (line 105)
           ││││  0x00007f2243241109:   mov    0x3c(%rsp),%r9d
           ││││  0x00007f224324110e:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
   2.31%   ││││  0x00007f2243241111:   mov    %eax,0x40(%rsp)
   4.79%   ││││  0x00007f2243241115:   mov    %r10,%rdi
           ││││  0x00007f2243241118:   mov    0x28(%rsp),%r14
           ││││  0x00007f224324111d:   mov    0x44(%rsp),%r13d             ;*iload {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
   2.37%   ││││  0x00007f2243241122:   cmp    %r9d,%r13d
           ││││  0x00007f2243241125:   jg     0x00007f2243240ee0
   0.02%   ││││  0x00007f224324112b:   jmp    0x00007f2243241325           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   2.41%   ↘│││  0x00007f2243241130:   mov    $0x2,%eax
            │╰│  0x00007f2243241135:   jmp    0x00007f2243241105
   2.30%    ↘ │  0x00007f2243241137:   mov    $0x3,%eax
              ╰  0x00007f224324113c:   jmp    0x00007f2243241105           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@836 (line 210)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
                 0x00007f224324113e:   mov    %rdi,%r10
   1.37%         0x00007f2243241141:   cmp    $0xffd869fb,%r14d            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fec34fd8})}
                 0x00007f2243241148:   je     0x00007f22432412f0
                 0x00007f224324114e:   test   %r13b,%r13b
                 0x00007f2243241151:   jne    0x00007f2243241498           ;* unwind (locked if synchronized)
                                                                           ; - java.lang.String::equals@-3
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
                 0x00007f2243241157:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {r10=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
                                                                           ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
....................................................................................................
  22.69%  <total for region 2>

....[Hottest Regions]...............................................................................
  62.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 964 
  22.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 964 
   7.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 964 
   3.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 964 
   2.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 964 
   0.65%               kernel  [unknown] 
   0.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 997 
   0.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 964 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.94%  <...other 296 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 964 
   1.78%               kernel  [unknown] 
   0.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 997 
   0.04%                       <unknown> 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  outputStream::print 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.18%  <...other 82 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.87%       jvmci, level 4
   1.78%               kernel
   0.12%            libjvm.so
   0.08%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.04%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%           libjava.so
   0.00%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 6)

# Run progress: 75.00% complete, ETA 00:05:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.275 ns/op
# Warmup Iteration   2: 6.135 ns/op
# Warmup Iteration   3: 6.136 ns/op
# Warmup Iteration   4: 6.158 ns/op
# Warmup Iteration   5: 6.144 ns/op
Iteration   1: 6.138 ns/op
Iteration   2: 6.137 ns/op
Iteration   3: 6.170 ns/op
Iteration   4: 6.157 ns/op
Iteration   5: 6.140 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  6.148 ±(99.9%) 0.058 ns/op [Average]
  (min, avg, max) = (6.137, 6.148, 6.170), stdev = 0.015
  CI (99.9%): [6.091, 6.206] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 220536 total address lines.
Perf output processed (skipped 60.375 seconds):
 Column 1: cycles (50575 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 977 

            # {method} {0x00007f02af47dae0} &apos;switch_statements&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
            #           [sp+0x70]  (sp of caller)
            0x00007f032f244560:   mov    0x8(%rsi),%r10d
            0x00007f032f244564:   movabs $0x7f02b3000000,%r12
            0x00007f032f24456e:   add    %r12,%r10
            0x00007f032f244571:   xor    %r12,%r12
            0x00007f032f244574:   cmp    %r10,%rax
            0x00007f032f244577:   jne    0x00007f032ec2f080           ;   {runtime_call ic_miss_stub}
            0x00007f032f24457d:   data16 xchg %ax,%ax
          [Verified Entry Point]
   0.01%    0x00007f032f244580:   mov    %eax,-0x14000(%rsp)
   0.00%    0x00007f032f244587:   sub    $0x68,%rsp
   0.00%    0x00007f032f24458b:   nop
            0x00007f032f24458c:   cmpl   $0x1,0x20(%r15)
            0x00007f032f244594:   jne    0x00007f032f244f2c
   0.00%    0x00007f032f24459a:   mov    %rbp,0x60(%rsp)
   0.00%    0x00007f032f24459f:   mov    %rsi,%rbp
            0x00007f032f2445a2:   mov    %rbp,0x48(%rsp)
            0x00007f032f2445a7:   mov    0x18(%rbp),%esi              ; ImmutableOopMap {rbp=Oop rsi=NarrowOop [72]=Oop }
                                                                      ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@0 (line 103)
   0.00%    0x00007f032f2445aa:   mov    0xc(,%rsi,8),%r13d           ; implicit exception: dispatches to 0x00007f032f244f50
   0.00%    0x00007f032f2445b2:   mov    %r13d,0x54(%rsp)
   0.00%    0x00007f032f2445b7:   mov    %esi,%r14d
            0x00007f032f2445ba:   shl    $0x3,%r14                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
            0x00007f032f2445be:   mov    %r14,0x40(%rsp)
            0x00007f032f2445c3:   movabs $0x7fec35028,%rdi            ;   {oop([B{0x00000007fec35028})}
   0.00%    0x00007f032f2445cd:   mov    %rdi,0x38(%rsp)
            0x00007f032f2445d2:   movabs $0x7fec34fc0,%r10            ;   {oop([B{0x00000007fec34fc0})}
            0x00007f032f2445dc:   mov    %r10,0x30(%rsp)
            0x00007f032f2445e1:   movabs $0x7fec34f90,%r11            ;   {oop([B{0x00000007fec34f90})}
   0.00%    0x00007f032f2445eb:   mov    %r11,0x28(%rsp)
            0x00007f032f2445f0:   movabs $0x7fec35090,%r8             ;   {oop([B{0x00000007fec35090})}
            0x00007f032f2445fa:   mov    %r8,0x20(%rsp)
            0x00007f032f2445ff:   movabs $0x7fec35060,%r9             ;   {oop([B{0x00000007fec35060})}
   0.00%    0x00007f032f244609:   mov    %r9,0x18(%rsp)
            0x00007f032f24460e:   movabs $0x7fec34ff0,%rbx            ;   {oop([B{0x00000007fec34ff0})}
            0x00007f032f244618:   mov    %rbx,0x10(%rsp)
   0.00%    0x00007f032f24461d:   mov    $0x0,%ecx
   0.00%    0x00007f032f244622:   mov    $0x0,%eax
            0x00007f032f244627:   jmp    0x00007f032f2448bd           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
            0x00007f032f24462c:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007f032f244637:   data16 data16 xchg %ax,%ax
            0x00007f032f24463b:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   1.06%    0x00007f032f244640:   mov    0x10(%r14,%rcx,4),%edx       ; ImmutableOopMap {rdx=NarrowOop r14=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
  12.48%    0x00007f032f244645:   mov    0xc(,%rdx,8),%esi            ; implicit exception: dispatches to 0x00007f032f244f73
  22.69%    0x00007f032f24464c:   movsbl 0x10(,%rdx,8),%ebp           ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::isLatin1@7 (line 4817)
                                                                      ; - java.lang.String::hashCode@17 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.34%    0x00007f032f244654:   mov    0x14(,%rdx,8),%r13d          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@24 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   3.05%    0x00007f032f24465c:   mov    %r13d,%r14d
   0.96%    0x00007f032f24465f:   shl    $0x3,%r14                    ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   5.13%    0x00007f032f244663:   mov    %edx,%edi
            0x00007f032f244665:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
            0x00007f032f244669:   test   %esi,%esi
            0x00007f032f24466b:   je     0x00007f032f244bc8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@6 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.98%    0x00007f032f244671:   mov    %rdi,(%rsp)
   5.14%    0x00007f032f244675:   mov    %r14,0x8(%rsp)
   3.25%    0x00007f032f24467a:   mov    %edx,%r14d
            0x00007f032f24467d:   mov    %ecx,0x50(%rsp)
   0.99%    0x00007f032f244681:   mov    %eax,%edi                    ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@58 (line 2373)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   1.86%    0x00007f032f244683:   cmp    $0x9ef434af,%esi
            0x00007f032f244689:   je     0x00007f032f2448ce
   3.12%    0x00007f032f24468f:   cmp    $0x23c6acdf,%esi
            0x00007f032f244695:   je     0x00007f032f244965
            0x00007f032f24469b:   cmp    $0x33eb4d91,%esi
            0x00007f032f2446a1:   je     0x00007f032f2447b7
   0.01%    0x00007f032f2446a7:   cmp    $0x462300d,%esi
            0x00007f032f2446ad:   je     0x00007f032f2449fd
   0.29%    0x00007f032f2446b3:   cmp    $0x103b4,%esi
            0x00007f032f2446b9:   je     0x00007f032f244a8a
   0.85%    0x00007f032f2446bf:   cmp    $0x14234,%esi
            0x00007f032f2446c5:   je     0x00007f032f244b26
            0x00007f032f2446cb:   cmp    $0x90663ad4,%esi
            0x00007f032f2446d1:   je     0x00007f032f244e37
            0x00007f032f2446d7:   cmp    $0xa2a1be40,%esi
            0x00007f032f2446dd:   data16 xchg %ax,%ax
            0x00007f032f2446e0:   je     0x00007f032f244e37
            0x00007f032f2446e6:   cmp    $0xaf2874e8,%esi
            0x00007f032f2446ec:   je     0x00007f032f244e37
            0x00007f032f2446f2:   cmp    $0xba6eabe2,%esi
            0x00007f032f2446f8:   je     0x00007f032f244e37
....................................................................................................
  62.24%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 977 

             0x00007f032f244870:   cmp    $0x1,%r11d
             0x00007f032f244874:   je     0x00007f032f2449e9
             0x00007f032f24487a:   jmp    0x00007f032f244e14
   3.12%     0x00007f032f24487f:   cmp    $0x5,%r11d
             0x00007f032f244883:   jg     0x00007f032f244e14
             0x00007f032f244889:   cmp    $0x5,%r11d
             0x00007f032f24488d:   jge    0x00007f032f244bbe
             0x00007f032f244893:   cmp    $0x3,%r11d
          ╭  0x00007f032f244897:   je     0x00007f032f2448a5
          │  0x00007f032f24489d:   data16 xchg %ax,%ax
   0.98%  │  0x00007f032f2448a0:   jmp    0x00007f032f244bb4           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@589 (line 135)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   1.15%  ↘  0x00007f032f2448a5:   mov    $0x4,%eax                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@836 (line 210)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   5.26%     0x00007f032f2448aa:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@32 (line 105)
             0x00007f032f2448ad:   mov    0x50(%rsp),%ecx
             0x00007f032f2448b1:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
   1.00%     0x00007f032f2448b3:   mov    0x40(%rsp),%r14
   5.14%     0x00007f032f2448b8:   mov    0x54(%rsp),%r13d             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
             0x00007f032f2448bd:   data16 xchg %ax,%ax                 ;   {no_reloc}
   0.01%     0x00007f032f2448c0:   cmp    %ecx,%r13d
             0x00007f032f2448c3:   jg     0x00007f032f244640
   0.07%     0x00007f032f2448c9:   jmp    0x00007f032f244ccb           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   0.35%     0x00007f032f2448ce:   mov    (%rsp),%r11
   0.01%     0x00007f032f2448d2:   mov    %edi,%r10d
             0x00007f032f2448d5:   mov    0x38(%rsp),%r8
   0.67%     0x00007f032f2448da:   nopw   0x0(%rax,%rax,1)
   0.38%     0x00007f032f2448e0:   cmp    $0xffd869fb,%r14d            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fec34fd8})}
             0x00007f032f2448e7:   je     0x00007f032f244c60
             0x00007f032f2448ed:   test   %bpl,%bpl
             0x00007f032f2448f0:   jne    0x00007f032f244f20           ;* unwind (locked if synchronized)
                                                                       ; - java.lang.String::equals@-3
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
             0x00007f032f2448f6:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {r11=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
                                                                       ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
....................................................................................................
  15.02%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 977 

                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
             0x00007f032f24483d:   data16 xchg %ax,%ax
             0x00007f032f244840:   test   %r9d,%r9d
             0x00007f032f244843:   je     0x00007f032f244d67           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@263 (line 135)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
             0x00007f032f244849:   mov    $0x3,%r11d                   ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@587 (line 135)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   5.39%     0x00007f032f24484f:   cmp    $0x3,%r11d
          ╭  0x00007f032f244853:   jge    0x00007f032f24487f
   0.00%  │  0x00007f032f244859:   cmp    $0x2,%r11d
          │  0x00007f032f24485d:   data16 xchg %ax,%ax
   0.92%  │  0x00007f032f244860:   jge    0x00007f032f2449f3
   1.10%  │  0x00007f032f244866:   cmp    $0x0,%r11d
          │  0x00007f032f24486a:   je     0x00007f032f244a80
          │  0x00007f032f244870:   cmp    $0x1,%r11d
          │  0x00007f032f244874:   je     0x00007f032f2449e9
          │  0x00007f032f24487a:   jmp    0x00007f032f244e14
   3.12%  ↘  0x00007f032f24487f:   cmp    $0x5,%r11d
             0x00007f032f244883:   jg     0x00007f032f244e14
             0x00007f032f244889:   cmp    $0x5,%r11d
             0x00007f032f24488d:   jge    0x00007f032f244bbe
             0x00007f032f244893:   cmp    $0x3,%r11d
             0x00007f032f244897:   je     0x00007f032f2448a5
             0x00007f032f24489d:   data16 xchg %ax,%ax
   0.98%     0x00007f032f2448a0:   jmp    0x00007f032f244bb4           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@589 (line 135)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   1.15%     0x00007f032f2448a5:   mov    $0x4,%eax                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  10.54%  <total for region 3>

....[Hottest Regions]...............................................................................
  62.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 977 
  15.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 977 
  10.54%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 977 
   2.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 977 
   2.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 977 
   1.98%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 977 
   1.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 977 
   1.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 977 
   1.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 977 
   1.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 977 
   0.18%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 977 
   0.10%              kernel  [unknown] 
   0.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1005 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.08%  <...other 321 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.19%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 977 
   1.33%              kernel  [unknown] 
   0.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1005 
   0.08%                      <unknown> 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.13%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.30%      jvmci, level 4
   1.33%              kernel
   0.15%           libjvm.so
   0.09%        libc-2.31.so
   0.08%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 12)

# Run progress: 83.33% complete, ETA 00:03:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 24.906 ns/op
# Warmup Iteration   2: 24.483 ns/op
# Warmup Iteration   3: 24.676 ns/op
# Warmup Iteration   4: 24.621 ns/op
# Warmup Iteration   5: 24.661 ns/op
Iteration   1: 24.635 ns/op
Iteration   2: 24.613 ns/op
Iteration   3: 24.616 ns/op
Iteration   4: 24.644 ns/op
Iteration   5: 24.625 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  24.627 ±(99.9%) 0.049 ns/op [Average]
  (min, avg, max) = (24.613, 24.627, 24.644), stdev = 0.013
  CI (99.9%): [24.577, 24.676] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 218907 total address lines.
Perf output processed (skipped 60.386 seconds):
 Column 1: cycles (50909 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 956 

                 0x00007efd1723d5ae:   add    %r12,%r10
                 0x00007efd1723d5b1:   xor    %r12,%r12
                 0x00007efd1723d5b4:   cmp    %r10,%rax
                 0x00007efd1723d5b7:   jne    0x00007efd16c2f080           ;   {runtime_call ic_miss_stub}
                 0x00007efd1723d5bd:   data16 xchg %ax,%ax
               [Verified Entry Point]
                 0x00007efd1723d5c0:   mov    %eax,-0x14000(%rsp)
                 0x00007efd1723d5c7:   sub    $0x38,%rsp
                 0x00007efd1723d5cb:   nop
                 0x00007efd1723d5cc:   cmpl   $0x1,0x20(%r15)
   0.00%         0x00007efd1723d5d4:   jne    0x00007efd1723d6f8
                 0x00007efd1723d5da:   mov    %rbp,0x30(%rsp)
                 0x00007efd1723d5df:   mov    0x18(%rsi),%edx              ; ImmutableOopMap {rdx=NarrowOop rsi=Oop }
                                                                           ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@0 (line 103)
                 0x00007efd1723d5e2:   mov    0xc(,%rdx,8),%r10d           ; implicit exception: dispatches to 0x00007efd1723d71c
   0.00%         0x00007efd1723d5ea:   test   %r10d,%r10d
          ╭      0x00007efd1723d5ed:   je     0x00007efd1723d6ce           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   0.00%  │      0x00007efd1723d5f3:   mov    %rsi,0x10(%rsp)
          │      0x00007efd1723d5f8:   mov    %r10d,0x24(%rsp)
   0.00%  │      0x00007efd1723d5fd:   mov    %r10d,%r11d
          │      0x00007efd1723d600:   dec    %r11d
          │      0x00007efd1723d603:   movslq %r11d,%r11
          │      0x00007efd1723d606:   mov    %r10d,%r8d
          │      0x00007efd1723d609:   cmp    %r11,%r8
          │╭     0x00007efd1723d60c:   ja     0x00007efd1723d61c
          ││     0x00007efd1723d612:   cmp    $0x2,%r10d
          ││     0x00007efd1723d616:   jae    0x00007efd1723d6d5
   0.01%  │↘     0x00007efd1723d61c:   mov    0x10(,%rdx,8),%r11d
   0.02%  │      0x00007efd1723d624:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
          │      0x00007efd1723d628:   shl    $0x3,%rdx                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
          │      0x00007efd1723d62c:   mov    %rdx,0x8(%rsp)
   0.00%  │      0x00007efd1723d631:   mov    %rsi,%r8
          │      0x00007efd1723d634:   mov    %r11,%rdx
          │      0x00007efd1723d637:   call   0x00007efd1723a920           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          │                                                                ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          │                                                                ;   {optimized virtual_call}
          │      0x00007efd1723d63c:   nopl   0x100022c(%rax,%rax,1)       ;   {other}
          │      0x00007efd1723d644:   mov    %eax,0x20(%rsp)
   0.02%  │      0x00007efd1723d648:   mov    $0x1,%r11d
          │ ╭    0x00007efd1723d64e:   jmp    0x00007efd1723d694           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
          │ │    0x00007efd1723d653:   nopw   0x0(%rax,%rax,1)
          │ │    0x00007efd1723d65c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   1.49%  │ │↗   0x00007efd1723d660:   mov    0x10(%rdx,%r11,4),%r9d
   3.58%  │ ││   0x00007efd1723d665:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
   1.42%  │ ││   0x00007efd1723d669:   mov    %rsi,%rcx
          │ ││   0x00007efd1723d66c:   mov    %r9,%rdx                     ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          │ ││   0x00007efd1723d66f:   mov    %r11d,0x1c(%rsp)
          │ ││   0x00007efd1723d674:   data16 xchg %ax,%ax
   1.54%  │ ││   0x00007efd1723d677:   call   0x00007efd1723a920           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          │ ││                                                             ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          │ ││                                                             ;   {optimized virtual_call}
          │ ││   0x00007efd1723d67c:   nopl   0x200026c(%rax,%rax,1)       ;   {other}
          │ ││   0x00007efd1723d684:   add    0x20(%rsp),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@32 (line 105)
  14.81%  │ ││   0x00007efd1723d688:   mov    0x1c(%rsp),%r11d
          │ ││   0x00007efd1723d68d:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
          │ ││   0x00007efd1723d690:   mov    %eax,0x20(%rsp)              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
   3.03%  │ ↘│   0x00007efd1723d694:   mov    0x8(%rsp),%rdx
   0.00%  │  │   0x00007efd1723d699:   mov    0x24(%rsp),%r10d
          │  │   0x00007efd1723d69e:   mov    0x10(%rsp),%rsi
          │  │   0x00007efd1723d6a3:   cmp    %r11d,%r10d
          │  ╰   0x00007efd1723d6a6:   jg     0x00007efd1723d660           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   0.02%  │      0x00007efd1723d6a8:   mov    0x20(%rsp),%eax              ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@40 (line 107)
   0.02%  │   ↗  0x00007efd1723d6ac:   mov    0x30(%rsp),%rbp
   0.00%  │   │  0x00007efd1723d6b1:   add    $0x38,%rsp
          │   │  0x00007efd1723d6b5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   │  0x00007efd1723d6c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │   │  0x00007efd1723d6c7:   ja     0x00007efd1723d708
          │   │  0x00007efd1723d6cd:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
          ↘   │  0x00007efd1723d6ce:   mov    $0x0,%eax
              ╰  0x00007efd1723d6d3:   jmp    0x00007efd1723d6ac           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@40 (line 107)
                 0x00007efd1723d6d5:   movl   $0xffffffe5,0x484(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@8 (line 104)
....................................................................................................
  25.97%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 

            0x00007efd1723ac4e:   add    %al,(%rax)
            0x00007efd1723ac50:   (bad)  
            0x00007efd1723ac51:   (bad)  
            0x00007efd1723ac52:   add    %al,(%rax)
            0x00007efd1723ac54:   adc    %eax,(%rdi)
            0x00007efd1723ac56:   add    %al,(%rax)
            0x00007efd1723ac58:   std    
            0x00007efd1723ac59:   (bad)  
            0x00007efd1723ac5a:   add    %al,(%rax)                   ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@589 (line 135)
   1.88%    0x00007efd1723ac5c:   mov    $0x4,%eax                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@836 (line 210)
   1.94%    0x00007efd1723ac61:   mov    0x10(%rsp),%rbp
   8.86%    0x00007efd1723ac66:   add    $0x18,%rsp
            0x00007efd1723ac6a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            0x00007efd1723ac71:   ja     0x00007efd1723b76d
   6.06%    0x00007efd1723ac77:   vzeroupper 
   1.52%    0x00007efd1723ac7a:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@6 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
            0x00007efd1723ac7b:   nopl   0x0(%rax,%rax,1)
            0x00007efd1723ac80:   cmpb   $0x0,0x11(%rbp)
            0x00007efd1723ac84:   jne    0x00007efd1723a95e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@13 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
            0x00007efd1723ac8a:   test   %dil,%dil
            0x00007efd1723ac8d:   jne    0x00007efd1723b751           ; ImmutableOopMap {rbp=Oop r13=NarrowOop r14=Oop }
                                                                      ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  20.26%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 

            0x00007efd1723b30e:   or     %rsi,%rdx
            0x00007efd1723b311:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@353 (line 135)
            0x00007efd1723b315:   test   %r10d,%r10d
            0x00007efd1723b318:   je     0x00007efd1723b585           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@356 (line 135)
            0x00007efd1723b31e:   mov    $0x9,%r10d
            0x00007efd1723b324:   jmp    0x00007efd1723ac0f           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@587 (line 135)
   1.58%    0x00007efd1723b329:   mov    $0xc,%eax
   0.76%    0x00007efd1723b32e:   jmp    0x00007efd1723ac61
   1.62%    0x00007efd1723b333:   mov    $0xa,%eax
   0.73%    0x00007efd1723b338:   jmp    0x00007efd1723ac61
   1.72%    0x00007efd1723b33d:   mov    $0xb,%eax
   0.74%    0x00007efd1723b342:   jmp    0x00007efd1723ac61
   1.74%    0x00007efd1723b347:   mov    $0x9,%eax
   0.72%    0x00007efd1723b34c:   jmp    0x00007efd1723ac61
   1.66%    0x00007efd1723b351:   mov    $0x8,%eax
   0.74%    0x00007efd1723b356:   jmp    0x00007efd1723ac61
   1.83%    0x00007efd1723b35b:   mov    $0x7,%eax
   0.77%    0x00007efd1723b360:   jmp    0x00007efd1723ac61
   1.69%    0x00007efd1723b365:   mov    $0x6,%eax
   0.80%    0x00007efd1723b36a:   jmp    0x00007efd1723ac61           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@836 (line 210)
   0.13%    0x00007efd1723b36f:   mov    $0x0,%r10d
            0x00007efd1723b375:   jmp    0x00007efd1723ac0f           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
   0.09%    0x00007efd1723b37a:   mov    $0x1,%r10d
            0x00007efd1723b380:   jmp    0x00007efd1723ac0f           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
   0.12%    0x00007efd1723b385:   mov    $0x2,%r10d
            0x00007efd1723b38b:   jmp    0x00007efd1723ac0f           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
   0.12%    0x00007efd1723b390:   mov    $0x3,%r10d
            0x00007efd1723b396:   jmp    0x00007efd1723ac0f           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
            0x00007efd1723b39b:   mov    $0x9,%r10d
            0x00007efd1723b3a1:   jmp    0x00007efd1723ac0f           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@353 (line 135)
   0.03%    0x00007efd1723b3a6:   mov    $0x8,%r10d
            0x00007efd1723b3ac:   jmp    0x00007efd1723ac0f           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@337 (line 135)
   0.15%    0x00007efd1723b3b1:   mov    $0xb,%r10d
            0x00007efd1723b3b7:   jmp    0x00007efd1723ac0f           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@385 (line 135)
   0.13%    0x00007efd1723b3bc:   mov    $0x4,%r10d
            0x00007efd1723b3c2:   jmp    0x00007efd1723ac0f           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@275 (line 135)
   0.07%    0x00007efd1723b3c7:   mov    $0x7,%r10d
            0x00007efd1723b3cd:   jmp    0x00007efd1723ac0f           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@321 (line 135)
                                                                      ;   {no_reloc}
   0.12%    0x00007efd1723b3d2:   mov    $0x6,%r10d
            0x00007efd1723b3d8:   jmp    0x00007efd1723ac0f           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@305 (line 135)
            0x00007efd1723b3dd:   mov    $0x5,%r10d
            0x00007efd1723b3e3:   jmp    0x00007efd1723ac0f           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@290 (line 135)
   0.14%    0x00007efd1723b3e8:   mov    $0xa,%r10d
            0x00007efd1723b3ee:   jmp    0x00007efd1723ac0f           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@369 (line 135)
            0x00007efd1723b3f3:   movzbl 0x10(,%r13,8),%r10d          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.StringLatin1::hashCode@38 (line 190)
                                                                      ; - java.lang.String::hashCode@27 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
            0x00007efd1723b3fc:   mov    %r10d,%eax
....................................................................................................
  18.21%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 

             #           [sp+0x20]  (sp of caller)
             0x00007efd1723a900:   mov    0x8(%rsi),%r10d
             0x00007efd1723a904:   movabs $0x7efc9b000000,%r12
             0x00007efd1723a90e:   add    %r12,%r10
             0x00007efd1723a911:   xor    %r12,%r12
             0x00007efd1723a914:   cmp    %r10,%rax
             0x00007efd1723a917:   jne    0x00007efd16c2f080           ;   {runtime_call ic_miss_stub}
             0x00007efd1723a91d:   data16 xchg %ax,%ax
           [Verified Entry Point]
             0x00007efd1723a920:   mov    %eax,-0x14000(%rsp)
   2.44%     0x00007efd1723a927:   sub    $0x18,%rsp
             0x00007efd1723a92b:   nop
   0.00%     0x00007efd1723a92c:   cmpl   $0x1,0x20(%r15)
             0x00007efd1723a934:   jne    0x00007efd1723b75d
   1.50%     0x00007efd1723a93a:   mov    %rbp,0x10(%rsp)
             0x00007efd1723a93f:   mov    %rdx,%rbp                    ; ImmutableOopMap {rbp=Oop }
                                                                       ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@0 (line 133)
             0x00007efd1723a942:   mov    0xc(%rbp),%r10d              ; implicit exception: dispatches to 0x00007efd1723b781
   4.35%     0x00007efd1723a946:   movsbl 0x10(%rbp),%edi              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::isLatin1@7 (line 4817)
                                                                       ; - java.lang.String::hashCode@17 (line 2365)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   0.26%     0x00007efd1723a94a:   mov    0x14(%rbp),%r13d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::hashCode@24 (line 2365)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   0.45%     0x00007efd1723a94e:   mov    %r13d,%r14d
             0x00007efd1723a951:   shl    $0x3,%r14                    ;* unwind (locked if synchronized)
                                                                       ; - java.lang.String::equals@-3
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@321 (line 135)
   1.30%     0x00007efd1723a955:   test   %r10d,%r10d
             0x00007efd1723a958:   je     0x00007efd1723ac7b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::hashCode@6 (line 2364)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   0.23%     0x00007efd1723a95e:   cmp    $0x4c5f9e8,%r10d
             0x00007efd1723a965:   jge    0x00007efd1723aab8
   0.47%     0x00007efd1723a96b:   cmp    $0x14234,%r10d
             0x00007efd1723a972:   jge    0x00007efd1723aa6b
   0.89%     0x00007efd1723a978:   cmp    $0xfce7bd80,%r10d
             0x00007efd1723a97f:   nop
   0.23%     0x00007efd1723a980:   jge    0x00007efd1723aa31
   0.00%     0x00007efd1723a986:   cmp    $0xa2a1be40,%r10d
          ╭  0x00007efd1723a98d:   jge    0x00007efd1723a9b2
   0.13%  │  0x00007efd1723a993:   cmp    $0x90663ad4,%r10d
          │  0x00007efd1723a99a:   je     0x00007efd1723b5c0
   0.11%  │  0x00007efd1723a9a0:   cmp    $0x9ef434af,%r10d
          │  0x00007efd1723a9a7:   je     0x00007efd1723ae14
          │  0x00007efd1723a9ad:   jmp    0x00007efd1723b5c0
   0.09%  ↘  0x00007efd1723a9b2:   cmp    $0xeb2c8617,%r10d
             0x00007efd1723a9b9:   jg     0x00007efd1723b5c0
   0.10%     0x00007efd1723a9bf:   cmp    $0xeb2c8617,%r10d
             0x00007efd1723a9c6:   jge    0x00007efd1723aeb1
             0x00007efd1723a9cc:   cmp    $0xc517aa2b,%r10d
             0x00007efd1723a9d3:   jge    0x00007efd1723aa12
             0x00007efd1723a9d9:   cmp    $0xba6eabe2,%r10d
             0x00007efd1723a9e0:   jg     0x00007efd1723b5c0
             0x00007efd1723a9e6:   cmp    $0xba6eabe2,%r10d
             0x00007efd1723a9ed:   jge    0x00007efd1723b5c0
             0x00007efd1723a9f3:   cmp    $0xa2a1be40,%r10d
             0x00007efd1723a9fa:   je     0x00007efd1723b5c0
             0x00007efd1723aa00:   cmp    $0xaf2874e8,%r10d
....................................................................................................
  12.54%  <total for region 4>

....[Hottest Regions]...............................................................................
  25.97%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 956 
  20.26%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 
  18.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 
  12.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 
   7.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 
   4.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 
   4.24%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 
   2.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 
   0.93%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 
   0.72%               kernel  [unknown] 
   0.23%               kernel  [unknown] 
   0.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 
   0.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 
   0.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 
   0.13%               kernel  [unknown] 
   0.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 
   0.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 
   0.08%               kernel  [unknown] 
   1.28%  <...other 271 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 951 
  25.97%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 956 
   2.01%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 983 
   0.03%                       <unknown> 
   0.02%       hsdis-amd64.so  print_insn 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  syscall 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%         libc-2.31.so  __stpcpy_avx2 
   0.00%         libc-2.31.so  __strlen_avx2 
   0.17%  <...other 82 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.65%       jvmci, level 4
   2.01%               kernel
   0.12%            libjvm.so
   0.07%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.03%                     
   0.03%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%     perf-2131733.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 24)

# Run progress: 91.67% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.260 ns/op
# Warmup Iteration   2: 24.659 ns/op
# Warmup Iteration   3: 24.733 ns/op
# Warmup Iteration   4: 24.703 ns/op
# Warmup Iteration   5: 24.780 ns/op
Iteration   1: 24.736 ns/op
Iteration   2: 24.734 ns/op
Iteration   3: 24.763 ns/op
Iteration   4: 24.781 ns/op
Iteration   5: 24.742 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  24.751 ±(99.9%) 0.079 ns/op [Average]
  (min, avg, max) = (24.734, 24.751, 24.781), stdev = 0.020
  CI (99.9%): [24.672, 24.830] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 220331 total address lines.
Perf output processed (skipped 60.254 seconds):
 Column 1: cycles (50710 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 947 

               0x00007f723323fa78:   mov    %r10d,0x24(%rsp)
   0.00%       0x00007f723323fa7d:   mov    %r10d,%r11d
               0x00007f723323fa80:   dec    %r11d
               0x00007f723323fa83:   movslq %r11d,%r11
               0x00007f723323fa86:   mov    %r10d,%r8d
               0x00007f723323fa89:   cmp    %r11,%r8
          ╭    0x00007f723323fa8c:   ja     0x00007f723323fa9c
          │    0x00007f723323fa92:   cmp    $0x2,%r10d
          │    0x00007f723323fa96:   jae    0x00007f723323fb55
          ↘    0x00007f723323fa9c:   mov    0x10(,%rdx,8),%r11d
   0.00%       0x00007f723323faa4:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
               0x00007f723323faa8:   shl    $0x3,%rdx                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
   0.00%       0x00007f723323faac:   mov    %rdx,0x8(%rsp)
   0.00%       0x00007f723323fab1:   mov    %rsi,%r8
               0x00007f723323fab4:   mov    %r11,%rdx
               0x00007f723323fab7:   call   0x00007f723323c080           ; ImmutableOopMap {[8]=Oop [16]=Oop }
                                                                         ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
                                                                         ;   {optimized virtual_call}
               0x00007f723323fabc:   nopl   0x100022c(%rax,%rax,1)       ;   {other}
               0x00007f723323fac4:   mov    %eax,0x20(%rsp)
   0.02%       0x00007f723323fac8:   mov    $0x1,%r11d
           ╭   0x00007f723323face:   jmp    0x00007f723323fb14           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
           │   0x00007f723323fad3:   nopw   0x0(%rax,%rax,1)
           │   0x00007f723323fadc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   1.45%   │↗  0x00007f723323fae0:   mov    0x10(%rdx,%r11,4),%r9d
   3.61%   ││  0x00007f723323fae5:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
   1.46%   ││  0x00007f723323fae9:   mov    %rsi,%rcx
           ││  0x00007f723323faec:   mov    %r9,%rdx                     ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           ││  0x00007f723323faef:   mov    %r11d,0x1c(%rsp)
           ││  0x00007f723323faf4:   data16 xchg %ax,%ax
   1.47%   ││  0x00007f723323faf7:   call   0x00007f723323c080           ; ImmutableOopMap {[8]=Oop [16]=Oop }
           ││                                                            ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           ││                                                            ;   {optimized virtual_call}
           ││  0x00007f723323fafc:   nopl   0x200026c(%rax,%rax,1)       ;   {other}
           ││  0x00007f723323fb04:   add    0x20(%rsp),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@32 (line 105)
  15.14%   ││  0x00007f723323fb08:   mov    0x1c(%rsp),%r11d
           ││  0x00007f723323fb0d:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
           ││  0x00007f723323fb10:   mov    %eax,0x20(%rsp)              ;*iload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
   2.98%   ↘│  0x00007f723323fb14:   mov    0x8(%rsp),%rdx
            │  0x00007f723323fb19:   mov    0x24(%rsp),%r10d
            │  0x00007f723323fb1e:   mov    0x10(%rsp),%rsi
            │  0x00007f723323fb23:   cmp    %r11d,%r10d
            ╰  0x00007f723323fb26:   jg     0x00007f723323fae0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   0.03%       0x00007f723323fb28:   mov    0x20(%rsp),%eax              ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@40 (line 107)
   0.02%       0x00007f723323fb2c:   mov    0x30(%rsp),%rbp
               0x00007f723323fb31:   add    $0x38,%rsp
               0x00007f723323fb35:   data16 data16 nopw 0x0(%rax,%rax,1)
               0x00007f723323fb40:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               0x00007f723323fb47:   ja     0x00007f723323fb88
               0x00007f723323fb4d:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
               0x00007f723323fb4e:   mov    $0x0,%eax
               0x00007f723323fb53:   jmp    0x00007f723323fb2c           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@40 (line 107)
....................................................................................................
  26.17%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 

            0x00007f723323c3d2:   add    %al,(%rax)
            0x00007f723323c3d4:   pop    %rcx
            0x00007f723323c3d5:   (bad)  
            0x00007f723323c3d6:   add    %al,(%rax)
            0x00007f723323c3d8:   rex.RB (bad) 
            0x00007f723323c3da:   add    %al,(%rax)
            0x00007f723323c3dc:   (bad)  
            0x00007f723323c3dd:   (bad)  
            0x00007f723323c3de:   add    %al,(%rax)                   ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@589 (line 135)
   0.99%    0x00007f723323c3e0:   mov    $0x10,%eax                   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@836 (line 210)
   1.71%    0x00007f723323c3e5:   mov    0x10(%rsp),%rbp
   8.60%    0x00007f723323c3ea:   add    $0x18,%rsp
            0x00007f723323c3ee:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            0x00007f723323c3f5:   ja     0x00007f723323d712
   6.00%    0x00007f723323c3fb:   vzeroupper 
   1.60%    0x00007f723323c3fe:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@6 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
            0x00007f723323c3ff:   nop
            0x00007f723323c400:   cmpb   $0x0,0x11(%rbp)
            0x00007f723323c404:   jne    0x00007f723323c0be           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@13 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
            0x00007f723323c40a:   test   %dil,%dil
            0x00007f723323c40d:   jne    0x00007f723323d3a3           ; ImmutableOopMap {rbp=Oop r13=NarrowOop r14=Oop }
                                                                      ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  18.90%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 

            0x00007f723323c443:   je     0x00007f723323d630           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@42 (line 2367)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
            0x00007f723323c449:   mov    %eax,0xc(%rbp)               ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@55 (line 2370)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
            0x00007f723323c44c:   mov    %eax,%r10d
            0x00007f723323c44f:   jmp    0x00007f723323c0be           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@58 (line 2373)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   0.74%    0x00007f723323c454:   mov    $0x3,%eax
   0.42%    0x00007f723323c459:   jmp    0x00007f723323c3e5
   0.88%    0x00007f723323c45b:   mov    $0x4,%eax
   0.36%    0x00007f723323c460:   jmp    0x00007f723323c3e5
   0.86%    0x00007f723323c462:   mov    $0x5,%eax
   0.39%    0x00007f723323c467:   jmp    0x00007f723323c3e5
   0.91%    0x00007f723323c46c:   mov    $0xd,%eax
   0.42%    0x00007f723323c471:   jmp    0x00007f723323c3e5
   0.95%    0x00007f723323c476:   mov    $0xe,%eax
   0.36%    0x00007f723323c47b:   jmp    0x00007f723323c3e5
   0.93%    0x00007f723323c480:   mov    $0xf,%eax
   0.42%    0x00007f723323c485:   jmp    0x00007f723323c3e5
   0.91%    0x00007f723323c48a:   mov    $0x6,%eax
   0.41%    0x00007f723323c48f:   jmp    0x00007f723323c3e5
   0.84%    0x00007f723323c494:   mov    $0x9,%eax
   0.41%    0x00007f723323c499:   jmp    0x00007f723323c3e5
   0.93%    0x00007f723323c49e:   mov    $0xb,%eax
   0.44%    0x00007f723323c4a3:   jmp    0x00007f723323c3e5
   0.71%    0x00007f723323c4a8:   mov    $0xc,%eax
   0.41%    0x00007f723323c4ad:   jmp    0x00007f723323c3e5
   0.94%    0x00007f723323c4b2:   mov    $0xa,%eax
   0.36%    0x00007f723323c4b7:   jmp    0x00007f723323c3e5
   0.88%    0x00007f723323c4bc:   mov    $0x7,%eax
   0.38%    0x00007f723323c4c1:   jmp    0x00007f723323c3e5           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@836 (line 210)
   0.90%    0x00007f723323c4c6:   mov    $0x8,%eax
   0.45%    0x00007f723323c4cb:   jmp    0x00007f723323c3e5
   0.11%    0x00007f723323c4d0:   movabs $0x7fec34fd8,%rsi            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fec34fd8})}
            0x00007f723323c4da:   nopw   0x0(%rax,%rax,1)
            0x00007f723323c4e0:   cmp    %rbp,%rsi
            0x00007f723323c4e3:   je     0x00007f723323d294
            0x00007f723323c4e9:   test   %dil,%dil
            0x00007f723323c4ec:   jne    0x00007f723323d317           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
            0x00007f723323c4f2:   data16 nopw 0x0(%rax,%rax,1)
            0x00007f723323c4fc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rbp=Oop r14=Oop }
                                                                      ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  16.74%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 

            0x00007f723323d18c:   or     %rsi,%rdx
            0x00007f723323d18f:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@561 (line 135)
            0x00007f723323d193:   test   %r10d,%r10d
            0x00007f723323d196:   je     0x00007f723323d5e8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@564 (line 135)
            0x00007f723323d19c:   mov    $0x16,%r10d
            0x00007f723323d1a2:   jmp    0x00007f723323c362           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@587 (line 135)
   0.91%    0x00007f723323d1a7:   mov    $0x18,%eax
   0.42%    0x00007f723323d1ac:   jmp    0x00007f723323c3e5
   0.90%    0x00007f723323d1b1:   mov    $0x15,%eax
   0.39%    0x00007f723323d1b6:   jmp    0x00007f723323c3e5
   0.70%    0x00007f723323d1bb:   mov    $0x11,%eax
   0.41%    0x00007f723323d1c0:   jmp    0x00007f723323c3e5
   0.92%    0x00007f723323d1c5:   mov    $0x17,%eax
   0.35%    0x00007f723323d1ca:   jmp    0x00007f723323c3e5
   0.91%    0x00007f723323d1cf:   mov    $0x12,%eax
   0.40%    0x00007f723323d1d4:   jmp    0x00007f723323c3e5
   0.85%    0x00007f723323d1d9:   mov    $0x16,%eax
   0.39%    0x00007f723323d1de:   xchg   %ax,%ax
            0x00007f723323d1e0:   jmp    0x00007f723323c3e5
   0.80%    0x00007f723323d1e5:   mov    $0x14,%eax
   0.35%    0x00007f723323d1ea:   jmp    0x00007f723323c3e5
   0.89%    0x00007f723323d1ef:   mov    $0x13,%eax
   0.38%    0x00007f723323d1f4:   jmp    0x00007f723323c3e5           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@836 (line 210)
   0.04%    0x00007f723323d1f9:   mov    $0x7,%r10d
            0x00007f723323d1ff:   nop
   0.03%    0x00007f723323d200:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@321 (line 135)
   0.00%    0x00007f723323d205:   mov    $0x0,%r10d
            0x00007f723323d20b:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
   0.07%    0x00007f723323d210:   mov    $0xc,%r10d
            0x00007f723323d216:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@401 (line 135)
   0.07%    0x00007f723323d21b:   mov    $0x8,%r10d
            0x00007f723323d221:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@337 (line 135)
   0.08%    0x00007f723323d226:   mov    $0xe,%r10d
            0x00007f723323d22c:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@433 (line 135)
            0x00007f723323d231:   mov    $0xa,%r10d
            0x00007f723323d237:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@369 (line 135)
   0.05%    0x00007f723323d23c:   mov    $0x9,%r10d
            0x00007f723323d242:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@353 (line 135)
   0.06%    0x00007f723323d247:   mov    $0xb,%r10d
            0x00007f723323d24d:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@385 (line 135)
                                                                      ;   {no_reloc}
   0.07%    0x00007f723323d252:   mov    $0xf,%r10d
            0x00007f723323d258:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@449 (line 135)
   0.06%    0x00007f723323d25d:   mov    $0x3,%r10d
            0x00007f723323d263:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
   0.06%    0x00007f723323d268:   mov    $0x5,%r10d
            0x00007f723323d26e:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@290 (line 135)
   0.07%    0x00007f723323d273:   mov    $0x4,%r10d
            0x00007f723323d279:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@275 (line 135)
   0.07%    0x00007f723323d27e:   mov    $0x6,%r10d
            0x00007f723323d284:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@305 (line 135)
   0.00%    0x00007f723323d289:   mov    $0xd,%r10d
            0x00007f723323d28f:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@417 (line 135)
   0.06%    0x00007f723323d294:   mov    $0x2,%r10d
            0x00007f723323d29a:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
            0x00007f723323d29f:   mov    $0x1,%r10d
            0x00007f723323d2a5:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
   0.06%    0x00007f723323d2aa:   mov    $0x13,%r10d
            0x00007f723323d2b0:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@513 (line 135)
   0.06%    0x00007f723323d2b5:   mov    $0x17,%r10d
            0x00007f723323d2bb:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@577 (line 135)
   0.05%    0x00007f723323d2c0:   mov    $0x16,%r10d
            0x00007f723323d2c6:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@561 (line 135)
   0.06%    0x00007f723323d2cb:   mov    $0x11,%r10d
            0x00007f723323d2d1:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@481 (line 135)
   0.07%    0x00007f723323d2d6:   mov    $0x15,%r10d
            0x00007f723323d2dc:   nopl   0x0(%rax)
            0x00007f723323d2e0:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@545 (line 135)
   0.06%    0x00007f723323d2e5:   mov    $0x10,%r10d
            0x00007f723323d2eb:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@465 (line 135)
   0.07%    0x00007f723323d2f0:   mov    $0x12,%r10d
            0x00007f723323d2f6:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@497 (line 135)
            0x00007f723323d2fb:   mov    $0x14,%r10d
            0x00007f723323d301:   jmp    0x00007f723323c362           ;* unwind (locked if synchronized)
                                                                      ; - java.lang.String::equals@-3
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@529 (line 135)
            0x00007f723323d306:   movzbl 0x10(,%r13,8),%r10d          ;*iand {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  11.18%  <total for region 4>

....[Hottest Regions]...............................................................................
  26.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 947 
  18.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 
  16.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 
  11.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 
   9.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 
   3.77%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 
   3.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 
   2.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 
   1.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 
   1.46%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 
   0.53%               kernel  [unknown] 
   0.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 
   0.13%               kernel  [unknown] 
   0.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 
   0.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 
   2.23%  <...other 386 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 942 
  26.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 947 
   1.88%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 974 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.18%  <...other 78 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.75%       jvmci, level 4
   1.88%               kernel
   0.14%            libjvm.so
   0.10%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.03%   libpthread-2.31.so
   0.03%                     
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%          c1, level 1
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:22:38

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

Benchmark                                     (branches)  Mode  Cnt   Score   Error  Units
StringSwitchBenchmark.chained_ifs                      3  avgt    5   3.107 ± 0.028  ns/op
StringSwitchBenchmark.chained_ifs:asm                  3  avgt          NaN            ---
StringSwitchBenchmark.chained_ifs                      6  avgt    5   5.732 ± 0.020  ns/op
StringSwitchBenchmark.chained_ifs:asm                  6  avgt          NaN            ---
StringSwitchBenchmark.chained_ifs                     12  avgt    5  16.224 ± 0.266  ns/op
StringSwitchBenchmark.chained_ifs:asm                 12  avgt          NaN            ---
StringSwitchBenchmark.chained_ifs                     24  avgt    5  24.658 ± 0.293  ns/op
StringSwitchBenchmark.chained_ifs:asm                 24  avgt          NaN            ---
StringSwitchBenchmark.switch_expressions               3  avgt    5   5.065 ± 0.007  ns/op
StringSwitchBenchmark.switch_expressions:asm           3  avgt          NaN            ---
StringSwitchBenchmark.switch_expressions               6  avgt    5   6.262 ± 0.017  ns/op
StringSwitchBenchmark.switch_expressions:asm           6  avgt          NaN            ---
StringSwitchBenchmark.switch_expressions              12  avgt    5  12.870 ± 0.183  ns/op
StringSwitchBenchmark.switch_expressions:asm          12  avgt          NaN            ---
StringSwitchBenchmark.switch_expressions              24  avgt    5  24.764 ± 0.102  ns/op
StringSwitchBenchmark.switch_expressions:asm          24  avgt          NaN            ---
StringSwitchBenchmark.switch_statements                3  avgt    5   5.363 ± 0.018  ns/op
StringSwitchBenchmark.switch_statements:asm            3  avgt          NaN            ---
StringSwitchBenchmark.switch_statements                6  avgt    5   6.148 ± 0.058  ns/op
StringSwitchBenchmark.switch_statements:asm            6  avgt          NaN            ---
StringSwitchBenchmark.switch_statements               12  avgt    5  24.627 ± 0.049  ns/op
StringSwitchBenchmark.switch_statements:asm           12  avgt          NaN            ---
StringSwitchBenchmark.switch_statements               24  avgt    5  24.751 ± 0.079  ns/op
StringSwitchBenchmark.switch_statements:asm           24  avgt          NaN            ---
