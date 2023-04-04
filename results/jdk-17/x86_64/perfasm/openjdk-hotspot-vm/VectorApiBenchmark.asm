# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.baseline_filter
# Parameters: (size = 262144)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 204.139 us/op
# Warmup Iteration   2: 202.359 us/op
# Warmup Iteration   3: 202.321 us/op
# Warmup Iteration   4: 202.205 us/op
# Warmup Iteration   5: 202.171 us/op
Iteration   1: 202.193 us/op
Iteration   2: 203.079 us/op
Iteration   3: 203.109 us/op
Iteration   4: 203.096 us/op
Iteration   5: 203.086 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.baseline_filter":
  202.912 ±(99.9%) 1.549 us/op [Average]
  (min, avg, max) = (202.193, 202.912, 203.109), stdev = 0.402
  CI (99.9%): [201.363, 204.462] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.baseline_filter:·asm":
PrintAssembly processed: 128132 total address lines.
Perf output processed (skipped 56.234 seconds):
 Column 1: cycles (50769 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter, version 3, compile id 560 

                         0x00007f8ea0f6acc8:   cmp    %ecx,%r10d
                         0x00007f8ea0f6accb:   cmovl  %r11d,%ecx
                         0x00007f8ea0f6accf:   mov    $0x1,%edi
                         0x00007f8ea0f6acd4:   cmp    $0x1,%ecx
          ╭              0x00007f8ea0f6acd7:   jle    0x00007f8ea0f6ada5
          │              0x00007f8ea0f6acdd:   mov    $0xfa0,%ebp                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@44 (line 99)
          │              0x00007f8ea0f6ace2:   xor    %ebx,%ebx
          │╭             0x00007f8ea0f6ace4:   jmp    0x00007f8ea0f6ad8b
          ││             0x00007f8ea0f6ace9:   nopl   0x0(%rax)
   2.35%  ││    ↗        0x00007f8ea0f6acf0:   mov    %r10d,0x1c(%rsi,%rdi,4)
   4.02%  ││    │↗       0x00007f8ea0f6acf5:   add    $0x4,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@41 (line 99)
   1.86%  ││    ││       0x00007f8ea0f6acf8:   cmp    %eax,%edi
   3.85%  ││    ││       0x00007f8ea0f6acfa:   nopw   0x0(%rax,%rax,1)
   2.45%  ││╭   ││       0x00007f8ea0f6ad00:   jge    0x00007f8ea0f6ad7e           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@20 (line 100)
   4.13%  │││   ││ ↗     0x00007f8ea0f6ad06:   mov    0x10(%r8,%rdi,4),%r10d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@23 (line 100)
   2.01%  │││   ││ │     0x00007f8ea0f6ad0b:   mov    %r10d,%r11d
   3.97%  │││   ││ │     0x00007f8ea0f6ad0e:   shr    $0x1f,%r11d
   2.32%  │││   ││ │     0x00007f8ea0f6ad12:   add    %r10d,%r11d
   4.17%  │││   ││ │     0x00007f8ea0f6ad15:   and    $0xfffffffe,%r11d
   2.19%  │││   ││ │     0x00007f8ea0f6ad19:   cmp    %r11d,%r10d
          │││╭  ││ │     0x00007f8ea0f6ad1c:   jne    0x00007f8ea0f6ad23           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@32 (line 101)
          ││││  ││ │     0x00007f8ea0f6ad1e:   mov    %r10d,0x10(%rsi,%rdi,4)      ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@41 (line 99)
   4.45%  │││↘  ││ │     0x00007f8ea0f6ad23:   mov    0x14(%r8,%rdi,4),%r10d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@23 (line 100)
   1.81%  │││   ││ │     0x00007f8ea0f6ad28:   mov    %r10d,%r11d
   3.99%  │││   ││ │     0x00007f8ea0f6ad2b:   shr    $0x1f,%r11d
   1.91%  │││   ││ │     0x00007f8ea0f6ad2f:   add    %r10d,%r11d
   4.43%  │││   ││ │     0x00007f8ea0f6ad32:   and    $0xfffffffe,%r11d
   1.84%  │││   ││ │     0x00007f8ea0f6ad36:   cmp    %r11d,%r10d
          │││ ╭ ││ │     0x00007f8ea0f6ad39:   jne    0x00007f8ea0f6ad40           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@32 (line 101)
   4.34%  │││ │ ││ │     0x00007f8ea0f6ad3b:   mov    %r10d,0x14(%rsi,%rdi,4)      ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@41 (line 99)
   1.76%  │││ ↘ ││ │     0x00007f8ea0f6ad40:   mov    0x18(%r8,%rdi,4),%r10d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@23 (line 100)
   4.30%  │││   ││ │     0x00007f8ea0f6ad45:   mov    %r10d,%r11d
   1.85%  │││   ││ │     0x00007f8ea0f6ad48:   shr    $0x1f,%r11d
   4.15%  │││   ││ │     0x00007f8ea0f6ad4c:   add    %r10d,%r11d
   1.91%  │││   ││ │     0x00007f8ea0f6ad4f:   and    $0xfffffffe,%r11d
   4.30%  │││   ││ │     0x00007f8ea0f6ad53:   cmp    %r11d,%r10d
          │││  ╭││ │     0x00007f8ea0f6ad56:   jne    0x00007f8ea0f6ad5d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││  │││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@32 (line 101)
          │││  │││ │     0x00007f8ea0f6ad58:   mov    %r10d,0x18(%rsi,%rdi,4)      ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││  │││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@41 (line 99)
   1.95%  │││  ↘││ │     0x00007f8ea0f6ad5d:   mov    0x1c(%r8,%rdi,4),%r10d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@23 (line 100)
   8.32%  │││   ││ │     0x00007f8ea0f6ad62:   mov    %r10d,%r11d
   1.69%  │││   ││ │     0x00007f8ea0f6ad65:   shr    $0x1f,%r11d
   4.59%  │││   ││ │     0x00007f8ea0f6ad69:   add    %r10d,%r11d
   2.24%  │││   ││ │     0x00007f8ea0f6ad6c:   and    $0xfffffffe,%r11d
   4.45%  │││   ││ │     0x00007f8ea0f6ad70:   cmp    %r11d,%r10d
          │││   ╰│ │     0x00007f8ea0f6ad73:   je     0x00007f8ea0f6acf0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││    │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@32 (line 101)
          │││    ╰ │     0x00007f8ea0f6ad79:   jmp    0x00007f8ea0f6acf5           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││      │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@44 (line 99)
   0.02%  ││↘      │     0x00007f8ea0f6ad7e:   mov    0x348(%r15),%rax             ; ImmutableOopMap {r8=Oop r9=NarrowOop rdx=Oop rsi=Oop r14=Oop }
          ││       │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││       │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@44 (line 99)
   0.17%  ││       │     0x00007f8ea0f6ad85:   test   %eax,(%rax)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││       │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@44 (line 99)
          ││       │                                                               ;   {poll}
   0.14%  ││       │     0x00007f8ea0f6ad87:   cmp    %ecx,%edi
          ││      ╭│     0x00007f8ea0f6ad89:   jge    0x00007f8ea0f6ada5
          │↘      ││     0x00007f8ea0f6ad8b:   mov    %ecx,%eax
          │       ││     0x00007f8ea0f6ad8d:   sub    %edi,%eax
          │       ││     0x00007f8ea0f6ad8f:   cmp    %edi,%ecx
   0.02%  │       ││     0x00007f8ea0f6ad91:   cmovl  %ebx,%eax
          │       ││     0x00007f8ea0f6ad94:   cmp    $0xfa0,%eax
          │       ││     0x00007f8ea0f6ad9a:   cmova  %ebp,%eax
   0.01%  │       ││     0x00007f8ea0f6ad9d:   add    %edi,%eax
          │       ││     0x00007f8ea0f6ad9f:   nop
          │       │╰     0x00007f8ea0f6ada0:   jmp    0x00007f8ea0f6ad06
          ↘       ↘      0x00007f8ea0f6ada5:   cmp    %r13d,%edi
                    ╭    0x00007f8ea0f6ada8:   jge    0x00007f8ea0f6add1
                    │    0x00007f8ea0f6adaa:   xchg   %ax,%ax                      ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@20 (line 100)
                    │ ↗  0x00007f8ea0f6adac:   mov    0x10(%r8,%rdi,4),%r11d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@23 (line 100)
                    │ │  0x00007f8ea0f6adb1:   mov    %r11d,%r10d
   0.00%            │ │  0x00007f8ea0f6adb4:   shr    $0x1f,%r10d
                    │ │  0x00007f8ea0f6adb8:   add    %r11d,%r10d
                    │ │  0x00007f8ea0f6adbb:   and    $0xfffffffe,%r10d
                    │ │  0x00007f8ea0f6adbf:   nop
                    │ │  0x00007f8ea0f6adc0:   cmp    %r10d,%r11d
                    │╭│  0x00007f8ea0f6adc3:   jne    0x00007f8ea0f6adca           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@32 (line 101)
                    │││  0x00007f8ea0f6adc5:   mov    %r11d,0x10(%rsi,%rdi,4)
   0.00%            │↘│  0x00007f8ea0f6adca:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@41 (line 99)
                    │ │  0x00007f8ea0f6adcc:   cmp    %r13d,%edi
                    │ ╰  0x00007f8ea0f6adcf:   jl     0x00007f8ea0f6adac           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@17 (line 99)
                    ↘    0x00007f8ea0f6add1:   test   %rdx,%rdx
                         0x00007f8ea0f6add4:   je     0x00007f8ea0f6ae10           ;*synchronization entry
                                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@-1 (line 314)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@49 (line 105)
                         0x00007f8ea0f6add6:   mov    %r9,%r10
                         0x00007f8ea0f6add9:   shl    $0x3,%r10                    ;*invokestatic consumeCompiler {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@7 (line 315)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@49 (line 105)
                         0x00007f8ea0f6addd:   add    $0x30,%rsp
                         0x00007f8ea0f6ade1:   pop    %rbp
   0.01%                 0x00007f8ea0f6ade2:   cmp    0x340(%r15),%rsp             ;   {poll_return}
                         0x00007f8ea0f6ade9:   ja     0x00007f8ea0f6ae4c
                         0x00007f8ea0f6adef:   ret    
                         0x00007f8ea0f6adf0:   mov    $0xffffff76,%esi
                         0x00007f8ea0f6adf5:   mov    %r14,%rbp
                         0x00007f8ea0f6adf8:   mov    %rdx,(%rsp)
                         0x00007f8ea0f6adfc:   mov    %r8d,0x8(%rsp)
                         0x00007f8ea0f6ae01:   mov    %r13d,0xc(%rsp)
                         0x00007f8ea0f6ae06:   mov    %r9d,0x10(%rsp)
                         0x00007f8ea0f6ae0b:   call   0x00007f8ea0a01600           ; ImmutableOopMap {rbp=Oop [0]=Oop [8]=NarrowOop [16]=NarrowOop }
                                                                                   ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  97.98%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.98%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter, version 3, compile id 560 
   1.00%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter, version 3, compile id 560 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.VectorApiBenchmark_baseline_filter_jmhTest::baseline_filter_avgt_jmhStub, version 4, compile id 591 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.59%  <...other 210 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter, version 3, compile id 560 
   1.73%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.VectorApiBenchmark_baseline_filter_jmhTest::baseline_filter_avgt_jmhStub, version 4, compile id 591 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  tcache_init.part.0 
   0.01%           libjvm.so  os::current_thread_id 
   0.00%        libc-2.31.so  _int_realloc 
   0.00%        libc-2.31.so  _nl_parse_alt_digit 
   0.00%        libc-2.31.so  [unknown] 
   0.00%           libjvm.so  outputStream::print 
   0.00%           libjvm.so  nmethod::fix_oop_relocations 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.09%  <...other 45 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.01%         c2, level 4
   1.73%              kernel
   0.11%           libjvm.so
   0.06%        libc-2.31.so
   0.05%                    
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%  libpthread-2.31.so
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.baseline_filter
# Parameters: (size = 1048576)

# Run progress: 8.33% complete, ETA 00:20:01
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 809.390 us/op
# Warmup Iteration   2: 805.281 us/op
# Warmup Iteration   3: 805.303 us/op
# Warmup Iteration   4: 805.271 us/op
# Warmup Iteration   5: 805.290 us/op
Iteration   1: 804.723 us/op
Iteration   2: 804.610 us/op
Iteration   3: 804.930 us/op
Iteration   4: 804.835 us/op
Iteration   5: 804.911 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.baseline_filter":
  804.802 ±(99.9%) 0.517 us/op [Average]
  (min, avg, max) = (804.610, 804.802, 804.930), stdev = 0.134
  CI (99.9%): [804.284, 805.319] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.baseline_filter:·asm":
PrintAssembly processed: 131211 total address lines.
Perf output processed (skipped 56.277 seconds):
 Column 1: cycles (50690 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter, version 3, compile id 574 

                         0x00007f150cf6d442:   mov    $0x80000000,%r11d
                         0x00007f150cf6d448:   cmp    %ecx,%r10d
                         0x00007f150cf6d44b:   cmovl  %r11d,%ecx
                         0x00007f150cf6d44f:   mov    $0x1,%edi
                         0x00007f150cf6d454:   cmp    $0x1,%ecx
          ╭              0x00007f150cf6d457:   jle    0x00007f150cf6d51d
          │              0x00007f150cf6d45d:   mov    $0xfa0,%ebp                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@44 (line 99)
          │              0x00007f150cf6d462:   xor    %ebx,%ebx
          │╭             0x00007f150cf6d464:   jmp    0x00007f150cf6d504
   3.61%  ││    ↗        0x00007f150cf6d469:   mov    %r10d,0x1c(%rsi,%rdi,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││    │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@40 (line 102)
   2.92%  ││    │        0x00007f150cf6d46e:   xchg   %ax,%ax
   2.63%  ││    │↗       0x00007f150cf6d470:   add    $0x4,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@41 (line 99)
   3.13%  ││    ││       0x00007f150cf6d473:   cmp    %eax,%edi
          ││╭   ││       0x00007f150cf6d475:   jge    0x00007f150cf6d4f3           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@20 (line 100)
   3.45%  │││   ││ ↗     0x00007f150cf6d47b:   mov    0x10(%r8,%rdi,4),%r10d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@23 (line 100)
   3.50%  │││   ││ │     0x00007f150cf6d480:   mov    %r10d,%r11d
   2.73%  │││   ││ │     0x00007f150cf6d483:   shr    $0x1f,%r11d
   3.32%  │││   ││ │     0x00007f150cf6d487:   add    %r10d,%r11d
   3.61%  │││   ││ │     0x00007f150cf6d48a:   and    $0xfffffffe,%r11d
   3.47%  │││   ││ │     0x00007f150cf6d48e:   cmp    %r11d,%r10d
          │││╭  ││ │     0x00007f150cf6d491:   jne    0x00007f150cf6d498           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@32 (line 101)
          ││││  ││ │     0x00007f150cf6d493:   mov    %r10d,0x10(%rsi,%rdi,4)      ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@41 (line 99)
   3.30%  │││↘  ││ │     0x00007f150cf6d498:   mov    0x14(%r8,%rdi,4),%r10d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@23 (line 100)
   3.14%  │││   ││ │     0x00007f150cf6d49d:   mov    %r10d,%r11d
   2.91%  │││   ││ │     0x00007f150cf6d4a0:   shr    $0x1f,%r11d
   2.96%  │││   ││ │     0x00007f150cf6d4a4:   add    %r10d,%r11d
   3.28%  │││   ││ │     0x00007f150cf6d4a7:   and    $0xfffffffe,%r11d
   2.98%  │││   ││ │     0x00007f150cf6d4ab:   cmp    %r11d,%r10d
          │││ ╭ ││ │     0x00007f150cf6d4ae:   jne    0x00007f150cf6d4b5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@32 (line 101)
   3.12%  │││ │ ││ │     0x00007f150cf6d4b0:   mov    %r10d,0x14(%rsi,%rdi,4)      ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@41 (line 99)
   2.91%  │││ ↘ ││ │     0x00007f150cf6d4b5:   mov    0x18(%r8,%rdi,4),%r10d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@23 (line 100)
   3.18%  │││   ││ │     0x00007f150cf6d4ba:   mov    %r10d,%r11d
   2.93%  │││   ││ │     0x00007f150cf6d4bd:   shr    $0x1f,%r11d
   3.10%  │││   ││ │     0x00007f150cf6d4c1:   add    %r10d,%r11d
   3.12%  │││   ││ │     0x00007f150cf6d4c4:   and    $0xfffffffe,%r11d
   3.05%  │││   ││ │     0x00007f150cf6d4c8:   cmp    %r11d,%r10d
          │││  ╭││ │     0x00007f150cf6d4cb:   jne    0x00007f150cf6d4d2           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││  │││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@32 (line 101)
          │││  │││ │     0x00007f150cf6d4cd:   mov    %r10d,0x18(%rsi,%rdi,4)      ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││  │││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@41 (line 99)
   3.26%  │││  ↘││ │     0x00007f150cf6d4d2:   mov    0x1c(%r8,%rdi,4),%r10d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@23 (line 100)
   8.79%  │││   ││ │     0x00007f150cf6d4d7:   mov    %r10d,%r11d
   2.95%  │││   ││ │     0x00007f150cf6d4da:   shr    $0x1f,%r11d
   3.44%  │││   ││ │     0x00007f150cf6d4de:   add    %r10d,%r11d
   3.31%  │││   ││ │     0x00007f150cf6d4e1:   and    $0xfffffffe,%r11d
   3.39%  │││   ││ │     0x00007f150cf6d4e5:   cmp    %r11d,%r10d
          │││   ╰│ │     0x00007f150cf6d4e8:   je     0x00007f150cf6d469           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││    │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@32 (line 101)
          │││    ╰ │     0x00007f150cf6d4ee:   jmp    0x00007f150cf6d470           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││      │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@44 (line 99)
   0.01%  ││↘      │     0x00007f150cf6d4f3:   mov    0x348(%r15),%rax             ; ImmutableOopMap {r8=Oop r9=NarrowOop rdx=Oop rsi=Oop r14=Oop }
          ││       │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││       │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@44 (line 99)
   0.14%  ││       │     0x00007f150cf6d4fa:   test   %eax,(%rax)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││       │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@44 (line 99)
          ││       │                                                               ;   {poll}
   0.14%  ││       │     0x00007f150cf6d4fc:   nopl   0x0(%rax)
          ││       │     0x00007f150cf6d500:   cmp    %ecx,%edi
          ││      ╭│     0x00007f150cf6d502:   jge    0x00007f150cf6d51d
          │↘      ││     0x00007f150cf6d504:   mov    %ecx,%eax
   0.00%  │       ││     0x00007f150cf6d506:   sub    %edi,%eax
   0.01%  │       ││     0x00007f150cf6d508:   cmp    %edi,%ecx
          │       ││     0x00007f150cf6d50a:   cmovl  %ebx,%eax
          │       ││     0x00007f150cf6d50d:   cmp    $0xfa0,%eax
          │       ││     0x00007f150cf6d513:   cmova  %ebp,%eax
   0.02%  │       ││     0x00007f150cf6d516:   add    %edi,%eax
          │       │╰     0x00007f150cf6d518:   jmp    0x00007f150cf6d47b
          ↘       ↘      0x00007f150cf6d51d:   data16 xchg %ax,%ax
                         0x00007f150cf6d520:   cmp    %r13d,%edi
                    ╭    0x00007f150cf6d523:   jge    0x00007f150cf6d551
                    │    0x00007f150cf6d525:   data16 xchg %ax,%ax                 ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@20 (line 100)
                    │ ↗  0x00007f150cf6d528:   mov    0x10(%r8,%rdi,4),%r11d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@23 (line 100)
                    │ │  0x00007f150cf6d52d:   mov    %r11d,%r10d
                    │ │  0x00007f150cf6d530:   shr    $0x1f,%r10d
   0.00%            │ │  0x00007f150cf6d534:   add    %r11d,%r10d
                    │ │  0x00007f150cf6d537:   and    $0xfffffffe,%r10d
                    │ │  0x00007f150cf6d53b:   nopl   0x0(%rax,%rax,1)
                    │ │  0x00007f150cf6d540:   cmp    %r10d,%r11d
                    │╭│  0x00007f150cf6d543:   jne    0x00007f150cf6d54a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@32 (line 101)
                    │││  0x00007f150cf6d545:   mov    %r11d,0x10(%rsi,%rdi,4)
   0.00%            │↘│  0x00007f150cf6d54a:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@41 (line 99)
                    │ │  0x00007f150cf6d54c:   cmp    %r13d,%edi
                    │ ╰  0x00007f150cf6d54f:   jl     0x00007f150cf6d528           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@17 (line 99)
                    ↘    0x00007f150cf6d551:   test   %rdx,%rdx
                         0x00007f150cf6d554:   je     0x00007f150cf6d5b0           ;*synchronization entry
                                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@-1 (line 314)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@49 (line 105)
                         0x00007f150cf6d556:   mov    %r9,%r10
                         0x00007f150cf6d559:   shl    $0x3,%r10                    ;*invokestatic consumeCompiler {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@7 (line 315)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter@49 (line 105)
   0.00%                 0x00007f150cf6d55d:   add    $0x30,%rsp
                         0x00007f150cf6d561:   pop    %rbp
   0.01%                 0x00007f150cf6d562:   cmp    0x340(%r15),%rsp             ;   {poll_return}
                         0x00007f150cf6d569:   ja     0x00007f150cf6d5cc
                         0x00007f150cf6d56f:   ret    
                         0x00007f150cf6d570:   mov    $0xffffff76,%esi
                         0x00007f150cf6d575:   mov    %r14,%rbp
                         0x00007f150cf6d578:   mov    %rdx,(%rsp)
                         0x00007f150cf6d57c:   mov    %r8d,0x8(%rsp)
                         0x00007f150cf6d581:   mov    %r13d,0xc(%rsp)
                         0x00007f150cf6d586:   mov    %r9d,0x10(%rsp)
                         0x00007f150cf6d58b:   call   0x00007f150ca01600           ; ImmutableOopMap {rbp=Oop [0]=Oop [8]=NarrowOop [16]=NarrowOop }
                                                                                   ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  97.82%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter, version 3, compile id 574 
   0.54%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%  libpthread-2.31.so  __libc_write 
   0.99%  <...other 328 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.83%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_filter, version 3, compile id 574 
   1.78%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%        libc-2.31.so  ptmalloc_init.part.0 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%           libjvm.so  InstanceKlass::find_method_index 
   0.01%           libjvm.so  Symbol::print_value_on 
   0.18%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.83%         c2, level 4
   1.78%              kernel
   0.19%           libjvm.so
   0.07%        libc-2.31.so
   0.06%                    
   0.03%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.baseline_matrix_mul
# Parameters: (size = 262144)

# Run progress: 16.67% complete, ETA 00:18:10
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 34923.477 us/op
# Warmup Iteration   2: 33859.121 us/op
# Warmup Iteration   3: 33134.796 us/op
# Warmup Iteration   4: 33752.048 us/op
# Warmup Iteration   5: 32956.821 us/op
Iteration   1: 33483.471 us/op
Iteration   2: 33781.281 us/op
Iteration   3: 33137.919 us/op
Iteration   4: 33854.921 us/op
Iteration   5: 35521.831 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.baseline_matrix_mul":
  33955.885 ±(99.9%) 3542.338 us/op [Average]
  (min, avg, max) = (33137.919, 33955.885, 35521.831), stdev = 919.934
  CI (99.9%): [30413.547, 37498.222] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.baseline_matrix_mul:·asm":
PrintAssembly processed: 130846 total address lines.
Perf output processed (skipped 56.329 seconds):
 Column 1: cycles (50664 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::jint_disjoint_arraycopy 

                  --------------------------------------------------------------------------------
                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  StubRoutines::jint_disjoint_arraycopy [0x00007f9b309e2f80, 0x00007f9b309e3014] (148 bytes)
                  --------------------------------------------------------------------------------
                    0x00007f9b309e2f80:   push   %rbp
                    0x00007f9b309e2f81:   mov    %rsp,%rbp
   0.07%         ↗  0x00007f9b309e2f84:   mov    %rdx,%rcx
   0.00%         │  0x00007f9b309e2f87:   shr    %rdx
   0.09%         │  0x00007f9b309e2f8a:   lea    -0x8(%rdi,%rdx,8),%rdi
   0.17%         │  0x00007f9b309e2f8f:   lea    -0x8(%rsi,%rdx,8),%rsi
   0.09%         │  0x00007f9b309e2f94:   neg    %rdx
   0.01%  ╭      │  0x00007f9b309e2f97:   jmp    Stub::jint_disjoint_arraycopy+104 0x00007f9b309e2fe8
          │↗   ↗ │  0x00007f9b309e2f9c:   mov    0x8(%rdi,%rdx,8),%rax
          ││   │ │  0x00007f9b309e2fa1:   mov    %rax,0x8(%rsi,%rdx,8)
          ││   │ │  0x00007f9b309e2fa6:   inc    %rdx
          │╰   │ │  0x00007f9b309e2fa9:   jne    Stub::jint_disjoint_arraycopy+28 0x00007f9b309e2f9c
   0.00%  │    │↗│  0x00007f9b309e2fab:   test   $0x1,%ecx
          │ ╭  │││  0x00007f9b309e2fb1:   je     Stub::jint_disjoint_arraycopy+57 0x00007f9b309e2fb9
          │ │  │││  0x00007f9b309e2fb3:   mov    0x8(%rdi),%eax
          │ │  │││  0x00007f9b309e2fb6:   mov    %eax,0x8(%rsi)
   0.30%  │ ↘  │││  0x00007f9b309e2fb9:   vzeroupper 
   0.34%  │    │││  0x00007f9b309e2fbc:   xor    %rax,%rax
          │    │││  0x00007f9b309e2fbf:   leave  
   0.33%  │    │││  0x00007f9b309e2fc0:   ret    
          │    │││  0x00007f9b309e2fc1:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    │││  0x00007f9b309e2fcc:   data16 data16 xchg %ax,%ax
   1.48%  │  ↗ │││  0x00007f9b309e2fd0:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
   7.66%  │  │ │││  0x00007f9b309e2fd6:   vmovdqu %ymm0,-0x38(%rsi,%rdx,8)
   8.05%  │  │ │││  0x00007f9b309e2fdc:   vmovdqu -0x18(%rdi,%rdx,8),%ymm1
  26.74%  │  │ │││  0x00007f9b309e2fe2:   vmovdqu %ymm1,-0x18(%rsi,%rdx,8)
  11.57%  ↘  │ │││  0x00007f9b309e2fe8:   add    $0x8,%rdx
             ╰ │││  0x00007f9b309e2fec:   jle    Stub::jint_disjoint_arraycopy+80 0x00007f9b309e2fd0
   0.01%       │││  0x00007f9b309e2fee:   sub    $0x4,%rdx
              ╭│││  0x00007f9b309e2ff2:   jg     Stub::jint_disjoint_arraycopy+132 0x00007f9b309e3004
              ││││  0x00007f9b309e2ff4:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
              ││││  0x00007f9b309e2ffa:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
              ││││  0x00007f9b309e3000:   add    $0x4,%rdx
   0.01%      ↘│││  0x00007f9b309e3004:   vpxor  %ymm0,%ymm0,%ymm0
   0.01%       │││  0x00007f9b309e3008:   vpxor  %ymm1,%ymm1,%ymm1
   0.28%       │││  0x00007f9b309e300c:   sub    $0x4,%rdx
               ╰││  0x00007f9b309e3010:   jl     Stub::jint_disjoint_arraycopy+28 0x00007f9b309e2f9c
   0.01%        ╰│  0x00007f9b309e3012:   jmp    Stub::jint_disjoint_arraycopy+43 0x00007f9b309e2fab
                 │--------------------------------------------------------------------------------
                 │- - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                 │- - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                 │StubRoutines::jint_arraycopy [0x00007f9b309e3020, 0x00007f9b309e30b6] (150 bytes)
                 │--------------------------------------------------------------------------------
   0.06%         │  0x00007f9b309e3020:   push   %rbp
   0.17%         │  0x00007f9b309e3021:   mov    %rsp,%rbp
   0.18%         │  0x00007f9b309e3024:   cmp    %rdi,%rsi
   0.00%         │  0x00007f9b309e3027:   lea    (%rdi,%rdx,4),%rax
....................................................................................................
  57.86%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 575 

                      0x00007f9b30f6d88b:   mov    0x10(%rsp),%r10d
                      0x00007f9b30f6d890:   test   %r10d,%r10d
                      0x00007f9b30f6d893:   je     0x00007f9b30f6db2c
                      0x00007f9b30f6d899:   xor    %ebx,%ebx
                      0x00007f9b30f6d89b:   xor    %r11d,%r11d
                      0x00007f9b30f6d89e:   xchg   %ax,%ax
          ╭           0x00007f9b30f6d8a0:   jmp    0x00007f9b30f6d912
          │           0x00007f9b30f6d8a5:   data16 xchg %ax,%ax                 ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@9 (line 224)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.05%  │↗      ↗   0x00007f9b30f6d8a8:   vpmulld 0x10(%rbp,%r8,4),%ymm0,%ymm2
   0.79%  ││      │   0x00007f9b30f6d8af:   vpaddd 0x10(%r13,%r8,4),%ymm2,%ymm2
   0.41%  ││      │   0x00007f9b30f6d8b6:   vmovdqu %ymm2,0x10(%r13,%r8,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@22 (line 224)
          ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.04%  ││      │   0x00007f9b30f6d8bd:   add    $0x8,%r8d                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@23 (line 223)
          ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.43%  ││      │   0x00007f9b30f6d8c1:   cmp    0x1c(%rsp),%r8d
          │╰      │   0x00007f9b30f6d8c6:   jl     0x00007f9b30f6d8a8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@6 (line 223)
          │       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.04%  │       │↗  0x00007f9b30f6d8c8:   cmp    0x10(%rsp),%r8d
          │ ╭     ││  0x00007f9b30f6d8cd:   jge    0x00007f9b30f6d8ea
   0.09%  │ │     ││  0x00007f9b30f6d8cf:   nop                                 ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@9 (line 224)
          │ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.29%  │ │↗    ││  0x00007f9b30f6d8d0:   mov    0x10(%rbp,%r8,4),%r10d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@19 (line 224)
          │ ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.16%  │ ││    ││  0x00007f9b30f6d8d5:   imul   0x74(%rsp),%r10d
   0.21%  │ ││    ││  0x00007f9b30f6d8db:   add    %r10d,0x10(%r13,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@22 (line 224)
          │ ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.74%  │ ││    ││  0x00007f9b30f6d8e0:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@23 (line 223)
          │ ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.19%  │ ││    ││  0x00007f9b30f6d8e3:   cmp    0x10(%rsp),%r8d
          │ │╰    ││  0x00007f9b30f6d8e8:   jl     0x00007f9b30f6d8d0           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@26 (line 223)
          │ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.02%  │ ↘     ││  0x00007f9b30f6d8ea:   mov    0x348(%r15),%r10
   0.16%  │       ││  0x00007f9b30f6d8f1:   mov    0x84(%rsp),%r11d
   0.09%  │       ││  0x00007f9b30f6d8f9:   inc    %r11d                        ; ImmutableOopMap {rbp=Oop r13=Oop [0]=Oop [8]=Oop [20]=NarrowOop [24]=NarrowOop [40]=Derived_oop_rbp [48]=Oop [56]=Oop }
          │       ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │       ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@94 (line 139)
   0.01%  │       ││  0x00007f9b30f6d8fc:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@94 (line 139)
          │       ││                                                            ;   {poll}
   0.03%  │       ││  0x00007f9b30f6d8ff:   nop
   0.18%  │       ││  0x00007f9b30f6d900:   cmp    0x10(%rsp),%r11d
          │       ││  0x00007f9b30f6d905:   jge    0x00007f9b30f6d693           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@9 (line 224)
          │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.10%  │       ││  0x00007f9b30f6d90b:   mov    0x80(%rsp),%ebx              ;*aload_3 {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@55 (line 140)
   0.00%  ↘       ││  0x00007f9b30f6d912:   movslq %r11d,%r10
   0.03%          ││  0x00007f9b30f6d915:   add    0x78(%rsp),%r10
   0.22%          ││  0x00007f9b30f6d91a:   mov    0x30(%rsp),%r8
   0.08%          ││  0x00007f9b30f6d91f:   mov    0x10(%r8,%r10,4),%r14d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@61 (line 140)
   0.15%          ││  0x00007f9b30f6d924:   mov    %r14d,0x74(%rsp)
   0.07%          ││  0x00007f9b30f6d929:   test   %ebx,%ebx
                  ││  0x00007f9b30f6d92b:   jl     0x00007f9b30f6daf2
   0.15%          ││  0x00007f9b30f6d931:   mov    %ebx,%r10d
   0.08%          ││  0x00007f9b30f6d934:   add    0x10(%rsp),%r10d
   0.00%          ││  0x00007f9b30f6d939:   mov    %r10d,0x80(%rsp)
   0.04%          ││  0x00007f9b30f6d941:   mov    0x70(%rsp),%r10d
   0.19%          ││  0x00007f9b30f6d946:   cmp    0x80(%rsp),%r10d
                  ││  0x00007f9b30f6d94e:   jb     0x00007f9b30f6daf2
   0.10%          ││  0x00007f9b30f6d954:   mov    0x10(%rsp),%r8d
   0.00%          ││  0x00007f9b30f6d959:   test   %r8d,%r8d
   0.04%          ││  0x00007f9b30f6d95c:   nopl   0x0(%rax)
   0.16%          ││  0x00007f9b30f6d960:   je     0x00007f9b30f6dae5
   0.07%          ││  0x00007f9b30f6d966:   mov    %r11d,0x84(%rsp)
   0.00%          ││  0x00007f9b30f6d96e:   vmovdqu %ymm1,0x40(%rsp)
   0.05%          ││  0x00007f9b30f6d974:   mov    0x30(%rsp),%r10
   0.18%          ││  0x00007f9b30f6d979:   lea    0x10(%r10,%rbx,4),%rdi
   0.08%          ││  0x00007f9b30f6d97e:   mov    0x28(%rsp),%rsi
   0.00%          ││  0x00007f9b30f6d983:   mov    0x20(%rsp),%rdx
   0.03%          ││  0x00007f9b30f6d988:   vzeroupper 
   0.28%          ││  0x00007f9b30f6d98b:   movabs $0x7f9b309e3020,%r10
   0.18%          ││  0x00007f9b30f6d995:   call   *%r10
                  ││  0x00007f9b30f6d998:   vmovdqu 0x40(%rsp),%ymm1            ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@71 (line 141)
                  ││  0x00007f9b30f6d99e:   xor    %r8d,%r8d                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@9 (line 224)
                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.37%       ↗  ││  0x00007f9b30f6d9a1:   mov    0x10(%rbp,%r8,4),%r11d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
               │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@19 (line 224)
               │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.38%       │  ││  0x00007f9b30f6d9a6:   imul   0x74(%rsp),%r11d
   0.31%       │  ││  0x00007f9b30f6d9ac:   add    %r11d,0x10(%r13,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@22 (line 224)
               │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.08%       │  ││  0x00007f9b30f6d9b1:   mov    %r8d,%r10d
   0.29%       │  ││  0x00007f9b30f6d9b4:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@23 (line 223)
               │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.26%       │  ││  0x00007f9b30f6d9b7:   nopw   0x0(%rax,%rax,1)
   0.42%       │  ││  0x00007f9b30f6d9c0:   cmp    0x64(%rsp),%r10d
              ╭│  ││  0x00007f9b30f6d9c5:   jge    0x00007f9b30f6d9cc           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@6 (line 223)
              ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.32%      ││  ││  0x00007f9b30f6d9c7:   mov    %r10d,%r8d
   0.28%      │╰  ││  0x00007f9b30f6d9ca:   jmp    0x00007f9b30f6d9a1
   0.11%      ↘   ││  0x00007f9b30f6d9cc:   cmp    0x88(%rsp),%r10d
                  ││  0x00007f9b30f6d9d4:   jge    0x00007f9b30f6dadd
                  ││  0x00007f9b30f6d9da:   vpbroadcastd 0x74(%rsp),%ymm0
   0.20%          ││  0x00007f9b30f6d9e1:   inc    %r8d
                 ↗││  0x00007f9b30f6d9e4:   mov    0x88(%rsp),%r10d
   0.12%         │││  0x00007f9b30f6d9ec:   sub    %r8d,%r10d
                 │││  0x00007f9b30f6d9ef:   mov    0x88(%rsp),%r14d
   0.22%         │││  0x00007f9b30f6d9f7:   xor    %r11d,%r11d
                 │││  0x00007f9b30f6d9fa:   cmp    %r8d,%r14d
   0.14%         │││  0x00007f9b30f6d9fd:   cmovl  %r11d,%r10d
                 │││  0x00007f9b30f6da01:   cmp    $0x7d00,%r10d
   0.17%         │││  0x00007f9b30f6da08:   mov    $0x7d00,%r11d
   0.00%         │││  0x00007f9b30f6da0e:   cmova  %r11d,%r10d
   0.11%         │││  0x00007f9b30f6da12:   add    %r8d,%r10d
   0.17%         │││  0x00007f9b30f6da15:   data16 data16 nopw 0x0(%rax,%rax,1) ;*aload {reexecute=0 rethrow=0 return_oop=0}
                 │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@9 (line 224)
                 │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.19%        ↗│││  0x00007f9b30f6da20:   vpmulld 0x10(%rbp,%r8,4),%ymm0,%ymm2
   3.98%        ││││  0x00007f9b30f6da27:   vpaddd 0x10(%r13,%r8,4),%ymm2,%ymm2
   2.21%        ││││  0x00007f9b30f6da2e:   vmovdqu %ymm2,0x10(%r13,%r8,4)
   0.18%        ││││  0x00007f9b30f6da35:   vpmulld 0x30(%rbp,%r8,4),%ymm0,%ymm2
   4.40%        ││││  0x00007f9b30f6da3c:   vpaddd 0x30(%r13,%r8,4),%ymm2,%ymm2
   2.22%        ││││  0x00007f9b30f6da43:   vmovdqu %ymm2,0x30(%r13,%r8,4)
   0.18%        ││││  0x00007f9b30f6da4a:   vpmulld 0x50(%rbp,%r8,4),%ymm0,%ymm2
   4.15%        ││││  0x00007f9b30f6da51:   vpaddd 0x50(%r13,%r8,4),%ymm2,%ymm2
   2.26%        ││││  0x00007f9b30f6da58:   vmovdqu %ymm2,0x50(%r13,%r8,4)
   0.21%        ││││  0x00007f9b30f6da5f:   vpmulld 0x70(%rbp,%r8,4),%ymm0,%ymm2
   4.32%        ││││  0x00007f9b30f6da66:   vpaddd 0x70(%r13,%r8,4),%ymm2,%ymm2
   2.22%        ││││  0x00007f9b30f6da6d:   vmovdqu %ymm2,0x70(%r13,%r8,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@22 (line 224)
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.21%        ││││  0x00007f9b30f6da74:   add    $0x20,%r8d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@23 (line 223)
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   2.03%        ││││  0x00007f9b30f6da78:   cmp    %r10d,%r8d
                ╰│││  0x00007f9b30f6da7b:   jl     0x00007f9b30f6da20           ;*goto {reexecute=0 rethrow=0 return_oop=0}
                 │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@26 (line 223)
                 │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.02%         │││  0x00007f9b30f6da7d:   mov    0x348(%r15),%r10             ; ImmutableOopMap {rbp=Oop r13=Oop [0]=Oop [8]=Oop [20]=NarrowOop [24]=NarrowOop [40]=Derived_oop_rbp [48]=Oop [56]=Oop }
                 │││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                 │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@26 (line 223)
                 │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.13%         │││  0x00007f9b30f6da84:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                 │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@26 (line 223)
                 │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
                 │││                                                            ;   {poll}
   0.02%         │││  0x00007f9b30f6da87:   cmp    0x88(%rsp),%r8d
                 ╰││  0x00007f9b30f6da8f:   jl     0x00007f9b30f6d9e4
   0.11%          ││  0x00007f9b30f6da95:   cmp    0x1c(%rsp),%r8d
   0.02%          ││  0x00007f9b30f6da9a:   nopw   0x0(%rax,%rax,1)
   0.17%          ╰│  0x00007f9b30f6daa0:   jl     0x00007f9b30f6d8a8
                   ╰  0x00007f9b30f6daa6:   jmp    0x00007f9b30f6d8c8
                      0x00007f9b30f6daab:   mov    0x18(%rsp),%ebx              ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@40 (line 137)
                      0x00007f9b30f6daaf:   mov    0x8(%rsp),%r10
                      0x00007f9b30f6dab4:   test   %r10,%r10
                      0x00007f9b30f6dab7:   je     0x00007f9b30f6dbff           ;*synchronization entry
                                                                                ; - org.openjdk.jmh.infra.Blackhole::consume@-1 (line 314)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@129 (line 149)
                      0x00007f9b30f6dabd:   mov    %rbx,%r10
                      0x00007f9b30f6dac0:   shl    $0x3,%r10                    ;*invokestatic consumeCompiler {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  40.40%  <total for region 2>

....[Hottest Regions]...............................................................................
  57.86%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  40.40%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 575 
   0.60%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 575 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 575 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 575 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 575 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.61%  <...other 222 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  57.86%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  40.52%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 575 
   1.35%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.02%        libc-2.31.so  [unknown] 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.01%        libc-2.31.so  _int_realloc 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%           libjvm.so  jio_print 
   0.00%         interpreter  invokestatic  184 invokestatic  
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%        libc-2.31.so  _int_malloc 
   0.00%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  event_to_env 
   0.11%  <...other 54 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  57.86%        runtime stub
  40.52%         c2, level 4
   1.35%              kernel
   0.14%           libjvm.so
   0.07%        libc-2.31.so
   0.02%                    
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%      perf-26625.map
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.baseline_matrix_mul
# Parameters: (size = 1048576)

# Run progress: 25.00% complete, ETA 00:16:19
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 328133.829 us/op
# Warmup Iteration   2: 298449.287 us/op
# Warmup Iteration   3: 294757.155 us/op
# Warmup Iteration   4: 297430.775 us/op
# Warmup Iteration   5: 322081.358 us/op
Iteration   1: 290208.563 us/op
Iteration   2: 317057.609 us/op
Iteration   3: 309550.507 us/op
Iteration   4: 307772.969 us/op
Iteration   5: 333538.785 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.baseline_matrix_mul":
  311625.686 ±(99.9%) 60503.304 us/op [Average]
  (min, avg, max) = (290208.563, 311625.686, 333538.785), stdev = 15712.516
  CI (99.9%): [251122.382, 372128.991] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.baseline_matrix_mul:·asm":
PrintAssembly processed: 133387 total address lines.
Perf output processed (skipped 57.000 seconds):
 Column 1: cycles (51235 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul, version 7, compile id 572 

                      0x00007f6c80f70a2b:   mov    0x10(%rsp),%r10d
                      0x00007f6c80f70a30:   test   %r10d,%r10d
                      0x00007f6c80f70a33:   je     0x00007f6c80f70d44
                      0x00007f6c80f70a39:   xor    %ebx,%ebx
                      0x00007f6c80f70a3b:   xor    %r11d,%r11d
                      0x00007f6c80f70a3e:   xchg   %ax,%ax
          ╭           0x00007f6c80f70a40:   jmp    0x00007f6c80f70ab2
          │           0x00007f6c80f70a45:   data16 xchg %ax,%ax                 ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@9 (line 224)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.35%  │↗      ↗   0x00007f6c80f70a48:   vpmulld 0x10(%rbp,%r8,4),%ymm2,%ymm0
   1.23%  ││      │   0x00007f6c80f70a4f:   vpaddd 0x10(%r13,%r8,4),%ymm0,%ymm0
   0.87%  ││      │   0x00007f6c80f70a56:   vmovdqu %ymm0,0x10(%r13,%r8,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@22 (line 224)
          ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.58%  ││      │   0x00007f6c80f70a5d:   add    $0x8,%r8d                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@23 (line 223)
          ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
          ││      │   0x00007f6c80f70a61:   cmp    0x1c(%rsp),%r8d
          │╰      │   0x00007f6c80f70a66:   jl     0x00007f6c80f70a48           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@6 (line 223)
          │       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.07%  │       │↗  0x00007f6c80f70a68:   cmp    0x10(%rsp),%r8d
          │ ╭     ││  0x00007f6c80f70a6d:   jge    0x00007f6c80f70a8a
          │ │     ││  0x00007f6c80f70a6f:   nop                                 ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@9 (line 224)
          │ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.10%  │ │↗    ││  0x00007f6c80f70a70:   mov    0x10(%rbp,%r8,4),%r10d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@19 (line 224)
          │ ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.09%  │ ││    ││  0x00007f6c80f70a75:   imul   0x74(%rsp),%r10d
   0.09%  │ ││    ││  0x00007f6c80f70a7b:   add    %r10d,0x10(%r13,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@22 (line 224)
          │ ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.28%  │ ││    ││  0x00007f6c80f70a80:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@23 (line 223)
          │ ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.11%  │ ││    ││  0x00007f6c80f70a83:   cmp    0x10(%rsp),%r8d
          │ │╰    ││  0x00007f6c80f70a88:   jl     0x00007f6c80f70a70           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@26 (line 223)
          │ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.04%  │ ↘     ││  0x00007f6c80f70a8a:   mov    0x348(%r15),%r10
   0.01%  │       ││  0x00007f6c80f70a91:   mov    0x84(%rsp),%r11d
   0.07%  │       ││  0x00007f6c80f70a99:   inc    %r11d                        ; ImmutableOopMap {rbp=Oop r13=Oop [0]=Oop [8]=Oop [20]=NarrowOop [24]=NarrowOop [40]=Derived_oop_rbp [48]=Oop [56]=Oop }
          │       ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │       ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@94 (line 139)
   0.02%  │       ││  0x00007f6c80f70a9c:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@94 (line 139)
          │       ││                                                            ;   {poll}
   0.05%  │       ││  0x00007f6c80f70a9f:   nop
   0.01%  │       ││  0x00007f6c80f70aa0:   cmp    0x10(%rsp),%r11d
          │       ││  0x00007f6c80f70aa5:   jge    0x00007f6c80f70813           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@9 (line 224)
          │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.04%  │       ││  0x00007f6c80f70aab:   mov    0x80(%rsp),%ebx              ;*aload_3 {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@55 (line 140)
   0.01%  ↘       ││  0x00007f6c80f70ab2:   movslq %r11d,%r10
   0.05%          ││  0x00007f6c80f70ab5:   add    0x78(%rsp),%r10
   0.01%          ││  0x00007f6c80f70aba:   mov    0x30(%rsp),%r8
   0.03%          ││  0x00007f6c80f70abf:   mov    0x10(%r8,%r10,4),%r14d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@61 (line 140)
   0.13%          ││  0x00007f6c80f70ac4:   mov    %r14d,0x74(%rsp)
   0.05%          ││  0x00007f6c80f70ac9:   test   %ebx,%ebx
                  ││  0x00007f6c80f70acb:   jl     0x00007f6c80f70d0c
   0.01%          ││  0x00007f6c80f70ad1:   mov    %ebx,%r10d
   0.06%          ││  0x00007f6c80f70ad4:   add    0x10(%rsp),%r10d
   0.02%          ││  0x00007f6c80f70ad9:   mov    %r10d,0x80(%rsp)
   0.04%          ││  0x00007f6c80f70ae1:   mov    0x70(%rsp),%r10d
   0.01%          ││  0x00007f6c80f70ae6:   cmp    0x80(%rsp),%r10d
                  ││  0x00007f6c80f70aee:   jb     0x00007f6c80f70d0c
   0.05%          ││  0x00007f6c80f70af4:   mov    0x10(%rsp),%r8d
   0.02%          ││  0x00007f6c80f70af9:   test   %r8d,%r8d
   0.04%          ││  0x00007f6c80f70afc:   nopl   0x0(%rax)
                  ││  0x00007f6c80f70b00:   je     0x00007f6c80f70cff
   0.06%          ││  0x00007f6c80f70b06:   mov    %r11d,0x84(%rsp)
   0.01%          ││  0x00007f6c80f70b0e:   vmovdqu %ymm1,0x40(%rsp)
   0.04%          ││  0x00007f6c80f70b14:   mov    0x30(%rsp),%r10
   0.01%          ││  0x00007f6c80f70b19:   lea    0x10(%r10,%rbx,4),%rdi
   0.06%          ││  0x00007f6c80f70b1e:   mov    0x28(%rsp),%rsi
   0.01%          ││  0x00007f6c80f70b23:   mov    0x20(%rsp),%rdx
   0.04%          ││  0x00007f6c80f70b28:   vzeroupper 
   0.13%          ││  0x00007f6c80f70b2b:   movabs $0x7f6c809e3020,%r10
   0.00%          ││  0x00007f6c80f70b35:   call   *%r10
                  ││  0x00007f6c80f70b38:   vmovdqu 0x40(%rsp),%ymm1            ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@71 (line 141)
                  ││  0x00007f6c80f70b3e:   xor    %r8d,%r8d                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@9 (line 224)
                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.19%       ↗  ││  0x00007f6c80f70b41:   mov    0x10(%rbp,%r8,4),%r11d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
               │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@19 (line 224)
               │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.17%       │  ││  0x00007f6c80f70b46:   imul   0x74(%rsp),%r11d
   0.16%       │  ││  0x00007f6c80f70b4c:   add    %r11d,0x10(%r13,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@22 (line 224)
               │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.53%       │  ││  0x00007f6c80f70b51:   mov    %r8d,%r10d
   0.14%       │  ││  0x00007f6c80f70b54:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@23 (line 223)
               │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.14%       │  ││  0x00007f6c80f70b57:   nopw   0x0(%rax,%rax,1)
   0.18%       │  ││  0x00007f6c80f70b60:   cmp    0x64(%rsp),%r10d
              ╭│  ││  0x00007f6c80f70b65:   jge    0x00007f6c80f70b6c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@6 (line 223)
              ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.14%      ││  ││  0x00007f6c80f70b67:   mov    %r10d,%r8d
   0.14%      │╰  ││  0x00007f6c80f70b6a:   jmp    0x00007f6c80f70b41
   0.07%      ↘   ││  0x00007f6c80f70b6c:   cmp    0x88(%rsp),%r10d
                  ││  0x00007f6c80f70b74:   jge    0x00007f6c80f70cf7
                  ││  0x00007f6c80f70b7a:   vpbroadcastd 0x74(%rsp),%ymm2
   0.06%          ││  0x00007f6c80f70b81:   inc    %r8d
                 ↗││  0x00007f6c80f70b84:   mov    0x88(%rsp),%r10d
   0.06%         │││  0x00007f6c80f70b8c:   sub    %r8d,%r10d
                 │││  0x00007f6c80f70b8f:   mov    0x88(%rsp),%r14d
   0.07%         │││  0x00007f6c80f70b97:   xor    %r11d,%r11d
                 │││  0x00007f6c80f70b9a:   cmp    %r8d,%r14d
   0.05%         │││  0x00007f6c80f70b9d:   cmovl  %r11d,%r10d
                 │││  0x00007f6c80f70ba1:   cmp    $0xfa00,%r10d
   0.06%         │││  0x00007f6c80f70ba8:   mov    $0xfa00,%r11d
                 │││  0x00007f6c80f70bae:   cmova  %r11d,%r10d
   0.06%         │││  0x00007f6c80f70bb2:   add    %r8d,%r10d
   0.04%         │││  0x00007f6c80f70bb5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*aload {reexecute=0 rethrow=0 return_oop=0}
                 │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@9 (line 224)
                 │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.67%        ↗│││  0x00007f6c80f70bc0:   vpmulld 0x10(%rbp,%r8,4),%ymm2,%ymm0
   2.09%        ││││  0x00007f6c80f70bc7:   vpaddd 0x10(%r13,%r8,4),%ymm0,%ymm0
   1.99%        ││││  0x00007f6c80f70bce:   vmovdqu %ymm0,0x10(%r13,%r8,4)
   0.72%        ││││  0x00007f6c80f70bd5:   vpmulld 0x30(%rbp,%r8,4),%ymm2,%ymm0
   2.23%        ││││  0x00007f6c80f70bdc:   vpaddd 0x30(%r13,%r8,4),%ymm0,%ymm0
   1.93%        ││││  0x00007f6c80f70be3:   vmovdqu %ymm0,0x30(%r13,%r8,4)
   0.84%        ││││  0x00007f6c80f70bea:   vpmulld 0x50(%rbp,%r8,4),%ymm2,%ymm0
   2.12%        ││││  0x00007f6c80f70bf1:   vpaddd 0x50(%r13,%r8,4),%ymm0,%ymm0
   2.06%        ││││  0x00007f6c80f70bf8:   vmovdqu %ymm0,0x50(%r13,%r8,4)
   0.74%        ││││  0x00007f6c80f70bff:   vpmulld 0x70(%rbp,%r8,4),%ymm2,%ymm0
   2.36%        ││││  0x00007f6c80f70c06:   vpaddd 0x70(%r13,%r8,4),%ymm0,%ymm0
   1.90%        ││││  0x00007f6c80f70c0d:   vmovdqu %ymm0,0x70(%r13,%r8,4)
   0.86%        ││││  0x00007f6c80f70c14:   vpmulld 0x90(%rbp,%r8,4),%ymm2,%ymm0
   2.23%        ││││  0x00007f6c80f70c1e:   vpaddd 0x90(%r13,%r8,4),%ymm0,%ymm0
   2.15%        ││││  0x00007f6c80f70c28:   vmovdqu %ymm0,0x90(%r13,%r8,4)
   0.81%        ││││  0x00007f6c80f70c32:   vpmulld 0xb0(%rbp,%r8,4),%ymm2,%ymm0
   2.45%        ││││  0x00007f6c80f70c3c:   vpaddd 0xb0(%r13,%r8,4),%ymm0,%ymm0
   2.04%        ││││  0x00007f6c80f70c46:   vmovdqu %ymm0,0xb0(%r13,%r8,4)
   0.81%        ││││  0x00007f6c80f70c50:   vpmulld 0xd0(%rbp,%r8,4),%ymm2,%ymm0
   2.37%        ││││  0x00007f6c80f70c5a:   vpaddd 0xd0(%r13,%r8,4),%ymm0,%ymm0
   2.20%        ││││  0x00007f6c80f70c64:   vmovdqu %ymm0,0xd0(%r13,%r8,4)
   0.84%        ││││  0x00007f6c80f70c6e:   vpmulld 0xf0(%rbp,%r8,4),%ymm2,%ymm0
   2.41%        ││││  0x00007f6c80f70c78:   vpaddd 0xf0(%r13,%r8,4),%ymm0,%ymm0
   2.08%        ││││  0x00007f6c80f70c82:   vmovdqu %ymm0,0xf0(%r13,%r8,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@22 (line 224)
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.77%        ││││  0x00007f6c80f70c8c:   add    $0x40,%r8d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@23 (line 223)
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.19%        ││││  0x00007f6c80f70c90:   cmp    %r10d,%r8d
                ╰│││  0x00007f6c80f70c93:   jl     0x00007f6c80f70bc0           ;*goto {reexecute=0 rethrow=0 return_oop=0}
                 │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@26 (line 223)
                 │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.04%         │││  0x00007f6c80f70c99:   mov    0x348(%r15),%r10             ; ImmutableOopMap {rbp=Oop r13=Oop [0]=Oop [8]=Oop [20]=NarrowOop [24]=NarrowOop [40]=Derived_oop_rbp [48]=Oop [56]=Oop }
                 │││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                 │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@26 (line 223)
                 │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
                 │││  0x00007f6c80f70ca0:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                 │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::saxpy@26 (line 223)
                 │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
                 │││                                                            ;   {poll}
   0.11%         │││  0x00007f6c80f70ca3:   cmp    0x88(%rsp),%r8d
                 ╰││  0x00007f6c80f70cab:   jl     0x00007f6c80f70b84
                  ││  0x00007f6c80f70cb1:   cmp    0x1c(%rsp),%r8d
                  ╰│  0x00007f6c80f70cb6:   jl     0x00007f6c80f70a48
                   │  0x00007f6c80f70cbc:   nopl   0x0(%rax)
                   ╰  0x00007f6c80f70cc0:   jmp    0x00007f6c80f70a68
                      0x00007f6c80f70cc5:   mov    0x18(%rsp),%ebx              ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul@40 (line 137)
....................................................................................................
  49.19%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::jint_disjoint_arraycopy 

   0.04%         0x00007f6c809e2f94:   neg    %rdx
   0.02%  ╭      0x00007f6c809e2f97:   jmp    Stub::jint_disjoint_arraycopy+104 0x00007f6c809e2fe8
          │↗     0x00007f6c809e2f9c:   mov    0x8(%rdi,%rdx,8),%rax
          ││     0x00007f6c809e2fa1:   mov    %rax,0x8(%rsi,%rdx,8)
          ││     0x00007f6c809e2fa6:   inc    %rdx
          │╰     0x00007f6c809e2fa9:   jne    Stub::jint_disjoint_arraycopy+28 0x00007f6c809e2f9c
          │      0x00007f6c809e2fab:   test   $0x1,%ecx
          │ ╭    0x00007f6c809e2fb1:   je     Stub::jint_disjoint_arraycopy+57 0x00007f6c809e2fb9
          │ │    0x00007f6c809e2fb3:   mov    0x8(%rdi),%eax
          │ │    0x00007f6c809e2fb6:   mov    %eax,0x8(%rsi)
   0.14%  │ ↘    0x00007f6c809e2fb9:   vzeroupper 
   0.18%  │      0x00007f6c809e2fbc:   xor    %rax,%rax
          │      0x00007f6c809e2fbf:   leave  
   0.14%  │      0x00007f6c809e2fc0:   ret    
          │      0x00007f6c809e2fc1:   data16 data16 nopw 0x0(%rax,%rax,1)
          │      0x00007f6c809e2fcc:   data16 data16 xchg %ax,%ax
   1.42%  │  ↗   0x00007f6c809e2fd0:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
   7.70%  │  │   0x00007f6c809e2fd6:   vmovdqu %ymm0,-0x38(%rsi,%rdx,8)
   6.40%  │  │   0x00007f6c809e2fdc:   vmovdqu -0x18(%rdi,%rdx,8),%ymm1
  23.19%  │  │   0x00007f6c809e2fe2:   vmovdqu %ymm1,-0x18(%rsi,%rdx,8)
   9.48%  ↘  │   0x00007f6c809e2fe8:   add    $0x8,%rdx
             ╰   0x00007f6c809e2fec:   jle    Stub::jint_disjoint_arraycopy+80 0x00007f6c809e2fd0
                 0x00007f6c809e2fee:   sub    $0x4,%rdx
              ╭  0x00007f6c809e2ff2:   jg     Stub::jint_disjoint_arraycopy+132 0x00007f6c809e3004
              │  0x00007f6c809e2ff4:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
              │  0x00007f6c809e2ffa:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
              │  0x00007f6c809e3000:   add    $0x4,%rdx
              ↘  0x00007f6c809e3004:   vpxor  %ymm0,%ymm0,%ymm0
                 0x00007f6c809e3008:   vpxor  %ymm1,%ymm1,%ymm1
   0.14%         0x00007f6c809e300c:   sub    $0x4,%rdx
                 0x00007f6c809e3010:   jl     Stub::jint_disjoint_arraycopy+28 0x00007f6c809e2f9c
....................................................................................................
  48.64%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul, version 7, compile id 572 
  48.64%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.40%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.24%              kernel  [unknown] 
   0.19%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.12%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul, version 7, compile id 572 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  outputStream::update_position 
   0.78%  <...other 279 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.23%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  49.22%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_matrix_mul, version 7, compile id 572 
   1.18%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.04%        libc-2.31.so  [unknown] 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  outputStream::update_position 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  tcache_init.part.0 
   0.01%           libjvm.so  UTF8::as_quoted_ascii 
   0.00%           libjvm.so  Rdtsc::elapsed_counter 
   0.00%           libjvm.so  CompositeElapsedCounterSource::now 
   0.16%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  49.23%        runtime stub
  49.22%         c2, level 4
   1.18%              kernel
   0.19%           libjvm.so
   0.11%        libc-2.31.so
   0.03%                    
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%      perf-26687.map
   0.00%         c1, level 1
   0.00%        libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.baseline_sum
# Parameters: (size = 262144)

# Run progress: 33.33% complete, ETA 00:14:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 104.296 us/op
# Warmup Iteration   2: 104.168 us/op
# Warmup Iteration   3: 104.100 us/op
# Warmup Iteration   4: 104.109 us/op
# Warmup Iteration   5: 103.614 us/op
Iteration   1: 103.608 us/op
Iteration   2: 103.666 us/op
Iteration   3: 103.607 us/op
Iteration   4: 103.606 us/op
Iteration   5: 103.612 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.baseline_sum":
  103.620 ±(99.9%) 0.101 us/op [Average]
  (min, avg, max) = (103.606, 103.620, 103.666), stdev = 0.026
  CI (99.9%): [103.519, 103.720] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.baseline_sum:·asm":
PrintAssembly processed: 129657 total address lines.
Perf output processed (skipped 56.232 seconds):
 Column 1: cycles (50598 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum, version 4, compile id 565 

                  0x00007fa148f6a2f9:   add    $0xfffffff9,%ebx
                  0x00007fa148f6a2fc:   mov    $0x80000000,%r9d
                  0x00007fa148f6a302:   cmp    %ebx,%r11d
                  0x00007fa148f6a305:   cmovl  %r9d,%ebx
                  0x00007fa148f6a309:   mov    $0x1,%r8d
                  0x00007fa148f6a30f:   cmp    $0x1,%ebx
          ╭       0x00007fa148f6a312:   jle    0x00007fa148f6a385
          │       0x00007fa148f6a318:   mov    $0x1f40,%r9d
          │ ↗     0x00007fa148f6a31e:   mov    %ebx,%r11d
          │ │     0x00007fa148f6a321:   sub    %r8d,%r11d
   0.01%  │ │     0x00007fa148f6a324:   cmp    %r8d,%ebx
   0.00%  │ │     0x00007fa148f6a327:   cmovl  %ecx,%r11d
          │ │     0x00007fa148f6a32b:   cmp    $0x1f40,%r11d
          │ │     0x00007fa148f6a332:   cmova  %r9d,%r11d
   0.00%  │ │     0x00007fa148f6a336:   add    %r8d,%r11d
          │ │     0x00007fa148f6a339:   nopl   0x0(%rax)                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@15 (line 74)
          │↗│     0x00007fa148f6a340:   add    0x10(%r10,%r8,4),%eax
  12.24%  │││     0x00007fa148f6a345:   add    0x14(%r10,%r8,4),%eax
  12.04%  │││     0x00007fa148f6a34a:   add    0x18(%r10,%r8,4),%eax
  12.21%  │││     0x00007fa148f6a34f:   add    0x1c(%r10,%r8,4),%eax
  13.43%  │││     0x00007fa148f6a354:   add    0x20(%r10,%r8,4),%eax
  12.11%  │││     0x00007fa148f6a359:   add    0x24(%r10,%r8,4),%eax
  11.77%  │││     0x00007fa148f6a35e:   add    0x28(%r10,%r8,4),%eax
  12.03%  │││     0x00007fa148f6a363:   add    0x2c(%r10,%r8,4),%eax        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@19 (line 74)
  12.43%  │││     0x00007fa148f6a368:   add    $0x8,%r8d                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@21 (line 73)
          │││     0x00007fa148f6a36c:   cmp    %r11d,%r8d
          │╰│     0x00007fa148f6a36f:   jl     0x00007fa148f6a340           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@12 (line 73)
          │ │     0x00007fa148f6a371:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r10=Oop }
          │ │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@24 (line 73)
          │ │     0x00007fa148f6a378:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@24 (line 73)
          │ │                                                               ;   {poll}
   0.01%  │ │     0x00007fa148f6a37b:   nopl   0x0(%rax,%rax,1)
          │ │     0x00007fa148f6a380:   cmp    %ebx,%r8d
          │ ╰     0x00007fa148f6a383:   jl     0x00007fa148f6a31e
          ↘       0x00007fa148f6a385:   cmp    %ebp,%r8d
             ╭    0x00007fa148f6a388:   jge    0x00007fa148f6a399
             │    0x00007fa148f6a38a:   xchg   %ax,%ax                      ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
             │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@15 (line 74)
             │↗   0x00007fa148f6a38c:   add    0x10(%r10,%r8,4),%eax        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@19 (line 74)
   0.01%     ││   0x00007fa148f6a391:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@21 (line 73)
             ││   0x00007fa148f6a394:   cmp    %ebp,%r8d
             │╰   0x00007fa148f6a397:   jl     0x00007fa148f6a38c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@12 (line 73)
             ↘ ↗  0x00007fa148f6a399:   add    $0x20,%rsp
               │  0x00007fa148f6a39d:   pop    %rbp
   0.01%       │  0x00007fa148f6a39e:   cmp    0x340(%r15),%rsp             ;   {poll_return}
               │  0x00007fa148f6a3a5:   ja     0x00007fa148f6a3cc
               │  0x00007fa148f6a3ab:   ret    
               │  0x00007fa148f6a3ac:   xor    %eax,%eax
               ╰  0x00007fa148f6a3ae:   jmp    0x00007fa148f6a399
                  0x00007fa148f6a3b0:   mov    $0xffffff76,%esi
                  0x00007fa148f6a3b5:   mov    %r10d,(%rsp)
                  0x00007fa148f6a3b9:   xchg   %ax,%ax
                  0x00007fa148f6a3bb:   call   0x00007fa148a01600           ; ImmutableOopMap {[0]=NarrowOop }
                                                                            ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@12 (line 73)
....................................................................................................
  98.30%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.30%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum, version 4, compile id 565 
   0.33%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%           libjvm.so  ElfSymbolTable::lookup 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum, version 4, compile id 565 
   0.02%           libjvm.so  RelocIterator::initialize 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.76%  <...other 279 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum, version 4, compile id 565 
   1.30%              kernel  [unknown] 
   0.05%           libjvm.so  ElfSymbolTable::lookup 
   0.03%        libc-2.31.so  [unknown] 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  __strxfrm_l 
   0.02%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.VectorApiBenchmark_baseline_sum_jmhTest::baseline_sum_avgt_jmhStub, version 4, compile id 593 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.00%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%      perf-26747.map  [unknown] 
   0.14%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.33%         c2, level 4
   1.30%              kernel
   0.18%           libjvm.so
   0.10%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%      perf-26747.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.baseline_sum
# Parameters: (size = 1048576)

# Run progress: 41.67% complete, ETA 00:12:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 414.444 us/op
# Warmup Iteration   2: 414.616 us/op
# Warmup Iteration   3: 414.335 us/op
# Warmup Iteration   4: 414.075 us/op
# Warmup Iteration   5: 414.444 us/op
Iteration   1: 414.375 us/op
Iteration   2: 412.704 us/op
Iteration   3: 412.701 us/op
Iteration   4: 412.717 us/op
Iteration   5: 412.663 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.baseline_sum":
  413.032 ±(99.9%) 2.891 us/op [Average]
  (min, avg, max) = (412.663, 413.032, 414.375), stdev = 0.751
  CI (99.9%): [410.141, 415.923] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.baseline_sum:·asm":
PrintAssembly processed: 132326 total address lines.
Perf output processed (skipped 56.375 seconds):
 Column 1: cycles (50805 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum, version 3, compile id 575 

                 0x00007f21c4f6c5f9:   add    $0xfffffff9,%ebx
                 0x00007f21c4f6c5fc:   mov    $0x80000000,%r9d
                 0x00007f21c4f6c602:   cmp    %ebx,%r11d
                 0x00007f21c4f6c605:   cmovl  %r9d,%ebx
                 0x00007f21c4f6c609:   mov    $0x1,%r8d
                 0x00007f21c4f6c60f:   cmp    $0x1,%ebx
          ╭      0x00007f21c4f6c612:   jle    0x00007f21c4f6c685
          │      0x00007f21c4f6c618:   mov    $0x1f40,%r9d
          │ ↗    0x00007f21c4f6c61e:   mov    %ebx,%r11d
          │ │    0x00007f21c4f6c621:   sub    %r8d,%r11d
   0.01%  │ │    0x00007f21c4f6c624:   cmp    %r8d,%ebx
          │ │    0x00007f21c4f6c627:   cmovl  %ecx,%r11d
          │ │    0x00007f21c4f6c62b:   cmp    $0x1f40,%r11d
          │ │    0x00007f21c4f6c632:   cmova  %r9d,%r11d
   0.01%  │ │    0x00007f21c4f6c636:   add    %r8d,%r11d
          │ │    0x00007f21c4f6c639:   nopl   0x0(%rax)                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@15 (line 74)
          │↗│    0x00007f21c4f6c640:   add    0x10(%r10,%r8,4),%eax
  12.20%  │││    0x00007f21c4f6c645:   add    0x14(%r10,%r8,4),%eax
  12.10%  │││    0x00007f21c4f6c64a:   add    0x18(%r10,%r8,4),%eax
  12.09%  │││    0x00007f21c4f6c64f:   add    0x1c(%r10,%r8,4),%eax
  12.95%  │││    0x00007f21c4f6c654:   add    0x20(%r10,%r8,4),%eax
  12.35%  │││    0x00007f21c4f6c659:   add    0x24(%r10,%r8,4),%eax
  11.96%  │││    0x00007f21c4f6c65e:   add    0x28(%r10,%r8,4),%eax
  12.04%  │││    0x00007f21c4f6c663:   add    0x2c(%r10,%r8,4),%eax        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@19 (line 74)
  12.21%  │││    0x00007f21c4f6c668:   add    $0x8,%r8d                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@21 (line 73)
          │││    0x00007f21c4f6c66c:   cmp    %r11d,%r8d
          │╰│    0x00007f21c4f6c66f:   jl     0x00007f21c4f6c640           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@12 (line 73)
          │ │    0x00007f21c4f6c671:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r10=Oop }
          │ │                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@24 (line 73)
          │ │    0x00007f21c4f6c678:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@24 (line 73)
          │ │                                                              ;   {poll}
   0.02%  │ │    0x00007f21c4f6c67b:   nopl   0x0(%rax,%rax,1)
          │ │    0x00007f21c4f6c680:   cmp    %ebx,%r8d
          │ ╰    0x00007f21c4f6c683:   jl     0x00007f21c4f6c61e
          ↘      0x00007f21c4f6c685:   cmp    %ebp,%r8d
             ╭   0x00007f21c4f6c688:   jge    0x00007f21c4f6c699
             │   0x00007f21c4f6c68a:   xchg   %ax,%ax                      ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@15 (line 74)
             │↗  0x00007f21c4f6c68c:   add    0x10(%r10,%r8,4),%eax        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@19 (line 74)
   0.00%     ││  0x00007f21c4f6c691:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@21 (line 73)
             ││  0x00007f21c4f6c694:   cmp    %ebp,%r8d
             │╰  0x00007f21c4f6c697:   jl     0x00007f21c4f6c68c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum@12 (line 73)
             ↘   0x00007f21c4f6c699:   add    $0x20,%rsp
                 0x00007f21c4f6c69d:   pop    %rbp
                 0x00007f21c4f6c69e:   cmp    0x340(%r15),%rsp             ;   {poll_return}
                 0x00007f21c4f6c6a5:   ja     0x00007f21c4f6c6cc
                 0x00007f21c4f6c6ab:   ret    
....................................................................................................
  97.94%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.94%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum, version 3, compile id 575 
   0.81%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.73%  <...other 269 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.94%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::baseline_sum, version 3, compile id 575 
   1.69%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  stringStream::write 
   0.01%           libjvm.so  event_to_env 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  __strncat_ssse3 
   0.00%           libjvm.so  Rdtsc::elapsed_counter 
   0.00%           libjvm.so  os::vsnprintf 
   0.00%        libc-2.31.so  _int_realloc 
   0.00%      hsdis-amd64.so  hsdis_read_memory_func 
   0.16%  <...other 72 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.94%         c2, level 4
   1.69%              kernel
   0.18%           libjvm.so
   0.06%                    
   0.06%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.01%         interpreter
   0.00%      perf-26801.map
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.vectorized_filter
# Parameters: (size = 262144)

# Run progress: 50.00% complete, ETA 00:10:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 761.090 us/op
# Warmup Iteration   2: 604.125 us/op
# Warmup Iteration   3: 604.379 us/op
# Warmup Iteration   4: 604.655 us/op
# Warmup Iteration   5: 603.172 us/op
Iteration   1: 602.663 us/op
Iteration   2: 603.152 us/op
Iteration   3: 602.660 us/op
Iteration   4: 602.579 us/op
Iteration   5: 602.525 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.vectorized_filter":
  602.716 ±(99.9%) 0.965 us/op [Average]
  (min, avg, max) = (602.525, 602.716, 603.152), stdev = 0.251
  CI (99.9%): [601.751, 603.681] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.vectorized_filter:·asm":
PrintAssembly processed: 177481 total address lines.
Perf output processed (skipped 56.451 seconds):
 Column 1: cycles (51103 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter, version 2, compile id 850 

                                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                                                                                       ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                                       ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                                                                                       ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
                             0x00007fd60cf9016d:   lea    (%r12,%r10,8),%r11
                             0x00007fd60cf90171:   mov    %r11,0x38(%rsp)
                             0x00007fd60cf90176:   mov    %r10d,0x14(%rsp)
                             0x00007fd60cf9017b:   vmovq  -0x123(%rip),%xmm3        # 0x00007fd60cf90060
                                                                                       ;   {section_word}
   0.00%                     0x00007fd60cf90183:   vpbroadcastd %xmm3,%ymm3            ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - jdk.incubator.vector.IntVector::compareTemplate@52 (line 1742)
                                                                                       ; - jdk.incubator.vector.IntVector::compareTemplate@8 (line 1815)
                                                                                       ; - jdk.incubator.vector.Int256Vector::compare@5 (line 357)
                                                                                       ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@9 (line 233)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
                             0x00007fd60cf90188:   vpxor  %ymm4,%ymm4,%ymm4            ;*synchronization entry
                                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                                                                                       ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                                       ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                                                                                       ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
                             0x00007fd60cf9018c:   vpcmpeqb %ymm2,%ymm2,%ymm2          ;*invokevirtual vectorType {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - jdk.incubator.vector.IntVector::fromArray0Template@6 (line 3240)
                                                                                       ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                                       ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
                             0x00007fd60cf90190:   xor    %r10d,%r10d
                             0x00007fd60cf90193:   mov    %r10d,0x34(%rsp)
          ╭                  0x00007fd60cf90198:   jmp    0x00007fd60cf902b7
   0.92%  │    ↗             0x00007fd60cf9019d:   mov    0x1c(%r9,%rsi,4),%r10d
   0.00%  │    │             0x00007fd60cf901a2:   mov    0x38(%rsp),%r11              ;*synchronization entry
          │    │                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          │    │                                                                       ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          │    │                                                                       ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          │    │                                                                       ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          │    │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.10%  │    │             0x00007fd60cf901a7:   mov    %r10d,0x1c(%r11,%rax,4)      ;*invokespecial dummyVector {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                       ; - jdk.incubator.vector.IntVector$IntSpecies::dummyVector@1 (line 3606)
          │    │                                                                       ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
          │    │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.92%  │    │             0x00007fd60cf901ac:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@25 (line 114)
   1.00%  │    │↗            0x00007fd60cf901b0:   add    $0x4,%edi
          │    ││            0x00007fd60cf901b3:   cmp    %edx,%edi
          │╭   ││            0x00007fd60cf901b5:   jge    0x00007fd60cf9022b           ;*invokevirtual compareTemplate {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                                      ; - jdk.incubator.vector.IntVector::compareTemplate@8 (line 1815)
          ││   ││                                                                      ; - jdk.incubator.vector.Int256Vector::compare@5 (line 357)
          ││   ││                                                                      ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
          ││   ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@9 (line 233)
          ││   ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.86%  ││   ││ ↗          0x00007fd60cf901bb:   movslq %edi,%rsi                    ;*synchronization entry
          ││   ││ │                                                                    ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.14%  ││   ││ │          0x00007fd60cf901be:   movzbl 0x10(%rcx,%rsi,1),%r11d      ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector$IntSpecies::broadcastBits@21 (line 3536)
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector$IntSpecies::broadcast@5 (line 3545)
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::broadcastTemplate@7 (line 478)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 125)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 41)
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::compareTemplate@5 (line 1815)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@5 (line 357)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@9 (line 233)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.98%  ││   ││ │          0x00007fd60cf901c4:   mov    0x40(%rsp),%rax
   0.09%  ││   ││ │          0x00007fd60cf901c9:   add    %rsi,%rax
   0.97%  ││   ││ │          0x00007fd60cf901cc:   test   %r11d,%r11d
          ││╭  ││ │          0x00007fd60cf901cf:   je     0x00007fd60cf901e0
          │││  ││ │          0x00007fd60cf901d1:   mov    0x10(%r9,%rsi,4),%r10d
          │││  ││ │          0x00007fd60cf901d6:   mov    0x38(%rsp),%r11              ;*synchronization entry
          │││  ││ │                                                                    ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          │││  ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          │││  ││ │                                                                    ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          │││  ││ │                                                                    ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          │││  ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
          │││  ││ │          0x00007fd60cf901db:   mov    %r10d,0x10(%r11,%rax,4)      ;*invokevirtual compareTemplate {reexecute=0 rethrow=0 return_oop=0}
          │││  ││ │                                                                    ; - jdk.incubator.vector.IntVector::compareTemplate@8 (line 1815)
          │││  ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@5 (line 357)
          │││  ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
          │││  ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@9 (line 233)
          │││  ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.10%  ││↘  ││ │          0x00007fd60cf901e0:   movzbl 0x11(%rcx,%rsi,1),%r10d      ;*invokevirtual broadcast {reexecute=0 rethrow=0 return_oop=0}
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::broadcastTemplate@7 (line 478)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 125)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 41)
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::compareTemplate@5 (line 1815)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@5 (line 357)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@9 (line 233)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.95%  ││   ││ │          0x00007fd60cf901e6:   test   %r10d,%r10d
          ││ ╭ ││ │          0x00007fd60cf901e9:   je     0x00007fd60cf901fa
   0.07%  ││ │ ││ │          0x00007fd60cf901eb:   mov    0x14(%r9,%rsi,4),%r11d
   0.92%  ││ │ ││ │          0x00007fd60cf901f0:   mov    0x38(%rsp),%r10              ;*synchronization entry
          ││ │ ││ │                                                                    ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          ││ │ ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          ││ │ ││ │                                                                    ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          ││ │ ││ │                                                                    ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          ││ │ ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.12%  ││ │ ││ │          0x00007fd60cf901f5:   mov    %r11d,0x14(%r10,%rax,4)      ;*invokevirtual compareTemplate {reexecute=0 rethrow=0 return_oop=0}
          ││ │ ││ │                                                                    ; - jdk.incubator.vector.IntVector::compareTemplate@8 (line 1815)
          ││ │ ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@5 (line 357)
          ││ │ ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
          ││ │ ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@9 (line 233)
          ││ │ ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.94%  ││ ↘ ││ │          0x00007fd60cf901fa:   movzbl 0x12(%rcx,%rsi,1),%r10d      ;*invokevirtual broadcast {reexecute=0 rethrow=0 return_oop=0}
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::compareTemplate@5 (line 1815)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@5 (line 357)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@9 (line 233)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.08%  ││   ││ │          0x00007fd60cf90200:   test   %r10d,%r10d
          ││  ╭││ │          0x00007fd60cf90203:   je     0x00007fd60cf90214
          ││  │││ │          0x00007fd60cf90205:   mov    0x18(%r9,%rsi,4),%r10d
          ││  │││ │          0x00007fd60cf9020a:   mov    0x38(%rsp),%r11              ;*synchronization entry
          ││  │││ │                                                                    ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          ││  │││ │                                                                    ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          ││  │││ │                                                                    ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          ││  │││ │                                                                    ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          ││  │││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
          ││  │││ │          0x00007fd60cf9020f:   mov    %r10d,0x18(%r11,%rax,4)      ;*synchronization entry
          ││  │││ │                                                                    ; - jdk.incubator.vector.IntVector::broadcastTemplate@-1 (line 477)
          ││  │││ │                                                                    ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 125)
          ││  │││ │                                                                    ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 41)
          ││  │││ │                                                                    ; - jdk.incubator.vector.IntVector::compareTemplate@5 (line 1815)
          ││  │││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@5 (line 357)
          ││  │││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
          ││  │││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@9 (line 233)
          ││  │││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.90%  ││  ↘││ │          0x00007fd60cf90214:   movzbl 0x13(%rcx,%rsi,1),%r10d      ;*invokevirtual lanewise {reexecute=0 rethrow=0 return_oop=0}
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@2 (line 233)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.12%  ││   ││ │          0x00007fd60cf9021a:   nopw   0x0(%rax,%rax,1)
   0.96%  ││   ││ │          0x00007fd60cf90220:   test   %r10d,%r10d                  ;*synchronization entry
          ││   ││ │                                                                    ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
          ││   ╰│ │          0x00007fd60cf90223:   jne    0x00007fd60cf9019d
          ││    ╰ │          0x00007fd60cf90229:   jmp    0x00007fd60cf901b0           ;*invokespecial dummyVector {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                                    ; - jdk.incubator.vector.IntVector$IntSpecies::dummyVector@1 (line 3606)
          ││      │                                                                    ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
          ││      │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.14%  │↘      │          0x00007fd60cf9022b:   mov    0x348(%r15),%r10             ; ImmutableOopMap {r9=Oop rcx=Oop [0]=Oop [8]=Oop [20]=NarrowOop [24]=Oop [48]=NarrowOop [56]=Oop }
          │       │                                                                    ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │       │                                                                    ; - (reexecute) jdk.incubator.vector.IntVector::stOp@53 (line 354)
          │       │                                                                    ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          │       │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.93%  │       │          0x00007fd60cf90232:   test   %eax,(%r10)                  ;   {poll}
   1.04%  │       │          0x00007fd60cf90235:   cmp    %ebx,%edi
          │      ╭│          0x00007fd60cf90237:   jge    0x00007fd60cf90260           ;*invokevirtual compareTemplate {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                                    ; - jdk.incubator.vector.IntVector::compareTemplate@8 (line 1815)
          │      ││                                                                    ; - jdk.incubator.vector.Int256Vector::compare@5 (line 357)
          │      ││                                                                    ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
          │      ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@9 (line 233)
          │      ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.11%  │      ││       ↗  0x00007fd60cf90239:   mov    %ebx,%edx
   1.00%  │      ││       │  0x00007fd60cf9023b:   sub    %edi,%edx
   0.07%  │      ││       │  0x00007fd60cf9023d:   xor    %esi,%esi
   0.88%  │      ││       │  0x00007fd60cf9023f:   cmp    %edi,%ebx
   0.12%  │      ││       │  0x00007fd60cf90241:   cmovl  %esi,%edx
   0.86%  │      ││       │  0x00007fd60cf90244:   cmp    $0xfa0,%edx
   0.07%  │      ││       │  0x00007fd60cf9024a:   mov    $0xfa0,%r11d
   0.93%  │      ││       │  0x00007fd60cf90250:   cmova  %r11d,%edx
   1.06%  │      ││       │  0x00007fd60cf90254:   add    %edi,%edx
   0.08%  │      │╰       │  0x00007fd60cf90256:   jmp    0x00007fd60cf901bb
          │      │       ↗│  0x00007fd60cf9025b:   mov    $0x1,%edi
   0.11%  │      ↘       ││  0x00007fd60cf90260:   cmp    %r8d,%edi
          │        ╭     ││  0x00007fd60cf90263:   jge    0x00007fd60cf90294           ;*synchronization entry
          │        │     ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          │        │     ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          │        │     ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          │        │     ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          │        │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
          │        │     ││  0x00007fd60cf90265:   data16 xchg %ax,%ax
   2.15%  │        │ ↗   ││  0x00007fd60cf90268:   movslq %edi,%r10                    ;*invokevirtual opKind {reexecute=0 rethrow=0 return_oop=0}
          │        │ │   ││                                                            ; - jdk.incubator.vector.VectorOperators::opKind@5 (line 411)
          │        │ │   ││                                                            ; - jdk.incubator.vector.IntVector::opKind@2 (line 72)
          │        │ │   ││                                                            ; - jdk.incubator.vector.IntVector::lanewiseTemplate@15 (line 590)
          │        │ │   ││                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 279)
          │        │ │   ││                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
          │        │ │   ││                                                            ; - jdk.incubator.vector.IntVector::lanewise@43 (line 711)
          │        │ │   ││                                                            ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
          │        │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@2 (line 233)
          │        │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   1.93%  │        │ │   ││  0x00007fd60cf9026b:   movzbl 0x10(%rcx,%r10,1),%r11d      ;*invokestatic opKind {reexecute=0 rethrow=0 return_oop=0}
          │        │ │   ││                                                            ; - jdk.incubator.vector.IntVector::lanewiseTemplate@15 (line 590)
          │        │ │   ││                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 279)
          │        │ │   ││                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
          │        │ │   ││                                                            ; - jdk.incubator.vector.IntVector::lanewise@43 (line 711)
          │        │ │   ││                                                            ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
          │        │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@2 (line 233)
          │        │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   1.26%  │        │ │   ││  0x00007fd60cf90271:   test   %r11d,%r11d
          │        │╭│   ││  0x00007fd60cf90274:   je     0x00007fd60cf9028d
   0.99%  │        │││   ││  0x00007fd60cf90276:   mov    0x10(%r9,%r10,4),%r11d
   1.16%  │        │││   ││  0x00007fd60cf9027b:   mov    0x40(%rsp),%rbx
          │        │││   ││  0x00007fd60cf90280:   add    %r10,%rbx
          │        │││   ││  0x00007fd60cf90283:   mov    0x38(%rsp),%r10              ;*synchronization entry
          │        │││   ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          │        │││   ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          │        │││   ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          │        │││   ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          │        │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.98%  │        │││   ││  0x00007fd60cf90288:   mov    %r11d,0x10(%r10,%rbx,4)      ;*invokevirtual opKind {reexecute=0 rethrow=0 return_oop=0}
          │        │││   ││                                                            ; - jdk.incubator.vector.VectorOperators::opKind@5 (line 411)
          │        │││   ││                                                            ; - jdk.incubator.vector.IntVector::opKind@2 (line 72)
          │        │││   ││                                                            ; - jdk.incubator.vector.IntVector::lanewiseTemplate@15 (line 590)
          │        │││   ││                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 279)
          │        │││   ││                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
          │        │││   ││                                                            ; - jdk.incubator.vector.IntVector::lanewise@43 (line 711)
          │        │││   ││                                                            ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
          │        │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@2 (line 233)
          │        │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   1.08%  │        │↘│   ││  0x00007fd60cf9028d:   inc    %edi
   0.99%  │        │ │   ││  0x00007fd60cf9028f:   cmp    %r8d,%edi                    ;*synchronization entry
          │        │ │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          │        │ │   ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          │        │ │   ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          │        │ │   ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          │        │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
          │        │ ╰   ││  0x00007fd60cf90292:   jl     0x00007fd60cf90268           ;*invokespecial dummyVector {reexecute=0 rethrow=0 return_oop=0}
          │        │     ││                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::dummyVector@1 (line 3606)
          │        │     ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
          │        │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.99%  │        ↘   ↗ ││  0x00007fd60cf90294:   mov    0x348(%r15),%r10
   1.15%  │            │ ││  0x00007fd60cf9029b:   mov    0x34(%rsp),%r8d              ;*synchronization entry
          │            │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          │            │ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          │            │ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          │            │ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          │            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
          │            │ ││  0x00007fd60cf902a0:   add    $0x8,%r8d
          │            │ ││  0x00007fd60cf902a4:   mov    %r8d,0x34(%rsp)              ; ImmutableOopMap {[0]=Oop [8]=Oop [20]=NarrowOop [24]=Oop [48]=NarrowOop [56]=Oop }
          │            │ ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │            │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@70 (line 114)
   0.87%  │            │ ││  0x00007fd60cf902a9:   test   %eax,(%r10)                  ;   {poll}
   1.09%  │            │ ││  0x00007fd60cf902ac:   cmp    0x20(%rsp),%r8d
          │            │ ││  0x00007fd60cf902b1:   jge    0x00007fd60cf905ab           ;*invokespecial dummyVector {reexecute=0 rethrow=0 return_oop=0}
          │            │ ││                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::dummyVector@1 (line 3606)
          │            │ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
          │            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
          ↘            │ ││  0x00007fd60cf902b7:   mov    0x108(%r15),%rax
   0.00%               │ ││  0x00007fd60cf902be:   mov    %rax,%r10
   0.95%               │ ││  0x00007fd60cf902c1:   add    $0x30,%r10                   ;*synchronization entry
                       │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                       │ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                       │ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                       │ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                       │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   1.08%               │ ││  0x00007fd60cf902c5:   movslq 0x34(%rsp),%r11              ;*invokestatic opKind {reexecute=0 rethrow=0 return_oop=0}
                       │ ││                                                            ; - jdk.incubator.vector.IntVector::lanewise@3 (line 705)
                       │ ││                                                            ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
                       │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@2 (line 233)
                       │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.08%               │ ││  0x00007fd60cf902ca:   mov    %r11,0x40(%rsp)              ;*synchronization entry
                       │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                       │ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                       │ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                       │ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                       │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.03%               │ ││  0x00007fd60cf902cf:   shl    $0x2,%r11
   0.96%               │ ││  0x00007fd60cf902d3:   mov    %r11,0x48(%rsp)              ;*invokespecial dummyVector {reexecute=0 rethrow=0 return_oop=0}
                       │ ││                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::dummyVector@1 (line 3606)
                       │ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
                       │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   1.18%               │ ││  0x00007fd60cf902d8:   nopl   0x0(%rax,%rax,1)
                       │ ││  0x00007fd60cf902e0:   cmp    0x118(%r15),%r10             ;*synchronization entry
                       │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                       │ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                       │ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                       │ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                       │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
                      ╭│ ││  0x00007fd60cf902e7:   jae    0x00007fd60cf904e5           ;*invokespecial dummyVector {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::dummyVector@1 (line 3606)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.01%              ││ ││  0x00007fd60cf902ed:   mov    %r10,0x108(%r15)
   0.98%              ││ ││  0x00007fd60cf902f4:   prefetchw 0xc0(%r10)
   1.08%              ││ ││  0x00007fd60cf902fc:   movq   $0x1,(%rax)
   0.00%              ││ ││  0x00007fd60cf90303:   prefetchw 0x100(%r10)
   0.00%              ││ ││  0x00007fd60cf9030b:   movl   $0x6c38,0x8(%rax)            ;   {metadata({type array int})}
   0.92%              ││ ││  0x00007fd60cf90312:   prefetchw 0x140(%r10)
   1.11%              ││ ││  0x00007fd60cf9031a:   movl   $0x8,0xc(%rax)
   0.00%              ││ ││  0x00007fd60cf90321:   prefetchw 0x180(%r10)
   0.28%              ││ ││  0x00007fd60cf90329:   mov    %r12,0x10(%rax)
   0.90%              ││ ││  0x00007fd60cf9032d:   mov    %r12,0x18(%rax)
   1.12%              ││ ││  0x00007fd60cf90331:   mov    %r12,0x20(%rax)
   0.00%              ││ ││  0x00007fd60cf90335:   mov    %r12,0x28(%rax)              ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.01%              ││ ││  0x00007fd60cf90339:   mov    %rax,%rbp
   0.85%              ││ ││  0x00007fd60cf9033c:   mov    0x18(%rsp),%r10
   1.08%              ││ ││  0x00007fd60cf90341:   mov    0x48(%rsp),%r11              ;*synchronization entry
                      ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.04%              ││ ││  0x00007fd60cf90346:   vmovdqu 0x10(%r10,%r11,1),%ymm7     ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - java.util.Objects::checkIndex@3 (line 359)
                      ││ ││                                                            ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 52)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   3.44%              ││ ││  0x00007fd60cf9034d:   vmovdqu %ymm7,0x10(%rax)
   2.42%              ││ ││  0x00007fd60cf90352:   mov    0x108(%r15),%rax
   1.06%              ││ ││  0x00007fd60cf90359:   vpand  %ymm3,%ymm7,%ymm1
   1.08%              ││ ││  0x00007fd60cf9035d:   mov    %rax,%r10
   0.00%              ││ ││  0x00007fd60cf90360:   add    $0x18,%r10                   ;*invokespecial dummyVector {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::dummyVector@1 (line 3606)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.65%              ││ ││  0x00007fd60cf90364:   cmp    0x118(%r15),%r10             ;*synchronization entry
                      ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
                      ││ ││  0x00007fd60cf9036b:   jae    0x00007fd60cf90539           ;*invokespecial dummyVector {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::dummyVector@1 (line 3606)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.96%              ││ ││  0x00007fd60cf90371:   mov    %r10,0x108(%r15)
   0.38%              ││ ││  0x00007fd60cf90378:   prefetchw 0xc0(%r10)
   0.00%              ││ ││  0x00007fd60cf90380:   movq   $0x1,(%rax)
   0.63%              ││ ││  0x00007fd60cf90387:   prefetchw 0x100(%r10)
   0.93%              ││ ││  0x00007fd60cf9038f:   movl   $0x960,0x8(%rax)             ;   {metadata({type array bool})}
   0.47%              ││ ││  0x00007fd60cf90396:   prefetchw 0x140(%r10)
   0.00%              ││ ││  0x00007fd60cf9039e:   movl   $0x8,0xc(%rax)
   0.70%              ││ ││  0x00007fd60cf903a5:   prefetchw 0x180(%r10)
   1.13%              ││ ││  0x00007fd60cf903ad:   mov    %r12,0x10(%rax)              ;*synchronization entry
                      ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.38%              ││ ││  0x00007fd60cf903b1:   vpcmpeqd %ymm4,%ymm1,%ymm1          ;*invokevirtual vectorType {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@6 (line 3240)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.32%              ││ ││  0x00007fd60cf903b5:   vptest %ymm2,%ymm1
   1.57%              ││ ││  0x00007fd60cf903ba:   setb   %r11b
   1.74%              ││ ││  0x00007fd60cf903be:   movzbl %r11b,%r11d                  ;*synchronization entry
                      ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.94%              ││ ││  0x00007fd60cf903c2:   vextracti128 $0x1,%ymm1,%xmm0
   0.20%              ││ ││  0x00007fd60cf903c8:   vpackssdw %xmm0,%xmm1,%xmm0
   1.00%              ││ ││  0x00007fd60cf903cc:   vpacksswb %xmm0,%xmm0,%xmm0
   0.02%              ││ ││  0x00007fd60cf903d0:   vpabsb %xmm0,%xmm0                  ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 52)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   2.50%              ││ ││  0x00007fd60cf903d5:   vmovq  %xmm0,0x10(%rax)             ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - java.util.Objects::checkIndex@3 (line 359)
                      ││ ││                                                            ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 52)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.13%              ││ ││  0x00007fd60cf903da:   nopw   0x0(%rax,%rax,1)
   1.03%              ││ ││  0x00007fd60cf903e0:   test   %r11d,%r11d
                      ││ ││  0x00007fd60cf903e3:   jne    0x00007fd60cf90730
                      ││ ││  0x00007fd60cf903e9:   movabs $0x7ff138ff8,%r10            ;   {oop([I{0x00000007ff138ff8})}
   0.94%              ││ ││  0x00007fd60cf903f3:   vmovdqu 0x10(%r10),%ymm5
   0.36%              ││ ││  0x00007fd60cf903f9:   mov    0x24(%rsp),%r10d
   1.03%              ││ ││  0x00007fd60cf903fe:   sub    0x34(%rsp),%r10d
   0.01%              ││ ││  0x00007fd60cf90403:   cmp    $0x8,%r10d                   ;*synchronization entry
                      ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.93%              ││ ││  0x00007fd60cf90407:   mov    $0x8,%r8d
   0.17%              ││ ││  0x00007fd60cf9040d:   cmovge %r8d,%r10d                   ;*invokevirtual opKind {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.VectorOperators::opKind@5 (line 411)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::opKind@2 (line 72)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::lanewise@3 (line 705)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@2 (line 233)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.99%              ││ ││  0x00007fd60cf90411:   xor    %r11d,%r11d
                      ││ ││  0x00007fd60cf90414:   test   %r10d,%r10d
   0.82%              ││ ││  0x00007fd60cf90417:   cmovle %r11d,%r10d
   0.20%              ││ ││  0x00007fd60cf9041b:   vmovd  %r10d,%xmm6
   1.01%              ││ ││  0x00007fd60cf90420:   vpbroadcastd %xmm6,%ymm6
   0.01%              ││ ││  0x00007fd60cf90425:   vpcmpgtd %ymm5,%ymm6,%ymm5
   1.03%              ││ ││  0x00007fd60cf90429:   vpxor  -0x5adb31(%rip),%ymm5,%ymm5        # Stub::vector_all_bits_set
                      ││ ││                                                            ;*synchronization entry
                      ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
                      ││ ││                                                            ;   {external_word}
   0.44%              ││ ││  0x00007fd60cf90431:   vpand  %ymm1,%ymm5,%ymm5            ;*invokevirtual elementType {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@10 (line 3240)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   1.06%              ││ ││  0x00007fd60cf90435:   vptest %ymm2,%ymm5
   1.04%              ││ ││  0x00007fd60cf9043a:   setne  %r11b
   0.17%              ││ ││  0x00007fd60cf9043e:   movzbl %r11b,%r11d
   1.10%              ││ ││  0x00007fd60cf90442:   test   %r11d,%r11d                  ;*synchronization entry
                      ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
                      ││ ││  0x00007fd60cf90445:   jne    0x00007fd60cf90768           ;*invokestatic roundDown {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@20 (line 114)
   0.08%              ││ ││  0x00007fd60cf9044b:   mov    %rbp,%r9                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@34 (line 3239)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.90%              ││ ││  0x00007fd60cf9044e:   mov    0xc(%rbp),%r8d               ;*invokestatic checkFromIndexSize {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.13%              ││ ││  0x00007fd60cf90452:   test   %r8d,%r8d                    ;*synchronization entry
                      ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
                      │╰ ││  0x00007fd60cf90455:   jbe    0x00007fd60cf90294           ;*synchronization entry
                      │  ││                                                            ; - jdk.incubator.vector.VectorIntrinsics::roundDown@-1 (line 84)
                      │  ││                                                            ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
                      │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@20 (line 114)
   1.00%              │  ││  0x00007fd60cf9045b:   mov    %rax,%rcx                    ;*synchronization entry
                      │  ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      │  ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      │  ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      │  ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.06%              │  ││  0x00007fd60cf9045e:   mov    0xc(%rax),%r11d              ;*invokestatic opKind {reexecute=0 rethrow=0 return_oop=0}
                      │  ││                                                            ; - jdk.incubator.vector.IntVector::opKind@2 (line 72)
                      │  ││                                                            ; - jdk.incubator.vector.IntVector::lanewise@3 (line 705)
                      │  ││                                                            ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
                      │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@2 (line 233)
                      │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   1.08%              │  ││  0x00007fd60cf90462:   test   %r11d,%r11d
                      │  ││  0x00007fd60cf90465:   jbe    0x00007fd60cf906c7
   0.13%              │  ││  0x00007fd60cf9046b:   mov    %r8d,%r10d
   0.91%              │  ││  0x00007fd60cf9046e:   dec    %r10d
   0.06%              │  ││  0x00007fd60cf90471:   cmp    %r11d,%r10d
                      │  ││  0x00007fd60cf90474:   jae    0x00007fd60cf906c7
   0.89%              │  ││  0x00007fd60cf9047a:   nopw   0x0(%rax,%rax,1)
   0.11%              │  ││  0x00007fd60cf90480:   cmp    %r8d,%r10d
                      │  ││  0x00007fd60cf90483:   jae    0x00007fd60cf906fc
   1.06%              │  ││  0x00007fd60cf90489:   movslq %r8d,%r11
   0.06%              │  ││  0x00007fd60cf9048c:   add    0x40(%rsp),%r11
   0.94%              │  ││  0x00007fd60cf90491:   dec    %r11
   0.13%              │  ││  0x00007fd60cf90494:   cmp    0x28(%rsp),%r11
                      │  ││  0x00007fd60cf90499:   jae    0x00007fd60cf906fc
   0.92%              │  ││  0x00007fd60cf9049f:   movzbl 0x10(%rax),%r11d
   0.10%              │  ││  0x00007fd60cf904a4:   test   %r11d,%r11d
                      │ ╭││  0x00007fd60cf904a7:   je     0x00007fd60cf904bc
   0.83%              │ │││  0x00007fd60cf904a9:   mov    0x10(%rbp),%r11d
   0.11%              │ │││  0x00007fd60cf904ad:   mov    0x38(%rsp),%rbx
   1.07%              │ │││  0x00007fd60cf904b2:   mov    0x48(%rsp),%rdi              ;*synchronization entry
                      │ │││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      │ │││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      │ │││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      │ │││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.05%              │ │││  0x00007fd60cf904b7:   mov    %r11d,0x10(%rbx,%rdi,1)      ;*invokestatic opCode {reexecute=0 rethrow=0 return_oop=0}
                      │ │││                                                            ; - jdk.incubator.vector.IntVector::opCode@7 (line 63)
                      │ │││                                                            ; - jdk.incubator.vector.IntVector::lanewiseTemplate@207 (line 619)
                      │ │││                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 279)
                      │ │││                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                      │ │││                                                            ; - jdk.incubator.vector.IntVector::lanewise@43 (line 711)
                      │ │││                                                            ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
                      │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@2 (line 233)
                      │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.97%              │ ↘││  0x00007fd60cf904bc:   mov    %r8d,%ebx
   0.13%              │  ││  0x00007fd60cf904bf:   add    $0xfffffffd,%ebx
   0.94%              │  ││  0x00007fd60cf904c2:   cmp    %ebx,%r10d
   0.07%              │  ││  0x00007fd60cf904c5:   mov    $0x80000000,%r10d
   0.87%              │  ││  0x00007fd60cf904cb:   cmovl  %r10d,%ebx
   0.10%              │  ││  0x00007fd60cf904cf:   cmp    $0x1,%ebx
                      │  ╰│  0x00007fd60cf904d2:   jle    0x00007fd60cf9025b
   0.99%              │   │  0x00007fd60cf904d8:   mov    $0x1,%edi
   0.06%              │   │  0x00007fd60cf904dd:   data16 xchg %ax,%ax
   0.83%              │   ╰  0x00007fd60cf904e0:   jmp    0x00007fd60cf90239
                      ↘      0x00007fd60cf904e5:   vmovdqu %ymm2,0xa0(%rsp)
                             0x00007fd60cf904ee:   vmovdqu %ymm4,0x80(%rsp)
                             0x00007fd60cf904f7:   vmovdqu %ymm3,0x60(%rsp)
                             0x00007fd60cf904fd:   mov    %r11,%rbp
                             0x00007fd60cf90500:   add    $0x10,%rbp                   ;*synchronization entry
                                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                                                                                       ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                                       ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                                                                                       ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
....................................................................................................
  96.39%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter, version 2, compile id 850 
   0.96%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%           libjvm.so  HeapRegionManager::par_iterate 
   0.05%           libjvm.so  HeapRegionClaimer::claim_region 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.04%           libjvm.so  OtherRegionsTable::occupied 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%              [vdso]  __vdso_clock_gettime 
   0.03%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.03%                      <unknown> 
   0.03%        libc-2.31.so  [unknown] 
   0.03%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.03%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.02%              kernel  [unknown] 
   1.81%  <...other 491 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter, version 2, compile id 850 
   2.09%              kernel  [unknown] 
   0.14%                      <unknown> 
   0.09%        libc-2.31.so  [unknown] 
   0.07%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%           libjvm.so  HeapRegionManager::par_iterate 
   0.05%           libjvm.so  HeapRegionClaimer::claim_region 
   0.05%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.04%           libjvm.so  OtherRegionsTable::occupied 
   0.04%              [vdso]  __vdso_clock_gettime 
   0.03%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.03%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.03%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.02%           libjvm.so  MemAllocator::allocate 
   0.02%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  G1FromCardCache::clear 
   0.02%           libjvm.so  FreeCSetClosure::do_heap_region 
   0.02%           libjvm.so  OptoRuntime::new_array_C 
   0.02%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.77%  <...other 179 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.41%         c2, level 4
   2.09%              kernel
   1.04%           libjvm.so
   0.14%        libc-2.31.so
   0.14%                    
   0.07%  libpthread-2.31.so
   0.05%          ld-2.31.so
   0.04%              [vdso]
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.vectorized_filter
# Parameters: (size = 1048576)

# Run progress: 58.33% complete, ETA 00:09:04
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3084.220 us/op
# Warmup Iteration   2: 2435.780 us/op
# Warmup Iteration   3: 2433.415 us/op
# Warmup Iteration   4: 2428.389 us/op
# Warmup Iteration   5: 2430.785 us/op
Iteration   1: 2437.320 us/op
Iteration   2: 2430.403 us/op
Iteration   3: 2434.997 us/op
Iteration   4: 2431.759 us/op
Iteration   5: 2417.231 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.vectorized_filter":
  2430.342 ±(99.9%) 30.091 us/op [Average]
  (min, avg, max) = (2417.231, 2430.342, 2437.320), stdev = 7.815
  CI (99.9%): [2400.251, 2460.434] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.vectorized_filter:·asm":
PrintAssembly processed: 171881 total address lines.
Perf output processed (skipped 56.376 seconds):
 Column 1: cycles (50903 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter, version 2, compile id 847 

                                                                                       ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
                             0x00007fb93cf8a80c:   vpcmpeqb %ymm2,%ymm2,%ymm2          ;*invokevirtual vectorType {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - jdk.incubator.vector.IntVector::fromArray0Template@6 (line 3240)
                                                                                       ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                                       ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
                             0x00007fb93cf8a810:   xor    %r10d,%r10d
                             0x00007fb93cf8a813:   mov    %r10d,0x34(%rsp)
          ╭                  0x00007fb93cf8a818:   jmp    0x00007fb93cf8a937
   0.91%  │    ↗             0x00007fb93cf8a81d:   mov    0x1c(%r9,%rsi,4),%r10d
          │    │             0x00007fb93cf8a822:   mov    0x38(%rsp),%r11              ;*synchronization entry
          │    │                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          │    │                                                                       ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          │    │                                                                       ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          │    │                                                                       ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          │    │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.16%  │    │             0x00007fb93cf8a827:   mov    %r10d,0x1c(%r11,%rax,4)      ;*invokespecial dummyVector {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                       ; - jdk.incubator.vector.IntVector$IntSpecies::dummyVector@1 (line 3606)
          │    │                                                                       ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
          │    │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   1.01%  │    │             0x00007fb93cf8a82c:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@25 (line 114)
   1.04%  │    │↗            0x00007fb93cf8a830:   add    $0x4,%edi
          │    ││            0x00007fb93cf8a833:   cmp    %edx,%edi
          │╭   ││            0x00007fb93cf8a835:   jge    0x00007fb93cf8a8ab           ;*invokevirtual compareTemplate {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                                      ; - jdk.incubator.vector.IntVector::compareTemplate@8 (line 1815)
          ││   ││                                                                      ; - jdk.incubator.vector.Int256Vector::compare@5 (line 357)
          ││   ││                                                                      ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
          ││   ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@9 (line 233)
          ││   ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.92%  ││   ││ ↗          0x00007fb93cf8a83b:   movslq %edi,%rsi                    ;*synchronization entry
          ││   ││ │                                                                    ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.12%  ││   ││ │          0x00007fb93cf8a83e:   movzbl 0x10(%rcx,%rsi,1),%r11d      ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector$IntSpecies::broadcastBits@21 (line 3536)
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector$IntSpecies::broadcast@5 (line 3545)
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::broadcastTemplate@7 (line 478)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 125)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 41)
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::compareTemplate@5 (line 1815)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@5 (line 357)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@9 (line 233)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   1.07%  ││   ││ │          0x00007fb93cf8a844:   mov    0x40(%rsp),%rax
   0.06%  ││   ││ │          0x00007fb93cf8a849:   add    %rsi,%rax
   0.92%  ││   ││ │          0x00007fb93cf8a84c:   test   %r11d,%r11d
          ││╭  ││ │          0x00007fb93cf8a84f:   je     0x00007fb93cf8a860
          │││  ││ │          0x00007fb93cf8a851:   mov    0x10(%r9,%rsi,4),%r10d
          │││  ││ │          0x00007fb93cf8a856:   mov    0x38(%rsp),%r11              ;*synchronization entry
          │││  ││ │                                                                    ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          │││  ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          │││  ││ │                                                                    ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          │││  ││ │                                                                    ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          │││  ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
          │││  ││ │          0x00007fb93cf8a85b:   mov    %r10d,0x10(%r11,%rax,4)      ;*invokevirtual compareTemplate {reexecute=0 rethrow=0 return_oop=0}
          │││  ││ │                                                                    ; - jdk.incubator.vector.IntVector::compareTemplate@8 (line 1815)
          │││  ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@5 (line 357)
          │││  ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
          │││  ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@9 (line 233)
          │││  ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.13%  ││↘  ││ │          0x00007fb93cf8a860:   movzbl 0x11(%rcx,%rsi,1),%r10d      ;*invokevirtual broadcast {reexecute=0 rethrow=0 return_oop=0}
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::broadcastTemplate@7 (line 478)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 125)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 41)
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::compareTemplate@5 (line 1815)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@5 (line 357)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@9 (line 233)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.93%  ││   ││ │          0x00007fb93cf8a866:   test   %r10d,%r10d
          ││ ╭ ││ │          0x00007fb93cf8a869:   je     0x00007fb93cf8a87a
   0.07%  ││ │ ││ │          0x00007fb93cf8a86b:   mov    0x14(%r9,%rsi,4),%r11d
   0.89%  ││ │ ││ │          0x00007fb93cf8a870:   mov    0x38(%rsp),%r10              ;*synchronization entry
          ││ │ ││ │                                                                    ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          ││ │ ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          ││ │ ││ │                                                                    ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          ││ │ ││ │                                                                    ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          ││ │ ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.12%  ││ │ ││ │          0x00007fb93cf8a875:   mov    %r11d,0x14(%r10,%rax,4)      ;*invokevirtual compareTemplate {reexecute=0 rethrow=0 return_oop=0}
          ││ │ ││ │                                                                    ; - jdk.incubator.vector.IntVector::compareTemplate@8 (line 1815)
          ││ │ ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@5 (line 357)
          ││ │ ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
          ││ │ ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@9 (line 233)
          ││ │ ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   1.01%  ││ ↘ ││ │          0x00007fb93cf8a87a:   movzbl 0x12(%rcx,%rsi,1),%r10d      ;*invokevirtual broadcast {reexecute=0 rethrow=0 return_oop=0}
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::compareTemplate@5 (line 1815)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@5 (line 357)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@9 (line 233)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.06%  ││   ││ │          0x00007fb93cf8a880:   test   %r10d,%r10d
          ││  ╭││ │          0x00007fb93cf8a883:   je     0x00007fb93cf8a894
          ││  │││ │          0x00007fb93cf8a885:   mov    0x18(%r9,%rsi,4),%r10d
          ││  │││ │          0x00007fb93cf8a88a:   mov    0x38(%rsp),%r11              ;*synchronization entry
          ││  │││ │                                                                    ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          ││  │││ │                                                                    ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          ││  │││ │                                                                    ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          ││  │││ │                                                                    ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          ││  │││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
          ││  │││ │          0x00007fb93cf8a88f:   mov    %r10d,0x18(%r11,%rax,4)      ;*synchronization entry
          ││  │││ │                                                                    ; - jdk.incubator.vector.IntVector::broadcastTemplate@-1 (line 477)
          ││  │││ │                                                                    ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 125)
          ││  │││ │                                                                    ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 41)
          ││  │││ │                                                                    ; - jdk.incubator.vector.IntVector::compareTemplate@5 (line 1815)
          ││  │││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@5 (line 357)
          ││  │││ │                                                                    ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
          ││  │││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@9 (line 233)
          ││  │││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.94%  ││  ↘││ │          0x00007fb93cf8a894:   movzbl 0x13(%rcx,%rsi,1),%r10d      ;*invokevirtual lanewise {reexecute=0 rethrow=0 return_oop=0}
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@2 (line 233)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.11%  ││   ││ │          0x00007fb93cf8a89a:   nopw   0x0(%rax,%rax,1)
   0.90%  ││   ││ │          0x00007fb93cf8a8a0:   test   %r10d,%r10d                  ;*synchronization entry
          ││   ││ │                                                                    ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          ││   ││ │                                                                    ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          ││   ││ │                                                                    ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          ││   ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
          ││   ╰│ │          0x00007fb93cf8a8a3:   jne    0x00007fb93cf8a81d
          ││    ╰ │          0x00007fb93cf8a8a9:   jmp    0x00007fb93cf8a830           ;*invokespecial dummyVector {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                                    ; - jdk.incubator.vector.IntVector$IntSpecies::dummyVector@1 (line 3606)
          ││      │                                                                    ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
          ││      │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.10%  │↘      │          0x00007fb93cf8a8ab:   mov    0x348(%r15),%r10             ; ImmutableOopMap {r9=Oop rcx=Oop [0]=Oop [8]=Oop [20]=NarrowOop [24]=Oop [48]=NarrowOop [56]=Oop }
          │       │                                                                    ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │       │                                                                    ; - (reexecute) jdk.incubator.vector.IntVector::stOp@53 (line 354)
          │       │                                                                    ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          │       │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.94%  │       │          0x00007fb93cf8a8b2:   test   %eax,(%r10)                  ;   {poll}
   1.05%  │       │          0x00007fb93cf8a8b5:   cmp    %ebx,%edi
          │      ╭│          0x00007fb93cf8a8b7:   jge    0x00007fb93cf8a8e0           ;*invokevirtual compareTemplate {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                                    ; - jdk.incubator.vector.IntVector::compareTemplate@8 (line 1815)
          │      ││                                                                    ; - jdk.incubator.vector.Int256Vector::compare@5 (line 357)
          │      ││                                                                    ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
          │      ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@9 (line 233)
          │      ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.12%  │      ││       ↗  0x00007fb93cf8a8b9:   mov    %ebx,%edx
   0.96%  │      ││       │  0x00007fb93cf8a8bb:   sub    %edi,%edx
   0.08%  │      ││       │  0x00007fb93cf8a8bd:   xor    %esi,%esi
   0.93%  │      ││       │  0x00007fb93cf8a8bf:   cmp    %edi,%ebx
   0.14%  │      ││       │  0x00007fb93cf8a8c1:   cmovl  %esi,%edx
   0.94%  │      ││       │  0x00007fb93cf8a8c4:   cmp    $0xfa0,%edx
   0.05%  │      ││       │  0x00007fb93cf8a8ca:   mov    $0xfa0,%r11d
   0.91%  │      ││       │  0x00007fb93cf8a8d0:   cmova  %r11d,%edx
   1.14%  │      ││       │  0x00007fb93cf8a8d4:   add    %edi,%edx
   0.06%  │      │╰       │  0x00007fb93cf8a8d6:   jmp    0x00007fb93cf8a83b
          │      │       ↗│  0x00007fb93cf8a8db:   mov    $0x1,%edi
   0.16%  │      ↘       ││  0x00007fb93cf8a8e0:   cmp    %r8d,%edi
          │        ╭     ││  0x00007fb93cf8a8e3:   jge    0x00007fb93cf8a914           ;*synchronization entry
          │        │     ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          │        │     ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          │        │     ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          │        │     ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          │        │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
          │        │     ││  0x00007fb93cf8a8e5:   data16 xchg %ax,%ax
   2.06%  │        │ ↗   ││  0x00007fb93cf8a8e8:   movslq %edi,%r10                    ;*invokevirtual opKind {reexecute=0 rethrow=0 return_oop=0}
          │        │ │   ││                                                            ; - jdk.incubator.vector.VectorOperators::opKind@5 (line 411)
          │        │ │   ││                                                            ; - jdk.incubator.vector.IntVector::opKind@2 (line 72)
          │        │ │   ││                                                            ; - jdk.incubator.vector.IntVector::lanewiseTemplate@15 (line 590)
          │        │ │   ││                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 279)
          │        │ │   ││                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
          │        │ │   ││                                                            ; - jdk.incubator.vector.IntVector::lanewise@43 (line 711)
          │        │ │   ││                                                            ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
          │        │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@2 (line 233)
          │        │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   1.78%  │        │ │   ││  0x00007fb93cf8a8eb:   movzbl 0x10(%rcx,%r10,1),%r11d      ;*invokestatic opKind {reexecute=0 rethrow=0 return_oop=0}
          │        │ │   ││                                                            ; - jdk.incubator.vector.IntVector::lanewiseTemplate@15 (line 590)
          │        │ │   ││                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 279)
          │        │ │   ││                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
          │        │ │   ││                                                            ; - jdk.incubator.vector.IntVector::lanewise@43 (line 711)
          │        │ │   ││                                                            ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
          │        │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@2 (line 233)
          │        │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   1.25%  │        │ │   ││  0x00007fb93cf8a8f1:   test   %r11d,%r11d
          │        │╭│   ││  0x00007fb93cf8a8f4:   je     0x00007fb93cf8a90d
   1.00%  │        │││   ││  0x00007fb93cf8a8f6:   mov    0x10(%r9,%r10,4),%r11d
   1.05%  │        │││   ││  0x00007fb93cf8a8fb:   mov    0x40(%rsp),%rbx
   0.01%  │        │││   ││  0x00007fb93cf8a900:   add    %r10,%rbx
   0.00%  │        │││   ││  0x00007fb93cf8a903:   mov    0x38(%rsp),%r10              ;*synchronization entry
          │        │││   ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          │        │││   ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          │        │││   ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          │        │││   ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          │        │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.85%  │        │││   ││  0x00007fb93cf8a908:   mov    %r11d,0x10(%r10,%rbx,4)      ;*invokevirtual opKind {reexecute=0 rethrow=0 return_oop=0}
          │        │││   ││                                                            ; - jdk.incubator.vector.VectorOperators::opKind@5 (line 411)
          │        │││   ││                                                            ; - jdk.incubator.vector.IntVector::opKind@2 (line 72)
          │        │││   ││                                                            ; - jdk.incubator.vector.IntVector::lanewiseTemplate@15 (line 590)
          │        │││   ││                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 279)
          │        │││   ││                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
          │        │││   ││                                                            ; - jdk.incubator.vector.IntVector::lanewise@43 (line 711)
          │        │││   ││                                                            ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
          │        │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@2 (line 233)
          │        │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   1.13%  │        │↘│   ││  0x00007fb93cf8a90d:   inc    %edi
   0.93%  │        │ │   ││  0x00007fb93cf8a90f:   cmp    %r8d,%edi                    ;*synchronization entry
          │        │ │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          │        │ │   ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          │        │ │   ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          │        │ │   ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          │        │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
          │        │ ╰   ││  0x00007fb93cf8a912:   jl     0x00007fb93cf8a8e8           ;*invokespecial dummyVector {reexecute=0 rethrow=0 return_oop=0}
          │        │     ││                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::dummyVector@1 (line 3606)
          │        │     ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
          │        │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   1.01%  │        ↘   ↗ ││  0x00007fb93cf8a914:   mov    0x348(%r15),%r10
   1.08%  │            │ ││  0x00007fb93cf8a91b:   mov    0x34(%rsp),%r8d              ;*synchronization entry
          │            │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
          │            │ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
          │            │ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
          │            │ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          │            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
          │            │ ││  0x00007fb93cf8a920:   add    $0x8,%r8d
          │            │ ││  0x00007fb93cf8a924:   mov    %r8d,0x34(%rsp)              ; ImmutableOopMap {[0]=Oop [8]=Oop [20]=NarrowOop [24]=Oop [48]=NarrowOop [56]=Oop }
          │            │ ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │            │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@70 (line 114)
   1.02%  │            │ ││  0x00007fb93cf8a929:   test   %eax,(%r10)                  ;   {poll}
   1.20%  │            │ ││  0x00007fb93cf8a92c:   cmp    0x20(%rsp),%r8d
          │            │ ││  0x00007fb93cf8a931:   jge    0x00007fb93cf8ac2b           ;*invokespecial dummyVector {reexecute=0 rethrow=0 return_oop=0}
          │            │ ││                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::dummyVector@1 (line 3606)
          │            │ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
          │            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.01%  ↘            │ ││  0x00007fb93cf8a937:   mov    0x108(%r15),%rax
   0.02%               │ ││  0x00007fb93cf8a93e:   mov    %rax,%r10
   0.92%               │ ││  0x00007fb93cf8a941:   add    $0x30,%r10                   ;*synchronization entry
                       │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                       │ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                       │ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                       │ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                       │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   1.12%               │ ││  0x00007fb93cf8a945:   movslq 0x34(%rsp),%r11              ;*invokestatic opKind {reexecute=0 rethrow=0 return_oop=0}
                       │ ││                                                            ; - jdk.incubator.vector.IntVector::lanewise@3 (line 705)
                       │ ││                                                            ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
                       │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@2 (line 233)
                       │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.08%               │ ││  0x00007fb93cf8a94a:   mov    %r11,0x40(%rsp)              ;*synchronization entry
                       │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                       │ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                       │ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                       │ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                       │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.02%               │ ││  0x00007fb93cf8a94f:   shl    $0x2,%r11
   0.88%               │ ││  0x00007fb93cf8a953:   mov    %r11,0x48(%rsp)              ;*invokespecial dummyVector {reexecute=0 rethrow=0 return_oop=0}
                       │ ││                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::dummyVector@1 (line 3606)
                       │ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
                       │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   1.15%               │ ││  0x00007fb93cf8a958:   nopl   0x0(%rax,%rax,1)
                       │ ││  0x00007fb93cf8a960:   cmp    0x118(%r15),%r10             ;*synchronization entry
                       │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                       │ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                       │ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                       │ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                       │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
                      ╭│ ││  0x00007fb93cf8a967:   jae    0x00007fb93cf8ab65           ;*invokespecial dummyVector {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::dummyVector@1 (line 3606)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.00%              ││ ││  0x00007fb93cf8a96d:   mov    %r10,0x108(%r15)
   0.88%              ││ ││  0x00007fb93cf8a974:   prefetchw 0xc0(%r10)
   1.11%              ││ ││  0x00007fb93cf8a97c:   movq   $0x1,(%rax)
   0.00%              ││ ││  0x00007fb93cf8a983:   prefetchw 0x100(%r10)
                      ││ ││  0x00007fb93cf8a98b:   movl   $0x6c38,0x8(%rax)            ;   {metadata({type array int})}
   0.99%              ││ ││  0x00007fb93cf8a992:   prefetchw 0x140(%r10)
   1.13%              ││ ││  0x00007fb93cf8a99a:   movl   $0x8,0xc(%rax)
   0.00%              ││ ││  0x00007fb93cf8a9a1:   prefetchw 0x180(%r10)
   0.30%              ││ ││  0x00007fb93cf8a9a9:   mov    %r12,0x10(%rax)
   0.90%              ││ ││  0x00007fb93cf8a9ad:   mov    %r12,0x18(%rax)
   1.18%              ││ ││  0x00007fb93cf8a9b1:   mov    %r12,0x20(%rax)
   0.01%              ││ ││  0x00007fb93cf8a9b5:   mov    %r12,0x28(%rax)              ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.01%              ││ ││  0x00007fb93cf8a9b9:   mov    %rax,%rbp
   1.00%              ││ ││  0x00007fb93cf8a9bc:   mov    0x18(%rsp),%r10
   1.08%              ││ ││  0x00007fb93cf8a9c1:   mov    0x48(%rsp),%r11              ;*synchronization entry
                      ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.03%              ││ ││  0x00007fb93cf8a9c6:   vmovdqu 0x10(%r10,%r11,1),%ymm7     ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - java.util.Objects::checkIndex@3 (line 359)
                      ││ ││                                                            ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 52)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   4.16%              ││ ││  0x00007fb93cf8a9cd:   vmovdqu %ymm7,0x10(%rax)
   2.37%              ││ ││  0x00007fb93cf8a9d2:   mov    0x108(%r15),%rax
   1.06%              ││ ││  0x00007fb93cf8a9d9:   vpand  %ymm3,%ymm7,%ymm1
   1.08%              ││ ││  0x00007fb93cf8a9dd:   mov    %rax,%r10
   0.01%              ││ ││  0x00007fb93cf8a9e0:   add    $0x18,%r10                   ;*invokespecial dummyVector {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::dummyVector@1 (line 3606)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.64%              ││ ││  0x00007fb93cf8a9e4:   cmp    0x118(%r15),%r10             ;*synchronization entry
                      ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
                      ││ ││  0x00007fb93cf8a9eb:   jae    0x00007fb93cf8abb9           ;*invokespecial dummyVector {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::dummyVector@1 (line 3606)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   1.01%              ││ ││  0x00007fb93cf8a9f1:   mov    %r10,0x108(%r15)
   0.41%              ││ ││  0x00007fb93cf8a9f8:   prefetchw 0xc0(%r10)
   0.01%              ││ ││  0x00007fb93cf8aa00:   movq   $0x1,(%rax)
   0.64%              ││ ││  0x00007fb93cf8aa07:   prefetchw 0x100(%r10)
   1.01%              ││ ││  0x00007fb93cf8aa0f:   movl   $0x960,0x8(%rax)             ;   {metadata({type array bool})}
   0.43%              ││ ││  0x00007fb93cf8aa16:   prefetchw 0x140(%r10)
                      ││ ││  0x00007fb93cf8aa1e:   movl   $0x8,0xc(%rax)
   0.60%              ││ ││  0x00007fb93cf8aa25:   prefetchw 0x180(%r10)
   1.13%              ││ ││  0x00007fb93cf8aa2d:   mov    %r12,0x10(%rax)              ;*synchronization entry
                      ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.43%              ││ ││  0x00007fb93cf8aa31:   vpcmpeqd %ymm4,%ymm1,%ymm1          ;*invokevirtual vectorType {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@6 (line 3240)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.32%              ││ ││  0x00007fb93cf8aa35:   vptest %ymm2,%ymm1
   1.59%              ││ ││  0x00007fb93cf8aa3a:   setb   %r11b
   1.68%              ││ ││  0x00007fb93cf8aa3e:   movzbl %r11b,%r11d                  ;*synchronization entry
                      ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.92%              ││ ││  0x00007fb93cf8aa42:   vextracti128 $0x1,%ymm1,%xmm0
   0.20%              ││ ││  0x00007fb93cf8aa48:   vpackssdw %xmm0,%xmm1,%xmm0
   0.98%              ││ ││  0x00007fb93cf8aa4c:   vpacksswb %xmm0,%xmm0,%xmm0
   0.02%              ││ ││  0x00007fb93cf8aa50:   vpabsb %xmm0,%xmm0                  ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 52)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   2.22%              ││ ││  0x00007fb93cf8aa55:   vmovq  %xmm0,0x10(%rax)             ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - java.util.Objects::checkIndex@3 (line 359)
                      ││ ││                                                            ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 52)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.13%              ││ ││  0x00007fb93cf8aa5a:   nopw   0x0(%rax,%rax,1)
   1.01%              ││ ││  0x00007fb93cf8aa60:   test   %r11d,%r11d
                      ││ ││  0x00007fb93cf8aa63:   jne    0x00007fb93cf8adb0
                      ││ ││  0x00007fb93cf8aa69:   movabs $0x7f2e10fb8,%r10            ;   {oop([I{0x00000007f2e10fb8})}
   0.91%              ││ ││  0x00007fb93cf8aa73:   vmovdqu 0x10(%r10),%ymm5
   0.33%              ││ ││  0x00007fb93cf8aa79:   mov    0x24(%rsp),%r10d
   0.99%              ││ ││  0x00007fb93cf8aa7e:   sub    0x34(%rsp),%r10d
   0.01%              ││ ││  0x00007fb93cf8aa83:   cmp    $0x8,%r10d                   ;*synchronization entry
                      ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.85%              ││ ││  0x00007fb93cf8aa87:   mov    $0x8,%r8d
   0.15%              ││ ││  0x00007fb93cf8aa8d:   cmovge %r8d,%r10d                   ;*invokevirtual opKind {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.VectorOperators::opKind@5 (line 411)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::opKind@2 (line 72)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::lanewise@3 (line 705)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@2 (line 233)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.94%              ││ ││  0x00007fb93cf8aa91:   xor    %r11d,%r11d
                      ││ ││  0x00007fb93cf8aa94:   test   %r10d,%r10d
   0.92%              ││ ││  0x00007fb93cf8aa97:   cmovle %r11d,%r10d
   0.18%              ││ ││  0x00007fb93cf8aa9b:   vmovd  %r10d,%xmm6
   1.02%              ││ ││  0x00007fb93cf8aaa0:   vpbroadcastd %xmm6,%ymm6
   0.01%              ││ ││  0x00007fb93cf8aaa5:   vpcmpgtd %ymm5,%ymm6,%ymm5
   0.97%              ││ ││  0x00007fb93cf8aaa9:   vpxor  -0x5a81b1(%rip),%ymm5,%ymm5        # Stub::vector_all_bits_set
                      ││ ││                                                            ;*synchronization entry
                      ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
                      ││ ││                                                            ;   {external_word}
   0.42%              ││ ││  0x00007fb93cf8aab1:   vpand  %ymm1,%ymm5,%ymm5            ;*invokevirtual elementType {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@10 (line 3240)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   1.05%              ││ ││  0x00007fb93cf8aab5:   vptest %ymm2,%ymm5
   1.05%              ││ ││  0x00007fb93cf8aaba:   setne  %r11b
   0.24%              ││ ││  0x00007fb93cf8aabe:   movzbl %r11b,%r11d
   1.01%              ││ ││  0x00007fb93cf8aac2:   test   %r11d,%r11d                  ;*synchronization entry
                      ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
                      ││ ││  0x00007fb93cf8aac5:   jne    0x00007fb93cf8ade8           ;*invokestatic roundDown {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@20 (line 114)
   0.06%              ││ ││  0x00007fb93cf8aacb:   mov    %rbp,%r9                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@34 (line 3239)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.89%              ││ ││  0x00007fb93cf8aace:   mov    0xc(%rbp),%r8d               ;*invokestatic checkFromIndexSize {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.15%              ││ ││  0x00007fb93cf8aad2:   test   %r8d,%r8d                    ;*synchronization entry
                      ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      ││ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      ││ ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
                      │╰ ││  0x00007fb93cf8aad5:   jbe    0x00007fb93cf8a914           ;*synchronization entry
                      │  ││                                                            ; - jdk.incubator.vector.VectorIntrinsics::roundDown@-1 (line 84)
                      │  ││                                                            ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
                      │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@20 (line 114)
   0.92%              │  ││  0x00007fb93cf8aadb:   mov    %rax,%rcx                    ;*synchronization entry
                      │  ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      │  ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      │  ││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      │  ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.08%              │  ││  0x00007fb93cf8aade:   mov    0xc(%rax),%r11d              ;*invokestatic opKind {reexecute=0 rethrow=0 return_oop=0}
                      │  ││                                                            ; - jdk.incubator.vector.IntVector::opKind@2 (line 72)
                      │  ││                                                            ; - jdk.incubator.vector.IntVector::lanewise@3 (line 705)
                      │  ││                                                            ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
                      │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@2 (line 233)
                      │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   1.21%              │  ││  0x00007fb93cf8aae2:   test   %r11d,%r11d
                      │  ││  0x00007fb93cf8aae5:   jbe    0x00007fb93cf8ad47
   0.14%              │  ││  0x00007fb93cf8aaeb:   mov    %r8d,%r10d
   1.02%              │  ││  0x00007fb93cf8aaee:   dec    %r10d
   0.06%              │  ││  0x00007fb93cf8aaf1:   cmp    %r11d,%r10d
                      │  ││  0x00007fb93cf8aaf4:   jae    0x00007fb93cf8ad47
   0.84%              │  ││  0x00007fb93cf8aafa:   nopw   0x0(%rax,%rax,1)
   0.15%              │  ││  0x00007fb93cf8ab00:   cmp    %r8d,%r10d
                      │  ││  0x00007fb93cf8ab03:   jae    0x00007fb93cf8ad7c
   1.01%              │  ││  0x00007fb93cf8ab09:   movslq %r8d,%r11
   0.05%              │  ││  0x00007fb93cf8ab0c:   add    0x40(%rsp),%r11
   0.88%              │  ││  0x00007fb93cf8ab11:   dec    %r11
   0.14%              │  ││  0x00007fb93cf8ab14:   cmp    0x28(%rsp),%r11
                      │  ││  0x00007fb93cf8ab19:   jae    0x00007fb93cf8ad7c
   0.95%              │  ││  0x00007fb93cf8ab1f:   movzbl 0x10(%rax),%r11d
   0.08%              │  ││  0x00007fb93cf8ab24:   test   %r11d,%r11d
                      │ ╭││  0x00007fb93cf8ab27:   je     0x00007fb93cf8ab3c
   0.93%              │ │││  0x00007fb93cf8ab29:   mov    0x10(%rbp),%r11d
   0.14%              │ │││  0x00007fb93cf8ab2d:   mov    0x38(%rsp),%rbx
   0.91%              │ │││  0x00007fb93cf8ab32:   mov    0x48(%rsp),%rdi              ;*synchronization entry
                      │ │││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                      │ │││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                      │ │││                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                      │ │││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                      │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.06%              │ │││  0x00007fb93cf8ab37:   mov    %r11d,0x10(%rbx,%rdi,1)      ;*invokestatic opCode {reexecute=0 rethrow=0 return_oop=0}
                      │ │││                                                            ; - jdk.incubator.vector.IntVector::opCode@7 (line 63)
                      │ │││                                                            ; - jdk.incubator.vector.IntVector::lanewiseTemplate@207 (line 619)
                      │ │││                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 279)
                      │ │││                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                      │ │││                                                            ; - jdk.incubator.vector.IntVector::lanewise@43 (line 711)
                      │ │││                                                            ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
                      │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::test_value_vector@2 (line 233)
                      │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.97%              │ ↘││  0x00007fb93cf8ab3c:   mov    %r8d,%ebx
   0.17%              │  ││  0x00007fb93cf8ab3f:   add    $0xfffffffd,%ebx
   0.87%              │  ││  0x00007fb93cf8ab42:   cmp    %ebx,%r10d
   0.05%              │  ││  0x00007fb93cf8ab45:   mov    $0x80000000,%r10d
   0.90%              │  ││  0x00007fb93cf8ab4b:   cmovl  %r10d,%ebx
   0.14%              │  ││  0x00007fb93cf8ab4f:   cmp    $0x1,%ebx
                      │  ╰│  0x00007fb93cf8ab52:   jle    0x00007fb93cf8a8db
   0.97%              │   │  0x00007fb93cf8ab58:   mov    $0x1,%edi
   0.07%              │   │  0x00007fb93cf8ab5d:   data16 xchg %ax,%ax
   0.91%              │   ╰  0x00007fb93cf8ab60:   jmp    0x00007fb93cf8a8b9
                      ↘      0x00007fb93cf8ab65:   vmovdqu %ymm2,0xa0(%rsp)
                             0x00007fb93cf8ab6e:   vmovdqu %ymm4,0x80(%rsp)
                             0x00007fb93cf8ab77:   vmovdqu %ymm3,0x60(%rsp)
                             0x00007fb93cf8ab7d:   mov    %r11,%rbp
                             0x00007fb93cf8ab80:   add    $0x10,%rbp                   ;*synchronization entry
                                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@-1 (line 133)
                                                                                       ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                                       ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                                                                                       ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter@54 (line 117)
....................................................................................................
  96.91%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter, version 2, compile id 847 
   0.49%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.07%           libjvm.so  HeapRegionManager::par_iterate 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.05%           libjvm.so  HeapRegionClaimer::claim_region 
   0.05%           libjvm.so  OtherRegionsTable::is_empty 
   0.05%        libc-2.31.so  [unknown] 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%           libjvm.so  ObjArrayAllocator::initialize 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.03%           libjvm.so  SpinPause 
   0.03%                      <unknown> 
   1.77%  <...other 475 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.92%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_filter, version 2, compile id 847 
   1.36%              kernel  [unknown] 
   0.14%                      <unknown> 
   0.11%        libc-2.31.so  [unknown] 
   0.07%           libjvm.so  HeapRegionManager::par_iterate 
   0.07%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.05%           libjvm.so  ObjArrayAllocator::initialize 
   0.05%           libjvm.so  OtherRegionsTable::is_empty 
   0.05%           libjvm.so  HeapRegionClaimer::claim_region 
   0.04%              [vdso]  __vdso_clock_gettime 
   0.03%           libjvm.so  OptoRuntime::new_array_C 
   0.03%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.03%           libjvm.so  SpinPause 
   0.03%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.03%           libjvm.so  TypeArrayKlass::allocate_common 
   0.03%           libjvm.so  FreeCSetClosure::do_heap_region 
   0.02%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.02%           libjvm.so  G1RemSetScanState::G1ClearCardTableTask::do_work 
   0.85%  <...other 204 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.92%         c2, level 4
   1.36%              kernel
   1.20%           libjvm.so
   0.19%        libc-2.31.so
   0.14%                    
   0.06%  libpthread-2.31.so
   0.04%         interpreter
   0.04%              [vdso]
   0.03%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%      perf-26920.map
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.vectorized_matrix_mul
# Parameters: (size = 262144)

# Run progress: 66.67% complete, ETA 00:07:15
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 23315.252 us/op
# Warmup Iteration   2: 14603.052 us/op
# Warmup Iteration   3: 14602.861 us/op
# Warmup Iteration   4: 14604.923 us/op
# Warmup Iteration   5: 14604.785 us/op
Iteration   1: 14603.197 us/op
Iteration   2: 14504.192 us/op
Iteration   3: 14507.719 us/op
Iteration   4: 14394.752 us/op
Iteration   5: 14395.758 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.vectorized_matrix_mul":
  14481.124 ±(99.9%) 338.378 us/op [Average]
  (min, avg, max) = (14394.752, 14481.124, 14603.197), stdev = 87.876
  CI (99.9%): [14142.745, 14819.502] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.vectorized_matrix_mul:·asm":
PrintAssembly processed: 182789 total address lines.
Perf output processed (skipped 56.251 seconds):
 Column 1: cycles (50531 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 745 

                      0x00007f2140f8a94c:   mov    %r11,0x30(%rsp)
                      0x00007f2140f8a951:   cmp    (%rsp),%r11
                      0x00007f2140f8a955:   mov    0x20(%rsp),%ebp
                      0x00007f2140f8a959:   cmovg  %r10d,%ebp
                      0x00007f2140f8a95d:   movslq %r9d,%r11
                      0x00007f2140f8a960:   mov    %r11,0x38(%rsp)
                      0x00007f2140f8a965:   xor    %r11d,%r11d
                      0x00007f2140f8a968:   mov    %r9d,0x138(%rsp)
                      0x00007f2140f8a970:   mov    %r11d,0x13c(%rsp)
          ╭           0x00007f2140f8a978:   jmp    0x00007f2140f8a9a6
   0.00%  │↗ ↗        0x00007f2140f8a97a:   mov    0x348(%r15),%r8
   0.05%  ││ │        0x00007f2140f8a981:   mov    0x13c(%rsp),%r11d            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                  ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
          ││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.00%  ││ │        0x00007f2140f8a989:   inc    %r11d
   0.03%  ││ │        0x00007f2140f8a98c:   mov    %r11d,0x13c(%rsp)            ; ImmutableOopMap {rsi=Oop xmm0=Oop [8]=Oop [288]=Oop [296]=NarrowOop [300]=NarrowOop }
          ││ │                                                                  ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││ │                                                                  ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@685 (line 162)
          ││ │        0x00007f2140f8a994:   test   %eax,(%r8)                   ;   {poll}
   0.05%  ││ │        0x00007f2140f8a997:   cmp    %r10d,%r11d
          ││ │        0x00007f2140f8a99a:   nopw   0x0(%rax,%rax,1)
   0.04%  ││ │        0x00007f2140f8a9a0:   jge    0x00007f2140f8a852
   0.00%  ↘│ │        0x00007f2140f8a9a6:   mov    0x134(%rsp),%r11d
   0.03%   │ │        0x00007f2140f8a9ae:   cmp    0x28(%rsp),%r11d
           ╰ │        0x00007f2140f8a9b3:   jge    0x00007f2140f8a97a
             │        0x00007f2140f8a9b5:   mov    0x128(%rsp),%r11d
   0.05%     │        0x00007f2140f8a9bd:   data16 xchg %ax,%ax
             │        0x00007f2140f8a9c0:   mov    0xc(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007f2140f8b0e4
   0.04%     │        0x00007f2140f8a9c5:   mov    %r8d,%r11d
             │        0x00007f2140f8a9c8:   add    $0xfffffff9,%r11d
   0.05%     │        0x00007f2140f8a9cc:   test   %r11d,%r11d
             │        0x00007f2140f8a9cf:   jl     0x00007f2140f8b0e4
   0.00%     │        0x00007f2140f8a9d5:   mov    0x13c(%rsp),%r11d
   0.05%     │        0x00007f2140f8a9dd:   imul   %r10d,%r11d
             │        0x00007f2140f8a9e1:   mov    %r11d,0x2c(%rsp)
   0.06%     │        0x00007f2140f8a9e6:   movslq %r8d,%rcx
             │        0x00007f2140f8a9e9:   movslq %r11d,%r8
   0.04%     │        0x00007f2140f8a9ec:   mov    %r8,%r11
             │        0x00007f2140f8a9ef:   add    0x10(%rsp),%r11
   0.04%     │        0x00007f2140f8a9f4:   add    $0xfffffffffffffff9,%rcx
             │        0x00007f2140f8a9f8:   cmp    %rcx,%r11
   0.05%     │        0x00007f2140f8a9fb:   nopl   0x0(%rax,%rax,1)
             │        0x00007f2140f8aa00:   jae    0x00007f2140f8b0e4
   0.04%     │        0x00007f2140f8aa06:   mov    %r8,%r11
             │        0x00007f2140f8aa09:   add    0x18(%rsp),%r11
   0.05%     │        0x00007f2140f8aa0e:   add    $0xffffffffffffffc0,%r11
             │        0x00007f2140f8aa12:   cmp    %rcx,%r11
             │        0x00007f2140f8aa15:   jae    0x00007f2140f8b0e4
   0.03%     │        0x00007f2140f8aa1b:   mov    0x2c(%rsp),%r9d
             │        0x00007f2140f8aa20:   add    $0x38,%r9d
   0.07%     │        0x00007f2140f8aa24:   movslq %r9d,%r11
   0.00%     │        0x00007f2140f8aa27:   mov    %r11,%r9
   0.03%     │        0x00007f2140f8aa2a:   add    0x10(%rsp),%r9
             │        0x00007f2140f8aa2f:   cmp    %rcx,%r9
             │        0x00007f2140f8aa32:   jae    0x00007f2140f8b0e4
   0.06%     │        0x00007f2140f8aa38:   add    0x18(%rsp),%r11
             │        0x00007f2140f8aa3d:   add    $0xffffffffffffffc0,%r11
   0.04%     │        0x00007f2140f8aa41:   cmp    %rcx,%r11
             │        0x00007f2140f8aa44:   jae    0x00007f2140f8b0e4
             │        0x00007f2140f8aa4a:   mov    0x12c(%rsp),%r11d
   0.06%     │        0x00007f2140f8aa52:   mov    0xc(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f2140f8b0fc
   0.00%     │        0x00007f2140f8aa57:   mov    0x38(%rsp),%r11
   0.03%     │        0x00007f2140f8aa5c:   add    %r8,%r11
   0.01%     │        0x00007f2140f8aa5f:   movslq %ecx,%r9
   0.04%     │        0x00007f2140f8aa62:   cmp    %r9,%r11
             │        0x00007f2140f8aa65:   jae    0x00007f2140f8b0fc
             │        0x00007f2140f8aa6b:   mov    %r8,%r11
   0.04%     │        0x00007f2140f8aa6e:   add    0x30(%rsp),%r11
             │        0x00007f2140f8aa73:   dec    %r11
   0.04%     │        0x00007f2140f8aa76:   cmp    %r9,%r11
             │        0x00007f2140f8aa79:   jae    0x00007f2140f8b0fc
   0.00%     │        0x00007f2140f8aa7f:   add    $0xfffffff9,%ecx
   0.04%     │        0x00007f2140f8aa82:   test   %ecx,%ecx                    ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
             │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
             │        0x00007f2140f8aa84:   jl     0x00007f2140f8b0fc
             │        0x00007f2140f8aa8a:   mov    0x28(%rsp),%r11d
   0.03%     │        0x00007f2140f8aa8f:   cmp    $0x7fffffc0,%r11d
             │        0x00007f2140f8aa96:   jg     0x00007f2140f8b114
             │        0x00007f2140f8aa9c:   mov    0x134(%rsp),%edx
   0.04%    ╭│        0x00007f2140f8aaa3:   jmp    0x00007f2140f8ab0a           ;*invokestatic fromArray {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@93 (line 164)
   0.11%    ││↗    ↗  0x00007f2140f8aaa5:   mov    0x8(%rsp),%r11
   0.16%    │││    │  0x00007f2140f8aaaa:   mov    0x40(%rsp),%r9               ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            │││    │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
            │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.12%    │││    │  0x00007f2140f8aaaf:   vmovdqu %ymm2,0x10(%r11,%r9,4)      ;*invokevirtual fromArray0 {reexecute=0 rethrow=0 return_oop=0}
            │││    │                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
            │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@93 (line 164)
   0.27%    │││    │  0x00007f2140f8aab6:   vmovdqu %ymm3,0x30(%r11,%r13,4)     ;*invokestatic checkFromIndexSize {reexecute=0 rethrow=0 return_oop=0}
            │││    │                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
            │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@114 (line 165)
   0.10%    │││    │  0x00007f2140f8aabd:   vmovdqu %ymm9,0x50(%r11,%r13,4)     ;*invokeinterface length {reexecute=0 rethrow=0 return_oop=0}
            │││    │                                                            ; - jdk.incubator.vector.IntVector::fromArray@2 (line 2715)
            │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@114 (line 165)
   0.18%    │││    │  0x00007f2140f8aac4:   vmovdqu %ymm8,0x70(%r11,%r13,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            │││    │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
            │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.12%    │││    │  0x00007f2140f8aacb:   vmovdqu %ymm7,0x90(%r11,%r13,4)     ;*synchronization entry
            │││    │                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@-1 (line 3238)
            │││    │                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
            │││    │                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
            │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@93 (line 164)
   0.28%    │││    │  0x00007f2140f8aad5:   vmovdqu %ymm6,0xb0(%r11,%r13,4)     ;*invokevirtual vectorType {reexecute=0 rethrow=0 return_oop=0}
            │││    │                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@6 (line 3240)
            │││    │                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
            │││    │                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
            │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@93 (line 164)
   0.12%    │││    │  0x00007f2140f8aadf:   vmovdqu %ymm5,0xd0(%r11,%r13,4)     ;*invokevirtual dummyVector {reexecute=0 rethrow=0 return_oop=0}
            │││    │                                                            ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
            │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@93 (line 164)
   0.16%    │││    │  0x00007f2140f8aae9:   vmovdqu %ymm4,0xf0(%r11,%r13,4)     ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@47 (line 161)
   1.60%    │││    │  0x00007f2140f8aaf3:   mov    0x348(%r15),%r11             ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            │││    │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
            │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.31%    │││    │  0x00007f2140f8aafa:   add    $0x40,%edx                   ; ImmutableOopMap {rsi=Oop xmm0=Oop [8]=Oop [288]=Oop [296]=NarrowOop [300]=NarrowOop }
            │││    │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │││    │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@679 (line 163)
   0.09%    │││    │  0x00007f2140f8aafd:   test   %eax,(%r11)                  ;   {poll}
   0.86%    │││    │  0x00007f2140f8ab00:   cmp    0x28(%rsp),%edx
            │╰│    │  0x00007f2140f8ab04:   jge    0x00007f2140f8a97a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@37 (line 160)
   0.19%    ↘ │    │  0x00007f2140f8ab0a:   cmp    %r10d,%edx
              │    │  0x00007f2140f8ab0d:   jge    0x00007f2140f8b0c8
   0.27%      │    │  0x00007f2140f8ab13:   mov    %edx,%ebx
   0.12%      │    │  0x00007f2140f8ab15:   add    0x2c(%rsp),%ebx
   0.21%      │    │  0x00007f2140f8ab19:   movslq %edx,%r9
   0.09%      │    │  0x00007f2140f8ab1c:   mov    %r9,%r11
   0.29%      │    │  0x00007f2140f8ab1f:   add    %r8,%r11
   0.14%      │    │  0x00007f2140f8ab22:   mov    %r11,0x40(%rsp)
   0.19%      │    │  0x00007f2140f8ab27:   mov    0x8(%rsp),%r11
   0.11%      │    │  0x00007f2140f8ab2c:   mov    0x40(%rsp),%rdi              ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
              │    │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
              │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.28%      │    │  0x00007f2140f8ab31:   vmovdqu 0x10(%r11,%rdi,4),%ymm2     ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@70 (line 163)
   0.12%      │    │  0x00007f2140f8ab38:   movslq %ebx,%r13                    ;*invokestatic fromArray {reexecute=0 rethrow=0 return_oop=0}
              │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@114 (line 165)
   0.21%      │    │  0x00007f2140f8ab3b:   vmovdqu 0x30(%r11,%r13,4),%ymm3
   0.82%      │    │  0x00007f2140f8ab42:   vmovdqu 0xf0(%r11,%r13,4),%ymm4
   8.49%      │    │  0x00007f2140f8ab4c:   vmovdqu 0xd0(%r11,%r13,4),%ymm5
   0.07%      │    │  0x00007f2140f8ab56:   vmovdqu 0xb0(%r11,%r13,4),%ymm6
   1.12%      │    │  0x00007f2140f8ab60:   vmovdqu 0x90(%r11,%r13,4),%ymm7
   0.06%      │    │  0x00007f2140f8ab6a:   vmovdqu 0x70(%r11,%r13,4),%ymm8
   0.51%      │    │  0x00007f2140f8ab71:   vmovdqu 0x50(%r11,%r13,4),%ymm9     ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@70 (line 163)
   0.02%      │    │  0x00007f2140f8ab78:   mov    0x138(%rsp),%r11d
   0.28%      │    │  0x00007f2140f8ab80:   cmp    0x20(%rsp),%r11d             ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
              │    │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
              │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
              ╰    │  0x00007f2140f8ab85:   jge    0x00007f2140f8aaa5
   0.02%           │  0x00007f2140f8ab8b:   mov    0x138(%rsp),%edi             ;*invokevirtual vspecies {reexecute=0 rethrow=0 return_oop=0}
                   │                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@1 (line 3238)
                   │                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                   │                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@156 (line 167)
   0.39%       ↗   │  0x00007f2140f8ab92:   cmp    %r10d,%edi
               │   │  0x00007f2140f8ab95:   jge    0x00007f2140f8aff8
   0.03%       │   │  0x00007f2140f8ab9b:   mov    %edi,%r11d
   0.20%       │   │  0x00007f2140f8ab9e:   imul   %r10d,%r11d
   0.02%       │   │  0x00007f2140f8aba2:   mov    %r11d,%eax
   0.38%       │   │  0x00007f2140f8aba5:   add    %edx,%eax
   0.03%       │   │  0x00007f2140f8aba7:   movslq %edi,%rbx
   0.26%       │   │  0x00007f2140f8abaa:   add    %r8,%rbx                     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
               │   │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
               │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.01%       │   │  0x00007f2140f8abad:   vpbroadcastd 0x10(%rsi,%rbx,4),%ymm1;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
               │   │                                                            ; - java.util.Objects::checkIndex@3 (line 359)
               │   │                                                            ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 52)
               │   │                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
               │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@156 (line 167)
   0.93%       │   │  0x00007f2140f8abb4:   cmp    %ecx,%eax
               │   │  0x00007f2140f8abb6:   jae    0x00007f2140f8ae0f
   0.01%       │   │  0x00007f2140f8abbc:   movslq %r11d,%r11
   0.23%       │   │  0x00007f2140f8abbf:   add    %r9,%r11
   0.02%       │   │  0x00007f2140f8abc2:   vpmulld 0x10(%rsi,%r11,4),%ymm1,%ymm10;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
               │   │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
               │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   1.40%       │   │  0x00007f2140f8abc9:   vpaddd %ymm10,%ymm2,%ymm2           ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
               │   │                                                            ; - java.util.Objects::checkIndex@3 (line 359)
               │   │                                                            ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 52)
               │   │                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
               │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@156 (line 167)
   0.63%       │   │  0x00007f2140f8abce:   mov    %eax,%r11d
   0.28%       │   │  0x00007f2140f8abd1:   add    $0x38,%r11d
   0.00%       │   │  0x00007f2140f8abd5:   cmp    %ecx,%r11d
               │   │  0x00007f2140f8abd8:   jae    0x00007f2140f8ae8c           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
               │   │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
               │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.19%       │   │  0x00007f2140f8abde:   movslq %eax,%r11                    ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
               │   │                                                            ; - jdk.incubator.vector.AbstractSpecies::dummyVector@6 (line 296)
               │   │                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::dummyVector@1 (line 3606)
               │   │                                                            ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
               │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@156 (line 167)
   0.34%       │   │  0x00007f2140f8abe1:   vpmulld 0x30(%rsi,%r11,4),%ymm1,%ymm10
   2.03%       │   │  0x00007f2140f8abe8:   vpmulld 0xf0(%rsi,%r11,4),%ymm1,%ymm11
   1.34%       │   │  0x00007f2140f8abf2:   vpmulld 0x50(%rsi,%r11,4),%ymm1,%ymm12
   0.53%       │   │  0x00007f2140f8abf9:   vpmulld 0x70(%rsi,%r11,4),%ymm1,%ymm13
   0.57%       │   │  0x00007f2140f8ac00:   vpmulld 0x90(%rsi,%r11,4),%ymm1,%ymm14
   0.52%       │   │  0x00007f2140f8ac0a:   vpmulld 0xb0(%rsi,%r11,4),%ymm1,%ymm15
   0.65%       │   │  0x00007f2140f8ac14:   vpmulld 0xd0(%rsi,%r11,4),%ymm1,%ymm1;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
               │   │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
               │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.46%       │   │  0x00007f2140f8ac1e:   vpaddd %ymm10,%ymm3,%ymm3           ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
               │   │                                                            ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 52)
               │   │                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
               │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@156 (line 167)
   0.19%       │   │  0x00007f2140f8ac23:   vpaddd %ymm1,%ymm5,%ymm5
   0.15%       │   │  0x00007f2140f8ac27:   vpaddd %ymm15,%ymm6,%ymm6
   0.14%       │   │  0x00007f2140f8ac2c:   vpaddd %ymm14,%ymm7,%ymm7
   0.24%       │   │  0x00007f2140f8ac31:   vpaddd %ymm13,%ymm8,%ymm8
   0.25%       │   │  0x00007f2140f8ac36:   vpaddd %ymm12,%ymm9,%ymm9
   0.15%       │   │  0x00007f2140f8ac3b:   vpaddd %ymm11,%ymm4,%ymm4           ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
               │   │                                                            ; - java.util.Objects::checkIndex@3 (line 359)
               │   │                                                            ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 52)
               │   │                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
               │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@156 (line 167)
   0.11%       │   │  0x00007f2140f8ac40:   inc    %edi
   0.17%       │   │  0x00007f2140f8ac42:   cmp    0x24(%rsp),%edi              ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
               │   │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
               │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
               ╰   │  0x00007f2140f8ac46:   jl     0x00007f2140f8ab92
   0.23%           │  0x00007f2140f8ac4c:   cmp    %ebp,%edi
                ╭  │  0x00007f2140f8ac4e:   jge    0x00007f2140f8ad3d           ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
                │  │                                                            ; - java.util.Objects::checkIndex@3 (line 359)
                │  │                                                            ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 52)
                │  │                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
                │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@177 (line 168)
   0.15%        │ ↗│  0x00007f2140f8ac54:   mov    %ebp,%r11d
   0.10%        │ ││  0x00007f2140f8ac57:   sub    %edi,%r11d
   0.25%        │ ││  0x00007f2140f8ac5a:   xor    %eax,%eax
   0.20%        │ ││  0x00007f2140f8ac5c:   cmp    %edi,%ebp
   0.15%        │ ││  0x00007f2140f8ac5e:   cmovl  %eax,%r11d
   0.13%        │ ││  0x00007f2140f8ac62:   cmp    $0x3e8,%r11d
   0.22%        │ ││  0x00007f2140f8ac69:   mov    $0x3e8,%eax
   0.20%        │ ││  0x00007f2140f8ac6e:   cmova  %eax,%r11d
   0.24%        │ ││  0x00007f2140f8ac72:   add    %edi,%r11d
   0.18%        │ ││  0x00007f2140f8ac75:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@57 (line 162)
   1.64%        │↗││  0x00007f2140f8ac80:   mov    %edi,%ebx
   0.85%        ││││  0x00007f2140f8ac82:   imul   %r10d,%ebx
   0.85%        ││││  0x00007f2140f8ac86:   mov    %ebx,%eax
   1.45%        ││││  0x00007f2140f8ac88:   add    %edx,%eax
   1.48%        ││││  0x00007f2140f8ac8a:   movslq %edi,%r14
   0.92%        ││││  0x00007f2140f8ac8d:   add    %r8,%r14                     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.95%        ││││  0x00007f2140f8ac90:   vpbroadcastd 0x10(%rsi,%r14,4),%ymm1;*invokestatic checkFromIndexSize {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@93 (line 164)
   1.79%        ││││  0x00007f2140f8ac97:   cmp    %ecx,%eax
                ││││  0x00007f2140f8ac99:   jae    0x00007f2140f8ae0f
   1.58%        ││││  0x00007f2140f8ac9f:   movslq %ebx,%rbx
   0.92%        ││││  0x00007f2140f8aca2:   add    %r9,%rbx
   0.88%        ││││  0x00007f2140f8aca5:   vpmulld 0x10(%rsi,%rbx,4),%ymm1,%ymm10;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   5.11%        ││││  0x00007f2140f8acac:   vpaddd %ymm10,%ymm2,%ymm2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@37 (line 160)
   2.25%        ││││  0x00007f2140f8acb1:   mov    %eax,%ebx
   1.38%        ││││  0x00007f2140f8acb3:   add    $0x38,%ebx
   1.34%        ││││  0x00007f2140f8acb6:   cmp    %ecx,%ebx
                ││││  0x00007f2140f8acb8:   jae    0x00007f2140f8ae8c           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.81%        ││││  0x00007f2140f8acbe:   movslq %eax,%rbx                    ;*invokestatic fromArray {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@114 (line 165)
   1.68%        ││││  0x00007f2140f8acc1:   vpmulld 0x30(%rsi,%rbx,4),%ymm1,%ymm10
   4.60%        ││││  0x00007f2140f8acc8:   vpmulld 0xf0(%rsi,%rbx,4),%ymm1,%ymm11
   4.41%        ││││  0x00007f2140f8acd2:   vpmulld 0x50(%rsi,%rbx,4),%ymm1,%ymm12
   3.40%        ││││  0x00007f2140f8acd9:   vpmulld 0x70(%rsi,%rbx,4),%ymm1,%ymm13
   3.66%        ││││  0x00007f2140f8ace0:   vpmulld 0x90(%rsi,%rbx,4),%ymm1,%ymm14
   3.82%        ││││  0x00007f2140f8acea:   vpmulld 0xb0(%rsi,%rbx,4),%ymm1,%ymm15
   4.34%        ││││  0x00007f2140f8acf4:   vpmulld 0xd0(%rsi,%rbx,4),%ymm1,%ymm1;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   3.19%        ││││  0x00007f2140f8acfe:   vpaddd %ymm10,%ymm3,%ymm3
   1.75%        ││││  0x00007f2140f8ad03:   vpaddd %ymm1,%ymm5,%ymm5            ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@47 (line 161)
   0.97%        ││││  0x00007f2140f8ad07:   vpaddd %ymm15,%ymm6,%ymm6
   1.11%        ││││  0x00007f2140f8ad0c:   vpaddd %ymm14,%ymm7,%ymm7           ;*iconst_0 {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@40 (line 161)
   1.31%        ││││  0x00007f2140f8ad11:   vpaddd %ymm13,%ymm8,%ymm8           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   1.76%        ││││  0x00007f2140f8ad16:   vpaddd %ymm12,%ymm9,%ymm9           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@43 (line 161)
   0.92%        ││││  0x00007f2140f8ad1b:   vpaddd %ymm11,%ymm4,%ymm4
   0.93%        ││││  0x00007f2140f8ad20:   inc    %edi
   1.27%        ││││  0x00007f2140f8ad22:   cmp    %r11d,%edi
                │╰││  0x00007f2140f8ad25:   jl     0x00007f2140f8ac80
   0.27%        │ ││  0x00007f2140f8ad2b:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop xmm0=Oop [8]=Oop [288]=Oop [296]=NarrowOop [300]=NarrowOop }
                │ ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@532 (line 172)
   0.11%        │ ││  0x00007f2140f8ad32:   test   %eax,(%r11)                  ;   {poll}
   0.15%        │ ││  0x00007f2140f8ad35:   cmp    %ebp,%edi
                │ ╰│  0x00007f2140f8ad37:   jl     0x00007f2140f8ac54
   0.15%        ↘  │  0x00007f2140f8ad3d:   data16 xchg %ax,%ax
   0.29%           │  0x00007f2140f8ad40:   cmp    0x20(%rsp),%edi
                   ╰  0x00007f2140f8ad44:   jge    0x00007f2140f8aaa5           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
                      0x00007f2140f8ad4a:   xchg   %ax,%ax                      ;*synchronization entry
                                                                                ; - jdk.incubator.vector.IntVector::fromArray@-1 (line 2715)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@135 (line 166)
                      0x00007f2140f8ad4c:   cmp    %r10d,%edi
                      0x00007f2140f8ad4f:   jge    0x00007f2140f8b035
                      0x00007f2140f8ad55:   mov    %edi,%r11d
                      0x00007f2140f8ad58:   imul   %r10d,%r11d
....................................................................................................
  98.53%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 745 
   0.29%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.66%  <...other 242 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 745 
   1.13%              kernel  [unknown] 
   0.03%        libc-2.31.so  [unknown] 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%                      <unknown> 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  outputStream::update_position 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  G1Analytics::predict_card_scan_time_ms 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%         interpreter  new  187 new  
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%           libjvm.so  AbsSeq::davg 
   0.15%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.53%         c2, level 4
   1.13%              kernel
   0.20%           libjvm.so
   0.07%        libc-2.31.so
   0.02%         interpreter
   0.02%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%      perf-26975.map
   0.00%         c1, level 3
   0.00%              [vdso]
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.vectorized_matrix_mul
# Parameters: (size = 1048576)

# Run progress: 75.00% complete, ETA 00:05:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 400151.269 us/op
# Warmup Iteration   2: 139359.535 us/op
# Warmup Iteration   3: 138657.222 us/op
# Warmup Iteration   4: 139240.024 us/op
# Warmup Iteration   5: 138679.996 us/op
Iteration   1: 139287.323 us/op
Iteration   2: 139287.101 us/op
Iteration   3: 139257.211 us/op
Iteration   4: 139245.669 us/op
Iteration   5: 139263.954 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.vectorized_matrix_mul":
  139268.252 ±(99.9%) 71.247 us/op [Average]
  (min, avg, max) = (139245.669, 139268.252, 139287.323), stdev = 18.503
  CI (99.9%): [139197.005, 139339.498] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.vectorized_matrix_mul:·asm":
PrintAssembly processed: 193634 total address lines.
Perf output processed (skipped 56.530 seconds):
 Column 1: cycles (50755 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul, version 6, compile id 742 

                     0x00007f3594f92845:   je     0x00007f3594f9303c
                     0x00007f3594f9284b:   mov    %r11,%r10
                     0x00007f3594f9284e:   shl    $0x3,%r10                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@37 (line 160)
                     0x00007f3594f92852:   vzeroupper 
                     0x00007f3594f92855:   add    $0x170,%rsp
                     0x00007f3594f9285c:   pop    %rbp
                     0x00007f3594f9285d:   cmp    0x340(%r15),%rsp             ;   {poll_return}
                     0x00007f3594f92864:   ja     0x00007f3594f93070
                     0x00007f3594f9286a:   ret    
   0.01%  ↗ ↗        0x00007f3594f9286b:   mov    0x348(%r15),%r11
          │ │        0x00007f3594f92872:   mov    0x13c(%rsp),%r10d            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                  ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
          │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.02%  │ │        0x00007f3594f9287a:   inc    %r10d
   0.03%  │ │        0x00007f3594f9287d:   mov    %r10d,0x13c(%rsp)            ; ImmutableOopMap {rax=Oop xmm0=Oop [8]=Oop [288]=Oop [296]=NarrowOop [300]=NarrowOop }
          │ │                                                                  ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                                  ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@685 (line 162)
   0.01%  │ │        0x00007f3594f92885:   test   %eax,(%r11)                  ;   {poll}
   0.03%  │ │        0x00007f3594f92888:   cmp    %ecx,%r10d
          │ │        0x00007f3594f9288b:   jge    0x00007f3594f927be
   0.02%  │ │        0x00007f3594f92891:   mov    0x134(%rsp),%r10d
   0.04%  │ │        0x00007f3594f92899:   nopl   0x0(%rax)
   0.01%  │ │        0x00007f3594f928a0:   cmp    0x28(%rsp),%r10d
          ╰ │        0x00007f3594f928a5:   jge    0x00007f3594f9286b
   0.01%    │        0x00007f3594f928a7:   mov    0x128(%rsp),%r10d
   0.02%    │        0x00007f3594f928af:   mov    0xc(%r12,%r10,8),%r9d        ; implicit exception: dispatches to 0x00007f3594f92fcc
   0.07%    │        0x00007f3594f928b4:   mov    %r9d,%r11d
   0.00%    │        0x00007f3594f928b7:   add    $0xfffffff9,%r11d
   0.01%    │        0x00007f3594f928bb:   nopl   0x0(%rax,%rax,1)
   0.03%    │        0x00007f3594f928c0:   test   %r11d,%r11d
            │        0x00007f3594f928c3:   jl     0x00007f3594f92fcc
   0.04%    │        0x00007f3594f928c9:   mov    0x13c(%rsp),%r10d
   0.01%    │        0x00007f3594f928d1:   imul   %ecx,%r10d
   0.01%    │        0x00007f3594f928d5:   mov    %r10d,0x2c(%rsp)
   0.02%    │        0x00007f3594f928da:   movslq %r9d,%r8
   0.03%    │        0x00007f3594f928dd:   movslq %r10d,%r11
            │        0x00007f3594f928e0:   mov    %r11,%r10
   0.00%    │        0x00007f3594f928e3:   add    0x10(%rsp),%r10
   0.03%    │        0x00007f3594f928e8:   add    $0xfffffffffffffff9,%r8
   0.04%    │        0x00007f3594f928ec:   cmp    %r8,%r10
            │        0x00007f3594f928ef:   jae    0x00007f3594f92fcc
   0.01%    │        0x00007f3594f928f5:   mov    %r11,%r10
   0.00%    │        0x00007f3594f928f8:   add    0x18(%rsp),%r10
   0.03%    │        0x00007f3594f928fd:   add    $0xffffffffffffffc0,%r10
   0.02%    │        0x00007f3594f92901:   cmp    %r8,%r10
            │        0x00007f3594f92904:   jae    0x00007f3594f92fcc
   0.01%    │        0x00007f3594f9290a:   mov    0x2c(%rsp),%r10d
   0.01%    │        0x00007f3594f9290f:   add    $0x38,%r10d
   0.02%    │        0x00007f3594f92913:   movslq %r10d,%r10
   0.03%    │        0x00007f3594f92916:   mov    %r10,%r9
   0.01%    │        0x00007f3594f92919:   add    0x10(%rsp),%r9
            │        0x00007f3594f9291e:   xchg   %ax,%ax
   0.02%    │        0x00007f3594f92920:   cmp    %r8,%r9
            │        0x00007f3594f92923:   jae    0x00007f3594f92fcc
   0.03%    │        0x00007f3594f92929:   add    0x18(%rsp),%r10
   0.01%    │        0x00007f3594f9292e:   add    $0xffffffffffffffc0,%r10
   0.01%    │        0x00007f3594f92932:   cmp    %r8,%r10
            │        0x00007f3594f92935:   jae    0x00007f3594f92fcc
   0.01%    │        0x00007f3594f9293b:   mov    0x12c(%rsp),%r10d
   0.03%    │        0x00007f3594f92943:   mov    0xc(%r12,%r10,8),%r10d       ; implicit exception: dispatches to 0x00007f3594f92fe4
   0.01%    │        0x00007f3594f92948:   mov    0x38(%rsp),%r8
   0.01%    │        0x00007f3594f9294d:   add    %r11,%r8
   0.02%    │        0x00007f3594f92950:   movslq %r10d,%r9
   0.03%    │        0x00007f3594f92953:   cmp    %r9,%r8
            │        0x00007f3594f92956:   jae    0x00007f3594f92fe4
   0.01%    │        0x00007f3594f9295c:   mov    %r11,%r8
   0.00%    │        0x00007f3594f9295f:   add    0x30(%rsp),%r8
   0.04%    │        0x00007f3594f92964:   dec    %r8
   0.03%    │        0x00007f3594f92967:   cmp    %r9,%r8
            │        0x00007f3594f9296a:   jae    0x00007f3594f92fe4
   0.01%    │        0x00007f3594f92970:   add    $0xfffffff9,%r10d
            │        0x00007f3594f92974:   test   %r10d,%r10d                  ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            │                                                                  ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
            │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
            │        0x00007f3594f92977:   jl     0x00007f3594f92fe4
   0.02%    │        0x00007f3594f9297d:   mov    0x28(%rsp),%r8d
   0.03%    │        0x00007f3594f92982:   cmp    $0x7fffffc0,%r8d
            │        0x00007f3594f92989:   jg     0x00007f3594f92ffc
   0.01%    │        0x00007f3594f9298f:   mov    0x134(%rsp),%ebx
   0.01%   ╭│        0x00007f3594f92996:   jmp    0x00007f3594f929fd           ;*invokestatic fromArray {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@93 (line 164)
   0.44%   ││↗    ↗  0x00007f3594f92998:   mov    0x8(%rsp),%r8
   0.03%   │││    │  0x00007f3594f9299d:   mov    0x40(%rsp),%r9               ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │││    │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
           │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.10%   │││    │  0x00007f3594f929a2:   vmovdqu %ymm2,0x10(%r8,%r9,4)       ;*invokevirtual fromArray0 {reexecute=0 rethrow=0 return_oop=0}
           │││    │                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
           │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@93 (line 164)
   0.00%   │││    │  0x00007f3594f929a9:   vmovdqu %ymm3,0x30(%r8,%r13,4)      ;*invokestatic checkFromIndexSize {reexecute=0 rethrow=0 return_oop=0}
           │││    │                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
           │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@114 (line 165)
   0.45%   │││    │  0x00007f3594f929b0:   vmovdqu %ymm9,0x50(%r8,%r13,4)      ;*invokeinterface length {reexecute=0 rethrow=0 return_oop=0}
           │││    │                                                            ; - jdk.incubator.vector.IntVector::fromArray@2 (line 2715)
           │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@114 (line 165)
   0.04%   │││    │  0x00007f3594f929b7:   vmovdqu %ymm8,0x70(%r8,%r13,4)      ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │││    │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
           │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.08%   │││    │  0x00007f3594f929be:   vmovdqu %ymm7,0x90(%r8,%r13,4)      ;*synchronization entry
           │││    │                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@-1 (line 3238)
           │││    │                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
           │││    │                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
           │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@93 (line 164)
   0.00%   │││    │  0x00007f3594f929c8:   vmovdqu %ymm6,0xb0(%r8,%r13,4)      ;*invokevirtual vectorType {reexecute=0 rethrow=0 return_oop=0}
           │││    │                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@6 (line 3240)
           │││    │                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
           │││    │                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
           │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@93 (line 164)
   0.41%   │││    │  0x00007f3594f929d2:   vmovdqu %ymm5,0xd0(%r8,%r13,4)      ;*invokevirtual dummyVector {reexecute=0 rethrow=0 return_oop=0}
           │││    │                                                            ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
           │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@93 (line 164)
   0.04%   │││    │  0x00007f3594f929dc:   vmovdqu %ymm4,0xf0(%r8,%r13,4)      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@47 (line 161)
   1.71%   │││    │  0x00007f3594f929e6:   mov    0x348(%r15),%r8              ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │││    │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
           │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.07%   │││    │  0x00007f3594f929ed:   add    $0x40,%ebx                   ; ImmutableOopMap {rax=Oop xmm0=Oop [8]=Oop [288]=Oop [296]=NarrowOop [300]=NarrowOop }
           │││    │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │││    │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@679 (line 163)
   0.43%   │││    │  0x00007f3594f929f0:   test   %eax,(%r8)                   ;   {poll}
   0.66%   │││    │  0x00007f3594f929f3:   cmp    0x28(%rsp),%ebx
           │╰│    │  0x00007f3594f929f7:   jge    0x00007f3594f9286b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@37 (line 160)
   0.19%   ↘ │    │  0x00007f3594f929fd:   data16 xchg %ax,%ax
   0.03%     │    │  0x00007f3594f92a00:   cmp    %ecx,%ebx
             │    │  0x00007f3594f92a02:   jge    0x00007f3594f92fb0
   0.40%     │    │  0x00007f3594f92a08:   mov    %ebx,%r8d
   0.05%     │    │  0x00007f3594f92a0b:   add    0x2c(%rsp),%r8d
   0.12%     │    │  0x00007f3594f92a10:   movslq %ebx,%r9
   0.04%     │    │  0x00007f3594f92a13:   mov    %r9,%rdi
   0.38%     │    │  0x00007f3594f92a16:   add    %r11,%rdi
   0.04%     │    │  0x00007f3594f92a19:   mov    %rdi,0x40(%rsp)
   0.12%     │    │  0x00007f3594f92a1e:   mov    0x8(%rsp),%rdi
   0.03%     │    │  0x00007f3594f92a23:   mov    0x40(%rsp),%rdx              ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
             │    │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
             │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.43%     │    │  0x00007f3594f92a28:   vmovdqu 0x10(%rdi,%rdx,4),%ymm2     ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@70 (line 163)
   2.46%     │    │  0x00007f3594f92a2e:   movslq %r8d,%r13                    ;*invokestatic fromArray {reexecute=0 rethrow=0 return_oop=0}
             │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@114 (line 165)
   0.08%     │    │  0x00007f3594f92a31:   vmovdqu 0x30(%rdi,%r13,4),%ymm3
   0.95%     │    │  0x00007f3594f92a38:   vmovdqu 0xf0(%rdi,%r13,4),%ymm4
   3.98%     │    │  0x00007f3594f92a42:   vmovdqu 0xd0(%rdi,%r13,4),%ymm5
   0.07%     │    │  0x00007f3594f92a4c:   vmovdqu 0xb0(%rdi,%r13,4),%ymm6
   0.39%     │    │  0x00007f3594f92a56:   vmovdqu 0x90(%rdi,%r13,4),%ymm7
   0.07%     │    │  0x00007f3594f92a60:   vmovdqu 0x70(%rdi,%r13,4),%ymm8
   0.63%     │    │  0x00007f3594f92a67:   vmovdqu 0x50(%rdi,%r13,4),%ymm9     ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@70 (line 163)
   0.05%     │    │  0x00007f3594f92a6e:   mov    0x138(%rsp),%r8d
   0.11%     │    │  0x00007f3594f92a76:   data16 nopw 0x0(%rax,%rax,1)
   0.04%     │    │  0x00007f3594f92a80:   cmp    0x20(%rsp),%r8d              ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
             │    │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
             │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
             ╰    │  0x00007f3594f92a85:   jge    0x00007f3594f92998
   0.44%          │  0x00007f3594f92a8b:   mov    0x138(%rsp),%edx             ;*invokevirtual vspecies {reexecute=0 rethrow=0 return_oop=0}
                  │                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@1 (line 3238)
                  │                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                  │                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@156 (line 167)
   0.04%      ↗   │  0x00007f3594f92a92:   cmp    %ecx,%edx
              │   │  0x00007f3594f92a94:   jge    0x00007f3594f92edf
   0.10%      │   │  0x00007f3594f92a9a:   mov    %edx,%ebp
   0.04%      │   │  0x00007f3594f92a9c:   imul   %ecx,%ebp
   0.37%      │   │  0x00007f3594f92a9f:   mov    %ebp,%r8d
   0.03%      │   │  0x00007f3594f92aa2:   add    %ebx,%r8d
   0.09%      │   │  0x00007f3594f92aa5:   movslq %edx,%rdi
   0.05%      │   │  0x00007f3594f92aa8:   add    %r11,%rdi                    ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
              │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.38%      │   │  0x00007f3594f92aab:   vpbroadcastd 0x10(%rax,%rdi,4),%ymm1;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - java.util.Objects::checkIndex@3 (line 359)
              │   │                                                            ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 52)
              │   │                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
              │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@156 (line 167)
   0.42%      │   │  0x00007f3594f92ab2:   cmp    %r10d,%r8d
              │   │  0x00007f3594f92ab5:   jae    0x00007f3594f92cfd
   0.11%      │   │  0x00007f3594f92abb:   movslq %ebp,%rdi
   0.04%      │   │  0x00007f3594f92abe:   add    %r9,%rdi
   0.38%      │   │  0x00007f3594f92ac1:   vpmulld 0x10(%rax,%rdi,4),%ymm1,%ymm10;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
              │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.92%      │   │  0x00007f3594f92ac8:   vpaddd %ymm10,%ymm2,%ymm2           ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - java.util.Objects::checkIndex@3 (line 359)
              │   │                                                            ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 52)
              │   │                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
              │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@156 (line 167)
   0.81%      │   │  0x00007f3594f92acd:   mov    %r8d,%ebp
   0.03%      │   │  0x00007f3594f92ad0:   add    $0x38,%ebp
   0.07%      │   │  0x00007f3594f92ad3:   cmp    %r10d,%ebp
              │   │  0x00007f3594f92ad6:   jae    0x00007f3594f92d78           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
              │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.04%      │   │  0x00007f3594f92adc:   movslq %r8d,%r8                     ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.incubator.vector.AbstractSpecies::dummyVector@6 (line 296)
              │   │                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::dummyVector@1 (line 3606)
              │   │                                                            ; - jdk.incubator.vector.IntVector::fromArray@19 (line 2717)
              │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@156 (line 167)
   0.52%      │   │  0x00007f3594f92adf:   vpmulld 0x30(%rax,%r8,4),%ymm1,%ymm10
   2.35%      │   │  0x00007f3594f92ae6:   vpmulld 0xf0(%rax,%r8,4),%ymm1,%ymm11
   2.94%      │   │  0x00007f3594f92af0:   vpmulld 0x50(%rax,%r8,4),%ymm1,%ymm12
   0.32%      │   │  0x00007f3594f92af7:   vpmulld 0x70(%rax,%r8,4),%ymm1,%ymm13
   1.18%      │   │  0x00007f3594f92afe:   vpmulld 0x90(%rax,%r8,4),%ymm1,%ymm14
   0.33%      │   │  0x00007f3594f92b08:   vpmulld 0xb0(%rax,%r8,4),%ymm1,%ymm15
   0.94%      │   │  0x00007f3594f92b12:   vpmulld 0xd0(%rax,%r8,4),%ymm1,%ymm1;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
              │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.32%      │   │  0x00007f3594f92b1c:   vpaddd %ymm10,%ymm3,%ymm3           ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 52)
              │   │                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
              │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@156 (line 167)
   0.27%      │   │  0x00007f3594f92b21:   vpaddd %ymm1,%ymm5,%ymm5
   0.08%      │   │  0x00007f3594f92b25:   vpaddd %ymm15,%ymm6,%ymm6
   0.21%      │   │  0x00007f3594f92b2a:   vpaddd %ymm14,%ymm7,%ymm7
   0.01%      │   │  0x00007f3594f92b2f:   vpaddd %ymm13,%ymm8,%ymm8
   0.32%      │   │  0x00007f3594f92b34:   vpaddd %ymm12,%ymm9,%ymm9
   0.09%      │   │  0x00007f3594f92b39:   vpaddd %ymm11,%ymm4,%ymm4           ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - java.util.Objects::checkIndex@3 (line 359)
              │   │                                                            ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 52)
              │   │                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
              │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@156 (line 167)
   0.18%      │   │  0x00007f3594f92b3e:   inc    %edx
   0.01%      │   │  0x00007f3594f92b40:   cmp    0x24(%rsp),%edx              ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
              │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
              ╰   │  0x00007f3594f92b44:   jl     0x00007f3594f92a92
   0.30%          │  0x00007f3594f92b4a:   cmp    %esi,%edx
               ╭  │  0x00007f3594f92b4c:   jge    0x00007f3594f92c31           ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                            ; - java.util.Objects::checkIndex@3 (line 359)
               │  │                                                            ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 52)
               │  │                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
               │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@177 (line 168)
   0.06%       │ ↗│  0x00007f3594f92b52:   mov    %esi,%ebp
   0.14%       │ ││  0x00007f3594f92b54:   sub    %edx,%ebp
               │ ││  0x00007f3594f92b56:   xor    %r8d,%r8d
   0.32%       │ ││  0x00007f3594f92b59:   cmp    %edx,%esi
   0.07%       │ ││  0x00007f3594f92b5b:   cmovl  %r8d,%ebp
   0.19%       │ ││  0x00007f3594f92b5f:   cmp    $0x3e8,%ebp
   0.02%       │ ││  0x00007f3594f92b65:   mov    $0x3e8,%r8d
   0.28%       │ ││  0x00007f3594f92b6b:   cmova  %r8d,%ebp
   0.28%       │ ││  0x00007f3594f92b6f:   add    %edx,%ebp                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@57 (line 162)
   1.92%       │↗││  0x00007f3594f92b71:   mov    %edx,%edi
   0.86%       ││││  0x00007f3594f92b73:   imul   %ecx,%edi
   0.69%       ││││  0x00007f3594f92b76:   mov    %edi,%r8d
   0.47%       ││││  0x00007f3594f92b79:   add    %ebx,%r8d
   1.99%       ││││  0x00007f3594f92b7c:   movslq %edx,%r14
   0.87%       ││││  0x00007f3594f92b7f:   add    %r11,%r14                    ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
               ││││                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
               ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.69%       ││││  0x00007f3594f92b82:   vpbroadcastd 0x10(%rax,%r14,4),%ymm1;*invokestatic checkFromIndexSize {reexecute=0 rethrow=0 return_oop=0}
               ││││                                                            ; - jdk.incubator.vector.IntVector::fromArray@9 (line 2715)
               ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@93 (line 164)
   1.03%       ││││  0x00007f3594f92b89:   cmp    %r10d,%r8d
               ││││  0x00007f3594f92b8c:   jae    0x00007f3594f92cfd
   1.94%       ││││  0x00007f3594f92b92:   movslq %edi,%rdi
   0.86%       ││││  0x00007f3594f92b95:   add    %r9,%rdi
   0.63%       ││││  0x00007f3594f92b98:   vpmulld 0x10(%rax,%rdi,4),%ymm1,%ymm10;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
               ││││                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
               ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   4.08%       ││││  0x00007f3594f92b9f:   vpaddd %ymm10,%ymm2,%ymm2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@37 (line 160)
   1.31%       ││││  0x00007f3594f92ba4:   mov    %r8d,%edi
   0.47%       ││││  0x00007f3594f92ba7:   add    $0x38,%edi
   1.84%       ││││  0x00007f3594f92baa:   cmp    %r10d,%edi
               ││││  0x00007f3594f92bad:   jae    0x00007f3594f92d78           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
               ││││                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
               ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   0.86%       ││││  0x00007f3594f92bb3:   movslq %r8d,%r8                     ;*invokestatic fromArray {reexecute=0 rethrow=0 return_oop=0}
               ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@114 (line 165)
   1.05%       ││││  0x00007f3594f92bb6:   vpmulld 0x30(%rax,%r8,4),%ymm1,%ymm10
   5.82%       ││││  0x00007f3594f92bbd:   vpmulld 0xf0(%rax,%r8,4),%ymm1,%ymm11
  12.59%       ││││  0x00007f3594f92bc7:   vpmulld 0x50(%rax,%r8,4),%ymm1,%ymm12
   1.59%       ││││  0x00007f3594f92bce:   vpmulld 0x70(%rax,%r8,4),%ymm1,%ymm13
   5.78%       ││││  0x00007f3594f92bd5:   vpmulld 0x90(%rax,%r8,4),%ymm1,%ymm14
   3.21%       ││││  0x00007f3594f92bdf:   vpmulld 0xb0(%rax,%r8,4),%ymm1,%ymm15
   5.05%       ││││  0x00007f3594f92be9:   vpmulld 0xd0(%rax,%r8,4),%ymm1,%ymm1;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
               ││││                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
               ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   1.67%       ││││  0x00007f3594f92bf3:   vpaddd %ymm10,%ymm3,%ymm3
   2.46%       ││││  0x00007f3594f92bf8:   vpaddd %ymm1,%ymm5,%ymm5            ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@47 (line 161)
   0.64%       ││││  0x00007f3594f92bfc:   vpaddd %ymm15,%ymm6,%ymm6
   0.85%       ││││  0x00007f3594f92c01:   vpaddd %ymm14,%ymm7,%ymm7           ;*iconst_0 {reexecute=0 rethrow=0 return_oop=0}
               ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@40 (line 161)
   0.33%       ││││  0x00007f3594f92c06:   vpaddd %ymm13,%ymm8,%ymm8           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
               ││││                                                            ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
               ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
   2.37%       ││││  0x00007f3594f92c0b:   vpaddd %ymm12,%ymm9,%ymm9           ;*iload {reexecute=0 rethrow=0 return_oop=0}
               ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@43 (line 161)
   0.63%       ││││  0x00007f3594f92c10:   vpaddd %ymm11,%ymm4,%ymm4
   0.69%       ││││  0x00007f3594f92c15:   inc    %edx
   0.34%       ││││  0x00007f3594f92c17:   cmp    %ebp,%edx
               │╰││  0x00007f3594f92c19:   jl     0x00007f3594f92b71
   0.42%       │ ││  0x00007f3594f92c1f:   mov    0x348(%r15),%r8              ; ImmutableOopMap {rax=Oop xmm0=Oop [8]=Oop [288]=Oop [296]=NarrowOop [300]=NarrowOop }
               │ ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
               │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@532 (line 172)
   0.05%       │ ││  0x00007f3594f92c26:   test   %eax,(%r8)                   ;   {poll}
   0.09%       │ ││  0x00007f3594f92c29:   cmp    %esi,%edx
               │ ╰│  0x00007f3594f92c2b:   jl     0x00007f3594f92b52
   0.00%       ↘  │  0x00007f3594f92c31:   cmp    0x20(%rsp),%edx
                  ╰  0x00007f3594f92c35:   jge    0x00007f3594f92998           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.incubator.vector.IntVector::intoArray@42 (line 2990)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@673 (line 214)
                     0x00007f3594f92c3b:   nop                                 ;*synchronization entry
                                                                               ; - jdk.incubator.vector.IntVector::fromArray@-1 (line 2715)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul@135 (line 166)
                     0x00007f3594f92c3c:   nopl   0x0(%rax)
                     0x00007f3594f92c40:   cmp    %ecx,%edx
                     0x00007f3594f92c42:   jge    0x00007f3594f92f1c
                     0x00007f3594f92c48:   mov    %edx,%ebp
....................................................................................................
  98.30%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.30%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul, version 6, compile id 742 
   0.56%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  OtherRegionsTable::occupied 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  AbsSeq::dsd 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  G1Analytics::predict_young_other_time_ms 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.65%  <...other 236 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.30%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_matrix_mul, version 6, compile id 742 
   1.27%              kernel  [unknown] 
   0.05%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.03%           libjvm.so  OtherRegionsTable::occupied 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%        libc-2.31.so  __strxfrm_l 
   0.02%                      <unknown> 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  AbsSeq::dsd 
   0.01%        libc-2.31.so  [unknown] 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  G1CollectionSet::update_young_region_prediction 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  G1Analytics::predict_young_other_time_ms 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%           libjvm.so  G1Analytics::predict_card_scan_time_ms 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  outputStream::update_position 
   0.13%  <...other 53 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.30%         c2, level 4
   1.27%              kernel
   0.26%           libjvm.so
   0.08%        libc-2.31.so
   0.02%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.vectorized_sum
# Parameters: (size = 262144)

# Run progress: 83.33% complete, ETA 00:03:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 98.805 us/op
# Warmup Iteration   2: 89.496 us/op
# Warmup Iteration   3: 89.552 us/op
# Warmup Iteration   4: 89.736 us/op
# Warmup Iteration   5: 89.757 us/op
Iteration   1: 89.569 us/op
Iteration   2: 89.681 us/op
Iteration   3: 89.653 us/op
Iteration   4: 89.616 us/op
Iteration   5: 89.661 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.vectorized_sum":
  89.636 ±(99.9%) 0.170 us/op [Average]
  (min, avg, max) = (89.569, 89.636, 89.681), stdev = 0.044
  CI (99.9%): [89.466, 89.806] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.vectorized_sum:·asm":
PrintAssembly processed: 145230 total address lines.
Perf output processed (skipped 56.177 seconds):
 Column 1: cycles (50683 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_sum, version 2, compile id 688 

             0x00007f323cf77f66:   xor    %esi,%esi
             0x00007f323cf77f68:   cmp    %ebp,%ebx
             0x00007f323cf77f6a:   cmovl  %esi,%edx
             0x00007f323cf77f6d:   cmp    $0x1f400,%edx
             0x00007f323cf77f73:   mov    $0x1f400,%esi
             0x00007f323cf77f78:   cmova  %esi,%edx
             0x00007f323cf77f7b:   add    %ebp,%edx
             0x00007f323cf77f7d:   mov    %r8d,(%rsp)
             0x00007f323cf77f81:   mov    %r9d,0x4(%rsp)
             0x00007f323cf77f86:   mov    %ecx,0x10(%rsp)
   0.00%     0x00007f323cf77f8a:   mov    %edi,0x14(%rsp)
             0x00007f323cf77f8e:   mov    %ebx,0x18(%rsp)
             0x00007f323cf77f92:   mov    %edx,0x1c(%rsp)
   0.00%     0x00007f323cf77f96:   data16 nopw 0x0(%rax,%rax,1)        ;*getstatic INT_VECTOR_SPECIES {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_sum@23 (line 85)
   0.00%  ↗  0x00007f323cf77fa0:   vmovdqu 0x130(%r10,%rbp,4),%ymm0
   3.46%  │  0x00007f323cf77faa:   vmovdqu 0xd0(%r10,%rbp,4),%ymm1
   2.32%  │  0x00007f323cf77fb4:   vmovdqu 0x30(%r10,%rbp,4),%ymm2
   0.34%  │  0x00007f323cf77fbb:   vmovdqu %ymm2,0x20(%rsp)
   0.11%  │  0x00007f323cf77fc1:   vmovdqu 0x10(%r10,%rbp,4),%ymm2
   0.16%  │  0x00007f323cf77fc8:   vmovdqu %ymm2,0x40(%rsp)
   0.49%  │  0x00007f323cf77fce:   vmovdqu 0x1f0(%r10,%rbp,4),%ymm2
   3.60%  │  0x00007f323cf77fd8:   vmovdqu 0x1d0(%r10,%rbp,4),%ymm3
   0.32%  │  0x00007f323cf77fe2:   vmovdqu 0x1b0(%r10,%rbp,4),%ymm4
   0.19%  │  0x00007f323cf77fec:   vmovdqu 0x190(%r10,%rbp,4),%ymm5
   0.64%  │  0x00007f323cf77ff6:   vmovdqu 0x170(%r10,%rbp,4),%ymm6
   0.48%  │  0x00007f323cf78000:   vmovdqu 0x150(%r10,%rbp,4),%ymm7
   0.28%  │  0x00007f323cf7800a:   vmovdqu 0x110(%r10,%rbp,4),%ymm8
   0.21%  │  0x00007f323cf78014:   vmovdqu 0xf0(%r10,%rbp,4),%ymm9
   0.26%  │  0x00007f323cf7801e:   vmovdqu 0xb0(%r10,%rbp,4),%ymm10
   0.37%  │  0x00007f323cf78028:   vmovdqu 0x90(%r10,%rbp,4),%ymm11
   0.46%  │  0x00007f323cf78032:   vmovdqu 0x70(%r10,%rbp,4),%ymm12
   0.15%  │  0x00007f323cf78039:   vmovdqu 0x50(%r10,%rbp,4),%ymm13
   0.25%  │  0x00007f323cf78040:   vmovdqu %ymm13,0x60(%rsp)
   0.44%  │  0x00007f323cf78046:   xor    %r9d,%r9d
   0.10%  │  0x00007f323cf78049:   vphaddd %ymm0,%ymm0,%ymm15
   1.09%  │  0x00007f323cf7804e:   vextracti128 $0x1,%ymm15,%xmm14
   0.11%  │  0x00007f323cf78054:   vpaddd %xmm14,%xmm15,%xmm15
   0.59%  │  0x00007f323cf78059:   vphaddd %xmm15,%xmm15,%xmm15
   1.27%  │  0x00007f323cf7805e:   vmovd  %r9d,%xmm14
   0.08%  │  0x00007f323cf78063:   vpaddd %xmm14,%xmm15,%xmm15
   0.44%  │  0x00007f323cf78068:   vmovd  %xmm15,%r8d
   0.32%  │  0x00007f323cf7806d:   mov    %r8d,0x8(%rsp)
   0.21%  │  0x00007f323cf78072:   vphaddd %ymm1,%ymm1,%ymm0
   0.78%  │  0x00007f323cf78077:   vextracti128 $0x1,%ymm0,%xmm13
   0.22%  │  0x00007f323cf7807d:   vpaddd %xmm13,%xmm0,%xmm0
   0.24%  │  0x00007f323cf78082:   vphaddd %xmm0,%xmm0,%xmm0
   1.11%  │  0x00007f323cf78087:   vmovd  %r9d,%xmm13
   0.04%  │  0x00007f323cf7808c:   vpaddd %xmm13,%xmm0,%xmm0
   0.33%  │  0x00007f323cf78091:   vmovd  %xmm0,%r9d
   0.30%  │  0x00007f323cf78096:   mov    %r9d,0xc(%rsp)
   0.35%  │  0x00007f323cf7809b:   xor    %r9d,%r9d
   0.05%  │  0x00007f323cf7809e:   vphaddd %ymm2,%ymm2,%ymm0
   0.82%  │  0x00007f323cf780a3:   vextracti128 $0x1,%ymm0,%xmm1
   0.04%  │  0x00007f323cf780a9:   vpaddd %xmm1,%xmm0,%xmm0
   1.04%  │  0x00007f323cf780ad:   vphaddd %xmm0,%xmm0,%xmm0
   1.39%  │  0x00007f323cf780b2:   vmovd  %r9d,%xmm1
   0.11%  │  0x00007f323cf780b7:   vpaddd %xmm1,%xmm0,%xmm0
   0.46%  │  0x00007f323cf780bb:   vmovd  %xmm0,%r8d
   0.28%  │  0x00007f323cf780c0:   vmovd  %r8d,%xmm2
   0.86%  │  0x00007f323cf780c5:   vphaddd %ymm3,%ymm3,%ymm0
   0.57%  │  0x00007f323cf780ca:   vextracti128 $0x1,%ymm0,%xmm1
   0.32%  │  0x00007f323cf780d0:   vpaddd %xmm1,%xmm0,%xmm0
   0.10%  │  0x00007f323cf780d4:   vphaddd %xmm0,%xmm0,%xmm0
   0.85%  │  0x00007f323cf780d9:   vmovd  %r9d,%xmm1
   0.14%  │  0x00007f323cf780de:   vpaddd %xmm1,%xmm0,%xmm0
   0.22%  │  0x00007f323cf780e2:   vmovd  %xmm0,%r8d
   0.22%  │  0x00007f323cf780e7:   vmovd  %r8d,%xmm3
   0.60%  │  0x00007f323cf780ec:   vphaddd %ymm4,%ymm4,%ymm0
   0.48%  │  0x00007f323cf780f1:   vextracti128 $0x1,%ymm0,%xmm1
   0.46%  │  0x00007f323cf780f7:   vpaddd %xmm1,%xmm0,%xmm0
   0.20%  │  0x00007f323cf780fb:   vphaddd %xmm0,%xmm0,%xmm0
   1.08%  │  0x00007f323cf78100:   vmovd  %r9d,%xmm1
   0.08%  │  0x00007f323cf78105:   vpaddd %xmm1,%xmm0,%xmm0
   0.29%  │  0x00007f323cf78109:   vmovd  %xmm0,%r9d
   0.19%  │  0x00007f323cf7810e:   vmovd  %r9d,%xmm4
   1.16%  │  0x00007f323cf78113:   xor    %r9d,%r9d
   0.02%  │  0x00007f323cf78116:   vphaddd %ymm5,%ymm5,%ymm0
   0.92%  │  0x00007f323cf7811b:   vextracti128 $0x1,%ymm0,%xmm1
   0.01%  │  0x00007f323cf78121:   vpaddd %xmm1,%xmm0,%xmm0
   0.07%  │  0x00007f323cf78125:   vphaddd %xmm0,%xmm0,%xmm0
   1.56%  │  0x00007f323cf7812a:   vmovd  %r9d,%xmm1
   0.02%  │  0x00007f323cf7812f:   vpaddd %xmm1,%xmm0,%xmm0
   0.42%  │  0x00007f323cf78133:   vmovd  %xmm0,%r14d
   0.50%  │  0x00007f323cf78138:   vphaddd %ymm6,%ymm6,%ymm0
   0.47%  │  0x00007f323cf7813d:   vextracti128 $0x1,%ymm0,%xmm1
   0.49%  │  0x00007f323cf78143:   vpaddd %xmm1,%xmm0,%xmm0
   0.12%  │  0x00007f323cf78147:   vphaddd %xmm0,%xmm0,%xmm0
   2.12%  │  0x00007f323cf7814c:   vmovd  %r9d,%xmm1
          │  0x00007f323cf78151:   vpaddd %xmm1,%xmm0,%xmm0
   0.45%  │  0x00007f323cf78155:   vmovd  %xmm0,%r9d
   0.18%  │  0x00007f323cf7815a:   xor    %ecx,%ecx
   0.21%  │  0x00007f323cf7815c:   vphaddd %ymm7,%ymm7,%ymm0
   0.67%  │  0x00007f323cf78161:   vextracti128 $0x1,%ymm0,%xmm1
   0.22%  │  0x00007f323cf78167:   vpaddd %xmm1,%xmm0,%xmm0
   0.24%  │  0x00007f323cf7816b:   vphaddd %xmm0,%xmm0,%xmm0
   2.23%  │  0x00007f323cf78170:   vmovd  %ecx,%xmm1
          │  0x00007f323cf78174:   vpaddd %xmm1,%xmm0,%xmm0
   0.54%  │  0x00007f323cf78178:   vmovd  %xmm0,%r8d
   0.14%  │  0x00007f323cf7817d:   xor    %ebx,%ebx
   0.17%  │  0x00007f323cf7817f:   vphaddd %ymm8,%ymm8,%ymm0
   0.81%  │  0x00007f323cf78184:   vextracti128 $0x1,%ymm0,%xmm1
   0.17%  │  0x00007f323cf7818a:   vpaddd %xmm1,%xmm0,%xmm0
   0.29%  │  0x00007f323cf7818e:   vphaddd %xmm0,%xmm0,%xmm0
   2.50%  │  0x00007f323cf78193:   vmovd  %ebx,%xmm1
   0.00%  │  0x00007f323cf78197:   vpaddd %xmm1,%xmm0,%xmm0
   0.68%  │  0x00007f323cf7819b:   vmovd  %xmm0,%ebx
   0.10%  │  0x00007f323cf7819f:   xor    %edi,%edi
   0.09%  │  0x00007f323cf781a1:   vphaddd %ymm9,%ymm9,%ymm0
   0.83%  │  0x00007f323cf781a6:   vextracti128 $0x1,%ymm0,%xmm1
   0.07%  │  0x00007f323cf781ac:   vpaddd %xmm1,%xmm0,%xmm0
   0.16%  │  0x00007f323cf781b0:   vphaddd %xmm0,%xmm0,%xmm0
   2.56%  │  0x00007f323cf781b5:   vmovd  %edi,%xmm1
          │  0x00007f323cf781b9:   vpaddd %xmm1,%xmm0,%xmm0
   0.65%  │  0x00007f323cf781bd:   vmovd  %xmm0,%ecx
   0.09%  │  0x00007f323cf781c1:   xor    %edx,%edx
   0.03%  │  0x00007f323cf781c3:   vphaddd %ymm10,%ymm10,%ymm0
   0.85%  │  0x00007f323cf781c8:   vextracti128 $0x1,%ymm0,%xmm1
   0.04%  │  0x00007f323cf781ce:   vpaddd %xmm1,%xmm0,%xmm0
   0.19%  │  0x00007f323cf781d2:   vphaddd %xmm0,%xmm0,%xmm0
   3.15%  │  0x00007f323cf781d7:   vmovd  %edx,%xmm1
          │  0x00007f323cf781db:   vpaddd %xmm1,%xmm0,%xmm0
   0.78%  │  0x00007f323cf781df:   vmovd  %xmm0,%edx
   0.05%  │  0x00007f323cf781e3:   xor    %esi,%esi
   0.02%  │  0x00007f323cf781e5:   vphaddd %ymm11,%ymm11,%ymm0
   0.89%  │  0x00007f323cf781ea:   vextracti128 $0x1,%ymm0,%xmm1
   0.02%  │  0x00007f323cf781f0:   vpaddd %xmm1,%xmm0,%xmm0
   0.32%  │  0x00007f323cf781f4:   vphaddd %xmm0,%xmm0,%xmm0
   3.09%  │  0x00007f323cf781f9:   vmovd  %esi,%xmm1
          │  0x00007f323cf781fd:   vpaddd %xmm1,%xmm0,%xmm0
   0.76%  │  0x00007f323cf78201:   vmovd  %xmm0,%edi
   0.02%  │  0x00007f323cf78205:   xor    %eax,%eax
   0.00%  │  0x00007f323cf78207:   vphaddd %ymm12,%ymm12,%ymm0
   1.02%  │  0x00007f323cf7820c:   vextracti128 $0x1,%ymm0,%xmm1
   0.02%  │  0x00007f323cf78212:   vpaddd %xmm1,%xmm0,%xmm0
   0.01%  │  0x00007f323cf78216:   vphaddd %xmm0,%xmm0,%xmm0
   3.15%  │  0x00007f323cf7821b:   vmovd  %eax,%xmm1
          │  0x00007f323cf7821f:   vpaddd %xmm1,%xmm0,%xmm0
   0.85%  │  0x00007f323cf78223:   vmovd  %xmm0,%eax
   0.02%  │  0x00007f323cf78227:   xor    %r13d,%r13d
   0.01%  │  0x00007f323cf7822a:   vmovdqu 0x60(%rsp),%ymm5
          │  0x00007f323cf78230:   vphaddd %ymm5,%ymm5,%ymm0           ;   {no_reloc}
   0.87%  │  0x00007f323cf78235:   vextracti128 $0x1,%ymm0,%xmm1
          │  0x00007f323cf7823b:   vpaddd %xmm1,%xmm0,%xmm0
   1.74%  │  0x00007f323cf7823f:   vphaddd %xmm0,%xmm0,%xmm0
   1.88%  │  0x00007f323cf78244:   vmovd  %r13d,%xmm1
   0.26%  │  0x00007f323cf78249:   vpaddd %xmm1,%xmm0,%xmm0
   0.60%  │  0x00007f323cf7824d:   vmovd  %xmm0,%esi
          │  0x00007f323cf78251:   vmovdqu 0x40(%rsp),%ymm5
          │  0x00007f323cf78257:   vphaddd %ymm5,%ymm5,%ymm0
   0.98%  │  0x00007f323cf7825c:   vextracti128 $0x1,%ymm0,%xmm1
          │  0x00007f323cf78262:   vpaddd %xmm1,%xmm0,%xmm0
   0.58%  │  0x00007f323cf78266:   vphaddd %xmm0,%xmm0,%xmm0
   2.79%  │  0x00007f323cf7826b:   vmovd  %r13d,%xmm1
   0.05%  │  0x00007f323cf78270:   vpaddd %xmm1,%xmm0,%xmm0
   0.79%  │  0x00007f323cf78274:   vmovd  %xmm0,%r13d
          │  0x00007f323cf78279:   add    %r11d,%r13d
          │  0x00007f323cf7827c:   xor    %r11d,%r11d
   0.03%  │  0x00007f323cf7827f:   vmovdqu 0x20(%rsp),%ymm5
   0.76%  │  0x00007f323cf78285:   vphaddd %ymm5,%ymm5,%ymm0
   0.03%  │  0x00007f323cf7828a:   vextracti128 $0x1,%ymm0,%xmm1
   0.81%  │  0x00007f323cf78290:   vpaddd %xmm1,%xmm0,%xmm0
   0.12%  │  0x00007f323cf78294:   vphaddd %xmm0,%xmm0,%xmm0
   2.46%  │  0x00007f323cf78299:   vmovd  %r11d,%xmm1
          │  0x00007f323cf7829e:   vpaddd %xmm1,%xmm0,%xmm0
   0.91%  │  0x00007f323cf782a2:   vmovd  %xmm0,%r11d
          │  0x00007f323cf782a7:   add    %r11d,%r13d
   0.44%  │  0x00007f323cf782aa:   add    %r13d,%esi
   0.77%  │  0x00007f323cf782ad:   add    %esi,%eax
   0.77%  │  0x00007f323cf782af:   add    %eax,%edi
   0.42%  │  0x00007f323cf782b1:   add    %edi,%edx
   0.78%  │  0x00007f323cf782b3:   add    0xc(%rsp),%edx
   0.80%  │  0x00007f323cf782b7:   add    %edx,%ecx
   0.80%  │  0x00007f323cf782b9:   add    %ecx,%ebx
   0.86%  │  0x00007f323cf782bb:   add    0x8(%rsp),%ebx
   0.91%  │  0x00007f323cf782bf:   add    %ebx,%r8d
   0.88%  │  0x00007f323cf782c2:   add    %r8d,%r9d
   1.76%  │  0x00007f323cf782c5:   add    %r9d,%r14d
   0.37%  │  0x00007f323cf782c8:   vmovd  %xmm4,%r11d
          │  0x00007f323cf782cd:   add    %r14d,%r11d
   0.56%  │  0x00007f323cf782d0:   vmovd  %xmm3,%r9d
   0.62%  │  0x00007f323cf782d5:   add    %r11d,%r9d
   0.54%  │  0x00007f323cf782d8:   vmovd  %xmm2,%r11d
          │  0x00007f323cf782dd:   add    %r9d,%r11d                   ;*invokestatic reductionCoerced {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - jdk.incubator.vector.IntVector::reduceLanesTemplate@62 (line 2441)
          │                                                            ; - jdk.incubator.vector.Int256Vector::reduceLanes@2 (line 310)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_sum@39 (line 86)
   0.67%  │  0x00007f323cf782e0:   add    $0x80,%ebp
   0.23%  │  0x00007f323cf782e6:   cmp    0x1c(%rsp),%ebp
          ╰  0x00007f323cf782ea:   jl     0x00007f323cf77fa0
             0x00007f323cf782f0:   mov    0x348(%r15),%r8              ; ImmutableOopMap {r10=Oop [0]=NarrowOop }
                                                                       ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_sum@55 (line 84)
   0.02%     0x00007f323cf782f7:   test   %eax,(%r8)                   ;   {poll}
   0.05%     0x00007f323cf782fa:   nopw   0x0(%rax,%rax,1)
             0x00007f323cf78300:   cmp    0x18(%rsp),%ebp
             0x00007f323cf78304:   jl     0x00007f323cf77f4d
             0x00007f323cf7830a:   mov    (%rsp),%r8d
   0.00%     0x00007f323cf7830e:   mov    0x4(%rsp),%r9d
             0x00007f323cf78313:   mov    0x10(%rsp),%ecx
             0x00007f323cf78317:   mov    0x14(%rsp),%edi
             0x00007f323cf7831b:   cmp    %ecx,%ebp
             0x00007f323cf7831d:   data16 xchg %ax,%ax
             0x00007f323cf78320:   jl     0x00007f323cf77f0b
             0x00007f323cf78326:   mov    %r11d,%ebx
             0x00007f323cf78329:   cmp    %r9d,%ebp                    ;*invokestatic reductionCoerced {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::reduceLanesTemplate@62 (line 2441)
                                                                       ; - jdk.incubator.vector.Int256Vector::reduceLanes@2 (line 310)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_sum@39 (line 86)
....................................................................................................
  98.04%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_sum, version 2, compile id 688 
   0.51%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_sum, version 2, compile id 688 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_sum, version 2, compile id 688 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.VectorApiBenchmark_vectorized_sum_jmhTest::vectorized_sum_avgt_jmhStub, version 4, compile id 718 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.85%  <...other 300 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.16%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_sum, version 2, compile id 688 
   1.46%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%        libc-2.31.so  __strxfrm_l 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.VectorApiBenchmark_vectorized_sum_jmhTest::vectorized_sum_avgt_jmhStub, version 4, compile id 718 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%        libc-2.31.so  _int_realloc 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%           libjvm.so  outputStream::update_position 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%           libjvm.so  decode_env::print_hook_comments 
   0.15%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.17%         c2, level 4
   1.46%              kernel
   0.15%           libjvm.so
   0.09%        libc-2.31.so
   0.05%                    
   0.03%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.vectorized_sum
# Parameters: (size = 1048576)

# Run progress: 91.67% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 389.043 us/op
# Warmup Iteration   2: 361.872 us/op
# Warmup Iteration   3: 361.700 us/op
# Warmup Iteration   4: 359.765 us/op
# Warmup Iteration   5: 359.418 us/op
Iteration   1: 359.931 us/op
Iteration   2: 359.633 us/op
Iteration   3: 359.061 us/op
Iteration   4: 359.049 us/op
Iteration   5: 359.066 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.vectorized_sum":
  359.348 ±(99.9%) 1.579 us/op [Average]
  (min, avg, max) = (359.049, 359.348, 359.931), stdev = 0.410
  CI (99.9%): [357.769, 360.927] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark.vectorized_sum:·asm":
PrintAssembly processed: 145762 total address lines.
Perf output processed (skipped 56.318 seconds):
 Column 1: cycles (50584 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_sum, version 2, compile id 683 

             0x00007f0268f73d78:   cmova  %esi,%edx
             0x00007f0268f73d7b:   add    %ebp,%edx
             0x00007f0268f73d7d:   mov    %r8d,(%rsp)
             0x00007f0268f73d81:   mov    %r9d,0x4(%rsp)
             0x00007f0268f73d86:   mov    %ecx,0x10(%rsp)
             0x00007f0268f73d8a:   mov    %edi,0x14(%rsp)
             0x00007f0268f73d8e:   mov    %ebx,0x18(%rsp)
             0x00007f0268f73d92:   mov    %edx,0x1c(%rsp)
             0x00007f0268f73d96:   data16 nopw 0x0(%rax,%rax,1)        ;*getstatic INT_VECTOR_SPECIES {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_sum@23 (line 85)
   0.00%  ↗  0x00007f0268f73da0:   vmovdqu 0x130(%r10,%rbp,4),%ymm0
   3.81%  │  0x00007f0268f73daa:   vmovdqu 0xd0(%r10,%rbp,4),%ymm1
   2.42%  │  0x00007f0268f73db4:   vmovdqu 0x30(%r10,%rbp,4),%ymm2
   0.37%  │  0x00007f0268f73dbb:   vmovdqu %ymm2,0x20(%rsp)
   0.10%  │  0x00007f0268f73dc1:   vmovdqu 0x10(%r10,%rbp,4),%ymm2
   0.18%  │  0x00007f0268f73dc8:   vmovdqu %ymm2,0x40(%rsp)
   0.43%  │  0x00007f0268f73dce:   vmovdqu 0x1f0(%r10,%rbp,4),%ymm2
   3.56%  │  0x00007f0268f73dd8:   vmovdqu 0x1d0(%r10,%rbp,4),%ymm3
   0.42%  │  0x00007f0268f73de2:   vmovdqu 0x1b0(%r10,%rbp,4),%ymm4
   0.20%  │  0x00007f0268f73dec:   vmovdqu 0x190(%r10,%rbp,4),%ymm5
   0.87%  │  0x00007f0268f73df6:   vmovdqu 0x170(%r10,%rbp,4),%ymm6
   0.46%  │  0x00007f0268f73e00:   vmovdqu 0x150(%r10,%rbp,4),%ymm7
   0.26%  │  0x00007f0268f73e0a:   vmovdqu 0x110(%r10,%rbp,4),%ymm8
   0.23%  │  0x00007f0268f73e14:   vmovdqu 0xf0(%r10,%rbp,4),%ymm9
   0.25%  │  0x00007f0268f73e1e:   vmovdqu 0xb0(%r10,%rbp,4),%ymm10
   0.40%  │  0x00007f0268f73e28:   vmovdqu 0x90(%r10,%rbp,4),%ymm11
   0.47%  │  0x00007f0268f73e32:   vmovdqu 0x70(%r10,%rbp,4),%ymm12
   0.14%  │  0x00007f0268f73e39:   vmovdqu 0x50(%r10,%rbp,4),%ymm13
   0.21%  │  0x00007f0268f73e40:   vmovdqu %ymm13,0x60(%rsp)
   0.49%  │  0x00007f0268f73e46:   xor    %r9d,%r9d
   0.11%  │  0x00007f0268f73e49:   vphaddd %ymm0,%ymm0,%ymm15
   1.15%  │  0x00007f0268f73e4e:   vextracti128 $0x1,%ymm15,%xmm14
   0.09%  │  0x00007f0268f73e54:   vpaddd %xmm14,%xmm15,%xmm15
   0.53%  │  0x00007f0268f73e59:   vphaddd %xmm15,%xmm15,%xmm15
   1.35%  │  0x00007f0268f73e5e:   vmovd  %r9d,%xmm14
   0.08%  │  0x00007f0268f73e63:   vpaddd %xmm14,%xmm15,%xmm15
   0.35%  │  0x00007f0268f73e68:   vmovd  %xmm15,%r8d
   0.39%  │  0x00007f0268f73e6d:   mov    %r8d,0x8(%rsp)
   0.21%  │  0x00007f0268f73e72:   vphaddd %ymm1,%ymm1,%ymm0
   0.71%  │  0x00007f0268f73e77:   vextracti128 $0x1,%ymm0,%xmm13
   0.24%  │  0x00007f0268f73e7d:   vpaddd %xmm13,%xmm0,%xmm0
   0.23%  │  0x00007f0268f73e82:   vphaddd %xmm0,%xmm0,%xmm0
   1.22%  │  0x00007f0268f73e87:   vmovd  %r9d,%xmm13
   0.05%  │  0x00007f0268f73e8c:   vpaddd %xmm13,%xmm0,%xmm0
   0.30%  │  0x00007f0268f73e91:   vmovd  %xmm0,%r9d
   0.33%  │  0x00007f0268f73e96:   mov    %r9d,0xc(%rsp)
   0.35%  │  0x00007f0268f73e9b:   xor    %r9d,%r9d
   0.03%  │  0x00007f0268f73e9e:   vphaddd %ymm2,%ymm2,%ymm0
   0.82%  │  0x00007f0268f73ea3:   vextracti128 $0x1,%ymm0,%xmm1
   0.03%  │  0x00007f0268f73ea9:   vpaddd %xmm1,%xmm0,%xmm0
   0.99%  │  0x00007f0268f73ead:   vphaddd %xmm0,%xmm0,%xmm0
   1.47%  │  0x00007f0268f73eb2:   vmovd  %r9d,%xmm1
   0.14%  │  0x00007f0268f73eb7:   vpaddd %xmm1,%xmm0,%xmm0
   0.40%  │  0x00007f0268f73ebb:   vmovd  %xmm0,%r8d
   0.31%  │  0x00007f0268f73ec0:   vmovd  %r8d,%xmm2
   0.83%  │  0x00007f0268f73ec5:   vphaddd %ymm3,%ymm3,%ymm0
   0.50%  │  0x00007f0268f73eca:   vextracti128 $0x1,%ymm0,%xmm1
   0.29%  │  0x00007f0268f73ed0:   vpaddd %xmm1,%xmm0,%xmm0
   0.14%  │  0x00007f0268f73ed4:   vphaddd %xmm0,%xmm0,%xmm0
   0.84%  │  0x00007f0268f73ed9:   vmovd  %r9d,%xmm1
   0.14%  │  0x00007f0268f73ede:   vpaddd %xmm1,%xmm0,%xmm0
   0.20%  │  0x00007f0268f73ee2:   vmovd  %xmm0,%r8d
   0.22%  │  0x00007f0268f73ee7:   vmovd  %r8d,%xmm3
   0.61%  │  0x00007f0268f73eec:   vphaddd %ymm4,%ymm4,%ymm0
   0.47%  │  0x00007f0268f73ef1:   vextracti128 $0x1,%ymm0,%xmm1
   0.42%  │  0x00007f0268f73ef7:   vpaddd %xmm1,%xmm0,%xmm0
   0.13%  │  0x00007f0268f73efb:   vphaddd %xmm0,%xmm0,%xmm0
   0.99%  │  0x00007f0268f73f00:   vmovd  %r9d,%xmm1
   0.09%  │  0x00007f0268f73f05:   vpaddd %xmm1,%xmm0,%xmm0
   0.24%  │  0x00007f0268f73f09:   vmovd  %xmm0,%r9d
   0.23%  │  0x00007f0268f73f0e:   vmovd  %r9d,%xmm4
   1.19%  │  0x00007f0268f73f13:   xor    %r9d,%r9d
   0.02%  │  0x00007f0268f73f16:   vphaddd %ymm5,%ymm5,%ymm0
   0.85%  │  0x00007f0268f73f1b:   vextracti128 $0x1,%ymm0,%xmm1
   0.02%  │  0x00007f0268f73f21:   vpaddd %xmm1,%xmm0,%xmm0
   0.07%  │  0x00007f0268f73f25:   vphaddd %xmm0,%xmm0,%xmm0
   1.49%  │  0x00007f0268f73f2a:   vmovd  %r9d,%xmm1
   0.01%  │  0x00007f0268f73f2f:   vpaddd %xmm1,%xmm0,%xmm0
   0.40%  │  0x00007f0268f73f33:   vmovd  %xmm0,%r14d
   0.39%  │  0x00007f0268f73f38:   vphaddd %ymm6,%ymm6,%ymm0
   0.45%  │  0x00007f0268f73f3d:   vextracti128 $0x1,%ymm0,%xmm1
   0.43%  │  0x00007f0268f73f43:   vpaddd %xmm1,%xmm0,%xmm0
   0.14%  │  0x00007f0268f73f47:   vphaddd %xmm0,%xmm0,%xmm0
   2.19%  │  0x00007f0268f73f4c:   vmovd  %r9d,%xmm1
          │  0x00007f0268f73f51:   vpaddd %xmm1,%xmm0,%xmm0
   0.41%  │  0x00007f0268f73f55:   vmovd  %xmm0,%r9d
   0.21%  │  0x00007f0268f73f5a:   xor    %ecx,%ecx
   0.27%  │  0x00007f0268f73f5c:   vphaddd %ymm7,%ymm7,%ymm0
   0.68%  │  0x00007f0268f73f61:   vextracti128 $0x1,%ymm0,%xmm1
   0.20%  │  0x00007f0268f73f67:   vpaddd %xmm1,%xmm0,%xmm0
   0.24%  │  0x00007f0268f73f6b:   vphaddd %xmm0,%xmm0,%xmm0
   2.25%  │  0x00007f0268f73f70:   vmovd  %ecx,%xmm1
   0.00%  │  0x00007f0268f73f74:   vpaddd %xmm1,%xmm0,%xmm0
   0.55%  │  0x00007f0268f73f78:   vmovd  %xmm0,%r8d
   0.16%  │  0x00007f0268f73f7d:   xor    %ebx,%ebx
   0.17%  │  0x00007f0268f73f7f:   vphaddd %ymm8,%ymm8,%ymm0
   0.76%  │  0x00007f0268f73f84:   vextracti128 $0x1,%ymm0,%xmm1
   0.18%  │  0x00007f0268f73f8a:   vpaddd %xmm1,%xmm0,%xmm0
   0.24%  │  0x00007f0268f73f8e:   vphaddd %xmm0,%xmm0,%xmm0
   2.47%  │  0x00007f0268f73f93:   vmovd  %ebx,%xmm1
          │  0x00007f0268f73f97:   vpaddd %xmm1,%xmm0,%xmm0
   0.74%  │  0x00007f0268f73f9b:   vmovd  %xmm0,%ebx
   0.09%  │  0x00007f0268f73f9f:   xor    %edi,%edi
   0.10%  │  0x00007f0268f73fa1:   vphaddd %ymm9,%ymm9,%ymm0
   0.75%  │  0x00007f0268f73fa6:   vextracti128 $0x1,%ymm0,%xmm1
   0.09%  │  0x00007f0268f73fac:   vpaddd %xmm1,%xmm0,%xmm0
   0.16%  │  0x00007f0268f73fb0:   vphaddd %xmm0,%xmm0,%xmm0
   2.66%  │  0x00007f0268f73fb5:   vmovd  %edi,%xmm1
          │  0x00007f0268f73fb9:   vpaddd %xmm1,%xmm0,%xmm0
   0.78%  │  0x00007f0268f73fbd:   vmovd  %xmm0,%ecx
   0.08%  │  0x00007f0268f73fc1:   xor    %edx,%edx
   0.06%  │  0x00007f0268f73fc3:   vphaddd %ymm10,%ymm10,%ymm0
   0.89%  │  0x00007f0268f73fc8:   vextracti128 $0x1,%ymm0,%xmm1
   0.06%  │  0x00007f0268f73fce:   vpaddd %xmm1,%xmm0,%xmm0
   0.22%  │  0x00007f0268f73fd2:   vphaddd %xmm0,%xmm0,%xmm0
   2.97%  │  0x00007f0268f73fd7:   vmovd  %edx,%xmm1
          │  0x00007f0268f73fdb:   vpaddd %xmm1,%xmm0,%xmm0
   0.86%  │  0x00007f0268f73fdf:   vmovd  %xmm0,%edx
   0.04%  │  0x00007f0268f73fe3:   xor    %esi,%esi
   0.03%  │  0x00007f0268f73fe5:   vphaddd %ymm11,%ymm11,%ymm0
   0.88%  │  0x00007f0268f73fea:   vextracti128 $0x1,%ymm0,%xmm1
   0.02%  │  0x00007f0268f73ff0:   vpaddd %xmm1,%xmm0,%xmm0
   0.34%  │  0x00007f0268f73ff4:   vphaddd %xmm0,%xmm0,%xmm0
   2.80%  │  0x00007f0268f73ff9:   vmovd  %esi,%xmm1
          │  0x00007f0268f73ffd:   vpaddd %xmm1,%xmm0,%xmm0
   0.80%  │  0x00007f0268f74001:   vmovd  %xmm0,%edi
   0.04%  │  0x00007f0268f74005:   xor    %eax,%eax
   0.02%  │  0x00007f0268f74007:   vphaddd %ymm12,%ymm12,%ymm0
   1.00%  │  0x00007f0268f7400c:   vextracti128 $0x1,%ymm0,%xmm1
   0.02%  │  0x00007f0268f74012:   vpaddd %xmm1,%xmm0,%xmm0
   0.00%  │  0x00007f0268f74016:   vphaddd %xmm0,%xmm0,%xmm0
   3.19%  │  0x00007f0268f7401b:   vmovd  %eax,%xmm1
          │  0x00007f0268f7401f:   vpaddd %xmm1,%xmm0,%xmm0
   0.82%  │  0x00007f0268f74023:   vmovd  %xmm0,%eax
   0.03%  │  0x00007f0268f74027:   xor    %r13d,%r13d
   0.00%  │  0x00007f0268f7402a:   vmovdqu 0x60(%rsp),%ymm5
          │  0x00007f0268f74030:   vphaddd %ymm5,%ymm5,%ymm0           ;   {no_reloc}
   0.91%  │  0x00007f0268f74035:   vextracti128 $0x1,%ymm0,%xmm1
          │  0x00007f0268f7403b:   vpaddd %xmm1,%xmm0,%xmm0
   1.65%  │  0x00007f0268f7403f:   vphaddd %xmm0,%xmm0,%xmm0
   1.79%  │  0x00007f0268f74044:   vmovd  %r13d,%xmm1
   0.28%  │  0x00007f0268f74049:   vpaddd %xmm1,%xmm0,%xmm0
   0.63%  │  0x00007f0268f7404d:   vmovd  %xmm0,%esi
   0.00%  │  0x00007f0268f74051:   vmovdqu 0x40(%rsp),%ymm5
          │  0x00007f0268f74057:   vphaddd %ymm5,%ymm5,%ymm0
   0.84%  │  0x00007f0268f7405c:   vextracti128 $0x1,%ymm0,%xmm1
          │  0x00007f0268f74062:   vpaddd %xmm1,%xmm0,%xmm0
   0.59%  │  0x00007f0268f74066:   vphaddd %xmm0,%xmm0,%xmm0
   2.83%  │  0x00007f0268f7406b:   vmovd  %r13d,%xmm1
   0.04%  │  0x00007f0268f74070:   vpaddd %xmm1,%xmm0,%xmm0
   0.88%  │  0x00007f0268f74074:   vmovd  %xmm0,%r13d
   0.00%  │  0x00007f0268f74079:   add    %r11d,%r13d
          │  0x00007f0268f7407c:   xor    %r11d,%r11d
   0.02%  │  0x00007f0268f7407f:   vmovdqu 0x20(%rsp),%ymm5
   0.94%  │  0x00007f0268f74085:   vphaddd %ymm5,%ymm5,%ymm0
   0.05%  │  0x00007f0268f7408a:   vextracti128 $0x1,%ymm0,%xmm1
   0.88%  │  0x00007f0268f74090:   vpaddd %xmm1,%xmm0,%xmm0
   0.13%  │  0x00007f0268f74094:   vphaddd %xmm0,%xmm0,%xmm0
   2.45%  │  0x00007f0268f74099:   vmovd  %r11d,%xmm1
   0.01%  │  0x00007f0268f7409e:   vpaddd %xmm1,%xmm0,%xmm0
   0.86%  │  0x00007f0268f740a2:   vmovd  %xmm0,%r11d
          │  0x00007f0268f740a7:   add    %r11d,%r13d
   0.39%  │  0x00007f0268f740aa:   add    %r13d,%esi
   0.72%  │  0x00007f0268f740ad:   add    %esi,%eax
   0.69%  │  0x00007f0268f740af:   add    %eax,%edi
   0.53%  │  0x00007f0268f740b1:   add    %edi,%edx
   0.79%  │  0x00007f0268f740b3:   add    0xc(%rsp),%edx
   0.77%  │  0x00007f0268f740b7:   add    %edx,%ecx
   0.80%  │  0x00007f0268f740b9:   add    %ecx,%ebx
   0.88%  │  0x00007f0268f740bb:   add    0x8(%rsp),%ebx
   0.85%  │  0x00007f0268f740bf:   add    %ebx,%r8d
   0.84%  │  0x00007f0268f740c2:   add    %r8d,%r9d
   1.76%  │  0x00007f0268f740c5:   add    %r9d,%r14d
   0.37%  │  0x00007f0268f740c8:   vmovd  %xmm4,%r11d
          │  0x00007f0268f740cd:   add    %r14d,%r11d
   0.51%  │  0x00007f0268f740d0:   vmovd  %xmm3,%r9d
   0.60%  │  0x00007f0268f740d5:   add    %r11d,%r9d
   0.56%  │  0x00007f0268f740d8:   vmovd  %xmm2,%r11d
          │  0x00007f0268f740dd:   add    %r9d,%r11d                   ;*invokestatic reductionCoerced {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - jdk.incubator.vector.IntVector::reduceLanesTemplate@62 (line 2441)
          │                                                            ; - jdk.incubator.vector.Int256Vector::reduceLanes@2 (line 310)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_sum@39 (line 86)
   0.72%  │  0x00007f0268f740e0:   add    $0x80,%ebp
   0.22%  │  0x00007f0268f740e6:   cmp    0x1c(%rsp),%ebp
          ╰  0x00007f0268f740ea:   jl     0x00007f0268f73da0
             0x00007f0268f740f0:   mov    0x348(%r15),%r8              ; ImmutableOopMap {r10=Oop [0]=NarrowOop }
                                                                       ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_sum@55 (line 84)
   0.05%     0x00007f0268f740f7:   test   %eax,(%r8)                   ;   {poll}
   0.03%     0x00007f0268f740fa:   nopw   0x0(%rax,%rax,1)
             0x00007f0268f74100:   cmp    0x18(%rsp),%ebp
             0x00007f0268f74104:   jl     0x00007f0268f73d4d
   0.00%     0x00007f0268f7410a:   mov    (%rsp),%r8d
             0x00007f0268f7410e:   mov    0x4(%rsp),%r9d
             0x00007f0268f74113:   mov    0x10(%rsp),%ecx
             0x00007f0268f74117:   mov    0x14(%rsp),%edi
             0x00007f0268f7411b:   cmp    %ecx,%ebp
             0x00007f0268f7411d:   data16 xchg %ax,%ax
             0x00007f0268f74120:   jl     0x00007f0268f73d0b
             0x00007f0268f74126:   mov    %r11d,%ebx
             0x00007f0268f74129:   cmp    %r9d,%ebp                    ;*invokestatic reductionCoerced {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::reduceLanesTemplate@62 (line 2441)
                                                                       ; - jdk.incubator.vector.Int256Vector::reduceLanes@2 (line 310)
....................................................................................................
  98.34%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.34%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_sum, version 2, compile id 683 
   0.40%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_sum, version 2, compile id 683 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%        libc-2.31.so  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.76%  <...other 288 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.VectorApiBenchmark::vectorized_sum, version 2, compile id 683 
   1.29%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.03%        libc-2.31.so  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%           libjvm.so  OtherRegionsTable::occupied 
   0.01%        libc-2.31.so  tcache_init.part.0 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  os::javaTimeNanos 
   0.13%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.37%         c2, level 4
   1.29%              kernel
   0.14%           libjvm.so
   0.10%        libc-2.31.so
   0.04%                    
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:21:46

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

Benchmark                                       (size)  Mode  Cnt       Score       Error  Units
VectorApiBenchmark.baseline_filter              262144  avgt    5     202.912 ±     1.549  us/op
VectorApiBenchmark.baseline_filter:·asm         262144  avgt              NaN                ---
VectorApiBenchmark.baseline_filter             1048576  avgt    5     804.802 ±     0.517  us/op
VectorApiBenchmark.baseline_filter:·asm        1048576  avgt              NaN                ---
VectorApiBenchmark.baseline_matrix_mul          262144  avgt    5   33955.885 ±  3542.338  us/op
VectorApiBenchmark.baseline_matrix_mul:·asm     262144  avgt              NaN                ---
VectorApiBenchmark.baseline_matrix_mul         1048576  avgt    5  311625.686 ± 60503.304  us/op
VectorApiBenchmark.baseline_matrix_mul:·asm    1048576  avgt              NaN                ---
VectorApiBenchmark.baseline_sum                 262144  avgt    5     103.620 ±     0.101  us/op
VectorApiBenchmark.baseline_sum:·asm            262144  avgt              NaN                ---
VectorApiBenchmark.baseline_sum                1048576  avgt    5     413.032 ±     2.891  us/op
VectorApiBenchmark.baseline_sum:·asm           1048576  avgt              NaN                ---
VectorApiBenchmark.vectorized_filter            262144  avgt    5     602.716 ±     0.965  us/op
VectorApiBenchmark.vectorized_filter:·asm       262144  avgt              NaN                ---
VectorApiBenchmark.vectorized_filter           1048576  avgt    5    2430.342 ±    30.091  us/op
VectorApiBenchmark.vectorized_filter:·asm      1048576  avgt              NaN                ---
VectorApiBenchmark.vectorized_matrix_mul        262144  avgt    5   14481.124 ±   338.378  us/op
VectorApiBenchmark.vectorized_matrix_mul:·asm   262144  avgt              NaN                ---
VectorApiBenchmark.vectorized_matrix_mul       1048576  avgt    5  139268.252 ±    71.247  us/op
VectorApiBenchmark.vectorized_matrix_mul:·asm  1048576  avgt              NaN                ---
VectorApiBenchmark.vectorized_sum               262144  avgt    5      89.636 ±     0.170  us/op
VectorApiBenchmark.vectorized_sum:·asm          262144  avgt              NaN                ---
VectorApiBenchmark.vectorized_sum              1048576  avgt    5     359.348 ±     1.579  us/op
VectorApiBenchmark.vectorized_sum:·asm         1048576  avgt              NaN                ---
