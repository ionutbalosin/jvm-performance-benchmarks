# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.initial_loop
# Parameters: (size = 262144)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1145.854 us/op
# Warmup Iteration   2: 1120.676 us/op
# Warmup Iteration   3: 1115.010 us/op
# Warmup Iteration   4: 1117.521 us/op
# Warmup Iteration   5: 1114.892 us/op
Iteration   1: 1107.698 us/op
Iteration   2: 1120.132 us/op
Iteration   3: 1124.632 us/op
Iteration   4: 1119.690 us/op
Iteration   5: 1131.190 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.initial_loop":
  1120.668 ±(99.9%) 33.119 us/op [Average]
  (min, avg, max) = (1107.698, 1120.668, 1131.190), stdev = 8.601
  CI (99.9%): [1087.549, 1153.788] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.initial_loop:asm":
PrintAssembly processed: 224375 total address lines.
Perf output processed (skipped 80.008 seconds):
 Column 1: cycles (51193 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop, version 3, compile id 1047 

                 0x00007f6186d9fb9f:   nop
                 0x00007f6186d9fba0:   cmp    %r9d,%ecx
                 0x00007f6186d9fba3:   jbe    0x00007f6186d9fd0b
                 0x00007f6186d9fba9:   cmp    $0x2,%ecx
                 0x00007f6186d9fbac:   jb     0x00007f6186d9fd0b           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@47 (line 90)
                 0x00007f6186d9fbb2:   mov    0x14(%rsi),%ecx              ; ImmutableOopMap {rcx=NarrowOop rsi=Oop r8=NarrowOop r11=NarrowOop }
                                                                           ;*iconst_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@0 (line 88)
                 0x00007f6186d9fbb5:   mov    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007f6186d9fd98
   0.00%         0x00007f6186d9fbbc:   nopl   0x0(%rax)
                 0x00007f6186d9fbc0:   cmp    %r9d,%ebx
                 0x00007f6186d9fbc3:   jbe    0x00007f6186d9fd0b
                 0x00007f6186d9fbc9:   cmp    $0x2,%ebx
                 0x00007f6186d9fbcc:   jb     0x00007f6186d9fd0b           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
                 0x00007f6186d9fbd2:   shl    $0x3,%rcx                    ;*getfield B {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@32 (line 90)
                 0x00007f6186d9fbd6:   shl    $0x3,%r8                     ;*getfield C {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@24 (line 89)
                 0x00007f6186d9fbda:   shl    $0x3,%r11                    ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@11 (line 89)
                 0x00007f6186d9fbde:   cmp    $0x3,%r10d
                 0x00007f6186d9fbe2:   mov    $0x2,%r9d
                 0x00007f6186d9fbe8:   cmovl  %r10d,%r9d
                 0x00007f6186d9fbec:   mov    $0x1,%ebx
                 0x00007f6186d9fbf1:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007f6186d9fbfc:   data16 data16 xchg %ax,%ax          ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@2 (line 88)
           ↗     0x00007f6186d9fc00:   mov    0x10(%r8,%rbx,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
           │     0x00007f6186d9fc05:   add    0xc(%r11,%rbx,4),%edi        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
           │     0x00007f6186d9fc0a:   mov    %edi,0x10(%r11,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
           │     0x00007f6186d9fc0f:   add    0x10(%r8,%rbx,4),%edi        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
           │     0x00007f6186d9fc14:   mov    %edi,0x10(%rcx,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
           │                                                               ;   {no_reloc}
           │     0x00007f6186d9fc18:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@50 (line 88)
           │     0x00007f6186d9fc1a:   nopw   0x0(%rax,%rax,1)
           │     0x00007f6186d9fc20:   cmp    %ebx,%r9d
          ╭│     0x00007f6186d9fc23:   jle    0x00007f6186d9fc4e
          │╰     0x00007f6186d9fc29:   jmp    0x00007f6186d9fc00           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@7 (line 88)
          │   ↗  0x00007f6186d9fc2b:   mov    0x10(%rsp),%rbp
   0.01%  │   │  0x00007f6186d9fc30:   add    $0x18,%rsp
          │   │  0x00007f6186d9fc34:   nopl   0x0(%rax,%rax,1)
          │   │  0x00007f6186d9fc3c:   data16 data16 xchg %ax,%ax
          │   │  0x00007f6186d9fc40:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │   │  0x00007f6186d9fc47:   ja     0x00007f6186d9fd3e
          │   │  0x00007f6186d9fc4d:   ret                                 ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@2 (line 88)
          ↘   │  0x00007f6186d9fc4e:   lea    -0x4(%r10),%r9d
              │  0x00007f6186d9fc52:   cmp    %ebx,%r9d
            ╭ │  0x00007f6186d9fc55:   jle    0x00007f6186d9fcc8
            │ │  0x00007f6186d9fc5b:   nopl   0x0(%rax,%rax,1)
   0.17%    │↗│  0x00007f6186d9fc60:   mov    0x10(%r8,%rbx,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
   0.00%    │││  0x00007f6186d9fc65:   add    0xc(%r11,%rbx,4),%edi        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   8.76%    │││  0x00007f6186d9fc6a:   mov    %edi,0x10(%r11,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
  10.41%    │││  0x00007f6186d9fc6f:   add    0x10(%r8,%rbx,4),%edi        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
   0.03%    │││  0x00007f6186d9fc74:   mov    %edi,0x10(%rcx,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   4.76%    │││  0x00007f6186d9fc78:   mov    0x14(%r8,%rbx,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
   0.01%    │││  0x00007f6186d9fc7d:   add    0x10(%r11,%rbx,4),%edi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   9.44%    │││  0x00007f6186d9fc82:   mov    %edi,0x14(%r11,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
  10.07%    │││  0x00007f6186d9fc87:   add    0x14(%r8,%rbx,4),%edi        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
   0.04%    │││  0x00007f6186d9fc8c:   mov    %edi,0x14(%rcx,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   4.73%    │││  0x00007f6186d9fc90:   mov    0x18(%r8,%rbx,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
   0.03%    │││  0x00007f6186d9fc95:   add    0x14(%r11,%rbx,4),%edi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   9.38%    │││  0x00007f6186d9fc9a:   mov    %edi,0x18(%r11,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   9.59%    │││  0x00007f6186d9fc9f:   add    0x18(%r8,%rbx,4),%edi        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
   0.04%    │││  0x00007f6186d9fca4:   mov    %edi,0x18(%rcx,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   4.73%    │││  0x00007f6186d9fca8:   mov    0x1c(%r8,%rbx,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
   0.01%    │││  0x00007f6186d9fcad:   add    0x18(%r11,%rbx,4),%edi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   8.77%    │││  0x00007f6186d9fcb2:   mov    %edi,0x1c(%r11,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   9.91%    │││  0x00007f6186d9fcb7:   add    0x1c(%r8,%rbx,4),%edi        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
   0.03%    │││  0x00007f6186d9fcbc:   mov    %edi,0x1c(%rcx,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   4.88%    │││  0x00007f6186d9fcc0:   lea    0x4(%rbx),%ebx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@50 (line 88)
            │││  0x00007f6186d9fcc3:   cmp    %ebx,%r9d
            │╰│  0x00007f6186d9fcc6:   jg     0x00007f6186d9fc60           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@7 (line 88)
            ↘ │  0x00007f6186d9fcc8:   cmp    %ebx,%r10d
              ╰  0x00007f6186d9fccb:   jle    0x00007f6186d9fc2b
                 0x00007f6186d9fcd1:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007f6186d9fcdc:   data16 data16 xchg %ax,%ax
                 0x00007f6186d9fce0:   mov    0x10(%r8,%rbx,4),%r9d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  95.81%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.81%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop, version 3, compile id 1047 
   0.67%                kernel  [unknown] 
   0.32%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%             libjvm.so  fileStream::write 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.04%                kernel  [unknown] 
   1.80%  <...other 317 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.81%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop, version 3, compile id 1047 
   3.42%                kernel  [unknown] 
   0.11%                        <unknown> 
   0.04%             libjvm.so  fileStream::write 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.04%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  defaultStream::hold 
   0.03%             libjvm.so  xmlStream::write_text 
   0.03%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libc.so.6  __strchr_avx2 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libjvm.so  MethodMatcher::matches 
   0.01%             libc.so.6  _IO_default_xsputn 
   0.01%             libc.so.6  syscall 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  __GI___futex_abstimed_wait_cancelable64 
   0.01%           c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopFissionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 2, compile id 1085 
   0.28%  <...other 95 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  95.81%        jvmci, level 4
   3.42%                kernel
   0.33%             libjvm.so
   0.21%             libc.so.6
   0.11%                      
   0.04%           interpreter
   0.03%  ld-linux-x86-64.so.2
   0.03%        hsdis-amd64.so
   0.01%           c1, level 3
   0.01%                [vdso]
....................................................................................................
  99.99%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.manual_loop_fission
# Parameters: (size = 262144)

# Run progress: 50.00% complete, ETA 00:02:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 554.663 us/op
# Warmup Iteration   2: 550.197 us/op
# Warmup Iteration   3: 545.005 us/op
# Warmup Iteration   4: 551.225 us/op
# Warmup Iteration   5: 546.079 us/op
Iteration   1: 549.638 us/op
Iteration   2: 529.097 us/op
Iteration   3: 544.725 us/op
Iteration   4: 547.895 us/op
Iteration   5: 550.636 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.manual_loop_fission":
  544.398 ±(99.9%) 34.052 us/op [Average]
  (min, avg, max) = (529.097, 544.398, 550.636), stdev = 8.843
  CI (99.9%): [510.346, 578.450] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.manual_loop_fission:asm":
PrintAssembly processed: 217355 total address lines.
Perf output processed (skipped 77.869 seconds):
 Column 1: cycles (51485 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 3, compile id 1048 

                         0x00007fd86ad9ce20:   mov    %eax,-0x14000(%rsp)
                         0x00007fd86ad9ce27:   sub    $0x18,%rsp
                         0x00007fd86ad9ce2b:   nop
                         0x00007fd86ad9ce2c:   cmpl   $0x0,0x20(%r15)
                         0x00007fd86ad9ce34:   jne    0x00007fd86ad9d137
                         0x00007fd86ad9ce3a:   mov    %rbp,0x10(%rsp)
                         0x00007fd86ad9ce3f:   mov    0x10(%rsi),%r10d             ; ImmutableOopMap {rsi=Oop r10=NarrowOop }
                                                                                   ;*iconst_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@0 (line 101)
                         0x00007fd86ad9ce43:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007fd86ad9d15b
   0.00%                 0x00007fd86ad9ce4b:   mov    0xc(%rsi),%r8d               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@4 (line 101)
                         0x00007fd86ad9ce4f:   mov    %r8d,%r9d
                         0x00007fd86ad9ce52:   dec    %r9d
                         0x00007fd86ad9ce55:   movslq %r9d,%rcx
                         0x00007fd86ad9ce58:   mov    %r11d,%ebx
                         0x00007fd86ad9ce5b:   nopl   0x0(%rax,%rax,1)
                         0x00007fd86ad9ce60:   cmp    $0x2,%r8d
          ╭              0x00007fd86ad9ce64:   jl     0x00007fd86ad9ce89
          │              0x00007fd86ad9ce6a:   mov    %rcx,%rdi
   0.00%  │              0x00007fd86ad9ce6d:   dec    %rdi
          │              0x00007fd86ad9ce70:   cmp    %rdi,%rbx
          │              0x00007fd86ad9ce73:   jbe    0x00007fd86ad9d0f1
          │              0x00007fd86ad9ce79:   nopl   0x0(%rax)
          │              0x00007fd86ad9ce80:   test   %r11d,%r11d
          │              0x00007fd86ad9ce83:   je     0x00007fd86ad9d0f1           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@22 (line 102)
          ↘              0x00007fd86ad9ce89:   mov    0x18(%rsi),%edi              ;*iconst_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@0 (line 101)
                         0x00007fd86ad9ce8c:   test   %eax,0x0(,%rdi,8)            ; implicit exception: deoptimizes
                                                                                   ; ImmutableOopMap {rsi=Oop rdi=NarrowOop r10=NarrowOop }
   0.00%                 0x00007fd86ad9ce93:   cmp    $0x2,%r8d
           ╭             0x00007fd86ad9ce97:   jl     0x00007fd86ad9ceb8
           │             0x00007fd86ad9ce9d:   mov    0xc(,%rdi,8),%edx
           │             0x00007fd86ad9cea4:   mov    %edx,%eax
           │             0x00007fd86ad9cea6:   cmp    %rcx,%rax
           │             0x00007fd86ad9cea9:   jbe    0x00007fd86ad9d0f1
           │             0x00007fd86ad9ceaf:   cmp    $0x2,%edx
           │             0x00007fd86ad9ceb2:   jb     0x00007fd86ad9d0f1           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
           ↘             0x00007fd86ad9ceb8:   nopl   0x0(%rax,%rax,1)
                         0x00007fd86ad9cec0:   cmp    $0x2,%r8d
            ╭            0x00007fd86ad9cec4:   jl     0x00007fd86ad9cedd
            │            0x00007fd86ad9ceca:   cmp    %rcx,%rbx
            │            0x00007fd86ad9cecd:   jbe    0x00007fd86ad9d0f1
            │            0x00007fd86ad9ced3:   cmp    $0x2,%r11d
            │            0x00007fd86ad9ced7:   jb     0x00007fd86ad9d0f1           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
            ↘            0x00007fd86ad9cedd:   shl    $0x3,%rdi                    ;*getfield C {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@59 (line 106)
                         0x00007fd86ad9cee1:   cmp    $0x3,%r8d
                         0x00007fd86ad9cee5:   mov    $0x2,%r11d
                         0x00007fd86ad9ceeb:   cmovl  %r8d,%r11d
                         0x00007fd86ad9ceef:   shl    $0x3,%r10                    ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@53 (line 106)
                         0x00007fd86ad9cef3:   mov    $0x1,%ebx
             ╭           0x00007fd86ad9cef8:   jmp    0x00007fd86ad9cf10           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
             │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@2 (line 101)
             │           0x00007fd86ad9cefd:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@7 (line 101)
             │↗          0x00007fd86ad9cf00:   mov    0x10(%rdi,%rbx,4),%edx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
             ││          0x00007fd86ad9cf04:   add    0xc(%r10,%rbx,4),%edx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
             ││          0x00007fd86ad9cf09:   mov    %edx,0x10(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   0.00%     ││          0x00007fd86ad9cf0e:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@31 (line 101)
             ↘│          0x00007fd86ad9cf10:   cmp    %ebx,%r11d
              ╰          0x00007fd86ad9cf13:   jg     0x00007fd86ad9cf00
                         0x00007fd86ad9cf15:   lea    -0x8(%r8),%r11d              ;   {no_reloc}
                         0x00007fd86ad9cf19:   cmp    $0x80000008,%r8d
                         0x00007fd86ad9cf20:   mov    $0x80000000,%edx
                         0x00007fd86ad9cf25:   cmovl  %edx,%r11d
               ╭         0x00007fd86ad9cf29:   jmp    0x00007fd86ad9cf90
               │         0x00007fd86ad9cf2e:   data16 data16 nopw 0x0(%rax,%rax,1)
               │         0x00007fd86ad9cf39:   data16 data16 xchg %ax,%ax
               │         0x00007fd86ad9cf3d:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@7 (line 101)
   0.22%       │↗        0x00007fd86ad9cf40:   mov    0x10(%rdi,%rbx,4),%edx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
               ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
   0.01%       ││        0x00007fd86ad9cf44:   add    0xc(%r10,%rbx,4),%edx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
  11.40%       ││        0x00007fd86ad9cf49:   mov    %edx,0x10(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
  10.74%       ││        0x00007fd86ad9cf4e:   add    0x14(%rdi,%rbx,4),%edx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.05%       ││        0x00007fd86ad9cf52:   mov    %edx,0x14(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.47%       ││        0x00007fd86ad9cf57:   add    0x18(%rdi,%rbx,4),%edx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   1.14%       ││        0x00007fd86ad9cf5b:   mov    %edx,0x18(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.06%       ││        0x00007fd86ad9cf60:   add    0x1c(%rdi,%rbx,4),%edx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.07%       ││        0x00007fd86ad9cf64:   mov    %edx,0x1c(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   4.90%       ││        0x00007fd86ad9cf69:   add    0x20(%rdi,%rbx,4),%edx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.00%       ││        0x00007fd86ad9cf6d:   mov    %edx,0x20(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   4.92%       ││        0x00007fd86ad9cf72:   add    0x24(%rdi,%rbx,4),%edx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.02%       ││        0x00007fd86ad9cf76:   mov    %edx,0x24(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.01%       ││        0x00007fd86ad9cf7b:   add    0x28(%rdi,%rbx,4),%edx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.04%       ││        0x00007fd86ad9cf7f:   mov    %edx,0x28(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.00%       ││        0x00007fd86ad9cf84:   add    0x2c(%rdi,%rbx,4),%edx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.02%       ││        0x00007fd86ad9cf88:   mov    %edx,0x2c(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   4.85%       ││        0x00007fd86ad9cf8d:   lea    0x8(%rbx),%ebx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@31 (line 101)
   0.01%       ↘│        0x00007fd86ad9cf90:   cmp    %ebx,%r11d
                ╰        0x00007fd86ad9cf93:   jg     0x00007fd86ad9cf40
                 ╭       0x00007fd86ad9cf95:   jmp    0x00007fd86ad9cfc0
                 │       0x00007fd86ad9cf9a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                 │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@7 (line 101)
   0.00%         │↗      0x00007fd86ad9cfa0:   mov    0x10(%rdi,%rbx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                 ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
   0.00%         ││      0x00007fd86ad9cfa5:   add    0xc(%r10,%rbx,4),%r11d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                 ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
                 ││      0x00007fd86ad9cfaa:   mov    %r11d,0x10(%r10,%rbx,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                 ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
                 ││      0x00007fd86ad9cfaf:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@31 (line 101)
                 ││      0x00007fd86ad9cfb1:   data16 data16 nopw 0x0(%rax,%rax,1)
                 ││      0x00007fd86ad9cfbc:   data16 data16 xchg %ax,%ax
                 ↘│      0x00007fd86ad9cfc0:   cmp    %ebx,%r8d
                  ╰      0x00007fd86ad9cfc3:   jg     0x00007fd86ad9cfa0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@7 (line 101)
                         0x00007fd86ad9cfc5:   mov    0x14(%rsi),%r11d             ;*iconst_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@37 (line 105)
   0.01%                 0x00007fd86ad9cfc9:   test   %eax,0x0(,%r11,8)            ; implicit exception: deoptimizes
                                                                                   ; ImmutableOopMap {rsi=Oop rdi=Oop r10=Oop r11=NarrowOop }
   0.01%                 0x00007fd86ad9cfd1:   cmp    $0x2,%r8d
                   ╭     0x00007fd86ad9cfd5:   jl     0x00007fd86ad9cff7
                   │     0x00007fd86ad9cfdb:   mov    0xc(,%r11,8),%ebx
                   │     0x00007fd86ad9cfe3:   mov    %ebx,%edx
                   │     0x00007fd86ad9cfe5:   cmp    %rcx,%rdx
                   │     0x00007fd86ad9cfe8:   jbe    0x00007fd86ad9d114
                   │     0x00007fd86ad9cfee:   cmp    $0x2,%ebx
                   │     0x00007fd86ad9cff1:   jb     0x00007fd86ad9d114
                   ↘     0x00007fd86ad9cff7:   cmp    $0x1,%r8d
                         0x00007fd86ad9cffb:   mov    $0x0,%r8d
                         0x00007fd86ad9d001:   cmovl  %r8d,%r9d
                         0x00007fd86ad9d005:   mov    %r9d,%r8d
                         0x00007fd86ad9d008:   test   %r8,%r8
                    ╭    0x00007fd86ad9d00b:   je     0x00007fd86ad9d065           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
                    │    0x00007fd86ad9d011:   shl    $0x3,%r11                    ;*getfield B {reexecute=0 rethrow=0 return_oop=0}
                    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@48 (line 106)
                    │    0x00007fd86ad9d015:   lea    0x14(%r11),%r11              ;   {no_reloc}
                    │    0x00007fd86ad9d019:   lea    0x14(%r10),%r10
                    │    0x00007fd86ad9d01d:   lea    0x14(%rdi),%r9
                    │    0x00007fd86ad9d021:   cmp    $0x8,%r8
                    │    0x00007fd86ad9d025:   jb     0x00007fd86ad9d0e3
                    │    0x00007fd86ad9d02b:   lea    -0x8(%r8),%rcx
                    │    0x00007fd86ad9d02f:   mov    $0x0,%rbx
                    │    0x00007fd86ad9d036:   data16 nopw 0x0(%rax,%rax,1)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   0.51%            │↗   0x00007fd86ad9d040:   vmovdqu (%r9,%rbx,4),%ymm0
  12.64%            ││   0x00007fd86ad9d046:   vmovdqu (%r10,%rbx,4),%ymm1
  11.09%            ││   0x00007fd86ad9d04c:   vpaddd %ymm1,%ymm0,%ymm0            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
   8.61%            ││   0x00007fd86ad9d050:   vmovdqu %ymm0,(%r11,%rbx,4)
   2.11%            ││   0x00007fd86ad9d056:   lea    0x8(%rbx),%rbx
   1.52%            ││   0x00007fd86ad9d05a:   cmp    %rcx,%rbx
                    │╰   0x00007fd86ad9d05d:   jle    0x00007fd86ad9d040
                    │    0x00007fd86ad9d05f:   nop
                    │ ╭  0x00007fd86ad9d060:   jmp    0x00007fd86ad9d07f
                    ↘ │  0x00007fd86ad9d065:   mov    0x10(%rsp),%rbp
                      │  0x00007fd86ad9d06a:   add    $0x18,%rsp
                      │  0x00007fd86ad9d06e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                      │  0x00007fd86ad9d075:   ja     0x00007fd86ad9d147
                      │  0x00007fd86ad9d07b:   vzeroupper 
   0.00%              │  0x00007fd86ad9d07e:   ret    
                      ↘  0x00007fd86ad9d07f:   lea    -0x4(%r8),%rcx
                         0x00007fd86ad9d083:   cmp    %rcx,%rbx
                         0x00007fd86ad9d086:   jg     0x00007fd86ad9d0ec           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
                         0x00007fd86ad9d08c:   vmovdqu (%r9,%rbx,4),%xmm0
   0.00%                 0x00007fd86ad9d092:   vmovdqu (%r10,%rbx,4),%xmm1
                         0x00007fd86ad9d098:   vpaddd %xmm1,%xmm0,%xmm0            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
                         0x00007fd86ad9d09c:   vmovdqu %xmm0,(%r11,%rbx,4)
   0.01%                 0x00007fd86ad9d0a2:   lea    0x4(%rbx),%rcx
                         0x00007fd86ad9d0a6:   lea    -0x2(%r8),%rbx
                         0x00007fd86ad9d0aa:   cmp    %rbx,%rcx
                         0x00007fd86ad9d0ad:   jg     0x00007fd86ad9d0cd           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
                         0x00007fd86ad9d0b3:   vmovq  (%r9,%rcx,4),%xmm0
                         0x00007fd86ad9d0b9:   vmovq  (%r10,%rcx,4),%xmm1
                         0x00007fd86ad9d0bf:   vpaddd %xmm1,%xmm0,%xmm0            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
                         0x00007fd86ad9d0c3:   vmovq  %xmm0,(%r11,%rcx,4)
                         0x00007fd86ad9d0c9:   lea    0x2(%rcx),%rcx
....................................................................................................
  95.45%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.45%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 3, compile id 1048 
   0.69%                kernel  [unknown] 
   0.59%                kernel  [unknown] 
   0.34%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   0.03%             libjvm.so  fileStream::write 
   0.03%                kernel  [unknown] 
   1.88%  <...other 350 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.45%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 3, compile id 1048 
   3.73%                kernel  [unknown] 
   0.15%                        <unknown> 
   0.03%             libjvm.so  fileStream::write 
   0.03%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libjvm.so  xmlTextStream::flush 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libjvm.so  RelocIterator::initialize 
   0.02%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopFissionBenchmark_manual_loop_fission_jmhTest::manual_loop_fission_avgt_jmhStub, version 4, compile id 1085 
   0.01%             libc.so.6  __GI___pthread_enable_asynccancel 
   0.01%        hsdis-amd64.so  print_displacement 
   0.29%  <...other 101 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.46%        jvmci, level 4
   3.73%                kernel
   0.33%             libjvm.so
   0.21%             libc.so.6
   0.15%                      
   0.04%        hsdis-amd64.so
   0.03%  ld-linux-x86-64.so.2
   0.02%           interpreter
   0.01%           c1, level 3
   0.01%                [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:04:32

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

Benchmark                                     (size)  Mode  Cnt     Score    Error  Units
LoopFissionBenchmark.initial_loop             262144  avgt    5  1120.668 ± 33.119  us/op
LoopFissionBenchmark.initial_loop:asm         262144  avgt            NaN             ---
LoopFissionBenchmark.manual_loop_fission      262144  avgt    5   544.398 ± 34.052  us/op
LoopFissionBenchmark.manual_loop_fission:asm  262144  avgt            NaN             ---
