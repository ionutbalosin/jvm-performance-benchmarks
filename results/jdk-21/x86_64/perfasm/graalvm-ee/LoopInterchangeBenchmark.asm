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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark.initial_loop
# Parameters: (size = 2048)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 43988.524 us/op
# Warmup Iteration   2: 43648.542 us/op
# Warmup Iteration   3: 43651.639 us/op
# Warmup Iteration   4: 43654.983 us/op
# Warmup Iteration   5: 42937.875 us/op
Iteration   1: 42906.927 us/op
Iteration   2: 42910.179 us/op
Iteration   3: 42905.888 us/op
Iteration   4: 42919.763 us/op
Iteration   5: 43206.967 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark.initial_loop":
  42969.945 ±(99.9%) 510.643 us/op [Average]
  (min, avg, max) = (42905.888, 42969.945, 43206.967), stdev = 132.612
  CI (99.9%): [42459.302, 43480.588] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark.initial_loop:asm":
PrintAssembly processed: 227295 total address lines.
Perf output processed (skipped 60.932 seconds):
 Column 1: cycles (50738 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop, version 6, compile id 962 

             0x00007fae62d81a57:   data16 data16 xchg %ax,%ax
             0x00007fae62d81a5b:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@14 (line 71)
             0x00007fae62d81a60:   mov    $0x0,%ecx
             0x00007fae62d81a65:   jmp    0x00007fae62d81b83           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@20 (line 72)
             0x00007fae62d81a6a:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007fae62d81a75:   data16 data16 xchg %ax,%ax
             0x00007fae62d81a79:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@23 (line 72)
   0.07%  ↗  0x00007fae62d81a80:   mov    0x10(%rax,%rcx,4),%ebx       ; ImmutableOopMap {rax=Oop rbx=NarrowOop }
          │                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@20 (line 72)
   0.86%  │  0x00007fae62d81a84:   cmp    0xc(,%rbx,8),%r9d            ; implicit exception: dispatches to 0x00007fae62d81cba
   0.26%  │  0x00007fae62d81a8c:   jae    0x00007fae62d81bf8           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@35 (line 73)
  18.18%  │  0x00007fae62d81a92:   shl    $0x3,%rbx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@29 (line 73)
   0.05%  │  0x00007fae62d81a96:   mov    %r9d,%edi
   0.42%  │  0x00007fae62d81a99:   imul   %ecx,%edi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@34 (line 73)
   0.03%  │  0x00007fae62d81a9c:   mov    %edi,0x10(%rbx,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@35 (line 73)
   4.47%  │  0x00007fae62d81aa1:   mov    0x14(%rax,%rcx,4),%ebx       ; ImmutableOopMap {rax=Oop rbx=NarrowOop }
          │                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@36 (line 72)
   0.14%  │  0x00007fae62d81aa5:   cmp    0xc(,%rbx,8),%r9d            ; implicit exception: dispatches to 0x00007fae62d81cdd
   0.26%  │  0x00007fae62d81aad:   jae    0x00007fae62d81bd9           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@35 (line 73)
  19.00%  │  0x00007fae62d81ab3:   shl    $0x3,%rbx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@29 (line 73)
          │                                                            ;   {no_reloc}
   0.26%  │  0x00007fae62d81ab7:   mov    %ecx,%edi
   0.02%  │  0x00007fae62d81ab9:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@36 (line 72)
   0.16%  │  0x00007fae62d81abb:   mov    %edi,%edx
   0.48%  │  0x00007fae62d81abd:   imul   %r9d,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@34 (line 73)
   0.28%  │  0x00007fae62d81ac1:   mov    %edx,0x10(%rbx,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@35 (line 73)
   4.00%  │  0x00007fae62d81ac6:   mov    0x18(%rax,%rcx,4),%ebx       ; ImmutableOopMap {rax=Oop rbx=NarrowOop }
          │                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@36 (line 72)
   0.24%  │  0x00007fae62d81aca:   cmp    0xc(,%rbx,8),%r9d            ; implicit exception: dispatches to 0x00007fae62d81d00
   0.24%  │  0x00007fae62d81ad2:   jae    0x00007fae62d81c74           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@35 (line 73)
  19.00%  │  0x00007fae62d81ad8:   shl    $0x3,%rbx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@29 (line 73)
   0.08%  │  0x00007fae62d81adc:   lea    0x2(%rcx),%edi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@36 (line 72)
   0.07%  │  0x00007fae62d81adf:   mov    %edi,%edx
   0.19%  │  0x00007fae62d81ae1:   imul   %r9d,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@34 (line 73)
   0.60%  │  0x00007fae62d81ae5:   mov    %edx,0x10(%rbx,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@35 (line 73)
   3.91%  │  0x00007fae62d81aea:   mov    0x1c(%rax,%rcx,4),%ebx       ; ImmutableOopMap {rax=Oop rbx=NarrowOop }
          │                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@36 (line 72)
   0.27%  │  0x00007fae62d81aee:   cmp    0xc(,%rbx,8),%r9d            ; implicit exception: dispatches to 0x00007fae62d81d23
   0.23%  │  0x00007fae62d81af6:   jae    0x00007fae62d81c55           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@35 (line 73)
  19.03%  │  0x00007fae62d81afc:   shl    $0x3,%rbx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@29 (line 73)
   0.10%  │  0x00007fae62d81b00:   lea    0x3(%rcx),%edi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@36 (line 72)
   0.05%  │  0x00007fae62d81b03:   imul   %r9d,%edi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@34 (line 73)
   0.10%  │  0x00007fae62d81b07:   mov    %edi,0x10(%rbx,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@35 (line 73)
   4.72%  │  0x00007fae62d81b0c:   lea    0x4(%rcx),%ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@36 (line 72)
   0.05%  │  0x00007fae62d81b0f:   nop
   0.03%  │  0x00007fae62d81b10:   cmp    %ecx,%r11d
          ╰  0x00007fae62d81b13:   jg     0x00007fae62d81a80
             0x00007fae62d81b19:   jmp    0x00007fae62d81b50
             0x00007fae62d81b1e:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@23 (line 72)
             0x00007fae62d81b20:   mov    0x10(%rax,%rcx,4),%ebx       ; ImmutableOopMap {rax=Oop rbx=NarrowOop }
                                                                       ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@20 (line 72)
             0x00007fae62d81b24:   cmp    0xc(,%rbx,8),%r9d            ; implicit exception: dispatches to 0x00007fae62d81d46
             0x00007fae62d81b2c:   jae    0x00007fae62d81c36           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@35 (line 73)
....................................................................................................
  97.85%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop, version 6, compile id 962 
   0.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop, version 6, compile id 962 
   0.28%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  StatSamplerTask::task 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.01%               kernel  [unknown] 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%               kernel  [unknown] 
   0.89%  <...other 306 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.26%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop, version 6, compile id 962 
   1.34%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%            libjvm.so  StatSamplerTask::task 
   0.02%         libc-2.31.so  __strchr_avx2 
   0.02%            libjvm.so  fileStream::write 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  __GI___libc_write 
   0.16%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.26%       jvmci, level 4
   1.34%               kernel
   0.14%            libjvm.so
   0.11%         libc-2.31.so
   0.04%                     
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.02%  libjvmcicompiler.so
   0.02%           ld-2.31.so
   0.01%               [vdso]
   0.01%          interpreter
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark.manual_loop_interchange
# Parameters: (size = 2048)

# Run progress: 50.00% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 930.006 us/op
# Warmup Iteration   2: 915.254 us/op
# Warmup Iteration   3: 901.956 us/op
# Warmup Iteration   4: 901.897 us/op
# Warmup Iteration   5: 901.586 us/op
Iteration   1: 902.073 us/op
Iteration   2: 901.439 us/op
Iteration   3: 902.067 us/op
Iteration   4: 901.416 us/op
Iteration   5: 892.477 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark.manual_loop_interchange":
  899.894 ±(99.9%) 16.014 us/op [Average]
  (min, avg, max) = (892.477, 899.894, 902.073), stdev = 4.159
  CI (99.9%): [883.880, 915.908] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark.manual_loop_interchange:asm":
PrintAssembly processed: 230321 total address lines.
Perf output processed (skipped 60.872 seconds):
 Column 1: cycles (50592 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange, version 3, compile id 976 

                            0x00007f952ed7abd2:   vmovdqa -0xba(%rip),%ymm0        # 0x00007f952ed7ab20
                                                                                      ;   {section_word}
                            0x00007f952ed7abda:   mov    $0x0,%edi
                            0x00007f952ed7abdf:   nop
          ╭                 0x00007f952ed7abe0:   jmp    0x00007f952ed7acb5
          │                 0x00007f952ed7abe5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │                 0x00007f952ed7abf0:   data16 data16 xchg %ax,%ax
          │                 0x00007f952ed7abf4:   nopl   0x0(%rax,%rax,1)
          │                 0x00007f952ed7abfc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@14 (line 84)
   0.03%  │      ↗          0x00007f952ed7ac00:   mov    0x10(%r11,%rdi,4),%edx       ; ImmutableOopMap {rdx=NarrowOop r11=Oop }
          │      │                                                                    ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │      │                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@12 (line 84)
   0.14%  │      │          0x00007f952ed7ac05:   mov    0xc(,%rdx,8),%esi            ; implicit exception: dispatches to 0x00007f952ed7aded
   2.89%  │      │          0x00007f952ed7ac0c:   cmp    $0x2,%r10d
          │╭     │          0x00007f952ed7ac10:   jl     0x00007f952ed7ac29
   0.05%  ││     │          0x00007f952ed7ac16:   cmp    %eax,%esi
          ││     │          0x00007f952ed7ac18:   jbe    0x00007f952ed7ad8d
   0.04%  ││     │          0x00007f952ed7ac1e:   xchg   %ax,%ax
   0.01%  ││     │          0x00007f952ed7ac20:   cmp    $0x2,%esi
          ││     │          0x00007f952ed7ac23:   jb     0x00007f952ed7ad96
   0.05%  │↘     │          0x00007f952ed7ac29:   test   %esi,%esi
          │ ╭    │          0x00007f952ed7ac2b:   je     0x00007f952ed7ad64
   0.04%  │ │    │          0x00007f952ed7ac31:   mov    %r12d,0x10(,%rdx,8)
   0.02%  │ │    │          0x00007f952ed7ac39:   nopl   0x0(%rax)
   0.01%  │ │    │          0x00007f952ed7ac40:   cmp    $0x1,%r10d
   0.00%  │ │╭   │          0x00007f952ed7ac44:   je     0x00007f952ed7acaa           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   0.02%  │ ││   │          0x00007f952ed7ac4a:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@28 (line 86)
   0.03%  │ ││   │          0x00007f952ed7ac4e:   lea    0x14(%rdx),%rdx
   0.01%  │ ││   │          0x00007f952ed7ac52:   vmovd  %edi,%xmm1
   0.01%  │ ││   │          0x00007f952ed7ac56:   vpbroadcastd %xmm1,%ymm1
   0.02%  │ ││   │          0x00007f952ed7ac5b:   vpmulld %ymm0,%ymm1,%ymm2
   0.06%  │ ││   │          0x00007f952ed7ac60:   vpaddd %ymm1,%ymm2,%ymm1
   0.01%  │ ││   │          0x00007f952ed7ac64:   cmp    $0x8,%eax
          │ ││╭  │          0x00007f952ed7ac67:   jb     0x00007f952ed7ad14
   0.03%  │ │││  │          0x00007f952ed7ac6d:   mov    %edi,%esi
   0.03%  │ │││  │          0x00007f952ed7ac6f:   shl    $0x3,%esi
   0.01%  │ │││  │          0x00007f952ed7ac72:   vmovd  %esi,%xmm2
   0.01%  │ │││  │          0x00007f952ed7ac76:   vpbroadcastd %xmm2,%ymm2
   0.03%  │ │││  │          0x00007f952ed7ac7b:   mov    $0x0,%rsi
   0.02%  │ │││  │          0x00007f952ed7ac82:   data16 nopw 0x0(%rax,%rax,1)
   0.01%  │ │││  │          0x00007f952ed7ac8c:   data16 data16 xchg %ax,%ax
   9.60%  │ │││↗ │          0x00007f952ed7ac90:   vmovdqu %ymm1,(%rdx,%rsi,4)
  64.27%  │ ││││ │          0x00007f952ed7ac95:   vpaddd %ymm2,%ymm1,%ymm1
   4.60%  │ ││││ │          0x00007f952ed7ac99:   lea    0x8(%rsi),%rsi
   6.96%  │ ││││ │          0x00007f952ed7ac9d:   data16 xchg %ax,%ax
   7.92%  │ ││││ │          0x00007f952ed7aca0:   cmp    %r8,%rsi
   0.05%  │ │││╰ │          0x00007f952ed7aca3:   jle    0x00007f952ed7ac90
   0.03%  │ │││ ╭│          0x00007f952ed7aca5:   jmp    0x00007f952ed7acc5           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │││ ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   0.02%  │ │↘│ ││   ↗↗     0x00007f952ed7acaa:   mov    0x458(%r15),%rdx             ; ImmutableOopMap {r11=Oop }
          │ │ │ ││   ││                                                               ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          │ │ │ ││   ││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@42 (line 84)
   0.05%  │ │ │ ││   ││     0x00007f952ed7acb1:   test   %eax,(%rdx)                  ;   {poll}
   0.21%  │ │ │ ││   ││     0x00007f952ed7acb3:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ ││   ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@42 (line 84)
   0.02%  ↘ │ │ ││   ││     0x00007f952ed7acb5:   cmp    %edi,%r10d
            │ │ │╰   ││     0x00007f952ed7acb8:   jg     0x00007f952ed7ac00
            │ │ │    ││     0x00007f952ed7acbe:   xchg   %ax,%ax
            │ │ │ ╭  ││     0x00007f952ed7acc0:   jmp    0x00007f952ed7ad24           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │ │ │ │  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@14 (line 84)
   0.02%    │ │ ↘ │  ││↗    0x00007f952ed7acc5:   cmp    %rbx,%rsi
            │ │   │╭ │││    0x00007f952ed7acc8:   jg     0x00007f952ed7ad1d
   0.02%    │ │   ││ │││    0x00007f952ed7acce:   vmovdqu %xmm1,(%rdx,%rsi,4)
   0.08%    │ │   ││ │││    0x00007f952ed7acd3:   mov    %edi,%ebp
   0.02%    │ │   ││ │││    0x00007f952ed7acd5:   shl    $0x2,%ebp
   0.03%    │ │   ││ │││    0x00007f952ed7acd8:   vmovd  %ebp,%xmm2
   0.04%    │ │   ││ │││    0x00007f952ed7acdc:   vpbroadcastd %xmm2,%xmm2
   0.02%    │ │   ││ │││    0x00007f952ed7ace1:   vpaddd %xmm2,%xmm1,%xmm1
   0.02%    │ │   ││ │││    0x00007f952ed7ace5:   lea    0x4(%rsi),%rsi
   0.03%    │ │   ││ │││↗   0x00007f952ed7ace9:   vmovd  %xmm1,%ebp
   0.03%    │ │   ││ ││││   0x00007f952ed7aced:   cmp    %rcx,%rsi
            │ │   ││╭││││   0x00007f952ed7acf0:   jg     0x00007f952ed7ad1f
   0.02%    │ │   │││││││   0x00007f952ed7acf6:   vmovq  %xmm1,(%rdx,%rsi,4)
   0.02%    │ │   │││││││   0x00007f952ed7acfc:   mov    %edi,%r13d
   0.02%    │ │   │││││││   0x00007f952ed7acff:   shl    %r13d
   0.03%    │ │   │││││││   0x00007f952ed7ad02:   add    %ebp,%r13d
   0.03%    │ │   │││││││   0x00007f952ed7ad05:   lea    0x2(%rsi),%rsi
   0.01%    │ │   │││││││↗  0x00007f952ed7ad09:   cmp    %r9,%rsi
            │ │   │││╰││││  0x00007f952ed7ad0c:   jg     0x00007f952ed7acaa
   0.02%    │ │   │││ ││││  0x00007f952ed7ad0e:   mov    %r13d,(%rdx,%rsi,4)
   0.02%    │ │   │││ ╰│││  0x00007f952ed7ad12:   jmp    0x00007f952ed7acaa
            │ ↘   │││  │││  0x00007f952ed7ad14:   mov    $0x0,%rsi
            │     │││  ╰││  0x00007f952ed7ad1b:   jmp    0x00007f952ed7acc5
            │     │↘│   ╰│  0x00007f952ed7ad1d:   jmp    0x00007f952ed7ace9
            │     │ ↘    │  0x00007f952ed7ad1f:   mov    %ebp,%r13d
            │     │      ╰  0x00007f952ed7ad22:   jmp    0x00007f952ed7ad09           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │     │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
            │     ↘         0x00007f952ed7ad24:   mov    %r11,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
            │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@49 (line 89)
            │               0x00007f952ed7ad27:   mov    0x10(%rsp),%rbp
   0.01%    │               0x00007f952ed7ad2c:   add    $0x18,%rsp
            │               0x00007f952ed7ad30:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │               0x00007f952ed7ad37:   ja     0x00007f952ed7adaf
            │               0x00007f952ed7ad3d:   vzeroupper 
   0.00%    │               0x00007f952ed7ad40:   ret    
            │               0x00007f952ed7ad41:   movl   $0xffffffe5,0x484(%r15)      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@28 (line 86)
            │               0x00007f952ed7ad4c:   movq   $0x318,0x490(%r15)
            │               0x00007f952ed7ad57:   call   0x00007f952e76a17a           ; ImmutableOopMap {rsi=Oop }
            │                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
            │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@0 (line 82)
            │                                                                         ;   {runtime_call DeoptimizationBlob}
            │               0x00007f952ed7ad5c:   nopl   0x0(%rax,%rax,1)
            ↘               0x00007f952ed7ad64:   mov    $0x0,%r8
                            0x00007f952ed7ad6b:   movl   $0xffffffe5,0x484(%r15)
....................................................................................................
  97.79%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.79%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange, version 3, compile id 976 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.42%  <...other 424 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.79%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange, version 3, compile id 976 
   1.67%              kernel  [unknown] 
   0.12%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  HighResTimeSampler::take_sample 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopInterchangeBenchmark_manual_loop_interchange_jmhTest::manual_loop_interchange_avgt_jmhStub, version 2, compile id 1015 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  PlatformMonitor::wait 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.23%  <...other 86 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  97.79%      jvmci, level 4
   1.67%              kernel
   0.22%           libjvm.so
   0.12%                    
   0.10%        libc-2.31.so
   0.02%         interpreter
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         c1, level 3
   0.01%              [vdso]
   0.00%          ld-2.31.so
   0.00%    perf-2133341.map
   0.00%         c1, level 1
   0.00%         c1, level 2
....................................................................................................
  99.99%  <totals>



# Run complete. Total time: 00:03:49

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

Benchmark                                             (size)  Mode  Cnt      Score     Error  Units
LoopInterchangeBenchmark.initial_loop                   2048  avgt    5  42969.945 ± 510.643  us/op
LoopInterchangeBenchmark.initial_loop:asm               2048  avgt             NaN              ---
LoopInterchangeBenchmark.manual_loop_interchange        2048  avgt    5    899.894 ±  16.014  us/op
LoopInterchangeBenchmark.manual_loop_interchange:asm    2048  avgt             NaN              ---
