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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_concrete_array

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.133 ns/op
# Warmup Iteration   2: 1.356 ns/op
# Warmup Iteration   3: 1.352 ns/op
# Warmup Iteration   4: 1.353 ns/op
# Warmup Iteration   5: 1.352 ns/op
Iteration   1: 1.354 ns/op
Iteration   2: 1.353 ns/op
Iteration   3: 1.353 ns/op
Iteration   4: 1.106 ns/op
Iteration   5: 1.107 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_concrete_array":
  1.255 ±(99.9%) 0.521 ns/op [Average]
  (min, avg, max) = (1.106, 1.255, 1.354), stdev = 0.135
  CI (99.9%): [0.734, 1.775] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_concrete_array:asm":
PrintAssembly processed: 234555 total address lines.
Perf output processed (skipped 60.958 seconds):
 Column 1: cycles (51052 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 3, compile id 1019 

              0x00007fad66d82aba:   lea    -0x8(%r10),%r11d
              0x00007fad66d82abe:   xchg   %ax,%ax
          ╭   0x00007fad66d82ac0:   jmp    0x00007fad66d82b65
          │   0x00007fad66d82ac5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fad66d82ad0:   data16 data16 xchg %ax,%ax
          │   0x00007fad66d82ad4:   nopl   0x0(%rax,%rax,1)
          │   0x00007fad66d82adc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@16 (line 89)
          │↗  0x00007fad66d82ae0:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
   3.34%  ││  0x00007fad66d82ae5:   mov    %r8d,%ebx                    ; ImmutableOopMap {rax=Oop rcx=NarrowOop }
          ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
          ││  0x00007fad66d82ae8:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007fad66d82c50
   8.79%  ││  0x00007fad66d82aef:   mov    0x14(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop }
          ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
   0.02%  ││  0x00007fad66d82af4:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007fad66d82c73
  10.12%  ││  0x00007fad66d82afb:   mov    0x18(%rax,%r9,4),%edi        ; ImmutableOopMap {rax=Oop }
          ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
   0.01%  ││  0x00007fad66d82b00:   mov    0xc(,%rdi,8),%edi            ; implicit exception: dispatches to 0x00007fad66d82c96
   9.27%  ││  0x00007fad66d82b07:   mov    0x1c(%rax,%r9,4),%edx        ; ImmutableOopMap {rax=Oop }
          ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
   0.31%  ││  0x00007fad66d82b0c:   mov    0xc(,%rdx,8),%edx            ; implicit exception: dispatches to 0x00007fad66d82cb9
  11.50%  ││  0x00007fad66d82b13:   mov    0x20(%rax,%r9,4),%esi        ; ImmutableOopMap {rax=Oop }
          ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
   0.01%  ││  0x00007fad66d82b18:   mov    0xc(,%rsi,8),%esi            ; implicit exception: dispatches to 0x00007fad66d82cdc
  10.90%  ││  0x00007fad66d82b1f:   mov    0x24(%rax,%r9,4),%ebp        ; ImmutableOopMap {rax=Oop }
          ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
   0.01%  ││  0x00007fad66d82b24:   mov    0xc(,%rbp,8),%ebp            ; implicit exception: dispatches to 0x00007fad66d82cff
  11.45%  ││  0x00007fad66d82b2b:   mov    0x28(%rax,%r9,4),%r13d       ; ImmutableOopMap {rax=Oop }
          ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
   0.01%  ││  0x00007fad66d82b30:   mov    0xc(,%r13,8),%r13d           ; implicit exception: dispatches to 0x00007fad66d82d22
          ││                                                            ;   {no_reloc}
  10.37%  ││  0x00007fad66d82b38:   mov    0x2c(%rax,%r9,4),%r14d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
   0.02%  ││  0x00007fad66d82b3d:   data16 xchg %ax,%ax
   2.11%  ││  0x00007fad66d82b40:   test   %r14d,%r14d
          ││  0x00007fad66d82b43:   je     0x00007fad66d82bbf           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@4 (line 267)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@28 (line 90)
          ││  0x00007fad66d82b49:   add    %ecx,%ebx
   1.79%  ││  0x00007fad66d82b4b:   add    %edi,%ebx
          ││  0x00007fad66d82b4d:   add    %edx,%ebx
   2.74%  ││  0x00007fad66d82b4f:   add    %esi,%ebx
   0.00%  ││  0x00007fad66d82b51:   add    %ebp,%ebx
   1.76%  ││  0x00007fad66d82b53:   add    %r13d,%ebx
   1.36%  ││  0x00007fad66d82b56:   add    0xc(,%r14,8),%ebx            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@31 (line 90)
  10.75%  ││  0x00007fad66d82b5e:   lea    0x8(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@33 (line 89)
   0.00%  ││  0x00007fad66d82b62:   mov    %ebx,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
   0.45%  ↘│  0x00007fad66d82b65:   cmp    %r9d,%r11d
           ╰  0x00007fad66d82b68:   jg     0x00007fad66d82ae0
              0x00007fad66d82b6e:   jmp    0x00007fad66d82ba0
              0x00007fad66d82b73:   nopw   0x0(%rax,%rax,1)
              0x00007fad66d82b7c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@16 (line 89)
              0x00007fad66d82b80:   mov    0x10(%rax,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
              0x00007fad66d82b85:   mov    %r8d,%ecx                    ; ImmutableOopMap {rax=Oop r11=NarrowOop }
                                                                        ;*iload {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  97.10%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 3, compile id 1019 
   1.28%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeSwitchBenchmark_if_instanceof_concrete_array_jmhTest::if_instanceof_concrete_array_avgt_jmhStub, version 4, compile id 1048 
   0.03%               kernel  [unknown] 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 3, compile id 1019 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.97%  <...other 321 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 3, compile id 1019 
   2.49%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeSwitchBenchmark_if_instanceof_concrete_array_jmhTest::if_instanceof_concrete_array_avgt_jmhStub, version 4, compile id 1048 
   0.03%                       <unknown> 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  stringStream::write 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  _IO_file_write@@GLIBC_2.2.5 
   0.00%       hsdis-amd64.so  putop 
   0.00%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%            libjvm.so  resource_allocate_bytes 
   0.00%         libc-2.31.so  _IO_do_write@@GLIBC_2.2.5 
   0.15%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.18%       jvmci, level 4
   2.49%               kernel
   0.14%            libjvm.so
   0.08%         libc-2.31.so
   0.03%  libjvmcicompiler.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%   libpthread-2.31.so
   0.00%          c1, level 3
   0.00%               [vdso]
   0.00%     perf-2154291.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_interface_array

# Run progress: 12.50% complete, ETA 00:13:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.625 ns/op
# Warmup Iteration   2: 13.360 ns/op
# Warmup Iteration   3: 13.366 ns/op
# Warmup Iteration   4: 13.378 ns/op
# Warmup Iteration   5: 13.371 ns/op
Iteration   1: 13.366 ns/op
Iteration   2: 13.363 ns/op
Iteration   3: 13.377 ns/op
Iteration   4: 13.376 ns/op
Iteration   5: 13.376 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_interface_array":
  13.372 ±(99.9%) 0.025 ns/op [Average]
  (min, avg, max) = (13.363, 13.372, 13.377), stdev = 0.007
  CI (99.9%): [13.347, 13.397] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_interface_array:asm":
PrintAssembly processed: 229436 total address lines.
Perf output processed (skipped 60.833 seconds):
 Column 1: cycles (50639 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array, version 3, compile id 999 

                               0x00007f07ced80c71:   vxorpd %xmm0,%xmm0,%xmm0            ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@106 (line 280)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
                               0x00007f07ced80c75:   vxorpd %xmm1,%xmm1,%xmm1            ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@90 (line 278)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
                               0x00007f07ced80c79:   mov    $0x0,%r9d
                               0x00007f07ced80c7f:   mov    $0x0,%r8d
                               0x00007f07ced80c85:   data16 data16 nopw 0x0(%rax,%rax,1) ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@13 (line 78)
   1.13%          ↗ ↗↗↗↗↗↗↗    0x00007f07ced80c90:   cmp    %r9d,%r10d
                  │ │││││││    0x00007f07ced80c93:   jbe    0x00007f07ced80e59           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                  │ │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@16 (line 78)
   0.89%          │ │││││││    0x00007f07ced80c99:   mov    0x10(%r11,%r9,4),%eax        ; ImmutableOopMap {rax=NarrowOop r11=Oop }
                  │ │││││││                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
                  │ │││││││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@13 (line 78)
   1.24%          │ │││││││    0x00007f07ced80c9e:   mov    0x8(,%rax,8),%ecx            ; implicit exception: dispatches to 0x00007f07ced80edd
  11.69%          │ │││││││    0x00007f07ced80ca5:   mov    %r9d,%ebx
   0.38%          │ │││││││    0x00007f07ced80ca8:   inc    %ebx
   0.05%          │ │││││││    0x00007f07ced80caa:   cmp    $0x102bb58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          ╭       │ │││││││    0x00007f07ced80cb0:   je     0x00007f07ced80d3f
   2.97%  │       │ │││││││    0x00007f07ced80cb6:   data16 nopw 0x0(%rax,%rax,1)
   0.15%  │       │ │││││││    0x00007f07ced80cc0:   cmp    $0x102b160,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          │╭      │ │││││││    0x00007f07ced80cc6:   je     0x00007f07ced80d66
   5.00%  ││      │ │││││││    0x00007f07ced80ccc:   cmp    $0x102f800,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          ││╭     │ │││││││    0x00007f07ced80cd2:   je     0x00007f07ced80d76
   1.77%  │││     │ │││││││    0x00007f07ced80cd8:   nopl   0x0(%rax,%rax,1)
   0.44%  │││     │ │││││││    0x00007f07ced80ce0:   cmp    $0x102b550,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
          │││╭    │ │││││││    0x00007f07ced80ce6:   je     0x00007f07ced80d8c
   1.97%  ││││    │ │││││││    0x00007f07ced80cec:   cmp    $0x102b750,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
          ││││╭   │ │││││││    0x00007f07ced80cf2:   je     0x00007f07ced80da5
   3.95%  │││││   │ │││││││    0x00007f07ced80cf8:   nopl   0x0(%rax,%rax,1)
   0.28%  │││││   │ │││││││    0x00007f07ced80d00:   cmp    $0x102fa00,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          │││││╭  │ │││││││    0x00007f07ced80d06:   je     0x00007f07ced80dd2
   2.37%  ││││││  │ │││││││    0x00007f07ced80d0c:   cmp    $0x102b958,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          ││││││╭ │ │││││││    0x00007f07ced80d12:   jne    0x00007f07ced80de7           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││││ │ │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@96 (line 279)
          │││││││ │ │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.34%  │││││││ │ │││││││    0x00007f07ced80d18:   vmovss 0xc(,%rax,8),%xmm2           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │││││││ │ │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@103 (line 280)
          │││││││ │ │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.18%  │││││││ │ │││││││    0x00007f07ced80d21:   vcvttss2si %xmm2,%eax
   2.43%  │││││││ │ │││││││    0x00007f07ced80d25:   cmp    $0x80000000,%eax
          │││││││╭│ │││││││    0x00007f07ced80d2b:   je     0x00007f07ced80e27           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │││││││││ │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@106 (line 280)
          │││││││││ │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.09%  │││││││││ │││││││    0x00007f07ced80d31:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││ │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
   0.01%  │││││││││ │││││││    0x00007f07ced80d34:   mov    %ebx,%r9d
   0.27%  │││││││││ │││││││    0x00007f07ced80d37:   mov    %eax,%r8d
          ││││││││╰ │││││││    0x00007f07ced80d3a:   jmp    0x00007f07ced80c90           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@80 (line 277)
          ││││││││  │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.91%  ↘│││││││  │││││││    0x00007f07ced80d3f:   vmovsd 0x10(,%rax,8),%xmm2          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││││││  │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@87 (line 278)
           │││││││  │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.82%   │││││││  │││││││    0x00007f07ced80d48:   vcvttsd2si %xmm2,%eax
   2.81%   │││││││  │││││││    0x00007f07ced80d4c:   cmp    $0x80000000,%eax
           │││││││ ╭│││││││    0x00007f07ced80d52:   je     0x00007f07ced80e09           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
           │││││││ ││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@90 (line 278)
           │││││││ ││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.00%   │││││││ ││││││││↗↗  0x00007f07ced80d58:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
           │││││││ ││││││││││  0x00007f07ced80d5b:   mov    %ebx,%r9d
   0.33%   │││││││ ││││││││││  0x00007f07ced80d5e:   mov    %eax,%r8d
           │││││││ │╰││││││││  0x00007f07ced80d61:   jmp    0x00007f07ced80c90           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │││││││ │ ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@4 (line 267)
           │││││││ │ ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.76%   ↘││││││ │ ││││││││  0x00007f07ced80d66:   add    0xc(,%rax,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │ ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
   3.73%    ││││││ │ ││││││││  0x00007f07ced80d6e:   mov    %ebx,%r9d
   0.00%    ││││││ │ ╰│││││││  0x00007f07ced80d71:   jmp    0x00007f07ced80c90           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │  │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@65 (line 275)
            ││││││ │  │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.35%    ↘│││││ │  │││││││  0x00007f07ced80d76:   movzwl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
             │││││ │  │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@72 (line 276)
             │││││ │  │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.27%     │││││ │  │││││││  0x00007f07ced80d7e:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │││││ │  │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
   0.31%     │││││ │  │││││││  0x00007f07ced80d81:   mov    %ebx,%r9d
   0.00%     │││││ │  │││││││  0x00007f07ced80d84:   mov    %ecx,%r8d
   0.07%     │││││ │  ╰││││││  0x00007f07ced80d87:   jmp    0x00007f07ced80c90           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │││││ │   ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@35 (line 271)
             │││││ │   ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.39%     ↘││││ │   ││││││  0x00007f07ced80d8c:   movswl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              ││││ │   ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@42 (line 272)
              ││││ │   ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.24%      ││││ │   ││││││  0x00007f07ced80d94:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              ││││ │   ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
   0.32%      ││││ │   ││││││  0x00007f07ced80d97:   mov    %ebx,%r9d
   0.01%      ││││ │   ││││││  0x00007f07ced80d9a:   mov    %ecx,%r8d
   0.05%      ││││ │   ││││││  0x00007f07ced80d9d:   data16 xchg %ax,%ax
   0.01%      ││││ │   ╰│││││  0x00007f07ced80da0:   jmp    0x00007f07ced80c90           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
              ││││ │    │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@112 (line 281)
              ││││ │    │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.93%      ↘│││ │    │││││  0x00007f07ced80da5:   mov    0xc(,%rax,8),%ecx            ; ImmutableOopMap {rcx=NarrowOop r11=Oop }
               │││ │    │││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
               │││ │    │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@13 (line 78)
   3.11%       │││ │    │││││  0x00007f07ced80dac:   mov    0x14(,%rcx,8),%eax           ; implicit exception: dispatches to 0x00007f07ced80f00
   2.83%       │││ │    │││││  0x00007f07ced80db3:   movsbl 0x10(,%rcx,8),%ecx           ; ImmutableOopMap {r11=Oop }
               │││ │    │││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
               │││ │    │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@13 (line 78)
   0.99%       │││ │    │││││  0x00007f07ced80dbb:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007f07ced80f23
   1.03%       │││ │    │││││  0x00007f07ced80dc2:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
               │││ │    │││││                                                            ; - java.lang.String::length@9 (line 1519)
               │││ │    │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@122 (line 282)
               │││ │    │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.69%       │││ │    │││││  0x00007f07ced80dc4:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               │││ │    │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
   0.00%       │││ │    │││││  0x00007f07ced80dc7:   mov    %ebx,%r9d
               │││ │    │││││  0x00007f07ced80dca:   mov    %eax,%r8d
               │││ │    ╰││││  0x00007f07ced80dcd:   jmp    0x00007f07ced80c90           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               │││ │     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@19 (line 269)
               │││ │     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.04%       ↘││ │     ││││  0x00007f07ced80dd2:   mov    0x10(,%rax,8),%eax           ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                ││ │     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@29 (line 270)
                ││ │     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.03%        ││ │     ││││  0x00007f07ced80dd9:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                ││ │     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
   0.33%        ││ │     ││││  0x00007f07ced80ddc:   mov    %ebx,%r9d
   0.00%        ││ │     ││││  0x00007f07ced80ddf:   mov    %eax,%r8d
   0.08%        ││ │     ╰│││  0x00007f07ced80de2:   jmp    0x00007f07ced80c90
   2.47%        ↘│ │      │││  0x00007f07ced80de7:   cmp    $0x102bd58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
                 │ │      │││  0x00007f07ced80ded:   jne    0x00007f07ced80e73           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                 │ │      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@50 (line 273)
                 │ │      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   1.22%         │ │      │││  0x00007f07ced80df3:   movsbl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                 │ │      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@57 (line 274)
                 │ │      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   1.12%         │ │      │││  0x00007f07ced80dfb:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                 │ │      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
   0.24%         │ │      │││  0x00007f07ced80dfe:   mov    %ebx,%r9d
                 │ │      │││  0x00007f07ced80e01:   mov    %eax,%r8d
   0.09%         │ │      ╰││  0x00007f07ced80e04:   jmp    0x00007f07ced80c90
                 │ ↘       ││  0x00007f07ced80e09:   vucomisd %xmm2,%xmm2
                 │         ││  0x00007f07ced80e0d:   jp     0x00007f07ced80e45
                 │         ││  0x00007f07ced80e13:   vucomisd %xmm1,%xmm2
                 │         ╰│  0x00007f07ced80e17:   jbe    0x00007f07ced80d58
                 │          │  0x00007f07ced80e1d:   mov    $0x7fffffff,%eax
                 │          ╰  0x00007f07ced80e22:   jmp    0x00007f07ced80d58           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                 │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@90 (line 278)
                 │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
                 ↘             0x00007f07ced80e27:   vucomiss %xmm2,%xmm2
                               0x00007f07ced80e2b:   jp     0x00007f07ced80e4f
....................................................................................................
  98.16%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array, version 3, compile id 999 
   0.15%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.90%  <...other 311 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array, version 3, compile id 999 
   1.49%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%         libc-2.31.so  __stpcpy_avx2 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%          interpreter  invokevirtual  182 invokevirtual  
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%          interpreter  aload_1  43 aload_1  
   0.17%  <...other 78 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.16%       jvmci, level 4
   1.49%               kernel
   0.10%            libjvm.so
   0.09%         libc-2.31.so
   0.05%                     
   0.03%          interpreter
   0.02%           ld-2.31.so
   0.02%   libpthread-2.31.so
   0.02%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_concrete_array

# Run progress: 25.00% complete, ETA 00:11:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.579 ns/op
# Warmup Iteration   2: 1.181 ns/op
# Warmup Iteration   3: 1.179 ns/op
# Warmup Iteration   4: 1.178 ns/op
# Warmup Iteration   5: 1.179 ns/op
Iteration   1: 1.178 ns/op
Iteration   2: 1.178 ns/op
Iteration   3: 1.178 ns/op
Iteration   4: 1.179 ns/op
Iteration   5: 1.178 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_concrete_array":
  1.178 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.178, 1.178, 1.179), stdev = 0.001
  CI (99.9%): [1.177, 1.180] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_concrete_array:asm":
PrintAssembly processed: 257150 total address lines.
Perf output processed (skipped 60.869 seconds):
 Column 1: cycles (50515 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 4, compile id 1124 

              0x00007ff51ed88eba:   lea    -0x8(%r10),%r11d
   0.00%      0x00007ff51ed88ebe:   xchg   %ax,%ax
          ╭   0x00007ff51ed88ec0:   jmp    0x00007ff51ed88f65
          │   0x00007ff51ed88ec5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007ff51ed88ed0:   data16 data16 xchg %ax,%ax
          │   0x00007ff51ed88ed4:   nopl   0x0(%rax,%rax,1)
          │   0x00007ff51ed88edc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
          │↗  0x00007ff51ed88ee0:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
   3.42%  ││  0x00007ff51ed88ee5:   mov    %r8d,%ebx                    ; ImmutableOopMap {rax=Oop rcx=NarrowOop }
          ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
          ││  0x00007ff51ed88ee8:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007ff51ed89050
   8.72%  ││  0x00007ff51ed88eef:   mov    0x14(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop }
          ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
   0.01%  ││  0x00007ff51ed88ef4:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007ff51ed89073
  10.34%  ││  0x00007ff51ed88efb:   mov    0x18(%rax,%r9,4),%edi        ; ImmutableOopMap {rax=Oop }
          ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
   0.02%  ││  0x00007ff51ed88f00:   mov    0xc(,%rdi,8),%edi            ; implicit exception: dispatches to 0x00007ff51ed89096
   8.97%  ││  0x00007ff51ed88f07:   mov    0x1c(%rax,%r9,4),%edx        ; ImmutableOopMap {rax=Oop }
          ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
   0.35%  ││  0x00007ff51ed88f0c:   mov    0xc(,%rdx,8),%edx            ; implicit exception: dispatches to 0x00007ff51ed890b9
  11.62%  ││  0x00007ff51ed88f13:   mov    0x20(%rax,%r9,4),%esi        ; ImmutableOopMap {rax=Oop }
          ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
   0.01%  ││  0x00007ff51ed88f18:   mov    0xc(,%rsi,8),%esi            ; implicit exception: dispatches to 0x00007ff51ed890dc
  10.32%  ││  0x00007ff51ed88f1f:   mov    0x24(%rax,%r9,4),%ebp        ; ImmutableOopMap {rax=Oop }
          ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
   0.03%  ││  0x00007ff51ed88f24:   mov    0xc(,%rbp,8),%ebp            ; implicit exception: dispatches to 0x00007ff51ed890ff
  11.86%  ││  0x00007ff51ed88f2b:   mov    0x28(%rax,%r9,4),%r13d       ; ImmutableOopMap {rax=Oop }
          ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
   0.02%  ││  0x00007ff51ed88f30:   mov    0xc(,%r13,8),%r13d           ; implicit exception: dispatches to 0x00007ff51ed89122
          ││                                                            ;   {no_reloc}
  10.63%  ││  0x00007ff51ed88f38:   mov    0x2c(%rax,%r9,4),%r14d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
   0.02%  ││  0x00007ff51ed88f3d:   data16 xchg %ax,%ax
   2.21%  ││  0x00007ff51ed88f40:   test   %r14d,%r14d
          ││  0x00007ff51ed88f43:   je     0x00007ff51ed88fbf           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Objects::requireNonNull@1 (line 232)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@2 (line 180)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@28 (line 112)
          ││  0x00007ff51ed88f49:   add    %ecx,%ebx
   1.89%  ││  0x00007ff51ed88f4b:   add    %edi,%ebx
          ││  0x00007ff51ed88f4d:   add    %edx,%ebx
   2.88%  ││  0x00007ff51ed88f4f:   add    %esi,%ebx
   0.00%  ││  0x00007ff51ed88f51:   add    %ebp,%ebx
   1.85%  ││  0x00007ff51ed88f53:   add    %r13d,%ebx
   1.45%  ││  0x00007ff51ed88f56:   add    0xc(,%r14,8),%ebx            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@31 (line 112)
  11.16%  ││  0x00007ff51ed88f5e:   lea    0x8(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@33 (line 111)
          ││  0x00007ff51ed88f62:   mov    %ebx,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
   0.55%  ↘│  0x00007ff51ed88f65:   cmp    %r9d,%r11d
           ╰  0x00007ff51ed88f68:   jg     0x00007ff51ed88ee0
              0x00007ff51ed88f6e:   jmp    0x00007ff51ed88fa0
              0x00007ff51ed88f73:   nopw   0x0(%rax,%rax,1)
              0x00007ff51ed88f7c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
              0x00007ff51ed88f80:   mov    0x10(%rax,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
              0x00007ff51ed88f85:   mov    %r8d,%ecx                    ; ImmutableOopMap {rax=Oop r11=NarrowOop }
                                                                        ;*iload {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  98.32%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.32%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 4, compile id 1124 
   0.23%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeSwitchBenchmark_switch_concrete_array_jmhTest::switch_concrete_array_avgt_jmhStub, version 4, compile id 1151 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 4, compile id 1124 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 4, compile id 1124 
   0.01%              kernel  [unknown] 
   0.84%  <...other 273 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.36%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 4, compile id 1124 
   1.31%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeSwitchBenchmark_switch_concrete_array_jmhTest::switch_concrete_array_avgt_jmhStub, version 4, compile id 1151 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%      hsdis-amd64.so  putop 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%           libjvm.so  MethodMatcher::matches 
   0.10%  <...other 49 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.39%      jvmci, level 4
   1.31%              kernel
   0.13%           libjvm.so
   0.08%        libc-2.31.so
   0.05%                    
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.00%          ld-2.31.so
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_concrete_array

# Run progress: 37.50% complete, ETA 00:09:32
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.837 ns/op
# Warmup Iteration   2: 1.334 ns/op
# Warmup Iteration   3: 1.334 ns/op
# Warmup Iteration   4: 1.333 ns/op
# Warmup Iteration   5: 1.333 ns/op
Iteration   1: 1.335 ns/op
Iteration   2: 1.246 ns/op
Iteration   3: 1.249 ns/op
Iteration   4: 1.328 ns/op
Iteration   5: 1.330 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_concrete_array":
  1.298 ±(99.9%) 0.177 ns/op [Average]
  (min, avg, max) = (1.246, 1.298, 1.335), stdev = 0.046
  CI (99.9%): [1.121, 1.475] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_concrete_array:asm":
PrintAssembly processed: 260552 total address lines.
Perf output processed (skipped 60.998 seconds):
 Column 1: cycles (50796 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 3, compile id 1101 

                    0x00007f2796d8d3f4:   cmovb  %r10d,%r11d
                    0x00007f2796d8d3f8:   shl    $0x3,%rax                    ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@3 (line 144)
                    0x00007f2796d8d3fc:   mov    $0x0,%r9d
                    0x00007f2796d8d402:   mov    $0x0,%r8d
                    0x00007f2796d8d408:   nopl   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@13 (line 144)
            ↗↗      0x00007f2796d8d410:   cmp    %r9d,%r11d
          ╭ ││      0x00007f2796d8d413:   jbe    0x00007f2796d8d440           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@16 (line 144)
   0.00%  │ ││      0x00007f2796d8d419:   mov    0x10(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop }
          │ ││                                                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │ ││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@13 (line 144)
          │ ││      0x00007f2796d8d41e:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f2796d8d59d
   0.02%  │ ││      0x00007f2796d8d425:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@33 (line 144)
          │ ││      0x00007f2796d8d428:   test   $0x1,%ecx
          │╭││      0x00007f2796d8d42e:   je     0x00007f2796d8d439           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
          ││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
          ││││      0x00007f2796d8d434:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
          ││╰│      0x00007f2796d8d437:   jmp    0x00007f2796d8d410           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
          ││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   0.01%  │↘ │      0x00007f2796d8d439:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
          │  │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
          │  │      0x00007f2796d8d43b:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
          │  ╰      0x00007f2796d8d43e:   jmp    0x00007f2796d8d410
          ↘         0x00007f2796d8d440:   lea    -0x4(%r10),%r11d
                    0x00007f2796d8d444:   nopl   0x0(%rax,%rax,1)
                    0x00007f2796d8d44c:   data16 data16 xchg %ax,%ax
   2.99%        ↗↗  0x00007f2796d8d450:   cmp    %r9d,%r11d
              ╭ ││  0x00007f2796d8d453:   jle    0x00007f2796d8d500           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@16 (line 144)
   0.73%      │ ││  0x00007f2796d8d459:   mov    0x10(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop }
              │ ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
              │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@13 (line 144)
   2.78%      │ ││  0x00007f2796d8d45e:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f2796d8d5c0
   9.42%      │ ││  0x00007f2796d8d465:   mov    0x14(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@22 (line 144)
   2.44%      │ ││  0x00007f2796d8d46a:   mov    %ecx,%edi
   0.67%      │ ││  0x00007f2796d8d46c:   shl    %edi                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   3.22%      │ ││  0x00007f2796d8d46e:   test   $0x1,%ecx
   1.01%      │ ││  0x00007f2796d8d474:   cmove  %edi,%ecx                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   3.52%      │ ││  0x00007f2796d8d477:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
   1.95%      │ ││  0x00007f2796d8d47a:   mov    %r9d,%ecx
   1.97%      │ ││  0x00007f2796d8d47d:   inc    %ecx                         ; ImmutableOopMap {rax=Oop }
              │ ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
              │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@13 (line 144)
   0.97%      │ ││  0x00007f2796d8d47f:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007f2796d8d5e3
   9.42%      │ ││  0x00007f2796d8d486:   mov    0x18(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@22 (line 144)
   1.45%      │ ││  0x00007f2796d8d48b:   mov    %ebx,%edi
   1.85%      │ ││  0x00007f2796d8d48d:   shl    %edi                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   1.69%      │ ││  0x00007f2796d8d48f:   test   $0x1,%ebx
   2.28%      │ ││  0x00007f2796d8d495:   cmove  %edi,%ebx                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   2.38%      │ ││  0x00007f2796d8d498:   add    %ebx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
   2.92%      │ ││  0x00007f2796d8d49b:   lea    0x2(%r9),%ebx                ; ImmutableOopMap {rax=Oop }
              │ ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
              │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@13 (line 144)
   0.82%      │ ││  0x00007f2796d8d49f:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f2796d8d606
   8.78%      │ ││  0x00007f2796d8d4a6:   mov    0x1c(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@22 (line 144)
   2.26%      │ ││  0x00007f2796d8d4ab:   mov    %ecx,%edi
   2.42%      │ ││  0x00007f2796d8d4ad:   shl    %edi                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   1.56%      │ ││  0x00007f2796d8d4af:   test   $0x1,%ecx
   1.98%      │ ││  0x00007f2796d8d4b5:   cmove  %edi,%ecx                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
              │ ││                                                            ;   {no_reloc}
   2.28%      │ ││  0x00007f2796d8d4b8:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
   3.24%      │ ││  0x00007f2796d8d4bb:   lea    0x3(%r9),%ecx                ; ImmutableOopMap {rax=Oop }
              │ ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
              │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@13 (line 144)
   0.83%      │ ││  0x00007f2796d8d4bf:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007f2796d8d62d
   9.66%      │ ││  0x00007f2796d8d4c6:   lea    0x4(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@33 (line 144)
   1.20%      │ ││  0x00007f2796d8d4ca:   test   $0x1,%ebx
              │╭││  0x00007f2796d8d4d0:   je     0x00007f2796d8d4de           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
              ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
              ││││  0x00007f2796d8d4d6:   add    %ebx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
              ││╰│  0x00007f2796d8d4d9:   jmp    0x00007f2796d8d450           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
              ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   3.85%      │↘ │  0x00007f2796d8d4de:   shl    %ebx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
              │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   1.16%      │  │  0x00007f2796d8d4e0:   add    %r8d,%ebx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
   2.85%      │  │  0x00007f2796d8d4e3:   mov    %ebx,%r8d
   0.97%      │  ╰  0x00007f2796d8d4e6:   jmp    0x00007f2796d8d450
              │     0x00007f2796d8d4eb:   data16 data16 nopw 0x0(%rax,%rax,1)
              │     0x00007f2796d8d4f6:   data16 data16 xchg %ax,%ax
              │     0x00007f2796d8d4fa:   nopw   0x0(%rax,%rax,1)
              ↘     0x00007f2796d8d500:   cmp    %r9d,%r10d
                    0x00007f2796d8d503:   jbe    0x00007f2796d8d53a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@16 (line 144)
                    0x00007f2796d8d509:   mov    0x10(%rax,%r9,4),%r11d       ; ImmutableOopMap {rax=Oop }
                                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@13 (line 144)
   0.00%            0x00007f2796d8d50e:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007f2796d8d650
....................................................................................................
  97.56%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.56%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 3, compile id 1101 
   0.46%              kernel  [unknown] 
   0.25%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeSwitchBenchmark_switch_if_concrete_array_jmhTest::switch_if_concrete_array_avgt_jmhStub, version 5, compile id 1130 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 3, compile id 1101 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 3, compile id 1101 
   0.02%          ld-2.31.so  __tls_get_addr 
   1.11%  <...other 349 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.59%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 3, compile id 1101 
   2.04%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeSwitchBenchmark_switch_if_concrete_array_jmhTest::switch_if_concrete_array_avgt_jmhStub, version 5, compile id 1130 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  HighResTimeSampler::take_sample 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.00%      hsdis-amd64.so  putop 
   0.14%  <...other 64 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.62%      jvmci, level 4
   2.04%              kernel
   0.13%           libjvm.so
   0.10%        libc-2.31.so
   0.06%                    
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.00%              [vdso]
   0.00%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_interface_array

# Run progress: 50.00% complete, ETA 00:07:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 18.861 ns/op
# Warmup Iteration   2: 15.921 ns/op
# Warmup Iteration   3: 15.920 ns/op
# Warmup Iteration   4: 15.927 ns/op
# Warmup Iteration   5: 15.910 ns/op
Iteration   1: 15.931 ns/op
Iteration   2: 15.937 ns/op
Iteration   3: 15.897 ns/op
Iteration   4: 15.912 ns/op
Iteration   5: 15.936 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_interface_array":
  15.923 ±(99.9%) 0.068 ns/op [Average]
  (min, avg, max) = (15.897, 15.923, 15.937), stdev = 0.018
  CI (99.9%): [15.854, 15.991] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_interface_array:asm":
PrintAssembly processed: 262432 total address lines.
Perf output processed (skipped 61.167 seconds):
 Column 1: cycles (50572 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array, version 3, compile id 1114 

                                              0x00007f755ed8de91:   vxorpd %xmm0,%xmm0,%xmm0            ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@292 (line 231)
                                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
                                              0x00007f755ed8de95:   vxorpd %xmm1,%xmm1,%xmm1            ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@255 (line 225)
                                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
                                              0x00007f755ed8de99:   mov    $0x0,%r9d
                                              0x00007f755ed8de9f:   mov    $0x0,%r8d
                                              0x00007f755ed8dea5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@13 (line 122)
   0.92%          ↗ ↗ ↗ ↗ ↗↗ ↗↗  ↗↗↗ ↗↗↗↗↗    0x00007f755ed8deb0:   cmp    %r9d,%r10d
                  │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8deb3:   jbe    0x00007f755ed8e1aa           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                  │ │ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@16 (line 122)
   0.98%          │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8deb9:   mov    0x10(%r11,%r9,4),%eax        ; ImmutableOopMap {rax=NarrowOop r11=Oop }
                  │ │ │ │ ││ ││  │││ │││││                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
                  │ │ │ │ ││ ││  │││ │││││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@13 (line 122)
   1.82%          │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8debe:   mov    0x8(,%rax,8),%ecx            ; implicit exception: dispatches to 0x00007f755ed8e243
  13.15%          │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8dec5:   mov    %r9d,%ebx
   0.15%          │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8dec8:   inc    %ebx
   0.08%          │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8deca:   cmp    $0x102fc00,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          ╭       │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8ded0:   je     0x00007f755ed8dfb7
   2.38%  │       │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8ded6:   data16 nopw 0x0(%rax,%rax,1)
   0.35%  │       │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8dee0:   cmp    $0x102b280,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          │╭      │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8dee6:   je     0x00007f755ed8e010
   3.67%  ││      │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8deec:   cmp    $0x102b670,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
   0.52%  ││      │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8def2:   sete   %dil
   0.61%  ││      │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8def6:   movzbl %dil,%edi                    ;* unwind (locked if synchronized)
          ││      │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.Class::isInstance@-3
          ││      │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$DMH/0x00007f74e4007000::invokeSpecial@11
          ││      │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4082c00::invoke@21
          ││      │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@32
          ││      │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││      │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
          ││      │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││      │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084800::invoke@91
          ││      │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4087000::tableSwitch@103
          ││      │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e408a800::delegate@14
          ││      │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4089c00::invoke@114
          ││      │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e408a400::linkToTargetMethod@6
          ││      │ │ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          ││      │ │ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.24%  ││      │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8defa:   nopw   0x0(%rax,%rax,1)
   1.41%  ││      │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df00:   test   $0x1,%edi
          ││╭     │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df06:   jne    0x00007f755ed8dfda
   0.89%  │││     │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df0c:   cmp    $0x102f800,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
          │││╭    │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df12:   je     0x00007f755ed8e03c
   1.52%  ││││    │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df18:   nopl   0x0(%rax,%rax,1)
   0.17%  ││││    │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df20:   cmp    $0x102fa00,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          ││││╭   │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df26:   je     0x00007f755ed8e069
   3.01%  │││││   │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df2c:   cmp    $0x102bc78,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          │││││╭  │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df32:   je     0x00007f755ed8e098
   1.89%  ││││││  │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df38:   nopl   0x0(%rax,%rax,1)
   0.25%  ││││││  │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df40:   cmp    $0x102ba78,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          ││││││╭ │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df46:   je     0x00007f755ed8e0e8
   2.09%  │││││││ │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df4c:   cmp    $0x102b870,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
   1.01%  │││││││ │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df52:   sete   %dil
   0.66%  │││││││ │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df56:   movzbl %dil,%edi                    method is native {reexecute=0 rethrow=0 return_oop=0}
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.Class::isInstance@0
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$DMH/0x00007f74e4007000::invokeSpecial@11
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4082c00::invoke@21
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@32
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084800::invoke@91
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4087000::tableSwitch@103
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e408a800::delegate@14
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4089c00::invoke@114
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e408a400::linkToTargetMethod@6
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.02%  │││││││ │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df5a:   nopw   0x0(%rax,%rax,1)
   0.07%  │││││││ │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df60:   test   $0x1,%edi
          │││││││ │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df66:   je     0x00007f755ed8e1f5
   0.16%  │││││││ │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df6c:   cmp    $0x102b870,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
          │││││││ │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df72:   jne    0x00007f755ed8e1ee           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@319 (line 236)
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.33%  │││││││ │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df78:   mov    0xc(,%rax,8),%ecx            ; ImmutableOopMap {rcx=NarrowOop r11=Oop }
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@13 (line 122)
   0.06%  │││││││ │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df7f:   mov    0x14(,%rcx,8),%eax           ; implicit exception: dispatches to 0x00007f755ed8e266
   2.21%  │││││││ │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df86:   movsbl 0x10(,%rcx,8),%ecx           ; ImmutableOopMap {r11=Oop }
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@13 (line 122)
   0.88%  │││││││ │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df8e:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007f755ed8e28d
   0.83%  │││││││ │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df95:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.String::length@9 (line 1519)
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@329 (line 237)
          │││││││ │ │ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.61%  │││││││ │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8df97:   nopw   0x0(%rax,%rax,1)
          │││││││ │ │ │ │ ││ ││  │││ │││││    0x00007f755ed8dfa0:   test   $0x1,%eax
          │││││││╭│ │ │ │ ││ ││  │││ │││││    0x00007f755ed8dfa6:   je     0x00007f755ed8e149           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││││││││ │ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@334 (line 237)
          │││││││││ │ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.01%  │││││││││ │ │ │ ││ ││  │││ │││││    0x00007f755ed8dfac:   add    %eax,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││ │ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.00%  │││││││││ │ │ │ ││ ││  │││ │││││    0x00007f755ed8dfaf:   mov    %ebx,%r9d
   0.27%  ││││││││╰ │ │ │ ││ ││  │││ │││││    0x00007f755ed8dfb2:   jmp    0x00007f755ed8deb0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@55
          ││││││││  │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││  │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084800::invoke@91
          ││││││││  │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4087000::tableSwitch@103
          ││││││││  │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e408a800::delegate@14
          ││││││││  │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4089c00::invoke@114
          ││││││││  │ │ │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e408a400::linkToTargetMethod@6
          ││││││││  │ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          ││││││││  │ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   3.17%  ↘│││││││  │ │ │ ││ ││  │││ │││││    0x00007f755ed8dfb7:   mov    0x10(,%rax,8),%rax           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││││││  │ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@112 (line 201)
           │││││││  │ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   3.10%   │││││││  │ │ │ ││ ││  │││ │││││    0x00007f755ed8dfbf:   mov    %eax,%r9d                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
           │││││││  │ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@138 (line 204)
           │││││││  │ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.01%   │││││││  │ │ │ ││ ││  │││ │││││    0x00007f755ed8dfc2:   test   $0x1,%rax
           │││││││ ╭│ │ │ ││ ││  │││ │││││    0x00007f755ed8dfc9:   je     0x00007f755ed8e05b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │││││││ ││ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@119 (line 201)
           │││││││ ││ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.33%   │││││││ ││ │ │ ││ ││  │││ │││││    0x00007f755ed8dfcf:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││││││ ││ │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.19%   │││││││ ││ │ │ ││ ││  │││ │││││    0x00007f755ed8dfd2:   mov    %ebx,%r9d
   0.00%   │││││││ │╰ │ │ ││ ││  │││ │││││    0x00007f755ed8dfd5:   jmp    0x00007f755ed8deb0           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
           │││││││ │  │ │ ││ ││  │││ │││││                                                              ; - java.util.Objects::requireNonNull@1 (line 232)
           │││││││ │  │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@2 (line 193)
           │││││││ │  │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   3.69%   │↘│││││ │  │ │ ││ ││  │││ │││││    0x00007f755ed8dfda:   nopw   0x0(%rax,%rax,1)
   0.33%   │ │││││ │  │ │ ││ ││  │││ │││││    0x00007f755ed8dfe0:   cmp    $0x102b670,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
           │ │││││ │  │ │ ││ ││  │││ │││││    0x00007f755ed8dfe6:   jne    0x00007f755ed8e1ce           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │││││ │  │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@143 (line 206)
           │ │││││ │  │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   1.85%   │ │││││ │  │ │ ││ ││  │││ │││││    0x00007f755ed8dfec:   movswl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │ │││││ │  │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@150 (line 207)
           │ │││││ │  │ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   1.44%   │ │││││ │  │ │ ││ ││  │││ │││││    0x00007f755ed8dff4:   test   $0x1,%eax
           │ │││││ │ ╭│ │ ││ ││  │││ │││││    0x00007f755ed8dffa:   jne    0x00007f755ed8e08d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │ │││││ │ ││ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@155 (line 207)
           │ │││││ │ ││ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.60%   │ │││││ │ ││ │ ││ ││  │││ │││││    0x00007f755ed8e000:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
           │ │││││ │ ││ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@164 (line 208)
           │ │││││ │ ││ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.29%   │ │││││ │ ││ │ ││ ││  │││ │││││    0x00007f755ed8e002:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │ │││││ │ ││ │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.15%   │ │││││ │ ││ │ ││ ││  │││ │││││    0x00007f755ed8e005:   mov    %ebx,%r9d
   0.00%   │ │││││ │ ││ │ ││ ││  │││ │││││    0x00007f755ed8e008:   mov    %eax,%r8d
           │ │││││ │ │╰ │ ││ ││  │││ │││││    0x00007f755ed8e00b:   jmp    0x00007f755ed8deb0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │ │││││ │ │  │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084800::invoke@56
           │ │││││ │ │  │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4087000::tableSwitch@103
           │ │││││ │ │  │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e408a800::delegate@14
           │ │││││ │ │  │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4089c00::invoke@114
           │ │││││ │ │  │ ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e408a400::linkToTargetMethod@6
           │ │││││ │ │  │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
           │ │││││ │ │  │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   3.14%   ↘ │││││ │ │  │ ││ ││  │││ │││││    0x00007f755ed8e010:   mov    0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
             │││││ │ │  │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@80 (line 195)
             │││││ │ │  │ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.80%     │││││ │ │  │ ││ ││  │││ │││││    0x00007f755ed8e017:   nopw   0x0(%rax,%rax,1)
   0.00%     │││││ │ │  │ ││ ││  │││ │││││    0x00007f755ed8e020:   test   $0x1,%eax
             │││││ │ │ ╭│ ││ ││  │││ │││││    0x00007f755ed8e026:   jne    0x00007f755ed8e0cd           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
             │││││ │ │ ││ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
             │││││ │ │ ││ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.55%     │││││ │ │ ││ ││ ││  │││ │││││    0x00007f755ed8e02c:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
             │││││ │ │ ││ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
             │││││ │ │ ││ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.26%     │││││ │ │ ││ ││ ││  │││ │││││    0x00007f755ed8e02e:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │││││ │ │ ││ ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.16%     │││││ │ │ ││ ││ ││  │││ │││││    0x00007f755ed8e031:   mov    %ebx,%r9d
             │││││ │ │ ││ ││ ││  │││ │││││    0x00007f755ed8e034:   mov    %eax,%r8d
   0.01%     │││││ │ │ │╰ ││ ││  │││ │││││    0x00007f755ed8e037:   jmp    0x00007f755ed8deb0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │││││ │ │ │  ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@55
             │││││ │ │ │  ││ ││  │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
             │││││ │ │ │  ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
             │││││ │ │ │  ││ ││  │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
             │││││ │ │ │  ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
             │││││ │ │ │  ││ ││  │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
             │││││ │ │ │  ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084800::invoke@91
             │││││ │ │ │  ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4087000::tableSwitch@103
             │││││ │ │ │  ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e408a800::delegate@14
             │││││ │ │ │  ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4089c00::invoke@114
             │││││ │ │ │  ││ ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e408a400::linkToTargetMethod@6
             │││││ │ │ │  ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
             │││││ │ │ │  ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.58%     ↘││││ │ │ │  ││ ││  │││ │││││    0x00007f755ed8e03c:   movsbl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              ││││ │ │ │  ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@184 (line 213)
              ││││ │ │ │  ││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.68%      ││││ │ │ │  ││ ││  │││ │││││    0x00007f755ed8e044:   test   $0x1,%eax
              ││││ │ │ │ ╭││ ││  │││ │││││    0x00007f755ed8e04a:   je     0x00007f755ed8e0d8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              ││││ │ │ │ │││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@189 (line 213)
              ││││ │ │ │ │││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.25%      ││││ │ │ │ │││ ││  │││ │││││    0x00007f755ed8e050:   add    %eax,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              ││││ │ │ │ │││ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.06%      ││││ │ │ │ │││ ││  │││ │││││    0x00007f755ed8e053:   mov    %ebx,%r9d
              ││││ │ │ │ │╰│ ││  │││ │││││    0x00007f755ed8e056:   jmp    0x00007f755ed8deb0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              ││││ │ │ │ │ │ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@119 (line 201)
              ││││ │ │ │ │ │ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.56%      ││││ ↘ │ │ │ │ ││  │││ │││││    0x00007f755ed8e05b:   shl    %r9d                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
              ││││   │ │ │ │ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@129 (line 202)
              ││││   │ │ │ │ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.28%      ││││   │ │ │ │ ││  │││ │││││    0x00007f755ed8e05e:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              ││││   │ │ │ │ ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.14%      ││││   │ │ │ │ ││  │││ │││││    0x00007f755ed8e061:   mov    %ebx,%r9d
              ││││   │ │ │ ╰ ││  │││ │││││    0x00007f755ed8e064:   jmp    0x00007f755ed8deb0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
              ││││   │ │ │   ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@55
              ││││   │ │ │   ││  │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
              ││││   │ │ │   ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
              ││││   │ │ │   ││  │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
              ││││   │ │ │   ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
              ││││   │ │ │   ││  │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
              ││││   │ │ │   ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
              ││││   │ │ │   ││  │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
              ││││   │ │ │   ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084800::invoke@91
              ││││   │ │ │   ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4087000::tableSwitch@103
              ││││   │ │ │   ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e408a800::delegate@14
              ││││   │ │ │   ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4089c00::invoke@114
              ││││   │ │ │   ││  │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e408a400::linkToTargetMethod@6
              ││││   │ │ │   ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
              ││││   │ │ │   ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.97%      ↘│││   │ │ │   ││  │││ │││││    0x00007f755ed8e069:   movzwl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
               │││   │ │ │   ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@218 (line 219)
               │││   │ │ │   ││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.62%       │││   │ │ │   ││  │││ │││││    0x00007f755ed8e071:   test   $0x1,%eax
               │││   │ │ │  ╭││  │││ │││││    0x00007f755ed8e077:   jne    0x00007f755ed8e128           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │││   │ │ │  │││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@223 (line 219)
               │││   │ │ │  │││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.62%       │││   │ │ │  │││  │││ │││││    0x00007f755ed8e07d:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │││   │ │ │  │││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@232 (line 220)
               │││   │ │ │  │││  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.29%       │││   │ │ │  │││  │││ │││││    0x00007f755ed8e07f:   add    %r8d,%eax
   0.18%       │││   │ │ │  │││  │││ │││││    0x00007f755ed8e082:   mov    %ebx,%r9d
               │││   │ │ │  │││  │││ │││││    0x00007f755ed8e085:   mov    %eax,%r8d
   0.02%       │││   │ │ │  │╰│  │││ │││││    0x00007f755ed8e088:   jmp    0x00007f755ed8deb0
   0.22%       │││   ↘ │ │  │ │  │││ │││││    0x00007f755ed8e08d:   add    %eax,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               │││     │ │  │ │  │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.08%       │││     │ │  │ │  │││ │││││    0x00007f755ed8e090:   mov    %ebx,%r9d
               │││     │ │  │ ╰  │││ │││││    0x00007f755ed8e093:   jmp    0x00007f755ed8deb0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               │││     │ │  │    │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@55
               │││     │ │  │    │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               │││     │ │  │    │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
               │││     │ │  │    │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               │││     │ │  │    │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
               │││     │ │  │    │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               │││     │ │  │    │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
               │││     │ │  │    │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               │││     │ │  │    │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
               │││     │ │  │    │││ │││││                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               │││     │ │  │    │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084800::invoke@91
               │││     │ │  │    │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4087000::tableSwitch@103
               │││     │ │  │    │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e408a800::delegate@14
               │││     │ │  │    │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4089c00::invoke@114
               │││     │ │  │    │││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f74e408a400::linkToTargetMethod@6
               │││     │ │  │    │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
               │││     │ │  │    │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.55%       ↘││     │ │  │    │││ │││││    0x00007f755ed8e098:   vmovsd 0x10(,%rax,8),%xmm2          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                ││     │ │  │    │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@252 (line 225)
                ││     │ │  │    │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.57%        ││     │ │  │    │││ │││││    0x00007f755ed8e0a1:   vcvttsd2si %xmm2,%eax
   2.49%        ││     │ │  │    │││ │││││    0x00007f755ed8e0a5:   cmp    $0x80000000,%eax
                ││     │ │  │  ╭ │││ │││││    0x00007f755ed8e0ab:   je     0x00007f755ed8e159           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                ││     │ │  │  │ │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@255 (line 225)
                ││     │ │  │  │ │││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.01%        ││     │ │  │  │ │││ │││││↗↗  0x00007f755ed8e0b1:   test   $0x1,%eax
                ││     │ │  │  │╭│││ │││││││  0x00007f755ed8e0b7:   jne    0x00007f755ed8e133           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                ││     │ │  │  │││││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@258 (line 225)
                ││     │ │  │  │││││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.25%        ││     │ │  │  │││││ │││││││  0x00007f755ed8e0bd:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                ││     │ │  │  │││││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@268 (line 226)
                ││     │ │  │  │││││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.25%        ││     │ │  │  │││││ │││││││  0x00007f755ed8e0bf:   add    %r8d,%eax
   0.05%        ││     │ │  │  │││││ │││││││  0x00007f755ed8e0c2:   mov    %ebx,%r9d
   0.00%        ││     │ │  │  │││││ │││││││  0x00007f755ed8e0c5:   mov    %eax,%r8d
   0.01%        ││     │ │  │  ││╰││ │││││││  0x00007f755ed8e0c8:   jmp    0x00007f755ed8deb0
   0.32%        ││     ↘ │  │  ││ ││ │││││││  0x00007f755ed8e0cd:   add    %eax,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                ││       │  │  ││ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.11%        ││       │  │  ││ ││ │││││││  0x00007f755ed8e0d0:   mov    %ebx,%r9d
                ││       │  │  ││ ╰│ │││││││  0x00007f755ed8e0d3:   jmp    0x00007f755ed8deb0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                ││       │  │  ││  │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@189 (line 213)
                ││       │  │  ││  │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.52%        ││       ↘  │  ││  │ │││││││  0x00007f755ed8e0d8:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                ││          │  ││  │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@198 (line 214)
                ││          │  ││  │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.23%        ││          │  ││  │ │││││││  0x00007f755ed8e0da:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                ││          │  ││  │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.21%        ││          │  ││  │ │││││││  0x00007f755ed8e0dd:   mov    %ebx,%r9d
                ││          │  ││  │ │││││││  0x00007f755ed8e0e0:   mov    %eax,%r8d                    ;   {no_reloc}
   0.01%        ││          │  ││  ╰ │││││││  0x00007f755ed8e0e3:   jmp    0x00007f755ed8deb0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                ││          │  ││    │││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@55
                ││          │  ││    │││││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                ││          │  ││    │││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
                ││          │  ││    │││││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                ││          │  ││    │││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
                ││          │  ││    │││││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                ││          │  ││    │││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
                ││          │  ││    │││││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                ││          │  ││    │││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
                ││          │  ││    │││││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                ││          │  ││    │││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084000::guard@89
                ││          │  ││    │││││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                ││          │  ││    │││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4084800::invoke@91
                ││          │  ││    │││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4087000::tableSwitch@103
                ││          │  ││    │││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f74e408a800::delegate@14
                ││          │  ││    │││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f74e4089c00::invoke@114
                ││          │  ││    │││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f74e408a400::linkToTargetMethod@6
                ││          │  ││    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
                ││          │  ││    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.05%        ↘│          │  ││    │││││││  0x00007f755ed8e0e8:   vmovss 0xc(,%rax,8),%xmm2           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                 │          │  ││    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@289 (line 231)
                 │          │  ││    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   1.76%         │          │  ││    │││││││  0x00007f755ed8e0f1:   vcvttss2si %xmm2,%eax
   2.07%         │          │  ││    │││││││  0x00007f755ed8e0f5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.01%         │          │  ││    │││││││  0x00007f755ed8e100:   cmp    $0x80000000,%eax
                 │          │  ││    │││││││  0x00007f755ed8e106:   je     0x00007f755ed8e17a           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                 │          │  ││    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@292 (line 231)
                 │          │  ││    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.05%         │          │  ││    │││││││  0x00007f755ed8e10c:   test   $0x1,%eax
                 │          │  ││   ╭│││││││  0x00007f755ed8e112:   jne    0x00007f755ed8e13e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                 │          │  ││   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@295 (line 231)
                 │          │  ││   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.44%         │          │  ││   ││││││││  0x00007f755ed8e118:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                 │          │  ││   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@305 (line 232)
                 │          │  ││   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.21%         │          │  ││   ││││││││  0x00007f755ed8e11a:   add    %r8d,%eax
   0.09%         │          │  ││   ││││││││  0x00007f755ed8e11d:   mov    %ebx,%r9d
   0.02%         │          │  ││   ││││││││  0x00007f755ed8e120:   mov    %eax,%r8d
   0.05%         │          │  ││   │╰││││││  0x00007f755ed8e123:   jmp    0x00007f755ed8deb0
   0.37%         │          ↘  ││   │ ││││││  0x00007f755ed8e128:   add    %eax,%r8d
   0.28%         │             ││   │ ││││││  0x00007f755ed8e12b:   mov    %ebx,%r9d
                 │             ││   │ ╰│││││  0x00007f755ed8e12e:   jmp    0x00007f755ed8deb0
   0.69%         │             │↘   │  │││││  0x00007f755ed8e133:   add    %eax,%r8d
   0.57%         │             │    │  │││││  0x00007f755ed8e136:   mov    %ebx,%r9d
                 │             │    │  ╰││││  0x00007f755ed8e139:   jmp    0x00007f755ed8deb0
   0.61%         │             │    ↘   ││││  0x00007f755ed8e13e:   add    %eax,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                 │             │        ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.31%         │             │        ││││  0x00007f755ed8e141:   mov    %ebx,%r9d
                 │             │        ╰│││  0x00007f755ed8e144:   jmp    0x00007f755ed8deb0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                 │             │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@334 (line 237)
                 │             │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.01%         ↘             │         │││  0x00007f755ed8e149:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                               │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@346 (line 238)
                               │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.01%                       │         │││  0x00007f755ed8e14b:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                               │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.03%                       │         │││  0x00007f755ed8e14e:   mov    %ebx,%r9d
                               │         │││  0x00007f755ed8e151:   mov    %eax,%r8d
   0.00%                       │         ╰││  0x00007f755ed8e154:   jmp    0x00007f755ed8deb0
                               ↘          ││  0x00007f755ed8e159:   vucomisd %xmm2,%xmm2
                                          ││  0x00007f755ed8e15d:   data16 xchg %ax,%ax
                                          ││  0x00007f755ed8e160:   jp     0x00007f755ed8e196
                                          ││  0x00007f755ed8e166:   vucomisd %xmm1,%xmm2
                                          ╰│  0x00007f755ed8e16a:   jbe    0x00007f755ed8e0b1
                                           │  0x00007f755ed8e170:   mov    $0x7fffffff,%eax
                                           ╰  0x00007f755ed8e175:   jmp    0x00007f755ed8e0b1           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@255 (line 225)
                                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
                                              0x00007f755ed8e17a:   vucomiss %xmm2,%xmm2
....................................................................................................
  98.05%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array, version 3, compile id 1114 
   0.40%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  syscall 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.95%  <...other 311 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array, version 3, compile id 1114 
   1.65%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%         interpreter  ladd  97 ladd  
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%           libjvm.so  resource_allocate_bytes 
   0.00%    perf-2154560.map  [unknown] 
   0.12%  <...other 56 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.05%      jvmci, level 4
   1.65%              kernel
   0.11%           libjvm.so
   0.09%        libc-2.31.so
   0.04%                    
   0.03%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%  libpthread-2.31.so
   0.00%    perf-2154560.map
   0.00%         c1, level 3
   0.00%          libjava.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_interface_array

# Run progress: 62.50% complete, ETA 00:05:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.577 ns/op
# Warmup Iteration   2: 13.603 ns/op
# Warmup Iteration   3: 13.543 ns/op
# Warmup Iteration   4: 13.514 ns/op
# Warmup Iteration   5: 13.534 ns/op
Iteration   1: 13.529 ns/op
Iteration   2: 13.528 ns/op
Iteration   3: 13.536 ns/op
Iteration   4: 13.527 ns/op
Iteration   5: 13.510 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_interface_array":
  13.526 ±(99.9%) 0.038 ns/op [Average]
  (min, avg, max) = (13.510, 13.526, 13.536), stdev = 0.010
  CI (99.9%): [13.488, 13.564] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_interface_array:asm":
PrintAssembly processed: 256145 total address lines.
Perf output processed (skipped 60.989 seconds):
 Column 1: cycles (50805 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 4, compile id 1112 

                             0x00007fb43ad8c691:   vxorpd %xmm0,%xmm0,%xmm0            ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@169 (line 187)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
                             0x00007fb43ad8c695:   vxorpd %xmm1,%xmm1,%xmm1            ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@154 (line 186)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
                             0x00007fb43ad8c699:   mov    $0x0,%r9d
                             0x00007fb43ad8c69f:   mov    $0x0,%r8d
                             0x00007fb43ad8c6a5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@13 (line 100)
   1.62%         ↗↗↗↗↗↗ ↗↗   0x00007fb43ad8c6b0:   cmp    %r9d,%r10d
                 ││││││ ││   0x00007fb43ad8c6b3:   jbe    0x00007fb43ad8c8b8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                 ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@16 (line 100)
   1.01%         ││││││ ││   0x00007fb43ad8c6b9:   mov    0x10(%r11,%r9,4),%eax        ; ImmutableOopMap {rax=NarrowOop r11=Oop }
                 ││││││ ││                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
                 ││││││ ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@13 (line 100)
   0.91%         ││││││ ││   0x00007fb43ad8c6be:   mov    0x8(,%rax,8),%ecx            ; implicit exception: dispatches to 0x00007fb43ad8c94d
  12.41%         ││││││ ││   0x00007fb43ad8c6c5:   mov    %r9d,%ebx
   0.32%         ││││││ ││   0x00007fb43ad8c6c8:   inc    %ebx
   0.30%         ││││││ ││   0x00007fb43ad8c6ca:   cmp    $0x102fc00,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          ╭      ││││││ ││   0x00007fb43ad8c6d0:   je     0x00007fb43ad8c7a5
   2.78%  │      ││││││ ││   0x00007fb43ad8c6d6:   data16 nopw 0x0(%rax,%rax,1)
   0.09%  │      ││││││ ││   0x00007fb43ad8c6e0:   cmp    $0x102b280,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          │╭     ││││││ ││   0x00007fb43ad8c6e6:   je     0x00007fb43ad8c7e5
   3.98%  ││     ││││││ ││   0x00007fb43ad8c6ec:   cmp    $0x102b670,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
   0.84%  ││     ││││││ ││   0x00007fb43ad8c6f2:   sete   %dil
   0.96%  ││     ││││││ ││   0x00007fb43ad8c6f6:   movzbl %dil,%edi                    ;* unwind (locked if synchronized)
          ││     ││││││ ││                                                             ; - java.lang.Class::isInstance@-3
          ││     ││││││ ││                                                             ; - java.lang.invoke.LambdaForm$DMH/0x00007fb3c0007000::invokeSpecial@11
          ││     ││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0082c00::invoke@21
          ││     ││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@32
          ││     ││││││ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││     ││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
          ││     ││││││ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││     ││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084800::invoke@91
          ││     ││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0087000::tableSwitch@103
          ││     ││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c008a800::delegate@14
          ││     ││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0089c00::invoke@114
          ││     ││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c008a400::linkToTargetMethod@6
          ││     ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          ││     ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.07%  ││     ││││││ ││   0x00007fb43ad8c6fa:   nopw   0x0(%rax,%rax,1)
   1.40%  ││     ││││││ ││   0x00007fb43ad8c700:   test   $0x1,%edi
          ││╭    ││││││ ││   0x00007fb43ad8c706:   jne    0x00007fb43ad8c7ba
   1.18%  │││    ││││││ ││   0x00007fb43ad8c70c:   cmp    $0x102f800,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
          │││╭   ││││││ ││   0x00007fb43ad8c712:   je     0x00007fb43ad8c7f5
   2.09%  ││││   ││││││ ││   0x00007fb43ad8c718:   nopl   0x0(%rax,%rax,1)
   0.14%  ││││   ││││││ ││   0x00007fb43ad8c720:   cmp    $0x102fa00,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          ││││╭  ││││││ ││   0x00007fb43ad8c726:   je     0x00007fb43ad8c80b
   3.10%  │││││  ││││││ ││   0x00007fb43ad8c72c:   cmp    $0x102bc78,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          │││││╭ ││││││ ││   0x00007fb43ad8c732:   je     0x00007fb43ad8c825
   2.29%  ││││││ ││││││ ││   0x00007fb43ad8c738:   nopl   0x0(%rax,%rax,1)
   0.34%  ││││││ ││││││ ││   0x00007fb43ad8c740:   cmp    $0x102ba78,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          ││││││╭││││││ ││   0x00007fb43ad8c746:   je     0x00007fb43ad8c84c
   2.47%  │││││││││││││ ││   0x00007fb43ad8c74c:   cmp    $0x102b870,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
   1.10%  │││││││││││││ ││   0x00007fb43ad8c752:   sete   %dil
   0.73%  │││││││││││││ ││   0x00007fb43ad8c756:   movzbl %dil,%edi                    method is native {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││ ││                                                             ; - java.lang.Class::isInstance@0
          │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$DMH/0x00007fb3c0007000::invokeSpecial@11
          │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0082c00::invoke@21
          │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@32
          │││││││││││││ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
          │││││││││││││ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
          │││││││││││││ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
          │││││││││││││ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
          │││││││││││││ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
          │││││││││││││ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
          │││││││││││││ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084800::invoke@91
          │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0087000::tableSwitch@103
          │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c008a800::delegate@14
          │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0089c00::invoke@114
          │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c008a400::linkToTargetMethod@6
          │││││││││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          │││││││││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.05%  │││││││││││││ ││   0x00007fb43ad8c75a:   nopw   0x0(%rax,%rax,1)
   0.08%  │││││││││││││ ││   0x00007fb43ad8c760:   test   $0x1,%edi
          │││││││││││││ ││   0x00007fb43ad8c766:   je     0x00007fb43ad8c8d2
   0.18%  │││││││││││││ ││   0x00007fb43ad8c76c:   cmp    $0x102b870,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
          │││││││││││││ ││   0x00007fb43ad8c772:   jne    0x00007fb43ad8c8f9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@174 (line 188)
          │││││││││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.42%  │││││││││││││ ││   0x00007fb43ad8c778:   mov    0xc(,%rax,8),%ecx            ; ImmutableOopMap {rcx=NarrowOop r11=Oop }
          │││││││││││││ ││                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││││││││││││ ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@13 (line 100)
   0.09%  │││││││││││││ ││   0x00007fb43ad8c77f:   mov    0x14(,%rcx,8),%eax           ; implicit exception: dispatches to 0x00007fb43ad8c970
   2.28%  │││││││││││││ ││   0x00007fb43ad8c786:   movsbl 0x10(,%rcx,8),%ecx           ; ImmutableOopMap {r11=Oop }
          │││││││││││││ ││                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││││││││││││ ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@13 (line 100)
   0.94%  │││││││││││││ ││   0x00007fb43ad8c78e:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007fb43ad8c993
   1.15%  │││││││││││││ ││   0x00007fb43ad8c795:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││ ││                                                             ; - java.lang.String::length@9 (line 1519)
          │││││││││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@184 (line 188)
          │││││││││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.74%  │││││││││││││ ││   0x00007fb43ad8c797:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   0.04%  │││││││││││││ ││   0x00007fb43ad8c79a:   mov    %ebx,%r9d
   0.01%  │││││││││││││ ││   0x00007fb43ad8c79d:   mov    %eax,%r8d
          │││││││╰│││││ ││   0x00007fb43ad8c7a0:   jmp    0x00007fb43ad8c6b0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││││ │││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@55
          │││││││ │││││ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││ │││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084800::invoke@91
          │││││││ │││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0087000::tableSwitch@103
          │││││││ │││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c008a800::delegate@14
          │││││││ │││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0089c00::invoke@114
          │││││││ │││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c008a400::linkToTargetMethod@6
          │││││││ │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          │││││││ │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.50%  ↘││││││ │││││ ││   0x00007fb43ad8c7a5:   mov    0x10(,%rax,8),%eax           ;*l2i {reexecute=0 rethrow=0 return_oop=0}
           ││││││ │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@97 (line 182)
           ││││││ │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.54%   ││││││ │││││ ││   0x00007fb43ad8c7ac:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││││││ │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   0.30%   ││││││ │││││ ││   0x00007fb43ad8c7af:   mov    %ebx,%r9d
   0.00%   ││││││ │││││ ││   0x00007fb43ad8c7b2:   mov    %eax,%r8d
   0.03%   ││││││ ╰││││ ││   0x00007fb43ad8c7b5:   jmp    0x00007fb43ad8c6b0           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
           ││││││  ││││ ││                                                             ; - java.util.Objects::requireNonNull@1 (line 232)
           ││││││  ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@2 (line 180)
           ││││││  ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.42%   │↘││││  ││││ ││   0x00007fb43ad8c7ba:   nopw   0x0(%rax,%rax,1)
   0.29%   │ ││││  ││││ ││   0x00007fb43ad8c7c0:   cmp    $0x102b670,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
           │ ││││  ││││ ││   0x00007fb43ad8c7c6:   jne    0x00007fb43ad8c8f2           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ ││││  ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@102 (line 183)
           │ ││││  ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.95%   │ ││││  ││││ ││   0x00007fb43ad8c7cc:   movswl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │ ││││  ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@109 (line 183)
           │ ││││  ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.42%   │ ││││  ││││ ││   0x00007fb43ad8c7d4:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │ ││││  ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   0.33%   │ ││││  ││││ ││   0x00007fb43ad8c7d7:   mov    %ebx,%r9d
   0.00%   │ ││││  ││││ ││   0x00007fb43ad8c7da:   mov    %eax,%r8d
   0.00%   │ ││││  ││││ ││   0x00007fb43ad8c7dd:   data16 xchg %ax,%ax
   0.02%   │ ││││  ╰│││ ││   0x00007fb43ad8c7e0:   jmp    0x00007fb43ad8c6b0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │ ││││   │││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084800::invoke@56
           │ ││││   │││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0087000::tableSwitch@103
           │ ││││   │││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c008a800::delegate@14
           │ ││││   │││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0089c00::invoke@114
           │ ││││   │││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c008a400::linkToTargetMethod@6
           │ ││││   │││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
           │ ││││   │││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.67%   ↘ ││││   │││ ││   0x00007fb43ad8c7e5:   add    0xc(,%rax,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             ││││   │││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   3.65%     ││││   │││ ││   0x00007fb43ad8c7ed:   mov    %ebx,%r9d
   0.00%     ││││   ╰││ ││   0x00007fb43ad8c7f0:   jmp    0x00007fb43ad8c6b0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             ││││    ││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@55
             ││││    ││ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
             ││││    ││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
             ││││    ││ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
             ││││    ││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
             ││││    ││ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
             ││││    ││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084800::invoke@91
             ││││    ││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0087000::tableSwitch@103
             ││││    ││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c008a800::delegate@14
             ││││    ││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0089c00::invoke@114
             ││││    ││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c008a400::linkToTargetMethod@6
             ││││    ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
             ││││    ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.06%     ↘│││    ││ ││   0x00007fb43ad8c7f5:   movsbl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              │││    ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@123 (line 184)
              │││    ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.07%      │││    ││ ││   0x00007fb43ad8c7fd:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │││    ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   0.35%      │││    ││ ││   0x00007fb43ad8c800:   mov    %ebx,%r9d
   0.00%      │││    ││ ││   0x00007fb43ad8c803:   mov    %eax,%r8d
   0.02%      │││    ╰│ ││   0x00007fb43ad8c806:   jmp    0x00007fb43ad8c6b0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
              │││     │ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@55
              │││     │ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
              │││     │ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
              │││     │ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
              │││     │ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
              │││     │ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
              │││     │ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
              │││     │ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
              │││     │ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084800::invoke@91
              │││     │ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0087000::tableSwitch@103
              │││     │ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c008a800::delegate@14
              │││     │ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0089c00::invoke@114
              │││     │ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c008a400::linkToTargetMethod@6
              │││     │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
              │││     │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.30%      ↘││     │ ││   0x00007fb43ad8c80b:   movzwl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
               ││     │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@137 (line 185)
               ││     │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.04%       ││     │ ││   0x00007fb43ad8c813:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               ││     │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   0.35%       ││     │ ││   0x00007fb43ad8c816:   mov    %ebx,%r9d
               ││     │ ││   0x00007fb43ad8c819:   mov    %eax,%r8d
   0.04%       ││     │ ││   0x00007fb43ad8c81c:   nopl   0x0(%rax)
   0.00%       ││     ╰ ││   0x00007fb43ad8c820:   jmp    0x00007fb43ad8c6b0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               ││       ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@55
               ││       ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               ││       ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
               ││       ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               ││       ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
               ││       ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               ││       ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
               ││       ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               ││       ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
               ││       ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               ││       ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084800::invoke@91
               ││       ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0087000::tableSwitch@103
               ││       ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c008a800::delegate@14
               ││       ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0089c00::invoke@114
               ││       ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c008a400::linkToTargetMethod@6
               ││       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
               ││       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.25%       ↘│       ││   0x00007fb43ad8c825:   vmovsd 0x10(,%rax,8),%xmm2          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@151 (line 186)
                │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   2.96%        │       ││   0x00007fb43ad8c82e:   vcvttsd2si %xmm2,%eax
   2.60%        │       ││   0x00007fb43ad8c832:   cmp    $0x80000000,%eax
                │      ╭││   0x00007fb43ad8c838:   je     0x00007fb43ad8c87a           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                │      │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@154 (line 186)
                │      │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.01%        │      │││↗  0x00007fb43ad8c83e:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                │      ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   0.00%        │      ││││  0x00007fb43ad8c841:   mov    %ebx,%r9d
   0.32%        │      ││││  0x00007fb43ad8c844:   mov    %eax,%r8d
                │      │╰││  0x00007fb43ad8c847:   jmp    0x00007fb43ad8c6b0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                │      │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@55
                │      │ ││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                │      │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
                │      │ ││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                │      │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
                │      │ ││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                │      │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
                │      │ ││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                │      │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
                │      │ ││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                │      │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084000::guard@89
                │      │ ││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                │      │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0084800::invoke@91
                │      │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0087000::tableSwitch@103
                │      │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c008a800::delegate@14
                │      │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c0089c00::invoke@114
                │      │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fb3c008a400::linkToTargetMethod@6
                │      │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
                │      │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   2.22%        ↘      │ ││  0x00007fb43ad8c84c:   vmovss 0xc(,%rax,8),%xmm2           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                       │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@166 (line 187)
                       │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   2.08%               │ ││  0x00007fb43ad8c855:   vcvttss2si %xmm2,%eax
   2.32%               │ ││  0x00007fb43ad8c859:   nopl   0x0(%rax)
                       │ ││  0x00007fb43ad8c860:   cmp    $0x80000000,%eax
                       │ ││  0x00007fb43ad8c866:   je     0x00007fb43ad8c893           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                       │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@169 (line 187)
                       │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.01%               │ ││  0x00007fb43ad8c86c:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                       │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   0.27%               │ ││  0x00007fb43ad8c86f:   mov    %ebx,%r9d
   0.05%               │ ││  0x00007fb43ad8c872:   mov    %eax,%r8d
                       │ ╰│  0x00007fb43ad8c875:   jmp    0x00007fb43ad8c6b0
                       ↘  │  0x00007fb43ad8c87a:   vucomisd %xmm2,%xmm2
                          │  0x00007fb43ad8c87e:   xchg   %ax,%ax
                          │  0x00007fb43ad8c880:   jp     0x00007fb43ad8c8aa
                          │  0x00007fb43ad8c886:   vucomisd %xmm1,%xmm2
                          ╰  0x00007fb43ad8c88a:   jbe    0x00007fb43ad8c83e
                             0x00007fb43ad8c88c:   mov    $0x7fffffff,%eax
                             0x00007fb43ad8c891:   jmp    0x00007fb43ad8c83e           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@154 (line 186)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
....................................................................................................
  97.58%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 4, compile id 1112 
   0.63%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   1.19%  <...other 390 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 4, compile id 1112 
   1.97%              kernel  [unknown] 
   0.12%                      <unknown> 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strncmp_avx2 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%         interpreter  fast_aload_0  220 fast_aload_0  
   0.01%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.18%  <...other 79 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.58%      jvmci, level 4
   1.97%              kernel
   0.17%           libjvm.so
   0.12%                    
   0.08%        libc-2.31.so
   0.03%         interpreter
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%    perf-2154625.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_concrete_array

# Run progress: 75.00% complete, ETA 00:03:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.490 ns/op
# Warmup Iteration   2: 2.969 ns/op
# Warmup Iteration   3: 3.062 ns/op
# Warmup Iteration   4: 2.999 ns/op
# Warmup Iteration   5: 3.124 ns/op
Iteration   1: 2.974 ns/op
Iteration   2: 2.969 ns/op
Iteration   3: 3.212 ns/op
Iteration   4: 3.143 ns/op
Iteration   5: 3.111 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_concrete_array":
  3.082 ±(99.9%) 0.412 ns/op [Average]
  (min, avg, max) = (2.969, 3.082, 3.212), stdev = 0.107
  CI (99.9%): [2.670, 3.494] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_concrete_array:asm":
PrintAssembly processed: 258956 total address lines.
Perf output processed (skipped 60.808 seconds):
 Column 1: cycles (50457 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array, version 3, compile id 1115 

                   #           [sp+0x20]  (sp of caller)
                   0x00007fbb36d89280:   mov    0x8(%rsi),%r10d
                   0x00007fbb36d89284:   movabs $0x7fbabb000000,%r12
                   0x00007fbb36d8928e:   add    %r12,%r10
                   0x00007fbb36d89291:   xor    %r12,%r12
                   0x00007fbb36d89294:   cmp    %r10,%rax
                   0x00007fbb36d89297:   jne    0x00007fbb36764080           ;   {runtime_call ic_miss_stub}
                   0x00007fbb36d8929d:   data16 xchg %ax,%ax
                 [Verified Entry Point]
                   0x00007fbb36d892a0:   mov    %eax,-0x14000(%rsp)
   0.00%           0x00007fbb36d892a7:   sub    $0x18,%rsp
                   0x00007fbb36d892ab:   nop
                   0x00007fbb36d892ac:   cmpl   $0x1,0x20(%r15)
   0.00%           0x00007fbb36d892b4:   jne    0x00007fbb36d893b1
                   0x00007fbb36d892ba:   mov    %rbp,0x10(%rsp)
                   0x00007fbb36d892bf:   mov    0x14(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                             ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@0 (line 154)
   0.00%           0x00007fbb36d892c2:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007fbb36d893d5
   0.00%           0x00007fbb36d892ca:   shl    $0x3,%rax                    ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@3 (line 155)
                   0x00007fbb36d892ce:   mov    $0x0,%r8d
                   0x00007fbb36d892d4:   mov    $0x0,%r11d
                   0x00007fbb36d892da:   nopw   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@13 (line 155)
   0.02%       ↗↗  0x00007fbb36d892e0:   cmp    %r8d,%r10d
          ╭    ││  0x00007fbb36d892e3:   jbe    0x00007fbb36d89374           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@16 (line 155)
   6.03%  │    ││  0x00007fbb36d892e9:   mov    0x10(%rax,%r8,4),%r9d        ; ImmutableOopMap {rax=Oop r9=NarrowOop }
          │    ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │    ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@13 (line 155)
   7.33%  │    ││  0x00007fbb36d892ee:   mov    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007fbb36d893f8
  35.06%  │    ││  0x00007fbb36d892f6:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@22 (line 155)
          │    ││  0x00007fbb36d892fa:   mov    $0x0,%ebx
   2.56%  │    ││  0x00007fbb36d892ff:   nop
   2.81%  │╭   ││  0x00007fbb36d89300:   jmp    0x00007fbb36d8933a           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
          ││   ││  0x00007fbb36d89305:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││   ││  0x00007fbb36d89310:   data16 data16 xchg %ax,%ax
          ││   ││  0x00007fbb36d89314:   nopl   0x0(%rax,%rax,1)
          ││   ││  0x00007fbb36d8931c:   data16 data16 xchg %ax,%ax          ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fbabc087000::tableSwitch@39
          ││   ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fbabc08a800::delegate@14
          ││   ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fbabc089c00::invoke@114
          ││   ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fbabc08a400::linkToTargetMethod@6
          ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
  12.61%  ││ ↗ ││  0x00007fbb36d89320:   test   $0x1,%ecx
          ││╭│ ││  0x00007fbb36d89326:   je     0x00007fbb36d8934d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@117 (line 247)
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   0.00%  ││││ ││  0x00007fbb36d8932c:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rax=Oop r9=Oop }
          ││││ ││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││││ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
          ││││ ││  0x00007fbb36d89333:   test   %eax,(%rdi)                  ;   {poll}
   0.03%  ││││ ││  0x00007fbb36d89335:   mov    $0x1,%ebx                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
  12.95%  │↘││ ││  0x00007fbb36d8933a:   cmp    $0x0,%ebx
          │ │╰ ││  0x00007fbb36d8933d:   je     0x00007fbb36d89320
   0.01%  │ │  ││  0x00007fbb36d8933f:   cmp    $0x1,%ebx
          │ │ ╭││  0x00007fbb36d89342:   je     0x00007fbb36d89360
          │ │ │││  0x00007fbb36d89348:   jmp    0x00007fbb36d8938e           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │ │ │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fbabc087000::tableSwitch@39
          │ │ │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fbabc08a800::delegate@14
          │ │ │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fbabc089c00::invoke@114
          │ │ │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fbabc08a400::linkToTargetMethod@6
          │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   6.21%  │ ↘ │││  0x00007fbb36d8934d:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {rax=Oop r9=Oop }
          │   │││                                                            ;*iconst_2 {reexecute=1 rethrow=0 return_oop=0}
          │   │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@125 (line 247)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
          │   │││  0x00007fbb36d89354:   test   %eax,(%rbx)                  ;   {poll}
   0.02%  │   │││  0x00007fbb36d89356:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@130 (line 247)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
          │   │││  0x00007fbb36d89358:   add    %ecx,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@31 (line 156)
   6.27%  │   │││  0x00007fbb36d8935b:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@33 (line 155)
          │   │╰│  0x00007fbb36d8935e:   jmp    0x00007fbb36d892e0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@13 (line 155)
          │   ↘ │  0x00007fbb36d89360:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {rax=Oop r9=Oop }
          │     │                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │     │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@134 (line 248)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   0.00%  │     │  0x00007fbb36d89367:   test   %eax,(%rbx)                  ;   {poll}
   6.34%  │     │  0x00007fbb36d89369:   add    %ecx,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@31 (line 156)
   0.00%  │     │  0x00007fbb36d8936c:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@33 (line 155)
          │     ╰  0x00007fbb36d8936f:   jmp    0x00007fbb36d892e0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@13 (line 155)
          ↘        0x00007fbb36d89374:   mov    %r11d,%eax
                   0x00007fbb36d89377:   mov    0x10(%rsp),%rbp
   0.01%           0x00007fbb36d8937c:   add    $0x18,%rsp
                   0x00007fbb36d89380:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                   0x00007fbb36d89387:   ja     0x00007fbb36d893c1
                   0x00007fbb36d8938d:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@40 (line 158)
                   0x00007fbb36d8938e:   movl   $0xffffffed,0x484(%r15)      ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fbabc087000::tableSwitch@39
                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fbabc08a800::delegate@14
                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fbabc089c00::invoke@114
                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fbabc08a400::linkToTargetMethod@6
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
....................................................................................................
  98.27%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.27%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array, version 3, compile id 1115 
   0.18%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.94%  <...other 307 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.27%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array, version 3, compile id 1115 
   1.41%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeSwitchBenchmark_switch_when_concrete_array_jmhTest::switch_when_concrete_array_avgt_jmhStub, version 4, compile id 1147 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strncmp_avx2 
   0.01%           libjvm.so  Symbol::print_value_on 
   0.00%      hsdis-amd64.so  print_insn_i386 
   0.11%  <...other 50 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.28%      jvmci, level 4
   1.41%              kernel
   0.12%           libjvm.so
   0.10%        libc-2.31.so
   0.05%                    
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_interface_array

# Run progress: 87.50% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 22.377 ns/op
# Warmup Iteration   2: 17.859 ns/op
# Warmup Iteration   3: 17.834 ns/op
# Warmup Iteration   4: 17.997 ns/op
# Warmup Iteration   5: 17.757 ns/op
Iteration   1: 17.874 ns/op
Iteration   2: 17.795 ns/op
Iteration   3: 18.013 ns/op
Iteration   4: 17.901 ns/op
Iteration   5: 17.935 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_interface_array":
  17.904 ±(99.9%) 0.308 ns/op [Average]
  (min, avg, max) = (17.795, 17.904, 18.013), stdev = 0.080
  CI (99.9%): [17.596, 18.212] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_interface_array:asm":
PrintAssembly processed: 268399 total address lines.
Perf output processed (skipped 60.995 seconds):
 Column 1: cycles (50668 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 4, compile id 1134 

                              0x00007ff6ead925d1:   vxorpd %xmm0,%xmm0,%xmm0            ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@394 (line 259)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
                              0x00007ff6ead925d5:   vxorpd %xmm1,%xmm1,%xmm1            ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@345 (line 257)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
                              0x00007ff6ead925d9:   mov    $0x0,%r9d
                              0x00007ff6ead925df:   mov    $0x0,%r8d
                              0x00007ff6ead925e5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.61%                      0x00007ff6ead925f0:   cmp    %r9d,%r10d
                              0x00007ff6ead925f3:   jbe    0x00007ff6ead92bb9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@16 (line 133)
   0.36%                      0x00007ff6ead925f9:   mov    0x10(%r11,%r9,4),%eax        ; ImmutableOopMap {rax=NarrowOop r11=Oop }
                                                                                        ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.77%                      0x00007ff6ead925fe:   mov    0x8(,%rax,8),%ebx            ; implicit exception: dispatches to 0x00007ff6ead92d10
   9.36%                      0x00007ff6ead92605:   mov    %eax,%edi
   0.23%                      0x00007ff6ead92607:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@22 (line 133)
   0.16%                      0x00007ff6ead9260b:   mov    $0x0,%edx                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.32%          ↗↗↗↗↗↗ ↗↗   0x00007ff6ead92610:   cmp    $0x0,%edx
          ╭       ││││││ ││   0x00007ff6ead92613:   je     0x00007ff6ead92674
   0.11%  │       ││││││ ││   0x00007ff6ead92619:   cmp    $0xf,%edx
   1.06%  │       ││││││ ││   0x00007ff6ead9261c:   nopl   0x0(%rax)
   0.00%  │       ││││││ ││   0x00007ff6ead92620:   je     0x00007ff6ead92905
   0.26%  │       ││││││ ││   0x00007ff6ead92626:   cmp    $0x3,%edx
          │       ││││││ ││   0x00007ff6ead92629:   je     0x00007ff6ead9296a
   0.01%  │       ││││││ ││   0x00007ff6ead9262f:   cmp    $0xd,%edx
          │       ││││││ ││   0x00007ff6ead92632:   je     0x00007ff6ead92994
   0.57%  │       ││││││ ││   0x00007ff6ead92638:   cmp    $0x7,%edx
   0.03%  │       ││││││ ││   0x00007ff6ead9263b:   nopl   0x0(%rax,%rax,1)
   0.12%  │       ││││││ ││   0x00007ff6ead92640:   je     0x00007ff6ead929da
   0.00%  │       ││││││ ││   0x00007ff6ead92646:   cmp    $0x5,%edx
          │       ││││││ ││   0x00007ff6ead92649:   je     0x00007ff6ead92a47
   0.24%  │       ││││││ ││   0x00007ff6ead9264f:   cmp    $0xb,%edx
          │       ││││││ ││   0x00007ff6ead92652:   je     0x00007ff6ead92a0b
   0.26%  │       ││││││ ││   0x00007ff6ead92658:   cmp    $0x1,%edx
   0.16%  │       ││││││ ││   0x00007ff6ead9265b:   nopl   0x0(%rax,%rax,1)
          │       ││││││ ││   0x00007ff6ead92660:   je     0x00007ff6ead92a72
   0.17%  │       ││││││ ││   0x00007ff6ead92666:   cmp    $0x9,%edx
          │       ││││││ ││   0x00007ff6ead92669:   je     0x00007ff6ead92a97
          │       ││││││ ││   0x00007ff6ead9266f:   jmp    0x00007ff6ead92c70
   1.67%  ↘       ││││││ ││   0x00007ff6ead92674:   cmp    $0x102b280,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
           ╭      ││││││ ││   0x00007ff6ead9267a:   je     0x00007ff6ead9275f
   0.97%   │      ││││││ ││   0x00007ff6ead92680:   cmp    $0x102fc00,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
           │╭     ││││││ ││   0x00007ff6ead92686:   je     0x00007ff6ead92785
   3.40%   ││     ││││││ ││   0x00007ff6ead9268c:   cmp    $0x102b670,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
   0.49%   ││     ││││││ ││   0x00007ff6ead92692:   sete   %cl
   0.41%   ││     ││││││ ││   0x00007ff6ead92695:   movzbl %cl,%ecx                     ;* unwind (locked if synchronized)
           ││     ││││││ ││                                                             ; - java.lang.Class::isInstance@-3
           ││     ││││││ ││                                                             ; - java.lang.invoke.LambdaForm$DMH/0x00007ff670007000::invokeSpecial@11
           ││     ││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007ff670082c00::invoke@21
           ││     ││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007ff670084000::guard@32
           ││     ││││││ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
           ││     ││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007ff670084000::guard@89
           ││     ││││││ ││                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
           ││     ││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007ff670084800::invoke@91
           ││     ││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007ff670087000::tableSwitch@135
           ││     ││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007ff67008a800::delegate@14
           ││     ││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007ff670089c00::invoke@114
           ││     ││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007ff67008a400::linkToTargetMethod@6
           ││     ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
           ││     ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.26%   ││     ││││││ ││   0x00007ff6ead92698:   nopl   0x0(%rax,%rax,1)
   1.26%   ││     ││││││ ││   0x00007ff6ead926a0:   test   $0x1,%ecx
           ││╭    ││││││ ││   0x00007ff6ead926a6:   jne    0x00007ff6ead927ad
   1.03%   │││    ││││││ ││   0x00007ff6ead926ac:   cmp    $0x102f800,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
           │││╭   ││││││ ││   0x00007ff6ead926b2:   je     0x00007ff6ead927e0
   1.61%   ││││   ││││││ ││   0x00007ff6ead926b8:   nopl   0x0(%rax,%rax,1)
   0.22%   ││││   ││││││ ││   0x00007ff6ead926c0:   cmp    $0x102fa00,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
           ││││╭  ││││││ ││   0x00007ff6ead926c6:   je     0x00007ff6ead92807
   2.53%   │││││  ││││││ ││   0x00007ff6ead926cc:   cmp    $0x102bc78,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
           │││││╭ ││││││ ││   0x00007ff6ead926d2:   je     0x00007ff6ead9282e           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           ││││││ ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
           ││││││ ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   1.64%   ││││││ ││││││ ││   0x00007ff6ead926d8:   nopl   0x0(%rax,%rax,1)
   0.22%   ││││││ ││││││ ││   0x00007ff6ead926e0:   cmp    $0x102ba78,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
           ││││││╭││││││ ││   0x00007ff6ead926e6:   je     0x00007ff6ead9286b
   1.77%   │││││││││││││ ││   0x00007ff6ead926ec:   cmp    $0x102b870,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
   0.89%   │││││││││││││ ││   0x00007ff6ead926f2:   sete   %cl
   0.59%   │││││││││││││ ││   0x00007ff6ead926f5:   movzbl %cl,%ecx                     ;* unwind (locked if synchronized)
           │││││││││││││ ││                                                             ; - java.lang.Class::isInstance@-3
           │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$DMH/0x00007ff670007000::invokeSpecial@11
           │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007ff670082c00::invoke@21
           │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007ff670084800::invoke@33
           │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007ff670087000::tableSwitch@325
           │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007ff67008a800::delegate@14
           │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007ff670089c00::invoke@114
           │││││││││││││ ││                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007ff67008a400::linkToTargetMethod@6
           │││││││││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
           │││││││││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.02%   │││││││││││││ ││   0x00007ff6ead926f8:   nopl   0x0(%rax,%rax,1)
   0.05%   │││││││││││││ ││   0x00007ff6ead92700:   test   $0x1,%ecx
           │││││││││││││ ││   0x00007ff6ead92706:   je     0x00007ff6ead92c96
   0.12%   │││││││││││││ ││   0x00007ff6ead9270c:   cmp    $0x102b870,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
           │││││││││││││ ││   0x00007ff6ead92712:   jne    0x00007ff6ead92c5f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@433 (line 261)
           │││││││││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.31%   │││││││││││││ ││   0x00007ff6ead92718:   mov    0xc(,%rax,8),%ecx            ; ImmutableOopMap {rax=NarrowOop rcx=NarrowOop rdi=Oop r11=Oop }
           │││││││││││││ ││                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
           │││││││││││││ ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
           │││││││││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.10%   │││││││││││││ ││   0x00007ff6ead9271f:   mov    0x14(,%rcx,8),%esi           ; implicit exception: dispatches to 0x00007ff6ead92d33
   2.61%   │││││││││││││ ││   0x00007ff6ead92726:   movsbl 0x10(,%rcx,8),%ecx           ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
           │││││││││││││ ││                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
           │││││││││││││ ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
           │││││││││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   1.16%   │││││││││││││ ││   0x00007ff6ead9272e:   mov    0xc(,%rsi,8),%esi            ; implicit exception: dispatches to 0x00007ff6ead92d56
   0.45%   │││││││││││││ ││   0x00007ff6ead92735:   shr    %cl,%esi                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││ ││                                                             ; - java.lang.String::length@9 (line 1519)
           │││││││││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@443 (line 261)
           │││││││││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.46%   │││││││││││││ ││   0x00007ff6ead92737:   nopw   0x0(%rax,%rax,1)
           │││││││││││││ ││   0x00007ff6ead92740:   test   $0x1,%esi
           │││││││││││││ ││   0x00007ff6ead92746:   je     0x00007ff6ead92b17           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@448 (line 261)
           │││││││││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.03%   │││││││││││││ ││   0x00007ff6ead9274c:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
           │││││││││││││ ││                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
           │││││││││││││ ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
           │││││││││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%   │││││││││││││ ││   0x00007ff6ead92753:   test   %eax,(%rcx)                  ;   {poll}
   0.23%   │││││││││││││ ││   0x00007ff6ead92755:   mov    $0xf,%edx
           │││││││╰│││││ ││   0x00007ff6ead9275a:   jmp    0x00007ff6ead92610           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           │││││││ │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
           │││││││ │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   2.61%   ↘││││││ │││││ ││   0x00007ff6ead9275f:   mov    0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@112 (line 247)
            ││││││ │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   2.60%    ││││││ │││││ ││   0x00007ff6ead92766:   test   $0x1,%ecx
            ││││││ │││││ ││   0x00007ff6ead9276c:   je     0x00007ff6ead928ec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@117 (line 247)
            ││││││ │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.17%    ││││││ │││││ ││   0x00007ff6ead92772:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
            ││││││ │││││ ││                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
            ││││││ │││││ ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
            ││││││ │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.04%    ││││││ │││││ ││   0x00007ff6ead92779:   test   %eax,(%rcx)                  ;   {poll}
   0.47%    ││││││ │││││ ││   0x00007ff6ead9277b:   mov    $0x1,%edx
            ││││││ ╰││││ ││   0x00007ff6ead92780:   jmp    0x00007ff6ead92610           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            ││││││  ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
            ││││││  ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   2.80%    ↘│││││  ││││ ││   0x00007ff6ead92785:   mov    0x10(,%rax,8),%rcx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
             │││││  ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@156 (line 249)
             │││││  ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   2.82%     │││││  ││││ ││   0x00007ff6ead9278d:   test   $0x1,%rcx
             │││││  ││││ ││   0x00007ff6ead92794:   je     0x00007ff6ead9294f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │││││  ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@163 (line 249)
             │││││  ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.20%     │││││  ││││ ││   0x00007ff6ead9279a:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
             │││││  ││││ ││                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
             │││││  ││││ ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
             │││││  ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.07%     │││││  ││││ ││   0x00007ff6ead927a1:   test   %eax,(%rcx)                  ;   {poll}
   0.45%     │││││  ││││ ││   0x00007ff6ead927a3:   mov    $0x3,%edx
             │││││  ╰│││ ││   0x00007ff6ead927a8:   jmp    0x00007ff6ead92610
   2.75%     ↘││││   │││ ││   0x00007ff6ead927ad:   cmp    $0x102b670,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
              ││││   │││ ││   0x00007ff6ead927b3:   jne    0x00007ff6ead92c85           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││   │││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@198 (line 251)
              ││││   │││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   1.56%      ││││   │││ ││   0x00007ff6ead927b9:   movswl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              ││││   │││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@205 (line 251)
              ││││   │││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   1.30%      ││││   │││ ││   0x00007ff6ead927c1:   test   $0x1,%ecx
              ││││   │││ ││   0x00007ff6ead927c7:   je     0x00007ff6ead92acb           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
              ││││   │││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@210 (line 251)
              ││││   │││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.24%      ││││   │││ ││   0x00007ff6ead927cd:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
              ││││   │││ ││                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
              ││││   │││ ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
              ││││   │││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.43%      ││││   │││ ││   0x00007ff6ead927d4:   test   %eax,(%rcx)                  ;   {poll}
   0.62%      ││││   │││ ││   0x00007ff6ead927d6:   mov    $0x5,%edx
              ││││   ╰││ ││   0x00007ff6ead927db:   jmp    0x00007ff6ead92610           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
              ││││    ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
              ││││    ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   2.38%      ↘│││    ││ ││   0x00007ff6ead927e0:   movsbl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
               │││    ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@250 (line 253)
               │││    ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   2.49%       │││    ││ ││   0x00007ff6ead927e8:   test   $0x1,%ecx
               │││    ││ ││   0x00007ff6ead927ee:   je     0x00007ff6ead92ae5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               │││    ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@255 (line 253)
               │││    ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.18%       │││    ││ ││   0x00007ff6ead927f4:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
               │││    ││ ││                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
               │││    ││ ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
               │││    ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.04%       │││    ││ ││   0x00007ff6ead927fb:   test   %eax,(%rcx)                  ;   {poll}
   0.52%       │││    ││ ││   0x00007ff6ead927fd:   mov    $0x7,%edx
               │││    ╰│ ││   0x00007ff6ead92802:   jmp    0x00007ff6ead92610           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
               │││     │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
               │││     │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   2.79%       ↘││     │ ││   0x00007ff6ead92807:   movzwl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                ││     │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@296 (line 255)
                ││     │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   2.42%        ││     │ ││   0x00007ff6ead9280f:   test   $0x1,%ecx
                ││     │ ││   0x00007ff6ead92815:   je     0x00007ff6ead92afe           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                ││     │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@301 (line 255)
                ││     │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.25%        ││     │ ││   0x00007ff6ead9281b:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
                ││     │ ││                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                ││     │ ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
                ││     │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.13%        ││     │ ││   0x00007ff6ead92822:   test   %eax,(%rcx)                  ;   {poll}
   0.50%        ││     │ ││   0x00007ff6ead92824:   mov    $0x9,%edx
                ││     ╰ ││   0x00007ff6ead92829:   jmp    0x00007ff6ead92610           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                ││       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
                ││       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   2.53%        ↘│       ││   0x00007ff6ead9282e:   vmovsd 0x10(,%rax,8),%xmm2          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                 │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@342 (line 257)
                 │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   2.42%         │       ││   0x00007ff6ead92837:   vcvttsd2si %xmm2,%ecx
   2.19%         │       ││   0x00007ff6ead9283b:   nopl   0x0(%rax,%rax,1)
                 │       ││   0x00007ff6ead92840:   cmp    $0x80000000,%ecx
                 │      ╭││   0x00007ff6ead92846:   je     0x00007ff6ead928ab           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                 │      │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@345 (line 257)
                 │      │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.03%         │      │││↗  0x00007ff6ead9284c:   test   $0x1,%ecx
                 │      ││││  0x00007ff6ead92852:   je     0x00007ff6ead92b30           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                 │      ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@348 (line 257)
                 │      ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.16%         │      ││││  0x00007ff6ead92858:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
                 │      ││││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                 │      ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
                 │      ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.04%         │      ││││  0x00007ff6ead9285f:   test   %eax,(%rcx)                  ;   {poll}
   0.02%         │      ││││  0x00007ff6ead92861:   mov    $0xb,%edx
   0.01%         │      │╰││  0x00007ff6ead92866:   jmp    0x00007ff6ead92610           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                 │      │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
                 │      │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   1.78%         ↘      │ ││  0x00007ff6ead9286b:   vmovss 0xc(,%rax,8),%xmm2           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@391 (line 259)
                        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   1.62%                │ ││  0x00007ff6ead92874:   vcvttss2si %xmm2,%ecx
   2.07%                │ ││  0x00007ff6ead92878:   nopl   0x0(%rax,%rax,1)
   0.00%                │ ││  0x00007ff6ead92880:   cmp    $0x80000000,%ecx
                        │ ││  0x00007ff6ead92886:   je     0x00007ff6ead928c2           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@394 (line 259)
                        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.02%                │ ││  0x00007ff6ead9288c:   test   $0x1,%ecx
                        │ ││  0x00007ff6ead92892:   je     0x00007ff6ead92b49           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@397 (line 259)
                        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.14%                │ ││  0x00007ff6ead92898:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
                        │ ││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                        │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
                        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.04%                │ ││  0x00007ff6ead9289f:   test   %eax,(%rcx)                  ;   {poll}
   0.02%                │ ││  0x00007ff6ead928a1:   mov    $0xd,%edx
   0.00%                │ ╰│  0x00007ff6ead928a6:   jmp    0x00007ff6ead92610           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                        │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
                        │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
                        ↘  │  0x00007ff6ead928ab:   vucomisd %xmm2,%xmm2
                           │  0x00007ff6ead928af:   jp     0x00007ff6ead928d9
                           │  0x00007ff6ead928b5:   vucomisd %xmm1,%xmm2
                           ╰  0x00007ff6ead928b9:   jbe    0x00007ff6ead9284c
                              0x00007ff6ead928bb:   mov    $0x7fffffff,%ecx
                              0x00007ff6ead928c0:   jmp    0x00007ff6ead9284c           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@345 (line 257)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
....................................................................................................
  83.24%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 4, compile id 1134 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
              0x00007ff6ead928d9:   mov    $0x0,%ecx
              0x00007ff6ead928de:   xchg   %ax,%ax
              0x00007ff6ead928e0:   jmp    0x00007ff6ead9284c           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@345 (line 257)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
              0x00007ff6ead928e5:   mov    $0x0,%ecx
              0x00007ff6ead928ea:   jmp    0x00007ff6ead9288c           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@394 (line 259)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.16%      0x00007ff6ead928ec:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rdi=Oop r11=Oop }
                                                                        ;*iconst_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@125 (line 247)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.02%      0x00007ff6ead928f3:   test   %eax,(%rax)                  ;   {poll}
   0.66%      0x00007ff6ead928f5:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@130 (line 247)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
              0x00007ff6ead928f7:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
              0x00007ff6ead928fa:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
              0x00007ff6ead928fd:   mov    %ecx,%r8d
   0.15%      0x00007ff6ead92900:   jmp    0x00007ff6ead925f0
   0.05%      0x00007ff6ead92905:   cmp    $0x102b870,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
              0x00007ff6ead9290b:   jne    0x00007ff6ead92cb8           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.01%      0x00007ff6ead92911:   mov    0xc(,%rax,8),%ecx            ; ImmutableOopMap {rcx=NarrowOop rdi=Oop r11=Oop }
                                                                        ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@470 (line 262)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.29%      0x00007ff6ead92918:   mov    0x14(,%rcx,8),%eax           ; implicit exception: dispatches to 0x00007ff6ead92d79
   0.17%      0x00007ff6ead9291f:   movsbl 0x10(,%rcx,8),%ecx           ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::coder@7 (line 4809)
                                                                        ; - java.lang.String::length@6 (line 1519)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@481 (line 262)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%      0x00007ff6ead92927:   test   %eax,%eax
              0x00007ff6ead92929:   je     0x00007ff6ead92c24
   0.04%      0x00007ff6ead9292f:   mov    0xc(,%rax,8),%eax            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::length@4 (line 1519)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@481 (line 262)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.33%      0x00007ff6ead92936:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {rdi=Oop r11=Oop }
                                                                        ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@470 (line 262)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
              0x00007ff6ead9293d:   test   %eax,(%rbx)                  ;   {poll}
   0.13%      0x00007ff6ead9293f:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::length@9 (line 1519)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@481 (line 262)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.34%      0x00007ff6ead92941:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.02%      0x00007ff6ead92944:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
              0x00007ff6ead92947:   mov    %eax,%r8d
   0.11%      0x00007ff6ead9294a:   jmp    0x00007ff6ead925f0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.25%      0x00007ff6ead9294f:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rdi=Oop r11=Oop }
                                                                        ;*iconst_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@171 (line 249)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.10%      0x00007ff6ead92956:   test   %eax,(%rax)                  ;   {poll}
   0.60%      0x00007ff6ead92958:   mov    %ecx,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@177 (line 249)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
              0x00007ff6ead9295a:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@178 (line 249)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.02%      0x00007ff6ead9295c:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.01%      0x00007ff6ead9295f:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
   0.11%      0x00007ff6ead92962:   mov    %eax,%r8d
              0x00007ff6ead92965:   jmp    0x00007ff6ead925f0
   0.00%      0x00007ff6ead9296a:   cmp    $0x102fc00,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
              0x00007ff6ead92970:   jne    0x00007ff6ead92c08           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.11%      0x00007ff6ead92976:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
                                                                        ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@182 (line 250)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%      0x00007ff6ead9297d:   test   %eax,(%rcx)                  ;   {poll}
   0.31%      0x00007ff6ead9297f:   mov    0x10(,%rax,8),%eax           ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@193 (line 250)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%      0x00007ff6ead92986:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.02%      0x00007ff6ead92989:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
              0x00007ff6ead9298c:   mov    %eax,%r8d
   0.10%      0x00007ff6ead9298f:   jmp    0x00007ff6ead925f0
   0.04%      0x00007ff6ead92994:   cmp    $0x102ba78,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
              0x00007ff6ead9299a:   jne    0x00007ff6ead92c51           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::length@4 (line 1519)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@481 (line 262)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%      0x00007ff6ead929a0:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
                                                                        ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@417 (line 260)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.25%      0x00007ff6ead929a7:   test   %eax,(%rcx)                  ;   {poll}
   0.07%      0x00007ff6ead929a9:   vmovss 0xc(,%rax,8),%xmm2           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@425 (line 260)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
              0x00007ff6ead929b2:   vcvttss2si %xmm2,%eax
   0.53%      0x00007ff6ead929b6:   data16 nopw 0x0(%rax,%rax,1)
              0x00007ff6ead929c0:   cmp    $0x80000000,%eax
          ╭   0x00007ff6ead929c6:   je     0x00007ff6ead92b65           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@428 (line 260)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.02%  │↗  0x00007ff6ead929cc:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.08%  ││  0x00007ff6ead929cf:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
   0.04%  ││  0x00007ff6ead929d2:   mov    %eax,%r8d
   0.00%  ││  0x00007ff6ead929d5:   jmp    0x00007ff6ead925f0
   0.04%  ││  0x00007ff6ead929da:   nopw   0x0(%rax,%rax,1)
   0.26%  ││  0x00007ff6ead929e0:   cmp    $0x102f800,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
          ││  0x00007ff6ead929e6:   jne    0x00007ff6ead92c43           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.02%  ││  0x00007ff6ead929ec:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          ││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@274 (line 254)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.03%  ││  0x00007ff6ead929f3:   test   %eax,(%rcx)                  ;   {poll}
   0.24%  ││  0x00007ff6ead929f5:   movsbl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@282 (line 254)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%  ││  0x00007ff6ead929fd:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
          ││  0x00007ff6ead92a00:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
          ││  0x00007ff6ead92a03:   mov    %eax,%r8d
   0.09%  ││  0x00007ff6ead92a06:   jmp    0x00007ff6ead925f0
   0.19%  ││  0x00007ff6ead92a0b:   cmp    $0x102bc78,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          ││  0x00007ff6ead92a11:   jne    0x00007ff6ead92c16           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@428 (line 260)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.34%  ││  0x00007ff6ead92a17:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          ││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@368 (line 258)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.29%  ││  0x00007ff6ead92a1e:   test   %eax,(%rcx)                  ;   {poll}
   0.33%  ││  0x00007ff6ead92a20:   vmovsd 0x10(,%rax,8),%xmm2          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@376 (line 258)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          ││  0x00007ff6ead92a29:   vcvttsd2si %xmm2,%eax
   0.22%  ││  0x00007ff6ead92a2d:   cmp    $0x80000000,%eax
          ││  0x00007ff6ead92a33:   je     0x00007ff6ead92b85           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@379 (line 258)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.12%  ││  0x00007ff6ead92a39:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
          ││  0x00007ff6ead92a3c:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
   0.01%  ││  0x00007ff6ead92a3f:   mov    %eax,%r8d
          ││  0x00007ff6ead92a42:   jmp    0x00007ff6ead925f0
   0.30%  ││  0x00007ff6ead92a47:   cmp    $0x102b670,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
          ││  0x00007ff6ead92a4d:   jne    0x00007ff6ead92bd3           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.00%  ││  0x00007ff6ead92a53:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          ││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@228 (line 252)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          ││  0x00007ff6ead92a5a:   test   %eax,(%rcx)                  ;   {poll}
   0.32%  ││  0x00007ff6ead92a5c:   movswl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@236 (line 252)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          ││  0x00007ff6ead92a64:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
          ││  0x00007ff6ead92a67:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
          ││  0x00007ff6ead92a6a:   mov    %eax,%r8d
   0.12%  ││  0x00007ff6ead92a6d:   jmp    0x00007ff6ead925f0
   0.22%  ││  0x00007ff6ead92a72:   cmp    $0x102b280,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          ││  0x00007ff6ead92a78:   jne    0x00007ff6ead92bfa           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.01%  ││  0x00007ff6ead92a7e:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          ││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@134 (line 248)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.02%  ││  0x00007ff6ead92a85:   test   %eax,(%rcx)                  ;   {poll}
   0.36%  ││  0x00007ff6ead92a87:   add    0xc(,%rax,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
          ││  0x00007ff6ead92a8f:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
          ││  0x00007ff6ead92a92:   jmp    0x00007ff6ead925f0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.01%  ││  0x00007ff6ead92a97:   nopw   0x0(%rax,%rax,1)
   0.00%  ││  0x00007ff6ead92aa0:   cmp    $0x102fa00,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          ││  0x00007ff6ead92aa6:   jne    0x00007ff6ead92ca7           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@379 (line 258)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.00%  ││  0x00007ff6ead92aac:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          ││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@320 (line 256)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.18%  ││  0x00007ff6ead92ab3:   test   %eax,(%rcx)                  ;   {poll}
   0.40%  ││  0x00007ff6ead92ab5:   movzwl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@328 (line 256)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%  ││  0x00007ff6ead92abd:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.00%  ││  0x00007ff6ead92ac0:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
   0.00%  ││  0x00007ff6ead92ac3:   mov    %eax,%r8d
   0.12%  ││  0x00007ff6ead92ac6:   jmp    0x00007ff6ead925f0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.17%  ││  0x00007ff6ead92acb:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rdi=Oop r11=Oop }
          ││                                                            ;*iconst_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@218 (line 251)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.30%  ││  0x00007ff6ead92ad2:   test   %eax,(%rax)                  ;   {poll}
   0.62%  ││  0x00007ff6ead92ad4:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@224 (line 251)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          ││  0x00007ff6ead92ad6:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
          ││  0x00007ff6ead92ad9:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
          ││  0x00007ff6ead92adc:   mov    %ecx,%r8d
   0.14%  ││  0x00007ff6ead92adf:   nop
          ││  0x00007ff6ead92ae0:   jmp    0x00007ff6ead925f0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.17%  ││  0x00007ff6ead92ae5:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rdi=Oop r11=Oop }
          ││                                                            ;*iconst_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@264 (line 253)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.27%  ││  0x00007ff6ead92aec:   test   %eax,(%rax)                  ;   {poll}
   0.60%  ││  0x00007ff6ead92aee:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@270 (line 253)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          ││  0x00007ff6ead92af0:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.01%  ││  0x00007ff6ead92af3:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
          ││  0x00007ff6ead92af6:   mov    %ecx,%r8d
   0.14%  ││  0x00007ff6ead92af9:   jmp    0x00007ff6ead925f0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.25%  ││  0x00007ff6ead92afe:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rdi=Oop r11=Oop }
          ││                                                            ;*iconst_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@310 (line 255)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.42%  ││  0x00007ff6ead92b05:   test   %eax,(%rax)                  ;   {poll}
   0.63%  ││  0x00007ff6ead92b07:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@316 (line 255)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.00%  ││  0x00007ff6ead92b09:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.01%  ││  0x00007ff6ead92b0c:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
          ││  0x00007ff6ead92b0f:   mov    %ecx,%r8d
   0.14%  ││  0x00007ff6ead92b12:   jmp    0x00007ff6ead925f0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.00%  ││  0x00007ff6ead92b17:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rdi=Oop r11=Oop }
          ││                                                            ;*iconst_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@457 (line 261)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          ││  0x00007ff6ead92b1e:   test   %eax,(%rax)                  ;   {poll}
   0.02%  ││  0x00007ff6ead92b20:   shl    %esi                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@466 (line 261)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          ││  0x00007ff6ead92b22:   add    %r8d,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.02%  ││  0x00007ff6ead92b25:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
          ││  0x00007ff6ead92b28:   mov    %esi,%r8d
          ││  0x00007ff6ead92b2b:   jmp    0x00007ff6ead925f0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.36%  ││  0x00007ff6ead92b30:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rdi=Oop r11=Oop }
          ││                                                            ;*iconst_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@357 (line 257)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.16%  ││  0x00007ff6ead92b37:   test   %eax,(%rax)                  ;   {poll}
   0.06%  ││  0x00007ff6ead92b39:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@364 (line 257)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.00%  ││  0x00007ff6ead92b3b:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.12%  ││  0x00007ff6ead92b3e:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
          ││  0x00007ff6ead92b41:   mov    %ecx,%r8d
   0.01%  ││  0x00007ff6ead92b44:   jmp    0x00007ff6ead925f0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.31%  ││  0x00007ff6ead92b49:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rdi=Oop r11=Oop }
          ││                                                            ;*iconst_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@406 (line 259)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.09%  ││  0x00007ff6ead92b50:   test   %eax,(%rax)                  ;   {poll}
   0.04%  ││  0x00007ff6ead92b52:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@413 (line 259)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          ││  0x00007ff6ead92b54:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.09%  ││  0x00007ff6ead92b57:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
   0.00%  ││  0x00007ff6ead92b5a:   mov    %ecx,%r8d
   0.01%  ││  0x00007ff6ead92b5d:   data16 xchg %ax,%ax
          ││  0x00007ff6ead92b60:   jmp    0x00007ff6ead925f0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
          ↘│  0x00007ff6ead92b65:   vucomiss %xmm2,%xmm2
           │  0x00007ff6ead92b69:   jp     0x00007ff6ead92ba5
           │  0x00007ff6ead92b6f:   vucomiss %xmm0,%xmm2
           ╰  0x00007ff6ead92b73:   jbe    0x00007ff6ead929cc
              0x00007ff6ead92b79:   mov    $0x7fffffff,%eax
              0x00007ff6ead92b7e:   xchg   %ax,%ax
              0x00007ff6ead92b80:   jmp    0x00007ff6ead929cc           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@428 (line 260)
....................................................................................................
  14.60%  <total for region 2>

....[Hottest Regions]...............................................................................
  83.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 4, compile id 1134 
  14.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 4, compile id 1134 
   0.55%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   1.03%  <...other 339 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.84%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 4, compile id 1134 
   1.81%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.02%           libjvm.so  fileStream::write 
   0.02%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%    perf-2154755.map  [unknown] 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.00%      hsdis-amd64.so  putop 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%  libpthread-2.31.so  __pthread_mutex_cond_lock 
   0.00%         interpreter  return entry points  
   0.13%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.84%      jvmci, level 4
   1.81%              kernel
   0.10%           libjvm.so
   0.08%        libc-2.31.so
   0.07%                    
   0.04%         interpreter
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%    perf-2154755.map
   0.01%          ld-2.31.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:15:13

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

Benchmark                                              Mode  Cnt   Score   Error  Units
TypeSwitchBenchmark.if_instanceof_concrete_array       avgt    5   1.255 ± 0.521  ns/op
TypeSwitchBenchmark.if_instanceof_concrete_array:asm   avgt          NaN            ---
TypeSwitchBenchmark.if_instanceof_interface_array      avgt    5  13.372 ± 0.025  ns/op
TypeSwitchBenchmark.if_instanceof_interface_array:asm  avgt          NaN            ---
TypeSwitchBenchmark.switch_concrete_array              avgt    5   1.178 ± 0.001  ns/op
TypeSwitchBenchmark.switch_concrete_array:asm          avgt          NaN            ---
TypeSwitchBenchmark.switch_if_concrete_array           avgt    5   1.298 ± 0.177  ns/op
TypeSwitchBenchmark.switch_if_concrete_array:asm       avgt          NaN            ---
TypeSwitchBenchmark.switch_if_interface_array          avgt    5  15.923 ± 0.068  ns/op
TypeSwitchBenchmark.switch_if_interface_array:asm      avgt          NaN            ---
TypeSwitchBenchmark.switch_interface_array             avgt    5  13.526 ± 0.038  ns/op
TypeSwitchBenchmark.switch_interface_array:asm         avgt          NaN            ---
TypeSwitchBenchmark.switch_when_concrete_array         avgt    5   3.082 ± 0.412  ns/op
TypeSwitchBenchmark.switch_when_concrete_array:asm     avgt          NaN            ---
TypeSwitchBenchmark.switch_when_interface_array        avgt    5  17.904 ± 0.308  ns/op
TypeSwitchBenchmark.switch_when_interface_array:asm    avgt          NaN            ---
