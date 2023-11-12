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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_concrete_array

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.399 ns/op
# Warmup Iteration   2: 1.116 ns/op
# Warmup Iteration   3: 1.111 ns/op
# Warmup Iteration   4: 1.110 ns/op
# Warmup Iteration   5: 1.113 ns/op
Iteration   1: 1.117 ns/op
Iteration   2: 1.115 ns/op
Iteration   3: 1.111 ns/op
Iteration   4: 1.110 ns/op
Iteration   5: 1.184 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_concrete_array":
  1.127 ±(99.9%) 0.123 ns/op [Average]
  (min, avg, max) = (1.110, 1.127, 1.184), stdev = 0.032
  CI (99.9%): [1.004, 1.251] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_concrete_array:asm":
PrintAssembly processed: 226117 total address lines.
Perf output processed (skipped 60.674 seconds):
 Column 1: cycles (50679 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 3, compile id 992 

               0x00007f812723ef84:   jae    0x00007f812723efdd           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
               0x00007f812723ef8a:   shl    $0x3,%rax                    ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@3 (line 89)
               0x00007f812723ef8e:   mov    %r11d,%r8d
               0x00007f812723ef91:   mov    $0x1,%r11d
          ╭    0x00007f812723ef97:   jmp    0x00007f812723efb6           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
          │    0x00007f812723ef9c:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@16 (line 89)
   0.01%  │↗   0x00007f812723efa0:   mov    0x10(%rax,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
  19.07%  ││   0x00007f812723efa5:   mov    %r8d,%ecx                    ; ImmutableOopMap {rax=Oop r9=NarrowOop }
          ││                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
   0.01%  ││   0x00007f812723efa8:   add    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f812723f070
  63.89%  ││   0x00007f812723efb0:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@33 (line 89)
   0.03%  ││   0x00007f812723efb3:   mov    %ecx,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
  14.80%  ↘│   0x00007f812723efb6:   cmp    %r11d,%r10d
           ╰   0x00007f812723efb9:   jg     0x00007f812723efa0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@16 (line 89)
            ↗  0x00007f812723efbb:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@40 (line 92)
   0.00%    │  0x00007f812723efbe:   mov    0x10(%rsp),%rbp
   0.00%    │  0x00007f812723efc3:   add    $0x18,%rsp
            │  0x00007f812723efc7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007f812723efce:   ja     0x00007f812723f010
   0.00%    │  0x00007f812723efd4:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@16 (line 89)
            │  0x00007f812723efd5:   mov    $0x0,%r8d
            ╰  0x00007f812723efdb:   jmp    0x00007f812723efbb           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@39 (line 92)
               0x00007f812723efdd:   movl   $0xffffffe5,0x484(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@8 (line 89)
               0x00007f812723efe8:   movq   $0x298,0x490(%r15)
               0x00007f812723eff3:   call   0x00007f8126c3517a           ; ImmutableOopMap {rsi=Oop }
                                                                         ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@0 (line 88)
....................................................................................................
  97.81%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 3, compile id 992 
   0.67%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 3, compile id 992 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeSwitchBenchmark_if_instanceof_concrete_array_jmhTest::if_instanceof_concrete_array_avgt_jmhStub, version 4, compile id 1020 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.94%  <...other 307 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.84%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 3, compile id 992 
   1.87%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeSwitchBenchmark_if_instanceof_concrete_array_jmhTest::if_instanceof_concrete_array_avgt_jmhStub, version 4, compile id 1020 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%            libjvm.so  defaultStream::write 
   0.00%         libc-2.31.so  syscall 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.00%         libc-2.31.so  __strlen_avx2 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%         libc-2.31.so  _itoa_word 
   0.12%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.86%       jvmci, level 4
   1.87%               kernel
   0.10%            libjvm.so
   0.09%         libc-2.31.so
   0.03%                     
   0.02%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_interface_array

# Run progress: 12.50% complete, ETA 00:13:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.693 ns/op
# Warmup Iteration   2: 15.372 ns/op
# Warmup Iteration   3: 15.360 ns/op
# Warmup Iteration   4: 15.382 ns/op
# Warmup Iteration   5: 15.356 ns/op
Iteration   1: 15.359 ns/op
Iteration   2: 15.361 ns/op
Iteration   3: 15.357 ns/op
Iteration   4: 15.357 ns/op
Iteration   5: 15.380 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_interface_array":
  15.363 ±(99.9%) 0.038 ns/op [Average]
  (min, avg, max) = (15.357, 15.363, 15.380), stdev = 0.010
  CI (99.9%): [15.325, 15.400] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_interface_array:asm":
PrintAssembly processed: 223035 total address lines.
Perf output processed (skipped 60.553 seconds):
 Column 1: cycles (51106 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array, version 3, compile id 990 

                               0x00007ff3fb2436f6:   mov    %r8d,%r9d
                               0x00007ff3fb2436f9:   mov    $0x1,%r8d
                               0x00007ff3fb2436ff:   nop
          ╭                    0x00007ff3fb243700:   jmp    0x00007ff3fb2437b7           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@13 (line 78)
          │                    0x00007ff3fb243705:   data16 data16 nopw 0x0(%rax,%rax,1)
          │                    0x00007ff3fb243710:   data16 data16 xchg %ax,%ax
          │                    0x00007ff3fb243714:   nopl   0x0(%rax,%rax,1)
          │                    0x00007ff3fb24371c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@16 (line 78)
   0.51%  │        ↗           0x00007ff3fb243720:   mov    0x10(%r10,%r8,4),%eax        ; ImmutableOopMap {rax=NarrowOop r10=Oop }
          │        │                                                                     ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │        │                                                                     ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@13 (line 78)
   5.61%  │        │           0x00007ff3fb243725:   mov    0x8(,%rax,8),%ecx            ; implicit exception: dispatches to 0x00007ff3fb243aa0
  13.47%  │        │           0x00007ff3fb24372c:   cmp    $0x102bb58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          │╭       │           0x00007ff3fb243732:   je     0x00007ff3fb2437c5
   2.39%  ││       │           0x00007ff3fb243738:   nopl   0x0(%rax,%rax,1)
   0.30%  ││       │           0x00007ff3fb243740:   cmp    $0x102b160,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          ││╭      │           0x00007ff3fb243746:   je     0x00007ff3fb2437f2
   5.38%  │││      │           0x00007ff3fb24374c:   cmp    $0x102f800,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          │││╭     │           0x00007ff3fb243752:   je     0x00007ff3fb2437fd
   1.82%  ││││     │           0x00007ff3fb243758:   nopl   0x0(%rax,%rax,1)
   0.10%  ││││     │           0x00007ff3fb243760:   cmp    $0x102b550,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
          ││││╭    │           0x00007ff3fb243766:   je     0x00007ff3fb243809
   1.53%  │││││    │           0x00007ff3fb24376c:   cmp    $0x102b750,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
          │││││╭   │           0x00007ff3fb243772:   je     0x00007ff3fb243815
   3.19%  ││││││   │           0x00007ff3fb243778:   nopl   0x0(%rax,%rax,1)
   0.45%  ││││││   │           0x00007ff3fb243780:   cmp    $0x102fa00,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          ││││││╭  │           0x00007ff3fb243786:   je     0x00007ff3fb243839
   2.30%  │││││││  │           0x00007ff3fb24378c:   cmp    $0x102b958,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          │││││││╭ │           0x00007ff3fb243792:   jne    0x00007ff3fb243845           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││││││ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@96 (line 279)
          ││││││││ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.77%  ││││││││ │           0x00007ff3fb243798:   vmovss 0xc(,%rax,8),%xmm2           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││││││ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@103 (line 280)
          ││││││││ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.04%  ││││││││ │           0x00007ff3fb2437a1:   vcvttss2si %xmm2,%eax
   1.98%  ││││││││ │           0x00007ff3fb2437a5:   cmp    $0x80000000,%eax
          ││││││││╭│           0x00007ff3fb2437ab:   je     0x00007ff3fb24385e           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@106 (line 280)
          ││││││││││                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.15%  ││││││││││↗↗↗↗↗↗↗↗↗  0x00007ff3fb2437b1:   add    %eax,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
   3.71%  │││││││││││││││││││  0x00007ff3fb2437b4:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@33 (line 78)
   1.17%  ↘││││││││││││││││││  0x00007ff3fb2437b7:   cmp    %r8d,%r11d
           ││││││││╰│││││││││  0x00007ff3fb2437ba:   jg     0x00007ff3fb243720
           ││││││││ │││││││││  0x00007ff3fb2437c0:   jmp    0x00007ff3fb24389a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││││││││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@16 (line 78)
   3.38%   ↘│││││││ │││││││││  0x00007ff3fb2437c5:   vmovsd 0x10(,%rax,8),%xmm2          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │││││││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@87 (line 278)
            │││││││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.37%    │││││││ │││││││││  0x00007ff3fb2437ce:   vcvttsd2si %xmm2,%eax
   2.52%    │││││││ │││││││││  0x00007ff3fb2437d2:   cmp    $0x80000000,%eax
            │││││││ ╰││││││││  0x00007ff3fb2437d8:   jne    0x00007ff3fb2437b1
            │││││││  ││││││││  0x00007ff3fb2437da:   vucomisd %xmm2,%xmm2
            │││││││  ││││││││  0x00007ff3fb2437de:   xchg   %ax,%ax
            │││││││  ││││││││  0x00007ff3fb2437e0:   jp     0x00007ff3fb243886
            │││││││  ││││││││  0x00007ff3fb2437e6:   vucomisd %xmm1,%xmm2
            │││││││  ││││││││  0x00007ff3fb2437ea:   ja     0x00007ff3fb24387c
            │││││││  ╰│││││││  0x00007ff3fb2437f0:   jmp    0x00007ff3fb2437b1           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
            │││││││   │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@90 (line 278)
            │││││││   │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.44%    ↘││││││   │││││││  0x00007ff3fb2437f2:   mov    0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
             ││││││   │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@11 (line 268)
             ││││││   │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.98%     ││││││   │││││││  0x00007ff3fb2437f9:   mov    %ecx,%eax
   0.01%     ││││││   ╰││││││  0x00007ff3fb2437fb:   jmp    0x00007ff3fb2437b1           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             ││││││    ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@65 (line 275)
             ││││││    ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.11%     ↘│││││    ││││││  0x00007ff3fb2437fd:   movzwl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              │││││    ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@72 (line 276)
              │││││    ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.01%      │││││    ││││││  0x00007ff3fb243805:   mov    %ecx,%eax
   0.01%      │││││    ╰│││││  0x00007ff3fb243807:   jmp    0x00007ff3fb2437b1           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
              │││││     │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@35 (line 271)
              │││││     │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.08%      ↘││││     │││││  0x00007ff3fb243809:   movswl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
               ││││     │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@42 (line 272)
               ││││     │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.85%       ││││     │││││  0x00007ff3fb243811:   mov    %ecx,%eax
   0.01%       ││││     ╰││││  0x00007ff3fb243813:   jmp    0x00007ff3fb2437b1           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               ││││      ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@112 (line 281)
               ││││      ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.31%       ↘│││      ││││  0x00007ff3fb243815:   mov    0xc(,%rax,8),%ecx            ; ImmutableOopMap {rcx=NarrowOop r10=Oop }
                │││      ││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
                │││      ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@13 (line 78)
   2.61%        │││      ││││  0x00007ff3fb24381c:   mov    0x14(,%rcx,8),%eax           ; implicit exception: dispatches to 0x00007ff3fb243ac3
   2.69%        │││      ││││  0x00007ff3fb243823:   movsbl 0x10(,%rcx,8),%ecx           ; ImmutableOopMap {r10=Oop }
                │││      ││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
                │││      ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@13 (line 78)
   0.98%        │││      ││││  0x00007ff3fb24382b:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007ff3fb243ae6
   0.84%        │││      ││││  0x00007ff3fb243832:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                │││      ││││                                                            ; - java.lang.String::length@9 (line 1519)
                │││      ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@122 (line 282)
                │││      ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.62%        │││      ╰│││  0x00007ff3fb243834:   jmp    0x00007ff3fb2437b1           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                │││       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@19 (line 269)
                │││       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.50%        ↘││       │││  0x00007ff3fb243839:   mov    0x10(,%rax,8),%eax           ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                 ││       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@29 (line 270)
                 ││       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.55%         ││       ╰││  0x00007ff3fb243840:   jmp    0x00007ff3fb2437b1
   2.16%         ↘│        ││  0x00007ff3fb243845:   cmp    $0x102bd58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
                  │        ││  0x00007ff3fb24384b:   jne    0x00007ff3fb2439ed           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                  │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@50 (line 273)
                  │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   1.11%          │        ││  0x00007ff3fb243851:   movsbl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                  │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@57 (line 274)
                  │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   1.00%          │        ╰│  0x00007ff3fb243859:   jmp    0x00007ff3fb2437b1
                  ↘         │  0x00007ff3fb24385e:   vucomiss %xmm2,%xmm2
                            │  0x00007ff3fb243862:   jp     0x00007ff3fb243890
                            │  0x00007ff3fb243868:   vucomiss %xmm0,%xmm2
                            ╰  0x00007ff3fb24386c:   jbe    0x00007ff3fb2437b1
                               0x00007ff3fb243872:   mov    $0x7fffffff,%eax
                               0x00007ff3fb243877:   jmp    0x00007ff3fb2437b1           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@106 (line 280)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
....................................................................................................
  96.99%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array, version 3, compile id 990 
   1.46%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.93%  <...other 317 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array, version 3, compile id 990 
   2.69%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%     perf-2133627.map  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%          interpreter  invokevirtual  182 invokevirtual  
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  memcpy@GLIBC_2.2.5 
   0.01%         libc-2.31.so  _IO_str_init_static_internal 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%          interpreter  ifeq  153 ifeq  
   0.01%          interpreter  fast_bgetfield  204 fast_bgetfield  
   0.00%         libc-2.31.so  syscall 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.00%          interpreter  nofast_aload_0  236 nofast_aload_0  
   0.14%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.00%       jvmci, level 4
   2.69%               kernel
   0.09%            libjvm.so
   0.08%         libc-2.31.so
   0.03%          interpreter
   0.03%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%     perf-2133627.map
   0.01%           ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_concrete_array

# Run progress: 25.00% complete, ETA 00:11:22
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.568 ns/op
# Warmup Iteration   2: 1.116 ns/op
# Warmup Iteration   3: 1.111 ns/op
# Warmup Iteration   4: 1.111 ns/op
# Warmup Iteration   5: 1.111 ns/op
Iteration   1: 1.111 ns/op
Iteration   2: 1.111 ns/op
Iteration   3: 1.111 ns/op
Iteration   4: 1.111 ns/op
Iteration   5: 1.111 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_concrete_array":
  1.111 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.111, 1.111, 1.111), stdev = 0.001
  CI (99.9%): [1.111, 1.111] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_concrete_array:asm":
PrintAssembly processed: 247142 total address lines.
Perf output processed (skipped 60.622 seconds):
 Column 1: cycles (50808 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 4, compile id 1102 

               0x00007f323b247c04:   jae    0x00007f323b247c5d           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
               0x00007f323b247c0a:   shl    $0x3,%rax                    ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@3 (line 111)
               0x00007f323b247c0e:   mov    %r11d,%r8d
               0x00007f323b247c11:   mov    $0x1,%r11d
          ╭    0x00007f323b247c17:   jmp    0x00007f323b247c36           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
          │    0x00007f323b247c1c:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
   0.00%  │↗   0x00007f323b247c20:   mov    0x10(%rax,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
  19.35%  ││   0x00007f323b247c25:   mov    %r8d,%ecx                    ; ImmutableOopMap {rax=Oop r9=NarrowOop }
          ││                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
          ││   0x00007f323b247c28:   add    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f323b247cf0
  63.28%  ││   0x00007f323b247c30:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@33 (line 111)
          ││   0x00007f323b247c33:   mov    %ecx,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
  15.16%  ↘│   0x00007f323b247c36:   cmp    %r11d,%r10d
           ╰   0x00007f323b247c39:   jg     0x00007f323b247c20           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
            ↗  0x00007f323b247c3b:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@40 (line 114)
            │  0x00007f323b247c3e:   mov    0x10(%rsp),%rbp
   0.00%    │  0x00007f323b247c43:   add    $0x18,%rsp
            │  0x00007f323b247c47:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007f323b247c4e:   ja     0x00007f323b247c90
   0.00%    │  0x00007f323b247c54:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
            │  0x00007f323b247c55:   mov    $0x0,%r8d
            ╰  0x00007f323b247c5b:   jmp    0x00007f323b247c3b           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@39 (line 114)
               0x00007f323b247c5d:   movl   $0xffffffe5,0x484(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@8 (line 111)
               0x00007f323b247c68:   movq   $0x2d18,0x490(%r15)
               0x00007f323b247c73:   call   0x00007f323ac3517a           ; ImmutableOopMap {rsi=Oop }
                                                                         ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@0 (line 110)
....................................................................................................
  97.79%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 4, compile id 1102 
   0.86%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 4, compile id 1102 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%               kernel  [unknown] 
   0.73%  <...other 248 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 4, compile id 1102 
   1.82%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeSwitchBenchmark_switch_concrete_array_jmhTest::switch_concrete_array_avgt_jmhStub, version 4, compile id 1131 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%            libjvm.so  fileStream::write 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%  libjvmcicompiler.so  java.nio.Buffer::nextGetIndex 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  _IO_fflush 
   0.00%         libc-2.31.so  _IO_str_init_static_internal 
   0.00%       hsdis-amd64.so  hsdis_read_memory_func 
   0.00%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.17%  <...other 83 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.84%       jvmci, level 4
   1.82%               kernel
   0.10%            libjvm.so
   0.08%         libc-2.31.so
   0.07%  libjvmcicompiler.so
   0.03%                     
   0.02%           ld-2.31.so
   0.01%          interpreter
   0.01%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_concrete_array

# Run progress: 37.50% complete, ETA 00:09:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.560 ns/op
# Warmup Iteration   2: 1.330 ns/op
# Warmup Iteration   3: 1.331 ns/op
# Warmup Iteration   4: 1.331 ns/op
# Warmup Iteration   5: 1.331 ns/op
Iteration   1: 1.331 ns/op
Iteration   2: 1.331 ns/op
Iteration   3: 1.331 ns/op
Iteration   4: 1.331 ns/op
Iteration   5: 1.331 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_concrete_array":
  1.331 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.331, 1.331, 1.331), stdev = 0.001
  CI (99.9%): [1.330, 1.332] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_concrete_array:asm":
PrintAssembly processed: 246997 total address lines.
Perf output processed (skipped 60.500 seconds):
 Column 1: cycles (50671 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 3, compile id 1095 

                 0x00007f1adf245b13:   mov    %r11d,%r8d
                 0x00007f1adf245b16:   mov    $0x1,%r11d
                 0x00007f1adf245b1c:   nopl   0x0(%rax)
          ╭      0x00007f1adf245b20:   jmp    0x00007f1adf245b60           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@13 (line 144)
          │      0x00007f1adf245b25:   data16 data16 nopw 0x0(%rax,%rax,1)
          │      0x00007f1adf245b30:   data16 data16 xchg %ax,%ax
          │      0x00007f1adf245b34:   nopl   0x0(%rax,%rax,1)
          │      0x00007f1adf245b3c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@16 (line 144)
  15.64%  │ ↗    0x00007f1adf245b40:   mov    0x10(%rax,%r11,4),%r9d       ; ImmutableOopMap {rax=Oop }
          │ │                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@13 (line 144)
   3.11%  │ │    0x00007f1adf245b45:   mov    0xc(,%r9,8),%r9d             ; implicit exception: dispatches to 0x00007f1adf245c30
  48.08%  │ │    0x00007f1adf245b4d:   test   $0x1,%r9d
          │╭│    0x00007f1adf245b54:   je     0x00007f1adf245b6a           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
  16.04%  │││ ↗  0x00007f1adf245b5a:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
  12.34%  │││ │  0x00007f1adf245b5d:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@33 (line 144)
          ↘││ │  0x00007f1adf245b60:   cmp    %r11d,%r10d
           │╰ │  0x00007f1adf245b63:   jg     0x00007f1adf245b40
           │ ╭│  0x00007f1adf245b65:   jmp    0x00007f1adf245b6f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@16 (line 144)
   2.33%   ↘ ││  0x00007f1adf245b6a:   shl    %r9d                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   0.21%     │╰  0x00007f1adf245b6d:   jmp    0x00007f1adf245b5a           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@358 (line 193)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
             ↘   0x00007f1adf245b6f:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@40 (line 147)
                 0x00007f1adf245b72:   mov    0x10(%rsp),%rbp
   0.01%         0x00007f1adf245b77:   add    $0x18,%rsp
                 0x00007f1adf245b7b:   nopl   0x0(%rax,%rax,1)
                 0x00007f1adf245b80:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                 0x00007f1adf245b87:   ja     0x00007f1adf245bd1
                 0x00007f1adf245b8d:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
                 0x00007f1adf245b8e:   shl    %r11d                        ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
                 0x00007f1adf245b91:   jmp    0x00007f1adf245af0           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.78%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 3, compile id 1095 
   0.51%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 3, compile id 1095 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeSwitchBenchmark_switch_if_concrete_array_jmhTest::switch_if_concrete_array_avgt_jmhStub, version 4, compile id 1122 
   0.01%               kernel  [unknown] 
   1.04%  <...other 330 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 3, compile id 1095 
   1.88%               kernel  [unknown] 
   0.02%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeSwitchBenchmark_switch_if_concrete_array_jmhTest::switch_if_concrete_array_avgt_jmhStub, version 4, compile id 1122 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  defaultStream::write 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%  libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __GI___printf_fp_l 
   0.00%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%            libjvm.so  clock_gettime@plt 
   0.14%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.83%       jvmci, level 4
   1.88%               kernel
   0.12%            libjvm.so
   0.08%         libc-2.31.so
   0.02%                     
   0.02%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%       libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_interface_array

# Run progress: 50.00% complete, ETA 00:07:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.137 ns/op
# Warmup Iteration   2: 20.738 ns/op
# Warmup Iteration   3: 20.728 ns/op
# Warmup Iteration   4: 20.711 ns/op
# Warmup Iteration   5: 20.708 ns/op
Iteration   1: 20.715 ns/op
Iteration   2: 20.739 ns/op
Iteration   3: 20.712 ns/op
Iteration   4: 20.722 ns/op
Iteration   5: 20.691 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_interface_array":
  20.716 ±(99.9%) 0.068 ns/op [Average]
  (min, avg, max) = (20.691, 20.716, 20.739), stdev = 0.018
  CI (99.9%): [20.648, 20.784] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_interface_array:asm":
PrintAssembly processed: 252275 total address lines.
Perf output processed (skipped 60.552 seconds):
 Column 1: cycles (50577 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array, version 4, compile id 1105 

                                                     0x00007faee72510b2:   jae    0x00007faee725177c           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@22 (line 122)
                                                     0x00007faee72510b8:   mov    %r11d,%r8d
                                                     0x00007faee72510bb:   mov    $0x1,%r11d
          ╭                                          0x00007faee72510c1:   jmp    0x00007faee725127e           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@13 (line 122)
          │                                          0x00007faee72510c6:   data16 data16 nopw 0x0(%rax,%rax,1)
          │                                          0x00007faee72510d1:   data16 data16 xchg %ax,%ax
          │                                          0x00007faee72510d5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@16 (line 122)
   1.39%  │                  ↗                       0x00007faee72510e0:   mov    0x10(%r9,%r11,4),%eax        ; ImmutableOopMap {rax=NarrowOop r9=Oop }
          │                  │                                                                                 ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │                  │                                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@13 (line 122)
   2.07%  │                  │                       0x00007faee72510e5:   mov    0x8(,%rax,8),%ecx            ; implicit exception: dispatches to 0x00007faee7251957
  12.19%  │                  │                       0x00007faee72510ec:   cmp    $0x102fa00,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          │╭                 │                       0x00007faee72510f2:   je     0x00007faee725128e           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││                 │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084800::invoke@94
          ││                 │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c087000::tableSwitch@103
          ││                 │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a800::delegate@14
          ││                 │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c089c00::invoke@114
          ││                 │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a400::linkToTargetMethod@6
          ││                 │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          ││                 │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   1.82%  ││                 │                       0x00007faee72510f8:   nopl   0x0(%rax,%rax,1)
   0.18%  ││                 │                       0x00007faee7251100:   cmp    $0x102b160,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          ││╭                │                       0x00007faee7251106:   je     0x00007faee72512c4
   3.07%  │││                │                       0x00007faee725110c:   cmp    $0x102b550,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
   0.44%  │││                │                       0x00007faee7251112:   sete   %bl
   0.30%  │││                │                       0x00007faee7251115:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          │││                │                                                                                 ; - java.lang.Class::isInstance@0
          │││                │                                                                                 ; - java.lang.invoke.LambdaForm$DMH/0x00007fae6c007000::invokeSpecial@11
          │││                │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c082c00::invoke@21
          │││                │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@32
          │││                │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││                │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          │││                │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││                │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084800::invoke@91
          │││                │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c087000::tableSwitch@103
          │││                │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a800::delegate@14
          │││                │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c089c00::invoke@114
          │││                │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a400::linkToTargetMethod@6
          │││                │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          │││                │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.22%  │││                │                       0x00007faee7251118:   nopl   0x0(%rax,%rax,1)
   1.04%  │││                │                       0x00007faee7251120:   test   $0x1,%ebx
          │││╭               │                       0x00007faee7251126:   jne    0x00007faee7251298
   0.84%  ││││               │                       0x00007faee725112c:   cmp    $0x102bd58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
   0.41%  ││││               │                       0x00007faee7251132:   sete   %bl
   0.27%  ││││               │                       0x00007faee7251135:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          ││││               │                                                                                 ; - java.lang.Class::isInstance@0
          ││││               │                                                                                 ; - java.lang.invoke.LambdaForm$DMH/0x00007fae6c007000::invokeSpecial@11
          ││││               │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c082c00::invoke@21
          ││││               │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@32
          ││││               │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││               │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││               │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││               │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││               │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││               │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084800::invoke@91
          ││││               │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c087000::tableSwitch@103
          ││││               │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a800::delegate@14
          ││││               │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c089c00::invoke@114
          ││││               │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a400::linkToTargetMethod@6
          ││││               │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          ││││               │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.78%  ││││               │                       0x00007faee7251138:   nopl   0x0(%rax,%rax,1)
   0.21%  ││││               │                       0x00007faee7251140:   test   $0x1,%ebx
          ││││╭              │                       0x00007faee7251146:   jne    0x00007faee72513fa
   2.06%  │││││              │                       0x00007faee725114c:   cmp    $0x102f800,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
   0.40%  │││││              │                       0x00007faee7251152:   sete   %bl
   0.33%  │││││              │                       0x00007faee7251155:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          │││││              │                                                                                 ; - java.lang.Class::isInstance@0
          │││││              │                                                                                 ; - java.lang.invoke.LambdaForm$DMH/0x00007fae6c007000::invokeSpecial@11
          │││││              │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c082c00::invoke@21
          │││││              │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@32
          │││││              │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││              │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          │││││              │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││              │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          │││││              │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││              │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          │││││              │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││              │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084800::invoke@91
          │││││              │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c087000::tableSwitch@103
          │││││              │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a800::delegate@14
          │││││              │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c089c00::invoke@114
          │││││              │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a400::linkToTargetMethod@6
          │││││              │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          │││││              │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.28%  │││││              │                       0x00007faee7251158:   nopl   0x0(%rax,%rax,1)
   0.47%  │││││              │                       0x00007faee7251160:   test   $0x1,%ebx
          │││││╭             │                       0x00007faee7251166:   jne    0x00007faee7251405
   1.18%  ││││││             │                       0x00007faee725116c:   cmp    $0x102bb58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
   0.50%  ││││││             │                       0x00007faee7251172:   sete   %bl
   0.30%  ││││││             │                       0x00007faee7251175:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          ││││││             │                                                                                 ; - java.lang.Class::isInstance@0
          ││││││             │                                                                                 ; - java.lang.invoke.LambdaForm$DMH/0x00007fae6c007000::invokeSpecial@11
          ││││││             │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c082c00::invoke@21
          ││││││             │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@32
          ││││││             │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││             │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││             │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││             │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││             │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││             │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││             │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││             │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││             │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││             │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084800::invoke@91
          ││││││             │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c087000::tableSwitch@103
          ││││││             │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a800::delegate@14
          ││││││             │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c089c00::invoke@114
          ││││││             │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a400::linkToTargetMethod@6
          ││││││             │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          ││││││             │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.46%  ││││││             │                       0x00007faee7251178:   nopl   0x0(%rax,%rax,1)
   0.09%  ││││││             │                       0x00007faee7251180:   test   $0x1,%ebx
          ││││││╭            │                       0x00007faee7251186:   jne    0x00007faee725140f
   1.45%  │││││││            │                       0x00007faee725118c:   cmp    $0x102b958,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
   0.61%  │││││││            │                       0x00007faee7251192:   sete   %bl
   0.35%  │││││││            │                       0x00007faee7251195:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          │││││││            │                                                                                 ; - java.lang.Class::isInstance@0
          │││││││            │                                                                                 ; - java.lang.invoke.LambdaForm$DMH/0x00007fae6c007000::invokeSpecial@11
          │││││││            │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c082c00::invoke@21
          │││││││            │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@32
          │││││││            │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││            │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          │││││││            │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││            │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          │││││││            │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││            │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          │││││││            │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││            │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          │││││││            │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││            │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          │││││││            │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││            │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084800::invoke@91
          │││││││            │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c087000::tableSwitch@103
          │││││││            │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a800::delegate@14
          │││││││            │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c089c00::invoke@114
          │││││││            │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a400::linkToTargetMethod@6
          │││││││            │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          │││││││            │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.17%  │││││││            │                       0x00007faee7251198:   nopl   0x0(%rax,%rax,1)
   0.17%  │││││││            │                       0x00007faee72511a0:   test   $0x1,%ebx
          │││││││╭           │                       0x00007faee72511a6:   jne    0x00007faee7251420
   1.35%  ││││││││           │                       0x00007faee72511ac:   cmp    $0x102b750,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
   0.73%  ││││││││           │                       0x00007faee72511b2:   sete   %bl
   0.52%  ││││││││           │                       0x00007faee72511b5:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          ││││││││           │                                                                                 ; - java.lang.Class::isInstance@0
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$DMH/0x00007fae6c007000::invokeSpecial@11
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c082c00::invoke@21
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@32
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084800::invoke@91
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c087000::tableSwitch@103
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a800::delegate@14
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c089c00::invoke@114
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a400::linkToTargetMethod@6
          ││││││││           │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          ││││││││           │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.07%  ││││││││           │                       0x00007faee72511b8:   nopl   0x0(%rax,%rax,1)
   0.02%  ││││││││           │                       0x00007faee72511c0:   test   $0x1,%ebx
          ││││││││           │                       0x00007faee72511c6:   je     0x00007faee7251839           ;* unwind (locked if synchronized)
          ││││││││           │                                                                                 ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@46
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084800::invoke@91
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c087000::tableSwitch@103
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a800::delegate@14
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c089c00::invoke@114
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a400::linkToTargetMethod@6
          ││││││││           │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          ││││││││           │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.09%  ││││││││           │                       0x00007faee72511cc:   mov    $0x7,%ebx                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@92
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
          ││││││││           │                                                                                 ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084800::invoke@91
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c087000::tableSwitch@103
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a800::delegate@14
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c089c00::invoke@114
          ││││││││           │                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a400::linkToTargetMethod@6
          ││││││││           │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          ││││││││           │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   3.03%  ││││││││           │↗↗  ↗            ↗↗↗   0x00007faee72511d1:   mov    %eax,%edi
   0.03%  ││││││││           │││  │            │││   0x00007faee72511d3:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││││││           │││  │            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@22 (line 122)
   4.15%  ││││││││           │││  │            │││   0x00007faee72511d7:   cmp    $0x5,%ebx
          ││││││││╭          │││  │            │││   0x00007faee72511da:   jge    0x00007faee7251219
   0.08%  │││││││││          │││  │            │││   0x00007faee72511e0:   cmp    $0x3,%ebx
          │││││││││╭         │││  │            │││   0x00007faee72511e3:   jge    0x00007faee725120b
   0.61%  ││││││││││         │││  │            │││   0x00007faee72511e9:   cmp    $0x2,%ebx
          ││││││││││╭        │││  │            │││   0x00007faee72511ec:   jge    0x00007faee72512ee
   0.01%  │││││││││││        │││  │            │││   0x00007faee72511f2:   cmp    $0x0,%ebx
          │││││││││││╭       │││  │            │││   0x00007faee72511f5:   je     0x00007faee72512a5
   0.75%  ││││││││││││       │││  │            │││   0x00007faee72511fb:   cmp    $0x1,%ebx
          ││││││││││││       │││  │            │││   0x00007faee72511fe:   xchg   %ax,%ax
   0.04%  ││││││││││││╭      │││  │            │││   0x00007faee7251200:   je     0x00007faee7251315
          │││││││││││││      │││  │            │││   0x00007faee7251206:   jmp    0x00007faee725187f
   0.46%  │││││││││↘│││      │││  │            │││   0x00007faee725120b:   cmp    $0x3,%ebx
          │││││││││ │││╭     │││  │            │││   0x00007faee725120e:   je     0x00007faee72513d3
   0.04%  │││││││││ ││││╭    │││  │            │││   0x00007faee7251214:   jmp    0x00007faee72512ce
   0.30%  ││││││││↘ │││││    │││  │            │││   0x00007faee7251219:   cmp    $0x7,%ebx
   0.18%  ││││││││  │││││    │││  │            │││   0x00007faee725121c:   nopl   0x0(%rax)
          ││││││││  │││││    │││  │            │││   0x00007faee7251220:   jg     0x00007faee725187f
   0.93%  ││││││││  │││││    │││  │            │││   0x00007faee7251226:   cmp    $0x7,%ebx
          ││││││││  │││││╭   │││  │            │││   0x00007faee7251229:   jge    0x00007faee7251354
   0.22%  ││││││││  ││││││   │││  │            │││   0x00007faee725122f:   cmp    $0x5,%ebx
          ││││││││  ││││││╭  │││  │            │││   0x00007faee7251232:   je     0x00007faee725123d
   0.06%  ││││││││  │││││││╭ │││  │            │││   0x00007faee7251238:   jmp    0x00007faee7251393           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││││ │││  │            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@16 (line 193)
          ││││││││  ││││││││ │││  │            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.40%  ││││││││  ││││││↘│ │││  │            │││   0x00007faee725123d:   data16 xchg %ax,%ax
          ││││││││  ││││││ │ │││  │            │││   0x00007faee7251240:   cmp    $0x102bb58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          ││││││││  ││││││ │ │││  │            │││   0x00007faee7251246:   jne    0x00007faee72517bf           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││ │ │││  │            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@245 (line 224)
          ││││││││  ││││││ │ │││  │            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.21%  ││││││││  ││││││ │ │││  │            │││   0x00007faee725124c:   vmovsd 0x10(,%rax,8),%xmm2          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││ │ │││  │            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@252 (line 225)
          ││││││││  ││││││ │ │││  │            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   1.00%  ││││││││  ││││││ │ │││  │            │││   0x00007faee7251255:   vcvttsd2si %xmm2,%eax
   1.62%  ││││││││  ││││││ │ │││  │            │││   0x00007faee7251259:   nopl   0x0(%rax)
          ││││││││  ││││││ │ │││  │            │││   0x00007faee7251260:   cmp    $0x80000000,%eax
          ││││││││  ││││││ │ │││  │            │││   0x00007faee7251266:   je     0x00007faee725142a           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││ │ │││  │            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@255 (line 225)
          ││││││││  ││││││ │ │││  │            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.03%  ││││││││  ││││││ │ │││  │            │││   0x00007faee725126c:   test   $0x1,%eax
          ││││││││  ││││││ │╭│││  │            │││   0x00007faee7251272:   je     0x00007faee7251419           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││ │││││  │            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@258 (line 225)
          ││││││││  ││││││ │││││  │            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   1.71%  ││││││││  ││││││ │││││↗↗│↗↗↗↗↗↗↗↗↗↗↗↗│││↗  0x00007faee7251278:   add    %eax,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││ ││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   1.29%  ││││││││  ││││││ ││││││││││││││││││││││││  0x00007faee725127b:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││ ││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@33 (line 122)
   0.16%  ↘│││││││  ││││││ ││││││││││││││││││││││││  0x00007faee725127e:   xchg   %ax,%ax
   0.16%   │││││││  ││││││ ││││││││││││││││││││││││  0x00007faee7251280:   cmp    %r11d,%r10d
           │││││││  ││││││ ││╰│││││││││││││││││││││  0x00007faee7251283:   jg     0x00007faee72510e0
           │││││││  ││││││ ││ │││││││││││││││││││││  0x00007faee7251289:   jmp    0x00007faee725147a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │││││││  ││││││ ││ │││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@16 (line 122)
   2.56%   ↘││││││  ││││││ ││ │││││││││││││││││││││  0x00007faee725128e:   mov    $0x1,%ebx
   2.14%    ││││││  ││││││ ││ ╰││││││││││││││││││││  0x00007faee7251293:   jmp    0x00007faee72511d1           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            ││││││  ││││││ ││  ││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084800::invoke@94
            ││││││  ││││││ ││  ││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c087000::tableSwitch@103
            ││││││  ││││││ ││  ││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a800::delegate@14
            ││││││  ││││││ ││  ││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c089c00::invoke@114
            ││││││  ││││││ ││  ││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a400::linkToTargetMethod@6
            ││││││  ││││││ ││  ││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
            ││││││  ││││││ ││  ││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.32%    │↘││││  ││││││ ││  ││││││││││││││││││││  0x00007faee7251298:   mov    $0x2,%ebx
   1.38%    │ ││││  ││││││ ││  ││││││││││││││││││││  0x00007faee725129d:   data16 xchg %ax,%ax
            │ ││││  ││││││ ││  ╰│││││││││││││││││││  0x00007faee72512a0:   jmp    0x00007faee72511d1
   0.40%    │ ││││  │↘││││ ││   │││││││││││││││││││  0x00007faee72512a5:   cmp    $0x102b160,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
            │ ││││  │ ││││ ││   │││││││││││││││││││  0x00007faee72512ab:   jne    0x00007faee7251744           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │ ││││  │ ││││ ││   │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@75 (line 194)
            │ ││││  │ ││││ ││   │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.01%    │ ││││  │ ││││ ││   │││││││││││││││││││  0x00007faee72512b1:   mov    0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │ ││││  │ ││││ ││   │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@80 (line 195)
            │ ││││  │ ││││ ││   │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   1.20%    │ ││││  │ ││││ ││   │││││││││││││││││││  0x00007faee72512b8:   test   $0x1,%eax
            │ ││││  │ ││││ ││   ╰││││││││││││││││││  0x00007faee72512be:   jne    0x00007faee7251278           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │ ││││  │ ││││ ││    ││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
            │ ││││  │ ││││ ││    ││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.16%    │ ││││  │ ││││ ││    ││││││││││││││││││  0x00007faee72512c0:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
            │ ││││  │ ││││ ││    ││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
            │ ││││  │ ││││ ││    ││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.03%    │ ││││  │ ││││ ││    ╰│││││││││││││││││  0x00007faee72512c2:   jmp    0x00007faee7251278           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │ ││││  │ ││││ ││     │││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@358 (line 193)
            │ ││││  │ ││││ ││     │││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.54%    ↘ ││││  │ ││││ ││     │││││││││││││││││  0x00007faee72512c4:   mov    $0x0,%ebx
   2.26%      ││││  │ ││││ ││     ╰││││││││││││││││  0x00007faee72512c9:   jmp    0x00007faee72511d1
   0.37%      ││││  │ ││↘│ ││      ││││││││││││││││  0x00007faee72512ce:   cmp    $0x102f800,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
              ││││  │ ││ │ ││      ││││││││││││││││  0x00007faee72512d4:   jne    0x00007faee72517b1           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││  │ ││ │ ││      ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@211 (line 218)
              ││││  │ ││ │ ││      ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.09%      ││││  │ ││ │ ││      ││││││││││││││││  0x00007faee72512da:   movzwl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              ││││  │ ││ │ ││      ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@218 (line 219)
              ││││  │ ││ │ ││      ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.58%      ││││  │ ││ │ ││      ││││││││││││││││  0x00007faee72512e2:   test   $0x1,%eax
              ││││  │ ││ │ ││      ╰│││││││││││││││  0x00007faee72512e8:   jne    0x00007faee7251278           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              ││││  │ ││ │ ││       │││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@223 (line 219)
              ││││  │ ││ │ ││       │││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.28%      ││││  │ ││ │ ││       │││││││││││││││  0x00007faee72512ea:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
              ││││  │ ││ │ ││       │││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@232 (line 220)
              ││││  │ ││ │ ││       │││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.12%      ││││  │ ││ │ ││       ╰││││││││││││││  0x00007faee72512ec:   jmp    0x00007faee7251278
   0.00%      ││││  ↘ ││ │ ││        ││││││││││││││  0x00007faee72512ee:   cmp    $0x102b550,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
              ││││    ││ │ ││        ││││││││││││││  0x00007faee72512f4:   jne    0x00007faee72518a5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││    ││ │ ││        ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@143 (line 206)
              ││││    ││ │ ││        ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.38%      ││││    ││ │ ││        ││││││││││││││  0x00007faee72512fa:   movswl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              ││││    ││ │ ││        ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@150 (line 207)
              ││││    ││ │ ││        ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.86%      ││││    ││ │ ││        ││││││││││││││  0x00007faee7251302:   test   $0x1,%eax
              ││││    ││ │ ││        ╰│││││││││││││  0x00007faee7251308:   jne    0x00007faee7251278           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              ││││    ││ │ ││         │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@155 (line 207)
              ││││    ││ │ ││         │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.19%      ││││    ││ │ ││         │││││││││││││  0x00007faee725130e:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
              ││││    ││ │ ││         │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@164 (line 208)
              ││││    ││ │ ││         │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.03%      ││││    ││ │ ││         ╰││││││││││││  0x00007faee7251310:   jmp    0x00007faee7251278           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              ││││    ││ │ ││          ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@358 (line 193)
              ││││    ││ │ ││          ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.09%      ││││    ↘│ │ ││          ││││││││││││  0x00007faee7251315:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.21%      ││││     │ │ ││          ││││││││││││  0x00007faee7251320:   cmp    $0x102fa00,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
              ││││     │ │ ││          ││││││││││││  0x00007faee7251326:   jne    0x00007faee72518b6           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││     │ │ ││          ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@105 (line 200)
              ││││     │ │ ││          ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.00%      ││││     │ │ ││          ││││││││││││  0x00007faee725132c:   mov    0x10(,%rax,8),%rcx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              ││││     │ │ ││          ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@112 (line 201)
              ││││     │ │ ││          ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.87%      ││││     │ │ ││          ││││││││││││  0x00007faee7251334:   mov    %ecx,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
              ││││     │ │ ││          ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@138 (line 204)
              ││││     │ │ ││          ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
              ││││     │ │ ││          ││││││││││││  0x00007faee7251336:   data16 nopw 0x0(%rax,%rax,1)
              ││││     │ │ ││          ││││││││││││  0x00007faee7251340:   test   $0x1,%rcx
              ││││     │ │ ││          ╰│││││││││││  0x00007faee7251347:   jne    0x00007faee7251278           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              ││││     │ │ ││           │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@119 (line 201)
              ││││     │ │ ││           │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.18%      ││││     │ │ ││           │││││││││││  0x00007faee725134d:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
              ││││     │ │ ││           │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@129 (line 202)
              ││││     │ │ ││           │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.07%      ││││     │ │ ││           ╰││││││││││  0x00007faee725134f:   jmp    0x00007faee7251278
   0.18%      ││││     │ ↘ ││            ││││││││││  0x00007faee7251354:   cmp    $0x102b750,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
              ││││     │   ││            ││││││││││  0x00007faee725135a:   jne    0x00007faee725185c           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││     │   ││            ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@319 (line 236)
              ││││     │   ││            ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.58%      ││││     │   ││            ││││││││││  0x00007faee7251360:   mov    0xc(,%rax,8),%ecx            ; ImmutableOopMap {rcx=NarrowOop rdi=Oop r9=Oop }
              ││││     │   ││            ││││││││││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
              ││││     │   ││            ││││││││││                                                            ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007fae6c084800::invoke@94
              ││││     │   ││            ││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c087000::tableSwitch@103
              ││││     │   ││            ││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a800::delegate@14
              ││││     │   ││            ││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c089c00::invoke@114
              ││││     │   ││            ││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a400::linkToTargetMethod@6
              ││││     │   ││            ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
              ││││     │   ││            ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.83%      ││││     │   ││            ││││││││││  0x00007faee7251367:   mov    0x14(,%rcx,8),%eax           ; implicit exception: dispatches to 0x00007faee725197a
   2.14%      ││││     │   ││            ││││││││││  0x00007faee725136e:   movsbl 0x10(,%rcx,8),%ecx           ; ImmutableOopMap {rdi=Oop r9=Oop }
              ││││     │   ││            ││││││││││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
              ││││     │   ││            ││││││││││                                                            ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007fae6c084800::invoke@94
              ││││     │   ││            ││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c087000::tableSwitch@103
              ││││     │   ││            ││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a800::delegate@14
              ││││     │   ││            ││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c089c00::invoke@114
              ││││     │   ││            ││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a400::linkToTargetMethod@6
              ││││     │   ││            ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
              ││││     │   ││            ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   1.01%      ││││     │   ││            ││││││││││  0x00007faee7251376:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007faee725199d
   0.33%      ││││     │   ││            ││││││││││  0x00007faee725137d:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
              ││││     │   ││            ││││││││││                                                            ; - java.lang.String::length@9 (line 1519)
              ││││     │   ││            ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@329 (line 237)
              ││││     │   ││            ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.50%      ││││     │   ││            ││││││││││  0x00007faee725137f:   nop
              ││││     │   ││            ││││││││││  0x00007faee7251380:   test   $0x1,%eax
              ││││     │   ││            ╰│││││││││  0x00007faee7251386:   jne    0x00007faee7251278           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              ││││     │   ││             │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@334 (line 237)
              ││││     │   ││             │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.01%      ││││     │   ││             │││││││││  0x00007faee725138c:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
              ││││     │   ││             │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@346 (line 238)
              ││││     │   ││             │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.00%      ││││     │   ││             ╰││││││││  0x00007faee725138e:   jmp    0x00007faee7251278
              ││││     │   ↘│              ││││││││  0x00007faee7251393:   cmp    $0x102b958,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
              ││││     │    │              ││││││││  0x00007faee7251399:   jne    0x00007faee7251817           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││     │    │              ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@282 (line 230)
              ││││     │    │              ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.51%      ││││     │    │              ││││││││  0x00007faee725139f:   vmovss 0xc(,%rax,8),%xmm2           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              ││││     │    │              ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@289 (line 231)
              ││││     │    │              ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.64%      ││││     │    │              ││││││││  0x00007faee72513a8:   vcvttss2si %xmm2,%eax
   1.68%      ││││     │    │              ││││││││  0x00007faee72513ac:   cmp    $0x80000000,%eax
              ││││     │    │              ││││││││  0x00007faee72513b2:   je     0x00007faee7251448           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
              ││││     │    │              ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@292 (line 231)
              ││││     │    │              ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.02%      ││││     │    │              ││││││││  0x00007faee72513b8:   nopl   0x0(%rax,%rax,1)
   0.04%      ││││     │    │              ││││││││  0x00007faee72513c0:   test   $0x1,%eax
              ││││     │    │              ╰│││││││  0x00007faee72513c6:   jne    0x00007faee7251278           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              ││││     │    │               │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@295 (line 231)
              ││││     │    │               │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.12%      ││││     │    │               │││││││  0x00007faee72513cc:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
              ││││     │    │               │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@305 (line 232)
              ││││     │    │               │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.10%      ││││     │    │               ╰││││││  0x00007faee72513ce:   jmp    0x00007faee7251278
   0.32%      ││││     ↘    │                ││││││  0x00007faee72513d3:   cmp    $0x102bd58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
              ││││          │                ││││││  0x00007faee72513d9:   jne    0x00007faee7251828           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││          │                ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@177 (line 212)
              ││││          │                ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.04%      ││││          │                ││││││  0x00007faee72513df:   movsbl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              ││││          │                ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@184 (line 213)
              ││││          │                ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.84%      ││││          │                ││││││  0x00007faee72513e7:   test   $0x1,%eax
              ││││          │                ╰│││││  0x00007faee72513ed:   jne    0x00007faee7251278           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              ││││          │                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@189 (line 213)
              ││││          │                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.19%      ││││          │                 │││││  0x00007faee72513f3:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
              ││││          │                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@198 (line 214)
              ││││          │                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.09%      ││││          │                 ╰││││  0x00007faee72513f5:   jmp    0x00007faee7251278           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              ││││          │                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@358 (line 193)
              ││││          │                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.37%      ↘│││          │                  ││││  0x00007faee72513fa:   mov    $0x3,%ebx
   1.31%       │││          │                  ││││  0x00007faee72513ff:   nop
               │││          │                  ╰│││  0x00007faee7251400:   jmp    0x00007faee72511d1           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
               │││          │                   │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@92
               │││          │                   │││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               │││          │                   │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
               │││          │                   │││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               │││          │                   │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084800::invoke@91
               │││          │                   │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c087000::tableSwitch@103
               │││          │                   │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a800::delegate@14
               │││          │                   │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c089c00::invoke@114
               │││          │                   │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a400::linkToTargetMethod@6
               │││          │                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
               │││          │                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.31%       ↘││          │                   │││  0x00007faee7251405:   mov    $0x4,%ebx
   1.93%        ││          │                   ╰││  0x00007faee725140a:   jmp    0x00007faee72511d1           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                ││          │                    ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@92
                ││          │                    ││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                ││          │                    ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
                ││          │                    ││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                ││          │                    ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
                ││          │                    ││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                ││          │                    ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084800::invoke@91
                ││          │                    ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c087000::tableSwitch@103
                ││          │                    ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a800::delegate@14
                ││          │                    ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c089c00::invoke@114
                ││          │                    ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a400::linkToTargetMethod@6
                ││          │                    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
                ││          │                    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.16%        ↘│          │                    ││  0x00007faee725140f:   mov    $0x5,%ebx
   1.60%         │          │                    ╰│  0x00007faee7251414:   jmp    0x00007faee72511d1           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                 │          │                     │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@92
                 │          │                     │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                 │          │                     │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
                 │          │                     │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                 │          │                     │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
                 │          │                     │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                 │          │                     │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
                 │          │                     │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                 │          │                     │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084800::invoke@91
                 │          │                     │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c087000::tableSwitch@103
                 │          │                     │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a800::delegate@14
                 │          │                     │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c089c00::invoke@114
                 │          │                     │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c08a400::linkToTargetMethod@6
                 │          │                     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
                 │          │                     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.27%         │          ↘                     │  0x00007faee7251419:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                 │                                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@268 (line 226)
                 │                                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.08%         │                                ╰  0x00007faee725141b:   jmp    0x00007faee7251278           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                 │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@358 (line 193)
                 │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   1.36%         ↘                                   0x00007faee7251420:   mov    $0x6,%ebx
   1.09%                                             0x00007faee7251425:   jmp    0x00007faee72511d1           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                                               ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@92
                                                                                                               ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                                                               ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
                                                                                                               ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                                                               ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
                                                                                                               ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                                                               ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
                                                                                                               ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                                                               ; - java.lang.invoke.LambdaForm$MH/0x00007fae6c084000::guard@89
                                                                                                               ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
....................................................................................................
  98.27%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array, version 4, compile id 1105 
   0.17%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%               kernel  [unknown] 
   0.92%  <...other 300 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.28%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array, version 4, compile id 1105 
   1.33%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  fileStream::write 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%          interpreter  return entry points  
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.19%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.28%       jvmci, level 4
   1.33%               kernel
   0.14%            libjvm.so
   0.10%         libc-2.31.so
   0.04%                     
   0.03%   libpthread-2.31.so
   0.03%          interpreter
   0.02%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%     perf-2133822.map
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_interface_array

# Run progress: 62.50% complete, ETA 00:05:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 23.004 ns/op
# Warmup Iteration   2: 19.441 ns/op
# Warmup Iteration   3: 19.449 ns/op
# Warmup Iteration   4: 19.427 ns/op
# Warmup Iteration   5: 19.416 ns/op
Iteration   1: 19.435 ns/op
Iteration   2: 19.477 ns/op
Iteration   3: 19.437 ns/op
Iteration   4: 19.495 ns/op
Iteration   5: 19.466 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_interface_array":
  19.462 ±(99.9%) 0.099 ns/op [Average]
  (min, avg, max) = (19.435, 19.462, 19.495), stdev = 0.026
  CI (99.9%): [19.362, 19.561] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_interface_array:asm":
PrintAssembly processed: 250987 total address lines.
Perf output processed (skipped 60.509 seconds):
 Column 1: cycles (50648 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 4, compile id 1122 

                                     0x00007fee53251cb3:   mov    %r11d,%r8d
                                     0x00007fee53251cb6:   mov    $0x1,%r11d
                                     0x00007fee53251cbc:   nopl   0x0(%rax)
          ╭                          0x00007fee53251cc0:   jmp    0x00007fee53251e72           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@13 (line 100)
          │                          0x00007fee53251cc5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │                          0x00007fee53251cd0:   data16 data16 xchg %ax,%ax
          │                          0x00007fee53251cd4:   nopl   0x0(%rax,%rax,1)
          │                          0x00007fee53251cdc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@16 (line 100)
   0.39%  │             ↗            0x00007fee53251ce0:   mov    0x10(%r9,%r11,4),%eax        ; ImmutableOopMap {rax=NarrowOop r9=Oop }
          │             │                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │             │                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@13 (line 100)
   2.59%  │             │            0x00007fee53251ce5:   mov    0x8(,%rax,8),%ecx            ; implicit exception: dispatches to 0x00007fee5325241a
  12.92%  │             │            0x00007fee53251cec:   cmp    $0x102fc00,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          │╭            │            0x00007fee53251cf2:   je     0x00007fee53251e80           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││            │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084800::invoke@94
          ││            │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8087000::tableSwitch@103
          ││            │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a800::delegate@14
          ││            │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8089c00::invoke@114
          ││            │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a400::linkToTargetMethod@6
          ││            │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          ││            │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.66%  ││            │            0x00007fee53251cf8:   nopl   0x0(%rax,%rax,1)
   0.23%  ││            │            0x00007fee53251d00:   cmp    $0x102b280,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          ││╭           │            0x00007fee53251d06:   je     0x00007fee53251edb
   3.11%  │││           │            0x00007fee53251d0c:   cmp    $0x102b670,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
   0.33%  │││           │            0x00007fee53251d12:   sete   %bl
   0.22%  │││           │            0x00007fee53251d15:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          │││           │                                                                      ; - java.lang.Class::isInstance@0
          │││           │                                                                      ; - java.lang.invoke.LambdaForm$DMH/0x00007fedd8007000::invokeSpecial@11
          │││           │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8082c00::invoke@21
          │││           │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@32
          │││           │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││           │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          │││           │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││           │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084800::invoke@91
          │││           │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8087000::tableSwitch@103
          │││           │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a800::delegate@14
          │││           │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8089c00::invoke@114
          │││           │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a400::linkToTargetMethod@6
          │││           │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          │││           │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.42%  │││           │            0x00007fee53251d18:   nopl   0x0(%rax,%rax,1)
   0.99%  │││           │            0x00007fee53251d20:   test   $0x1,%ebx
          │││╭          │            0x00007fee53251d26:   jne    0x00007fee53251e8a
   0.88%  ││││          │            0x00007fee53251d2c:   cmp    $0x102f800,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
   0.34%  ││││          │            0x00007fee53251d32:   sete   %bl
   0.37%  ││││          │            0x00007fee53251d35:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          ││││          │                                                                      ; - java.lang.Class::isInstance@0
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$DMH/0x00007fedd8007000::invokeSpecial@11
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8082c00::invoke@21
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@32
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084800::invoke@91
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8087000::tableSwitch@103
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a800::delegate@14
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8089c00::invoke@114
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a400::linkToTargetMethod@6
          ││││          │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          ││││          │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.83%  ││││          │            0x00007fee53251d38:   nopl   0x0(%rax,%rax,1)
   0.19%  ││││          │            0x00007fee53251d40:   test   $0x1,%ebx
          ││││          │            0x00007fee53251d46:   jne    0x00007fee53251f9e
   1.97%  ││││          │            0x00007fee53251d4c:   cmp    $0x102fa00,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
   0.35%  ││││          │            0x00007fee53251d52:   sete   %bl
   0.26%  ││││          │            0x00007fee53251d55:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          ││││          │                                                                      ; - java.lang.Class::isInstance@0
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$DMH/0x00007fedd8007000::invokeSpecial@11
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8082c00::invoke@21
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@32
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084800::invoke@91
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8087000::tableSwitch@103
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a800::delegate@14
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8089c00::invoke@114
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a400::linkToTargetMethod@6
          ││││          │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          ││││          │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.33%  ││││          │            0x00007fee53251d58:   nopl   0x0(%rax,%rax,1)
   0.56%  ││││          │            0x00007fee53251d60:   test   $0x1,%ebx
          ││││          │            0x00007fee53251d66:   jne    0x00007fee53251fa8
   1.10%  ││││          │            0x00007fee53251d6c:   cmp    $0x102bc78,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
   0.46%  ││││          │            0x00007fee53251d72:   sete   %bl
   0.25%  ││││          │            0x00007fee53251d75:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          ││││          │                                                                      ; - java.lang.Class::isInstance@0
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$DMH/0x00007fedd8007000::invokeSpecial@11
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8082c00::invoke@21
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@32
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084800::invoke@91
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8087000::tableSwitch@103
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a800::delegate@14
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8089c00::invoke@114
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a400::linkToTargetMethod@6
          ││││          │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          ││││          │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.52%  ││││          │            0x00007fee53251d78:   nopl   0x0(%rax,%rax,1)
   0.14%  ││││          │            0x00007fee53251d80:   test   $0x1,%ebx
          ││││          │            0x00007fee53251d86:   jne    0x00007fee53251fb2
   1.57%  ││││          │            0x00007fee53251d8c:   cmp    $0x102ba78,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
   0.56%  ││││          │            0x00007fee53251d92:   sete   %bl
   0.38%  ││││          │            0x00007fee53251d95:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          ││││          │                                                                      ; - java.lang.Class::isInstance@0
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$DMH/0x00007fedd8007000::invokeSpecial@11
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8082c00::invoke@21
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@32
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084800::invoke@91
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8087000::tableSwitch@103
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a800::delegate@14
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8089c00::invoke@114
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a400::linkToTargetMethod@6
          ││││          │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          ││││          │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.18%  ││││          │            0x00007fee53251d98:   nopl   0x0(%rax,%rax,1)
   0.15%  ││││          │            0x00007fee53251da0:   test   $0x1,%ebx
          ││││          │            0x00007fee53251da6:   jne    0x00007fee53251fbc
   1.39%  ││││          │            0x00007fee53251dac:   cmp    $0x102b870,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
   0.78%  ││││          │            0x00007fee53251db2:   sete   %bl
   0.51%  ││││          │            0x00007fee53251db5:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          ││││          │                                                                      ; - java.lang.Class::isInstance@0
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$DMH/0x00007fedd8007000::invokeSpecial@11
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8082c00::invoke@21
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@32
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084800::invoke@91
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8087000::tableSwitch@103
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a800::delegate@14
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8089c00::invoke@114
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a400::linkToTargetMethod@6
          ││││          │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          ││││          │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.07%  ││││          │            0x00007fee53251db8:   nopl   0x0(%rax,%rax,1)
   0.03%  ││││          │            0x00007fee53251dc0:   test   $0x1,%ebx
          ││││          │            0x00007fee53251dc6:   je     0x00007fee53252368           ;* unwind (locked if synchronized)
          ││││          │                                                                      ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@46
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084800::invoke@91
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8087000::tableSwitch@103
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a800::delegate@14
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8089c00::invoke@114
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a400::linkToTargetMethod@6
          ││││          │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          ││││          │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.11%  ││││          │            0x00007fee53251dcc:   mov    $0x7,%ebx                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@92
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
          ││││          │                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084800::invoke@91
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8087000::tableSwitch@103
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a800::delegate@14
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8089c00::invoke@114
          ││││          │                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a400::linkToTargetMethod@6
          ││││          │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          ││││          │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.53%  ││││          │↗↗   ↗      0x00007fee53251dd1:   mov    %eax,%edi
   0.05%  ││││          │││   │      0x00007fee53251dd3:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││          │││   │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@22 (line 100)
   3.60%  ││││          │││   │      0x00007fee53251dd7:   cmp    $0x5,%ebx
          ││││╭         │││   │      0x00007fee53251dda:   jge    0x00007fee53251e19
   0.83%  │││││         │││   │      0x00007fee53251de0:   cmp    $0x3,%ebx
          │││││╭        │││   │      0x00007fee53251de3:   jge    0x00007fee53251e0b
   0.59%  ││││││        │││   │      0x00007fee53251de9:   cmp    $0x2,%ebx
          ││││││╭       │││   │      0x00007fee53251dec:   jge    0x00007fee53251e94
   0.02%  │││││││       │││   │      0x00007fee53251df2:   cmp    $0x0,%ebx
          │││││││╭      │││   │      0x00007fee53251df5:   je     0x00007fee53251eac
   0.79%  ││││││││      │││   │      0x00007fee53251dfb:   cmp    $0x1,%ebx
   0.00%  ││││││││      │││   │      0x00007fee53251dfe:   xchg   %ax,%ax
   0.08%  ││││││││╭     │││   │      0x00007fee53251e00:   je     0x00007fee53251f15
          │││││││││     │││   │      0x00007fee53251e06:   jmp    0x00007fee532522ed
   0.19%  │││││↘│││     │││   │      0x00007fee53251e0b:   cmp    $0x3,%ebx
          │││││ │││╭    │││   │      0x00007fee53251e0e:   je     0x00007fee53251f85
   0.07%  │││││ ││││╭   │││   │      0x00007fee53251e14:   jmp    0x00007fee53251ec3
   0.45%  ││││↘ │││││   │││   │      0x00007fee53251e19:   cmp    $0x7,%ebx
   0.25%  ││││  │││││   │││   │      0x00007fee53251e1c:   nopl   0x0(%rax)
   0.00%  ││││  │││││   │││   │      0x00007fee53251e20:   jg     0x00007fee532522ed
   0.79%  ││││  │││││   │││   │      0x00007fee53251e26:   cmp    $0x7,%ebx
          ││││  │││││╭  │││   │      0x00007fee53251e29:   jge    0x00007fee53251ee5
   0.36%  ││││  ││││││  │││   │      0x00007fee53251e2f:   cmp    $0x5,%ebx
          ││││  ││││││╭ │││   │      0x00007fee53251e32:   je     0x00007fee53251e3d
   0.13%  ││││  │││││││╭│││   │      0x00007fee53251e38:   jmp    0x00007fee53251f38           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││││  │││││││││││   │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@16 (line 180)
          ││││  │││││││││││   │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.26%  ││││  ││││││↘││││   │      0x00007fee53251e3d:   data16 xchg %ax,%ax
   0.00%  ││││  ││││││ ││││   │      0x00007fee53251e40:   cmp    $0x102bc78,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          ││││  ││││││ ││││   │      0x00007fee53251e46:   jne    0x00007fee53252291           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││││││ ││││   │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@144 (line 186)
          ││││  ││││││ ││││   │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.14%  ││││  ││││││ ││││   │      0x00007fee53251e4c:   vmovsd 0x10(,%rax,8),%xmm2          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││││││ ││││   │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@151 (line 186)
          ││││  ││││││ ││││   │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.01%  ││││  ││││││ ││││   │      0x00007fee53251e55:   vcvttsd2si %xmm2,%eax
   1.78%  ││││  ││││││ ││││   │      0x00007fee53251e59:   nopl   0x0(%rax)
          ││││  ││││││ ││││   │      0x00007fee53251e60:   cmp    $0x80000000,%eax
          ││││  ││││││ ││││   │      0x00007fee53251e66:   je     0x00007fee53251fc6           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││││││ ││││   │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@154 (line 186)
          ││││  ││││││ ││││   │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.05%  ││││  ││││││ ││││↗↗↗│↗↗↗↗  0x00007fee53251e6c:   add    %eax,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││││││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   1.63%  ││││  ││││││ ││││││││││││  0x00007fee53251e6f:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││││││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@33 (line 100)
   0.00%  ↘│││  ││││││ ││││││││││││  0x00007fee53251e72:   cmp    %r11d,%r10d
           │││  ││││││ │╰││││││││││  0x00007fee53251e75:   jg     0x00007fee53251ce0
           │││  ││││││ │ ││││││││││  0x00007fee53251e7b:   jmp    0x00007fee53252005           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │││  ││││││ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@16 (line 100)
   2.59%   ↘││  ││││││ │ ││││││││││  0x00007fee53251e80:   mov    $0x1,%ebx
   2.26%    ││  ││││││ │ ╰│││││││││  0x00007fee53251e85:   jmp    0x00007fee53251dd1           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            ││  ││││││ │  │││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084800::invoke@94
            ││  ││││││ │  │││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8087000::tableSwitch@103
            ││  ││││││ │  │││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a800::delegate@14
            ││  ││││││ │  │││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8089c00::invoke@114
            ││  ││││││ │  │││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a400::linkToTargetMethod@6
            ││  ││││││ │  │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
            ││  ││││││ │  │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   2.53%    │↘  ││││││ │  │││││││││  0x00007fee53251e8a:   mov    $0x2,%ebx
   2.31%    │   ││││││ │  ╰││││││││  0x00007fee53251e8f:   jmp    0x00007fee53251dd1
   0.01%    │   ↘│││││ │   ││││││││  0x00007fee53251e94:   cmp    $0x102b670,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
            │    │││││ │   ││││││││  0x00007fee53251e9a:   jne    0x00007fee532522fe           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │    │││││ │   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@102 (line 183)
            │    │││││ │   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.30%    │    │││││ │   ││││││││  0x00007fee53251ea0:   movswl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │    │││││ │   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@109 (line 183)
            │    │││││ │   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.09%    │    │││││ │   ││││││││  0x00007fee53251ea8:   mov    %ecx,%eax
   0.01%    │    │││││ │   ╰│││││││  0x00007fee53251eaa:   jmp    0x00007fee53251e6c
   0.20%    │    ↘││││ │    │││││││  0x00007fee53251eac:   cmp    $0x102b280,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
            │     ││││ │    │││││││  0x00007fee53251eb2:   jne    0x00007fee532521df           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │     ││││ │    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@75 (line 181)
            │     ││││ │    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.16%    │     ││││ │    │││││││  0x00007fee53251eb8:   mov    0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │     ││││ │    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@80 (line 181)
            │     ││││ │    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.19%    │     ││││ │    │││││││  0x00007fee53251ebf:   mov    %ecx,%eax
            │     ││││ │    ╰││││││  0x00007fee53251ec1:   jmp    0x00007fee53251e6c
   0.20%    │     ││↘│ │     ││││││  0x00007fee53251ec3:   cmp    $0x102fa00,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
            │     ││ │ │     ││││││  0x00007fee53251ec9:   jne    0x00007fee53252332           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │     ││ │ │     ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@130 (line 185)
            │     ││ │ │     ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.10%    │     ││ │ │     ││││││  0x00007fee53251ecf:   movzwl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │     ││ │ │     ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@137 (line 185)
            │     ││ │ │     ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.73%    │     ││ │ │     ││││││  0x00007fee53251ed7:   mov    %ecx,%eax
            │     ││ │ │     ╰│││││  0x00007fee53251ed9:   jmp    0x00007fee53251e6c           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │     ││ │ │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@187 (line 180)
            │     ││ │ │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   2.72%    ↘     ││ │ │      │││││  0x00007fee53251edb:   mov    $0x0,%ebx
   2.28%          ││ │ │      ╰││││  0x00007fee53251ee0:   jmp    0x00007fee53251dd1
   0.13%          ││ ↘ │       ││││  0x00007fee53251ee5:   cmp    $0x102b870,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
                  ││   │       ││││  0x00007fee53251eeb:   jne    0x00007fee5325238d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                  ││   │       ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@174 (line 188)
                  ││   │       ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.68%          ││   │       ││││  0x00007fee53251ef1:   mov    0xc(,%rax,8),%ecx            ; ImmutableOopMap {rcx=NarrowOop rdi=Oop r9=Oop }
                  ││   │       ││││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
                  ││   │       ││││                                                            ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007fedd8084800::invoke@94
                  ││   │       ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8087000::tableSwitch@103
                  ││   │       ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a800::delegate@14
                  ││   │       ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8089c00::invoke@114
                  ││   │       ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a400::linkToTargetMethod@6
                  ││   │       ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
                  ││   │       ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.76%          ││   │       ││││  0x00007fee53251ef8:   mov    0x14(,%rcx,8),%eax           ; implicit exception: dispatches to 0x00007fee5325243d
   2.01%          ││   │       ││││  0x00007fee53251eff:   movsbl 0x10(,%rcx,8),%ecx           ; ImmutableOopMap {rdi=Oop r9=Oop }
                  ││   │       ││││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
                  ││   │       ││││                                                            ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007fedd8084800::invoke@94
                  ││   │       ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8087000::tableSwitch@103
                  ││   │       ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a800::delegate@14
                  ││   │       ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8089c00::invoke@114
                  ││   │       ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a400::linkToTargetMethod@6
                  ││   │       ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
                  ││   │       ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.89%          ││   │       ││││  0x00007fee53251f07:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007fee53252460
   0.46%          ││   │       ││││  0x00007fee53251f0e:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                  ││   │       ││││                                                            ; - java.lang.String::length@9 (line 1519)
                  ││   │       ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@184 (line 188)
                  ││   │       ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.53%          ││   │       ╰│││  0x00007fee53251f10:   jmp    0x00007fee53251e6c           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                  ││   │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@187 (line 180)
                  ││   │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.12%          ↘│   │        │││  0x00007fee53251f15:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.17%           │   │        │││  0x00007fee53251f20:   cmp    $0x102fc00,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
                   │   │        │││  0x00007fee53251f26:   jne    0x00007fee5325226f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                   │   │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@87 (line 182)
                   │   │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
                   │   │        │││  0x00007fee53251f2c:   mov    0x10(,%rax,8),%eax           ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                   │   │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@97 (line 182)
                   │   │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.11%           │   │        ╰││  0x00007fee53251f33:   jmp    0x00007fee53251e6c           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                   │   │         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@187 (line 180)
                   │   │         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.04%           │   ↘         ││  0x00007fee53251f38:   nopl   0x0(%rax,%rax,1)
   0.14%           │             ││  0x00007fee53251f40:   cmp    $0x102ba78,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
                   │             ││  0x00007fee53251f46:   jne    0x00007fee53252280           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                   │             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@159 (line 187)
                   │             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.46%           │             ││  0x00007fee53251f4c:   vmovss 0xc(,%rax,8),%xmm2           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                   │             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@166 (line 187)
                   │             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.63%           │             ││  0x00007fee53251f55:   vcvttss2si %xmm2,%eax
   1.49%           │             ││  0x00007fee53251f59:   nopl   0x0(%rax)
   0.06%           │             ││  0x00007fee53251f60:   cmp    $0x80000000,%eax
                   │             ╰│  0x00007fee53251f66:   jne    0x00007fee53251e6c
                   │              │  0x00007fee53251f6c:   vucomiss %xmm2,%xmm2
                   │              │  0x00007fee53251f70:   jp     0x00007fee53251ff9
                   │              │  0x00007fee53251f76:   vucomiss %xmm0,%xmm2                ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                   │              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@169 (line 187)
                   │              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
                   │              │  0x00007fee53251f7a:   ja     0x00007fee53251fe5
                   │              ╰  0x00007fee53251f80:   jmp    0x00007fee53251e6c
   0.34%           ↘                 0x00007fee53251f85:   cmp    $0x102f800,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
                                     0x00007fee53251f8b:   jne    0x00007fee53252345           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  80.06%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 4, compile id 1122 

   1.49%    0x00007fee53251f59:   nopl   0x0(%rax)
   0.06%    0x00007fee53251f60:   cmp    $0x80000000,%eax
            0x00007fee53251f66:   jne    0x00007fee53251e6c
            0x00007fee53251f6c:   vucomiss %xmm2,%xmm2
            0x00007fee53251f70:   jp     0x00007fee53251ff9
            0x00007fee53251f76:   vucomiss %xmm0,%xmm2                ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@169 (line 187)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
            0x00007fee53251f7a:   ja     0x00007fee53251fe5
            0x00007fee53251f80:   jmp    0x00007fee53251e6c
   0.34%    0x00007fee53251f85:   cmp    $0x102f800,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
            0x00007fee53251f8b:   jne    0x00007fee53252345           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@116 (line 184)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.01%    0x00007fee53251f91:   movsbl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@123 (line 184)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.63%    0x00007fee53251f99:   jmp    0x00007fee53251e6c           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@187 (line 180)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.21%    0x00007fee53251f9e:   mov    $0x3,%ebx
   2.01%    0x00007fee53251fa3:   jmp    0x00007fee53251dd1           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@92
                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084800::invoke@91
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8087000::tableSwitch@103
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a800::delegate@14
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8089c00::invoke@114
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a400::linkToTargetMethod@6
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   2.80%    0x00007fee53251fa8:   mov    $0x4,%ebx
   2.10%    0x00007fee53251fad:   jmp    0x00007fee53251dd1           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@92
                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084800::invoke@91
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8087000::tableSwitch@103
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a800::delegate@14
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8089c00::invoke@114
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a400::linkToTargetMethod@6
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   2.60%    0x00007fee53251fb2:   mov    $0x5,%ebx
   1.80%    0x00007fee53251fb7:   jmp    0x00007fee53251dd1           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@92
                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084800::invoke@91
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8087000::tableSwitch@103
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a800::delegate@14
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8089c00::invoke@114
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd808a400::linkToTargetMethod@6
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.58%    0x00007fee53251fbc:   mov    $0x6,%ebx
   0.99%    0x00007fee53251fc1:   jmp    0x00007fee53251dd1           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@92
                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                      ; - java.lang.invoke.LambdaForm$MH/0x00007fedd8084000::guard@89
                                                                      ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
....................................................................................................
  18.06%  <total for region 2>

....[Hottest Regions]...............................................................................
  80.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 4, compile id 1122 
  18.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 4, compile id 1122 
   0.27%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.93%  <...other 315 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 4, compile id 1122 
   1.45%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  fileStream::write 
   0.01%          interpreter  ladd  97 ladd  
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  outputStream::print 
   0.01%            libjvm.so  os::write 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%  libjvmcicompiler.so  java.lang.String::String 
   0.01%          interpreter  invokevirtual  182 invokevirtual  
   0.01%  libjvmcicompiler.so  java.nio.Buffer::nextGetIndex 
   0.23%  <...other 105 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.13%       jvmci, level 4
   1.45%               kernel
   0.15%            libjvm.so
   0.08%  libjvmcicompiler.so
   0.07%         libc-2.31.so
   0.04%          interpreter
   0.04%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.00%               [vdso]
   0.00%       libz.so.1.2.11
   0.00%     perf-2133889.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_concrete_array

# Run progress: 75.00% complete, ETA 00:03:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.101 ns/op
# Warmup Iteration   2: 4.296 ns/op
# Warmup Iteration   3: 4.247 ns/op
# Warmup Iteration   4: 4.207 ns/op
# Warmup Iteration   5: 4.234 ns/op
Iteration   1: 4.233 ns/op
Iteration   2: 4.240 ns/op
Iteration   3: 4.230 ns/op
Iteration   4: 4.228 ns/op
Iteration   5: 4.238 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_concrete_array":
  4.234 ±(99.9%) 0.019 ns/op [Average]
  (min, avg, max) = (4.228, 4.234, 4.240), stdev = 0.005
  CI (99.9%): [4.215, 4.253] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_concrete_array:asm":
PrintAssembly processed: 254129 total address lines.
Perf output processed (skipped 60.523 seconds):
 Column 1: cycles (50463 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array, version 3, compile id 1105 

                      0x00007fecbb24ce20:   mov    %eax,-0x14000(%rsp)
                      0x00007fecbb24ce27:   sub    $0x18,%rsp
                      0x00007fecbb24ce2b:   nop
                      0x00007fecbb24ce2c:   cmpl   $0x1,0x20(%r15)
                      0x00007fecbb24ce34:   jne    0x00007fecbb24cf59
                      0x00007fecbb24ce3a:   mov    %rbp,0x10(%rsp)
                      0x00007fecbb24ce3f:   mov    0x14(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@0 (line 154)
                      0x00007fecbb24ce42:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007fecbb24cf7d
   0.00%              0x00007fecbb24ce4a:   shl    $0x3,%rax                    ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@3 (line 155)
                      0x00007fecbb24ce4e:   mov    $0x0,%r8d
                      0x00007fecbb24ce54:   mov    $0x0,%r11d
          ╭           0x00007fecbb24ce5a:   jmp    0x00007fecbb24cee7           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@13 (line 155)
          │           0x00007fecbb24ce5f:   nop                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@16 (line 155)
          │      ↗    0x00007fecbb24ce60:   mov    0x10(%rax,%r8,4),%r9d        ; ImmutableOopMap {rax=Oop r9=NarrowOop }
          │      │                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │      │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@13 (line 155)
   4.58%  │      │    0x00007fecbb24ce65:   mov    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007fecbb24cfa0
  40.57%  │      │    0x00007fecbb24ce6d:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@22 (line 155)
   2.12%  │      │    0x00007fecbb24ce71:   mov    $0x0,%ebx
          │╭     │    0x00007fecbb24ce76:   jmp    0x00007fecbb24ceba           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          ││     │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
          ││     │    0x00007fecbb24ce7b:   nopl   0x0(%rax,%rax,1)             ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec40087000::tableSwitch@39
          ││     │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec4008a800::delegate@14
          ││     │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec40089c00::invoke@114
          ││     │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec4008a400::linkToTargetMethod@6
          ││     │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          ││     │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   9.05%  ││   ↗ │    0x00007fecbb24ce80:   mov    $0x0,%edi                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││   │ │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec40087000::tableSwitch@331
          ││   │ │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec4008a800::delegate@14
          ││   │ │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec40089c00::invoke@114
          ││   │ │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec4008a400::linkToTargetMethod@6
          ││   │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          ││   │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
          ││   │↗│    0x00007fecbb24ce85:   cmp    $0x0,%edi
          ││╭  │││    0x00007fecbb24ce88:   je     0x00007fecbb24ce9c
          │││  │││    0x00007fecbb24ce8e:   cmp    $0x1,%edi
          │││╭ │││    0x00007fecbb24ce91:   je     0x00007fecbb24ced7
          ││││ │││    0x00007fecbb24ce97:   jmp    0x00007fecbb24cf36           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││││ │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@16 (line 246)
          ││││ │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   8.92%  ││↘│ │││    0x00007fecbb24ce9c:   nopl   0x0(%rax)
          ││ │ │││    0x00007fecbb24cea0:   test   $0x1,%ecx
          ││ │╭│││    0x00007fecbb24cea6:   je     0x00007fecbb24cef5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@117 (line 247)
          ││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
          ││ │││││    0x00007fecbb24ceac:   mov    0x458(%r15),%rdx             ; ImmutableOopMap {rax=Oop r9=Oop }
          ││ │││││                                                              ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││ │││││                                                              ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007fec40087000::tableSwitch@331
          ││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec4008a800::delegate@14
          ││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec40089c00::invoke@114
          ││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec4008a400::linkToTargetMethod@6
          ││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          ││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
          ││ │││││    0x00007fecbb24ceb3:   test   %eax,(%rdx)                  ;   {poll}
   4.45%  ││ │││││    0x00007fecbb24ceb5:   mov    $0x1,%ebx                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          ││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
          │↘ │││││    0x00007fecbb24ceba:   cmp    $0x0,%ebx
          │  ││╰││    0x00007fecbb24cebd:   je     0x00007fecbb24ce80
          │  ││ ││    0x00007fecbb24cebf:   cmp    $0x1,%ebx
          │  ││ ││    0x00007fecbb24cec2:   jne    0x00007fecbb24cf13           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │  ││ ││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec40087000::tableSwitch@39
          │  ││ ││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec4008a800::delegate@14
          │  ││ ││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec40089c00::invoke@114
          │  ││ ││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec4008a400::linkToTargetMethod@6
          │  ││ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          │  ││ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
          │  ││ ││    0x00007fecbb24cec8:   nopl   0x0(%rax,%rax,1)
   4.38%  │  ││ ││    0x00007fecbb24ced0:   mov    $0x1,%edi
          │  ││ ╰│    0x00007fecbb24ced5:   jmp    0x00007fecbb24ce85           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec40087000::tableSwitch@331
          │  ││  │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec4008a800::delegate@14
          │  ││  │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec40089c00::invoke@114
          │  ││  │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fec4008a400::linkToTargetMethod@6
          │  ││  │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          │  ││  │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   8.97%  │  ↘│  │ ↗  0x00007fecbb24ced7:   mov    0x458(%r15),%r9              ; ImmutableOopMap {rax=Oop }
          │   │  │ │                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          │   │  │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
          │   │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
          │   │  │ │  0x00007fecbb24cede:   test   %eax,(%r9)                   ;   {poll}
   4.38%  │   │  │ │  0x00007fecbb24cee1:   add    %ecx,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@31 (line 156)
          │   │  │ │  0x00007fecbb24cee4:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@33 (line 155)
   6.44%  ↘   │  │ │  0x00007fecbb24cee7:   cmp    %r8d,%r10d
              │  ╰ │  0x00007fecbb24ceea:   jg     0x00007fecbb24ce60
              │   ╭│  0x00007fecbb24cef0:   jmp    0x00007fecbb24cef9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@16 (line 155)
   4.42%      ↘   ││  0x00007fecbb24cef5:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@130 (line 247)
                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
                  │╰  0x00007fecbb24cef7:   jmp    0x00007fecbb24ced7           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
                  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   0.00%          ↘   0x00007fecbb24cef9:   mov    %r11d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@40 (line 158)
                      0x00007fecbb24cefc:   mov    0x10(%rsp),%rbp
   0.01%              0x00007fecbb24cf01:   add    $0x18,%rsp
                      0x00007fecbb24cf05:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                      0x00007fecbb24cf0c:   ja     0x00007fecbb24cf69
                      0x00007fecbb24cf12:   ret                                 ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@16 (line 246)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
                      0x00007fecbb24cf13:   movl   $0xffffffed,0x484(%r15)      ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007fec40087000::tableSwitch@39
                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007fec4008a800::delegate@14
                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007fec40089c00::invoke@114
                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007fec4008a400::linkToTargetMethod@6
....................................................................................................
  98.30%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array, version 3, compile id 1105 
   0.12%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
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
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.96%  <...other 314 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array, version 3, compile id 1105 
   1.38%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.02%           libjvm.so  defaultStream::write 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  fileStream::write 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeSwitchBenchmark_switch_when_concrete_array_jmhTest::switch_when_concrete_array_avgt_jmhStub, version 4, compile id 1143 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%           libjvm.so  xmlStream::write 
   0.00%           libjvm.so  defaultStream::hold 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%           libjvm.so  outputStream::print 
   0.10%  <...other 52 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.30%      jvmci, level 4
   1.38%              kernel
   0.12%           libjvm.so
   0.08%                    
   0.07%        libc-2.31.so
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.00%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_interface_array

# Run progress: 87.50% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 57.662 ns/op
# Warmup Iteration   2: 48.094 ns/op
# Warmup Iteration   3: 48.071 ns/op
# Warmup Iteration   4: 48.109 ns/op
# Warmup Iteration   5: 48.138 ns/op
Iteration   1: 48.063 ns/op
Iteration   2: 48.148 ns/op
Iteration   3: 48.059 ns/op
Iteration   4: 48.024 ns/op
Iteration   5: 48.044 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_interface_array":
  48.068 ±(99.9%) 0.182 ns/op [Average]
  (min, avg, max) = (48.024, 48.068, 48.148), stdev = 0.047
  CI (99.9%): [47.885, 48.250] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_interface_array:asm":
PrintAssembly processed: 250420 total address lines.
Perf output processed (skipped 60.533 seconds):
 Column 1: cycles (50921 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 1097 

                  0x00007fe06f247be1:   add    %al,(%rax)
                  0x00007fe06f247be3:   add    %bh,(%rsi)
                  0x00007fe06f247be5:   add    (%rax),%eax
                  0x00007fe06f247be7:   add    %cl,-0x62000000(%rip)        # 0x00007fe00d247bed
                  0x00007fe06f247bed:   add    (%rax),%eax
                  0x00007fe06f247bef:   add    %cl,(%rdi)
                  0x00007fe06f247bf1:   add    %al,(%rax)
                  0x00007fe06f247bf3:   add    %al,0x0(%rax)
                  0x00007fe06f247bf6:   add    %al,(%rax)                   ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@16 (line 246)
   0.53%          0x00007fe06f247bf8:   nopl   0x0(%rax,%rax,1)
   0.08%          0x00007fe06f247c00:   cmp    $0x102b870,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
                  0x00007fe06f247c07:   jne    0x00007fe06f248271           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@471 (line 262)
   0.55%          0x00007fe06f247c0d:   mov    0xc(%rsi),%ecx               ; ImmutableOopMap {rcx=NarrowOop rsi=Oop }
                                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@331
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.43%          0x00007fe06f247c10:   mov    0x14(,%rcx,8),%eax           ; implicit exception: dispatches to 0x00007fe06f24830d
   0.41%          0x00007fe06f247c17:   movsbl 0x10(,%rcx,8),%ecx           ; ImmutableOopMap {rsi=Oop }
                                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@331
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                  0x00007fe06f247c1f:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007fe06f248330
   0.43%          0x00007fe06f247c26:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::length@9 (line 1519)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@481 (line 262)
   0.16%          0x00007fe06f247c28:   jmp    0x00007fe06f247aa0
   1.13%          0x00007fe06f247c2d:   cmp    $0x102b870,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
                  0x00007fe06f247c34:   jne    0x00007fe06f248211           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@433 (line 261)
   0.58%          0x00007fe06f247c3a:   mov    0xc(%rsi),%ecx               ; ImmutableOopMap {rcx=NarrowOop rsi=Oop }
                                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@331
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.45%          0x00007fe06f247c3d:   mov    0x14(,%rcx,8),%eax           ; implicit exception: dispatches to 0x00007fe06f248353
   1.09%          0x00007fe06f247c44:   movsbl 0x10(,%rcx,8),%ecx           ; ImmutableOopMap {rsi=Oop }
                                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@331
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.46%          0x00007fe06f247c4c:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007fe06f248376
   0.12%          0x00007fe06f247c53:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::length@9 (line 1519)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@463 (line 261)
   0.23%          0x00007fe06f247c55:   data16 data16 nopw 0x0(%rax,%rax,1)
                  0x00007fe06f247c60:   test   $0x1,%eax
          ╭       0x00007fe06f247c66:   je     0x00007fe06f247fa7           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@448 (line 261)
   0.01%  │       0x00007fe06f247c6c:   mov    $0xf,%r11d
   0.00%  │       0x00007fe06f247c72:   jmp    0x00007fe06f247af4           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
   1.24%  │       0x00007fe06f247c77:   nopw   0x0(%rax,%rax,1)
   0.11%  │       0x00007fe06f247c80:   cmp    $0x102fa00,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          │       0x00007fe06f247c87:   jne    0x00007fe06f24810c           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@289 (line 255)
   0.61%  │       0x00007fe06f247c8d:   movzwl 0xc(%rsi),%ecx               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@296 (line 255)
   0.54%  │       0x00007fe06f247c91:   test   $0x1,%ecx
          │╭      0x00007fe06f247c97:   jne    0x00007fe06f247ea5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@301 (line 255)
   0.08%  ││      0x00007fe06f247c9d:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@316 (line 255)
   0.01%  ││      0x00007fe06f247c9f:   mov    %ecx,%eax
          ││      0x00007fe06f247ca1:   jmp    0x00007fe06f247aa0
   1.40%  ││      0x00007fe06f247ca6:   cmp    $0x102bc78,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          ││      0x00007fe06f247cad:   jne    0x00007fe06f2480fd           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@335 (line 257)
   0.62%  ││      0x00007fe06f247cb3:   vmovsd 0x10(%rsi),%xmm0             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@342 (line 257)
   0.61%  ││      0x00007fe06f247cb8:   vcvttsd2si %xmm0,%r11d
   0.85%  ││      0x00007fe06f247cbc:   nopl   0x0(%rax)
          ││      0x00007fe06f247cc0:   cmp    $0x80000000,%r11d
          ││      0x00007fe06f247cc7:   je     0x00007fe06f247fdd           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@345 (line 257)
   0.00%  ││      0x00007fe06f247ccd:   test   $0x1,%r11d
          ││╭     0x00007fe06f247cd4:   jne    0x00007fe06f247f40           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@348 (line 257)
   0.10%  │││     0x00007fe06f247cda:   shl    %r11d                        ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@364 (line 257)
   0.02%  │││     0x00007fe06f247cdd:   mov    %r11d,%eax
          │││     0x00007fe06f247ce0:   jmp    0x00007fe06f247aa0
   1.28%  │││     0x00007fe06f247ce5:   cmp    $0x102ba78,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          │││     0x00007fe06f247cec:   jne    0x00007fe06f2480af           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@384 (line 259)
   0.63%  │││     0x00007fe06f247cf2:   vmovss 0xc(%rsi),%xmm0              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@391 (line 259)
   0.45%  │││     0x00007fe06f247cf7:   vcvttss2si %xmm0,%r11d
   0.76%  │││     0x00007fe06f247cfb:   nopl   0x0(%rax,%rax,1)
          │││     0x00007fe06f247d00:   cmp    $0x80000000,%r11d
          │││     0x00007fe06f247d07:   je     0x00007fe06f247ffa           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@394 (line 259)
          │││     0x00007fe06f247d0d:   test   $0x1,%r11d
          │││╭    0x00007fe06f247d14:   jne    0x00007fe06f247f4b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@397 (line 259)
   0.07%  ││││    0x00007fe06f247d1a:   shl    %r11d                        ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@413 (line 259)
   0.02%  ││││    0x00007fe06f247d1d:   mov    %r11d,%eax
          ││││    0x00007fe06f247d20:   jmp    0x00007fe06f247aa0
   1.40%  ││││    0x00007fe06f247d25:   cmp    $0x102f800,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
          ││││    0x00007fe06f247d2c:   jne    0x00007fe06f2481ac           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@243 (line 253)
   0.61%  ││││    0x00007fe06f247d32:   movsbl 0xc(%rsi),%ecx               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@250 (line 253)
   0.44%  ││││    0x00007fe06f247d36:   data16 nopw 0x0(%rax,%rax,1)
   0.00%  ││││    0x00007fe06f247d40:   test   $0x1,%ecx
          ││││╭   0x00007fe06f247d46:   je     0x00007fe06f247f95           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@255 (line 253)
   0.13%  │││││   0x00007fe06f247d4c:   mov    $0x7,%r11d
   0.05%  │││││   0x00007fe06f247d52:   jmp    0x00007fe06f247af4           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
   1.33%  │││││   0x00007fe06f247d57:   nopw   0x0(%rax,%rax,1)
   0.09%  │││││   0x00007fe06f247d60:   cmp    $0x102b670,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
          │││││   0x00007fe06f247d67:   jne    0x00007fe06f24824f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@198 (line 251)
   0.56%  │││││   0x00007fe06f247d6d:   movswl 0xc(%rsi),%ecx               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@205 (line 251)
   0.48%  │││││   0x00007fe06f247d71:   test   $0x1,%ecx
          │││││╭  0x00007fe06f247d77:   je     0x00007fe06f247f9e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@210 (line 251)
   0.07%  ││││││  0x00007fe06f247d7d:   mov    $0x5,%r11d
   0.01%  ││││││  0x00007fe06f247d83:   jmp    0x00007fe06f247af4           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
   1.33%  ││││││  0x00007fe06f247d88:   mov    $0x4,%r11d
   0.75%  ││││││  0x00007fe06f247d8e:   jmp    0x00007fe06f247a12           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@92
          ││││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@91
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@135
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   1.28%  ││││││  0x00007fe06f247d93:   mov    $0x6,%r11d
   0.76%  ││││││  0x00007fe06f247d99:   jmp    0x00007fe06f247a12           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@92
          ││││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@89
          ││││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@91
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@135
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.09%  ││││││  0x00007fe06f247d9e:   xchg   %ax,%ax
          ││││││  0x00007fe06f247da0:   cmp    $0x102b280,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          ││││││  0x00007fe06f247da7:   jne    0x00007fe06f2482a5           ;* unwind (locked if synchronized)
          ││││││                                                            ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@47
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@147
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.00%  ││││││  0x00007fe06f247dad:   mov    $0x1,%r8d
   0.02%  ││││││  0x00007fe06f247db3:   jmp    0x00007fe06f247b93           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@331
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.03%  ││││││  0x00007fe06f247db8:   nopl   0x0(%rax,%rax,1)
          ││││││  0x00007fe06f247dc0:   cmp    $0x102bc78,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          ││││││  0x00007fe06f247dc7:   jne    0x00007fe06f2480d7           ;* unwind (locked if synchronized)
          ││││││                                                            ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@47
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@273
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          ││││││  0x00007fe06f247dcd:   mov    $0xb,%r8d
   0.01%  ││││││  0x00007fe06f247dd3:   jmp    0x00007fe06f247b93           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@331
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.08%  ││││││  0x00007fe06f247dd8:   nopl   0x0(%rax,%rax,1)
          ││││││  0x00007fe06f247de0:   cmp    $0x102fa00,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          ││││││  0x00007fe06f247de7:   jne    0x00007fe06f2481be           ;* unwind (locked if synchronized)
          ││││││                                                            ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@47
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@247
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          ││││││  0x00007fe06f247ded:   mov    $0x9,%r8d
   0.00%  ││││││  0x00007fe06f247df3:   jmp    0x00007fe06f247b93           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@331
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.08%  ││││││  0x00007fe06f247df8:   nopl   0x0(%rax,%rax,1)
          ││││││  0x00007fe06f247e00:   cmp    $0x102f800,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
          ││││││  0x00007fe06f247e07:   jne    0x00007fe06f248225           ;* unwind (locked if synchronized)
          ││││││                                                            ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@47
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@221
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.01%  ││││││  0x00007fe06f247e0d:   mov    $0x7,%r8d
   0.03%  ││││││  0x00007fe06f247e13:   jmp    0x00007fe06f247b93           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@331
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.05%  ││││││  0x00007fe06f247e18:   nopl   0x0(%rax,%rax,1)
          ││││││  0x00007fe06f247e20:   cmp    $0x102b670,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
          ││││││  0x00007fe06f247e27:   jne    0x00007fe06f248285           ;* unwind (locked if synchronized)
          ││││││                                                            ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@47
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@195
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          ││││││  0x00007fe06f247e2d:   mov    $0x5,%r8d
          ││││││  0x00007fe06f247e33:   jmp    0x00007fe06f247b93           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@331
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.64%  ││││││  0x00007fe06f247e38:   nopl   0x0(%rax,%rax,1)
   0.05%  ││││││  0x00007fe06f247e40:   cmp    $0x102fc00,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          ││││││  0x00007fe06f247e47:   jne    0x00007fe06f248291           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@183 (line 250)
   0.32%  ││││││  0x00007fe06f247e4d:   mov    0x10(%rsi),%eax              ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@193 (line 250)
   0.22%  ││││││  0x00007fe06f247e50:   jmp    0x00007fe06f247aa0           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.06%  ││││││  0x00007fe06f247e55:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││││││  0x00007fe06f247e60:   cmp    $0x102ba78,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          ││││││  0x00007fe06f247e67:   jne    0x00007fe06f24816a           ;* unwind (locked if synchronized)
          ││││││                                                            ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@47
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@299
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          ││││││  0x00007fe06f247e6d:   mov    $0xd,%r8d
   0.00%  ││││││  0x00007fe06f247e73:   jmp    0x00007fe06f247b93           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@331
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.20%  ││││││  0x00007fe06f247e78:   mov    $0x1,%r11d
   0.10%  ││││││  0x00007fe06f247e7e:   xchg   %ax,%ax
          ││││││  0x00007fe06f247e80:   jmp    0x00007fe06f247af4
   0.84%  ││││││  0x00007fe06f247e85:   cmp    $0x102b280,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          ││││││  0x00007fe06f247e8c:   jne    0x00007fe06f2481ff           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@135 (line 248)
   0.26%  ││││││  0x00007fe06f247e92:   mov    0xc(%rsi),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@142 (line 248)
   0.23%  ││││││  0x00007fe06f247e95:   jmp    0x00007fe06f247aa0           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   1.27%  ││││││  0x00007fe06f247e9a:   mov    $0x8,%r11d
   0.85%  ││││││  0x00007fe06f247ea0:   jmp    0x00007fe06f247a12           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@92
          ││││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@89
          ││││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@89
          ││││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@91
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@135
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
          ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.08%  │↘││││  0x00007fe06f247ea5:   mov    $0x9,%r11d
   0.03%  │ ││││  0x00007fe06f247eab:   jmp    0x00007fe06f247af4
   0.64%  │ ││││  0x00007fe06f247eb0:   cmp    $0x102fa00,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          │ ││││  0x00007fe06f247eb7:   jne    0x00007fe06f24811b           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@321 (line 256)
   0.31%  │ ││││  0x00007fe06f247ebd:   movzwl 0xc(%rsi),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@328 (line 256)
   0.23%  │ ││││  0x00007fe06f247ec1:   jmp    0x00007fe06f247aa0
   0.78%  │ ││││  0x00007fe06f247ec6:   cmp    $0x102b670,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
          │ ││││  0x00007fe06f247ecd:   jne    0x00007fe06f2482b1           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@229 (line 252)
   0.31%  │ ││││  0x00007fe06f247ed3:   movswl 0xc(%rsi),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@236 (line 252)
   0.27%  │ ││││  0x00007fe06f247ed7:   jmp    0x00007fe06f247aa0           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.63%  │ ││││  0x00007fe06f247edc:   nopl   0x0(%rax)
   0.05%  │ ││││  0x00007fe06f247ee0:   cmp    $0x102f800,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
          │ ││││  0x00007fe06f247ee7:   jne    0x00007fe06f24819a           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@275 (line 254)
   0.29%  │ ││││  0x00007fe06f247eed:   movsbl 0xc(%rsi),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@282 (line 254)
   0.26%  │ ││││  0x00007fe06f247ef1:   jmp    0x00007fe06f247aa0           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.65%  │ ││││  0x00007fe06f247ef6:   data16 nopw 0x0(%rax,%rax,1)
   0.04%  │ ││││  0x00007fe06f247f00:   cmp    $0x102bc78,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          │ ││││  0x00007fe06f247f07:   jne    0x00007fe06f2481ca           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@369 (line 258)
   0.32%  │ ││││  0x00007fe06f247f0d:   vmovsd 0x10(%rsi),%xmm0             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@376 (line 258)
   0.25%  │ ││││  0x00007fe06f247f12:   vcvttsd2si %xmm0,%r10d
   0.40%  │ ││││  0x00007fe06f247f16:   data16 nopw 0x0(%rax,%rax,1)
          │ ││││  0x00007fe06f247f20:   cmp    $0x80000000,%r10d
          │ ││││  0x00007fe06f247f27:   je     0x00007fe06f24802a           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@379 (line 258)
          │ ││││  0x00007fe06f247f2d:   mov    %r10d,%eax
   0.04%  │ ││││  0x00007fe06f247f30:   jmp    0x00007fe06f247aa0           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.05%  │ ││││  0x00007fe06f247f35:   mov    %eax,%ecx                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@177 (line 249)
   0.00%  │ ││││  0x00007fe06f247f37:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@178 (line 249)
   0.09%  │ ││││  0x00007fe06f247f39:   mov    %ecx,%eax
          │ ││││  0x00007fe06f247f3b:   jmp    0x00007fe06f247aa0           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.08%  │ ↘│││  0x00007fe06f247f40:   mov    $0xb,%r11d
   0.02%  │  │││  0x00007fe06f247f46:   jmp    0x00007fe06f247af4
   0.12%  │  ↘││  0x00007fe06f247f4b:   mov    $0xd,%r11d
   0.04%  │   ││  0x00007fe06f247f51:   jmp    0x00007fe06f247af4           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
   0.66%  │   ││  0x00007fe06f247f56:   data16 nopw 0x0(%rax,%rax,1)
   0.05%  │   ││  0x00007fe06f247f60:   cmp    $0x102ba78,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          │   ││  0x00007fe06f247f67:   jne    0x00007fe06f24815b           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@418 (line 260)
   0.28%  │   ││  0x00007fe06f247f6d:   vmovss 0xc(%rsi),%xmm0              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@425 (line 260)
   0.23%  │   ││  0x00007fe06f247f72:   vcvttss2si %xmm0,%r10d
   0.41%  │   ││  0x00007fe06f247f76:   data16 nopw 0x0(%rax,%rax,1)
          │   ││  0x00007fe06f247f80:   cmp    $0x80000000,%r10d
          │   ││  0x00007fe06f247f87:   je     0x00007fe06f24804e           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@428 (line 260)
          │   ││  0x00007fe06f247f8d:   mov    %r10d,%eax
   0.04%  │   ││  0x00007fe06f247f90:   jmp    0x00007fe06f247aa0           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.10%  │   ↘│  0x00007fe06f247f95:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@270 (line 253)
   0.03%  │    │  0x00007fe06f247f97:   mov    %ecx,%eax
          │    │  0x00007fe06f247f99:   jmp    0x00007fe06f247aa0           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.06%  │    ↘  0x00007fe06f247f9e:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@224 (line 251)
   0.00%  │       0x00007fe06f247fa0:   mov    %ecx,%eax
          │       0x00007fe06f247fa2:   jmp    0x00007fe06f247aa0           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.00%  ↘       0x00007fe06f247fa7:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@466 (line 261)
   0.00%          0x00007fe06f247fa9:   jmp    0x00007fe06f247aa0           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   1.28%          0x00007fe06f247fae:   mov    $0xa,%r11d
   0.69%          0x00007fe06f247fb4:   jmp    0x00007fe06f247a12           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@92
                                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@89
                                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@89
                                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@89
                                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@91
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@135
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.58%          0x00007fe06f247fb9:   mov    $0xc,%r11d
   0.28%          0x00007fe06f247fbf:   nop
                  0x00007fe06f247fc0:   jmp    0x00007fe06f247a12
   0.11%          0x00007fe06f247fc5:   cmp    $0x102b870,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
                  0x00007fe06f247fcc:   jne    0x00007fe06f248265           ;* unwind (locked if synchronized)
                                                                            ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@47
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@325
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                  0x00007fe06f247fd2:   mov    $0xf,%r8d
                  0x00007fe06f247fd8:   jmp    0x00007fe06f247b93           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  41.60%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 1097 

            speculations   [0x00007fe06f2493e8,0x00007fe06f249690] = 680
            JVMCI data     [0x00007fe06f249690,0x00007fe06f2496a8] = 24
           [Disassembly]
           --------------------------------------------------------------------------------
           [Constant Pool (empty)]
           --------------------------------------------------------------------------------
           [Verified Entry Point]
             # {method} {0x00007fdfef480928} &apos;switchWhenMethod&apos; &apos;(Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I;)I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark&apos;
             # parm0:    rsi:rsi   = &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I&apos;
             #           [sp+0x20]  (sp of caller)
   0.82%     0x00007fe06f247920:   mov    %eax,-0x14000(%rsp)
   0.00%     0x00007fe06f247927:   sub    $0x18,%rsp
   0.00%     0x00007fe06f24792b:   nop
   0.72%     0x00007fe06f24792c:   cmpl   $0x1,0x20(%r15)
             0x00007fe06f247934:   jne    0x00007fe06f2482c5
   0.00%     0x00007fe06f24793a:   mov    %rbp,0x10(%rsp)              ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@0 (line 246)
   0.01%     0x00007fe06f24793f:   mov    0x8(%rsi),%r10d              ; implicit exception: dispatches to 0x00007fe06f2482e9
   5.63%     0x00007fe06f247943:   cmp    $0x102b280,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
             0x00007fe06f24794a:   je     0x00007fe06f247ab7
   0.87%     0x00007fe06f247950:   cmp    $0x102fc00,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
             0x00007fe06f247957:   je     0x00007fe06f247ac5
   1.28%     0x00007fe06f24795d:   cmp    $0x102b670,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
   0.16%     0x00007fe06f247964:   sete   %cl
   0.00%     0x00007fe06f247967:   movzbl %cl,%ecx                     ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Class::isInstance@-3
                                                                       ; - java.lang.invoke.LambdaForm$DMH/0x00007fdff4007000::invokeSpecial@11
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4082c00::invoke@21
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@33
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@195
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.18%     0x00007fe06f24796a:   test   $0x1,%ecx
             0x00007fe06f247970:   jne    0x00007fe06f247d88
   0.90%     0x00007fe06f247976:   cmp    $0x102f800,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
   0.16%     0x00007fe06f24797d:   sete   %cl
   0.00%     0x00007fe06f247980:   movzbl %cl,%ecx                     ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Class::isInstance@-3
                                                                       ; - java.lang.invoke.LambdaForm$DMH/0x00007fdff4007000::invokeSpecial@11
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4082c00::invoke@21
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@33
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@221
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.22%     0x00007fe06f247983:   test   $0x1,%ecx
             0x00007fe06f247989:   jne    0x00007fe06f247d93
   0.74%     0x00007fe06f24798f:   cmp    $0x102fa00,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
   0.12%     0x00007fe06f247996:   sete   %cl
   0.10%     0x00007fe06f247999:   movzbl %cl,%ecx                     ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Class::isInstance@-3
                                                                       ; - java.lang.invoke.LambdaForm$DMH/0x00007fdff4007000::invokeSpecial@11
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4082c00::invoke@21
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@33
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@247
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.13%     0x00007fe06f24799c:   nopl   0x0(%rax)
   0.28%     0x00007fe06f2479a0:   test   $0x1,%ecx
             0x00007fe06f2479a6:   jne    0x00007fe06f247e9a
   0.38%     0x00007fe06f2479ac:   cmp    $0x102bc78,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
   0.15%     0x00007fe06f2479b3:   sete   %cl
   0.09%     0x00007fe06f2479b6:   movzbl %cl,%ecx                     ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Class::isInstance@-3
                                                                       ; - java.lang.invoke.LambdaForm$DMH/0x00007fdff4007000::invokeSpecial@11
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4082c00::invoke@21
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@33
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@273
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.21%     0x00007fe06f2479b9:   nopl   0x0(%rax)
   0.08%     0x00007fe06f2479c0:   test   $0x1,%ecx
             0x00007fe06f2479c6:   jne    0x00007fe06f247fae
   0.69%     0x00007fe06f2479cc:   cmp    $0x102ba78,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
   0.24%     0x00007fe06f2479d3:   sete   %cl
   0.16%     0x00007fe06f2479d6:   movzbl %cl,%ecx                     ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Class::isInstance@-3
                                                                       ; - java.lang.invoke.LambdaForm$DMH/0x00007fdff4007000::invokeSpecial@11
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4082c00::invoke@21
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@33
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@299
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.07%     0x00007fe06f2479d9:   nopl   0x0(%rax)
   0.08%     0x00007fe06f2479e0:   test   $0x1,%ecx
             0x00007fe06f2479e6:   jne    0x00007fe06f247fb9
   0.78%     0x00007fe06f2479ec:   cmp    $0x102b870,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
   0.32%     0x00007fe06f2479f3:   sete   %cl
   0.21%     0x00007fe06f2479f6:   movzbl %cl,%ecx                     ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Class::isInstance@-3
                                                                       ; - java.lang.invoke.LambdaForm$DMH/0x00007fdff4007000::invokeSpecial@11
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4082c00::invoke@21
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@33
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@325
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.02%     0x00007fe06f2479f9:   nopl   0x0(%rax)
   0.01%     0x00007fe06f247a00:   test   $0x1,%ecx
             0x00007fe06f247a06:   je     0x00007fe06f2481dc           ;* unwind (locked if synchronized)
                                                                       ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@46
                                                                       ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@89
                                                                       ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@89
                                                                       ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@89
                                                                       ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@89
                                                                       ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@89
                                                                       ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@89
                                                                       ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@91
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@135
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.05%     0x00007fe06f247a0c:   mov    $0xe,%r11d                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@92
                                                                       ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@89
                                                                       ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@89
                                                                       ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@89
                                                                       ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@89
                                                                       ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084000::guard@89
                                                                       ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@91
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@135
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.90%     0x00007fe06f247a12:   mov    %r11d,%ecx
             0x00007fe06f247a15:   sar    %ecx
   0.12%     0x00007fe06f247a17:   and    $0x7,%ecx
   0.93%  ╭  0x00007fe06f247a1a:   lea    0x17(%rip),%rax        # 0x00007fe06f247a38
   0.83%  │  0x00007fe06f247a21:   mov    (%rax,%rcx,8),%r8
   3.23%  │  0x00007fe06f247a25:   cmp    %r11d,%r8d
          │  0x00007fe06f247a28:   jne    0x00007fe06f248176
   0.77%  │  0x00007fe06f247a2e:   sar    $0x20,%r8
   0.03%  │  0x00007fe06f247a32:   add    %r8,%rax
   1.41%  │  0x00007fe06f247a35:   jmp    *%rax
          │  0x00007fe06f247a37:   nop
          ↘  0x00007fe06f247a38:   add    %al,(%rax)
             0x00007fe06f247a3a:   add    %al,(%rax)
             0x00007fe06f247a3c:   rex add %al,(%rax)
             0x00007fe06f247a3f:   add    %al,(%rdx)
             0x00007fe06f247a41:   add    %al,(%rax)
             0x00007fe06f247a43:   add    %bl,0x4000000(%rax)
             0x00007fe06f247a49:   add    %al,(%rax)
             0x00007fe06f247a4b:   add    %bl,(%rdi)
             0x00007fe06f247a4d:   add    (%rax),%eax
....................................................................................................
  24.12%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 4, compile id 1102 

                                                                        ;   {static_call}
              0x00007fe06f24b634:   nopl   0x1000224(%rax,%rax,1)       ;   {other}
              0x00007fe06f24b63c:   mov    %eax,0x10(%rsp)
              0x00007fe06f24b640:   mov    $0x1,%r10d
          ╭   0x00007fe06f24b646:   jmp    0x00007fe06f24b68c           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
          │   0x00007fe06f24b64b:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fe06f24b656:   data16 data16 xchg %ax,%ax
          │   0x00007fe06f24b65a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@16 (line 133)
   0.00%  │↗  0x00007fe06f24b660:   mov    0x10(%r8,%r10,4),%esi
   3.03%  ││  0x00007fe06f24b665:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@22 (line 133)
   0.78%  ││  0x00007fe06f24b669:   mov    %r10d,0xc(%rsp)
          ││  0x00007fe06f24b66e:   nop
          ││  0x00007fe06f24b66f:   call   0x00007fe06ec2f980           ; ImmutableOopMap {[0]=Oop }
          ││                                                            ;*invokestatic switchWhenMethod {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          ││                                                            ;   {static_call}
   0.51%  ││  0x00007fe06f24b674:   nopl   0x2000264(%rax,%rax,1)       ;   {other}
   0.12%  ││  0x00007fe06f24b67c:   add    0x10(%rsp),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   8.26%  ││  0x00007fe06f24b680:   mov    0xc(%rsp),%r10d
   0.00%  ││  0x00007fe06f24b685:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
   0.58%  ││  0x00007fe06f24b688:   mov    %eax,0x10(%rsp)              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.94%  ↘│  0x00007fe06f24b68c:   mov    (%rsp),%r8
           │  0x00007fe06f24b690:   mov    0x14(%rsp),%r11d
   0.01%   │  0x00007fe06f24b695:   cmp    %r10d,%r11d
           ╰  0x00007fe06f24b698:   jg     0x00007fe06f24b660           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@16 (line 133)
              0x00007fe06f24b69a:   mov    0x10(%rsp),%eax              ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@39 (line 136)
              0x00007fe06f24b69e:   mov    0x20(%rsp),%rbp
              0x00007fe06f24b6a3:   add    $0x28,%rsp
              0x00007fe06f24b6a7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007fe06f24b6ae:   ja     0x00007fe06f24b6ef
              0x00007fe06f24b6b4:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@16 (line 133)
....................................................................................................
  14.24%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 1097 

               0x00007fe06f247a68:   or     $0x0,%al
               0x00007fe06f247a6a:   add    %al,(%rax)
               0x00007fe06f247a6c:   lods   %ds:(%rsi),%eax
               0x00007fe06f247a6d:   add    (%rax),%al
               0x00007fe06f247a6f:   add    %cl,(%rsi)
               0x00007fe06f247a71:   add    %al,(%rax)
               0x00007fe06f247a73:   add    %dh,%ch
               0x00007fe06f247a75:   add    %eax,(%rax)
               0x00007fe06f247a77:   add    %cl,(%rdi)                   ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@16 (line 246)
               0x00007fe06f247a79:   (bad)  
               0x00007fe06f247a7a:   test   %al,(%rax)
               0x00007fe06f247a7c:   add    %al,(%rax)
               0x00007fe06f247a7e:   add    %al,(%rax)
   0.06%       0x00007fe06f247a80:   cmp    $0x102b280,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
               0x00007fe06f247a87:   jne    0x00007fe06f248188           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@107 (line 247)
   0.60%       0x00007fe06f247a8d:   mov    0xc(%rsi),%ecx               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@112 (line 247)
   0.49%       0x00007fe06f247a90:   test   $0x1,%ecx
               0x00007fe06f247a96:   jne    0x00007fe06f247e78           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@117 (line 247)
   0.10%       0x00007fe06f247a9c:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@130 (line 247)
   0.02%       0x00007fe06f247a9e:   mov    %ecx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.22%       0x00007fe06f247aa0:   mov    0x10(%rsp),%rbp
   1.18%       0x00007fe06f247aa5:   add    $0x18,%rsp
   0.01%       0x00007fe06f247aa9:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               0x00007fe06f247ab0:   ja     0x00007fe06f2482d5
   1.43%       0x00007fe06f247ab6:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4084800::invoke@56
                                                                         ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@135
                                                                         ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
                                                                         ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
                                                                         ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   1.34%       0x00007fe06f247ab7:   mov    $0x0,%r11d
   0.56%       0x00007fe06f247abd:   data16 xchg %ax,%ax
               0x00007fe06f247ac0:   jmp    0x00007fe06f247a12           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@331
                                                                         ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
                                                                         ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
                                                                         ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   1.40%       0x00007fe06f247ac5:   mov    $0x2,%r11d
   0.87%       0x00007fe06f247acb:   jmp    0x00007fe06f247a12
   1.24%       0x00007fe06f247ad0:   cmp    $0x102fc00,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
               0x00007fe06f247ad7:   jne    0x00007fe06f24823d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@149 (line 249)
   0.59%       0x00007fe06f247add:   mov    0x10(%rsi),%rax              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@156 (line 249)
   0.68%       0x00007fe06f247ae1:   test   $0x1,%rax
               0x00007fe06f247ae8:   je     0x00007fe06f247f35           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@163 (line 249)
   0.07%       0x00007fe06f247aee:   mov    $0x3,%r11d                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
   0.48%       0x00007fe06f247af4:   cmp    $0x9,%r11d
          ╭    0x00007fe06f247af8:   jge    0x00007fe06f247b3e
          │    0x00007fe06f247afe:   cmp    $0x5,%r11d
          │╭   0x00007fe06f247b02:   jge    0x00007fe06f247b25
   0.05%  ││   0x00007fe06f247b08:   cmp    $0x1,%r11d
          ││   0x00007fe06f247b0c:   je     0x00007fe06f247d9e
   0.14%  ││   0x00007fe06f247b12:   cmp    $0x3,%r11d
          ││   0x00007fe06f247b16:   je     0x00007fe06f247b7e
          ││   0x00007fe06f247b1c:   nopl   0x0(%rax)
          ││   0x00007fe06f247b20:   jmp    0x00007fe06f248231
   0.16%  │↘   0x00007fe06f247b25:   cmp    $0x5,%r11d
          │    0x00007fe06f247b29:   je     0x00007fe06f247e18
   0.04%  │    0x00007fe06f247b2f:   cmp    $0x7,%r11d
          │    0x00007fe06f247b33:   je     0x00007fe06f247df8
          │    0x00007fe06f247b39:   jmp    0x00007fe06f248231
   0.24%  ↘    0x00007fe06f247b3e:   cmp    $0xd,%r11d
            ╭  0x00007fe06f247b42:   jge    0x00007fe06f247b65
   0.03%    │  0x00007fe06f247b48:   cmp    $0x9,%r11d
            │  0x00007fe06f247b4c:   je     0x00007fe06f247dd8
   0.02%    │  0x00007fe06f247b52:   cmp    $0xb,%r11d
            │  0x00007fe06f247b56:   je     0x00007fe06f247db8
            │  0x00007fe06f247b5c:   nopl   0x0(%rax)
            │  0x00007fe06f247b60:   jmp    0x00007fe06f248231
   0.12%    ↘  0x00007fe06f247b65:   cmp    $0xd,%r11d
               0x00007fe06f247b69:   je     0x00007fe06f247e55
               0x00007fe06f247b6f:   cmp    $0xf,%r11d
               0x00007fe06f247b73:   je     0x00007fe06f247fc5
               0x00007fe06f247b79:   jmp    0x00007fe06f248231           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4087000::tableSwitch@39
                                                                         ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a800::delegate@14
                                                                         ; - java.lang.invoke.LambdaForm$MH/0x00007fdff4089c00::invoke@114
                                                                         ; - java.lang.invoke.LambdaForm$MH/0x00007fdff408a400::linkToTargetMethod@6
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
               0x00007fe06f247b7e:   xchg   %ax,%ax
....................................................................................................
  13.41%  <total for region 4>

....[Hottest Regions]...............................................................................
  41.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 1097 
  24.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 1097 
  14.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 4, compile id 1102 
  13.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 1097 
   3.97%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 1097 
   0.67%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.33%  <...other 388 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  83.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 1097 
  14.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 4, compile id 1102 
   2.26%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%    perf-2134018.map  [unknown] 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.18%  <...other 71 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.34%      jvmci, level 4
   2.26%              kernel
   0.16%           libjvm.so
   0.08%        libc-2.31.so
   0.07%                    
   0.04%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%    perf-2134018.map
   0.00%         c1, level 3
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:15:07

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

Benchmark                                              Mode  Cnt   Score    Error  Units
TypeSwitchBenchmark.if_instanceof_concrete_array       avgt    5   1.127 ±  0.123  ns/op
TypeSwitchBenchmark.if_instanceof_concrete_array:asm   avgt          NaN             ---
TypeSwitchBenchmark.if_instanceof_interface_array      avgt    5  15.363 ±  0.038  ns/op
TypeSwitchBenchmark.if_instanceof_interface_array:asm  avgt          NaN             ---
TypeSwitchBenchmark.switch_concrete_array              avgt    5   1.111 ±  0.001  ns/op
TypeSwitchBenchmark.switch_concrete_array:asm          avgt          NaN             ---
TypeSwitchBenchmark.switch_if_concrete_array           avgt    5   1.331 ±  0.001  ns/op
TypeSwitchBenchmark.switch_if_concrete_array:asm       avgt          NaN             ---
TypeSwitchBenchmark.switch_if_interface_array          avgt    5  20.716 ±  0.068  ns/op
TypeSwitchBenchmark.switch_if_interface_array:asm      avgt          NaN             ---
TypeSwitchBenchmark.switch_interface_array             avgt    5  19.462 ±  0.099  ns/op
TypeSwitchBenchmark.switch_interface_array:asm         avgt          NaN             ---
TypeSwitchBenchmark.switch_when_concrete_array         avgt    5   4.234 ±  0.019  ns/op
TypeSwitchBenchmark.switch_when_concrete_array:asm     avgt          NaN             ---
TypeSwitchBenchmark.switch_when_interface_array        avgt    5  48.068 ±  0.182  ns/op
TypeSwitchBenchmark.switch_when_interface_array:asm    avgt          NaN             ---
