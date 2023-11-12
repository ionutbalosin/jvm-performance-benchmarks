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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 47.599 ns/op
# Warmup Iteration   2: 48.109 ns/op
# Warmup Iteration   3: 48.388 ns/op
# Warmup Iteration   4: 48.435 ns/op
# Warmup Iteration   5: 48.374 ns/op
Iteration   1: 48.408 ns/op
Iteration   2: 48.399 ns/op
Iteration   3: 48.442 ns/op
Iteration   4: 48.306 ns/op
Iteration   5: 48.497 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values":
  48.410 ±(99.9%) 0.268 ns/op [Average]
  (min, avg, max) = (48.306, 48.410, 48.497), stdev = 0.070
  CI (99.9%): [48.142, 48.679] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values:asm":
PrintAssembly processed: 219201 total address lines.
Perf output processed (skipped 60.381 seconds):
 Column 1: cycles (50558 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 957 

                                                                                  ; - java.lang.String::equals@-3
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
                        0x00007f79a723fd04:   mov    %r10d,%r9d
                        0x00007f79a723fd07:   call   0x00007f79a6dbef80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
                        0x00007f79a723fd0c:   nop
                        0x00007f79a723fd0d:   test   %eax,%eax
          ╭             0x00007f79a723fd0f:   jne    0x00007f79a723fe26           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 150)
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.75%  │             0x00007f79a723fd15:   mov    %ebx,%r13d
          │             0x00007f79a723fd18:   shl    $0x3,%r13                    ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@1 (line 75)
          │             0x00007f79a723fd1c:   mov    %r13,0x10(%rsp)
          │             0x00007f79a723fd21:   test   %ebx,%ebx
   0.00%  │             0x00007f79a723fd23:   je     0x00007f79a723fe35           ;* unwind (locked if synchronized)
          │                                                                       ; - java.lang.String::equals@-3
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.77%  │             0x00007f79a723fd29:   mov    0x14(,%rbx,8),%esi           ; ImmutableOopMap {rbx=NarrowOop rbp=Oop rsi=NarrowOop r11=Oop r13=Oop [16]=Oop }
          │                                                                       ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 150)
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          │             0x00007f79a723fd30:   mov    0xc(,%rsi,8),%r14d           ; implicit exception: dispatches to 0x00007f79a723ff73
          │             0x00007f79a723fd38:   movsbl 0x10(,%rbx,8),%ebp
          │             0x00007f79a723fd40:   shl    $0x3,%rsi                    ;* unwind (locked if synchronized)
          │                                                                       ; - java.lang.String::equals@-3
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.80%  │             0x00007f79a723fd44:   mov    %rsi,0x8(%rsp)
          │             0x00007f79a723fd49:   mov    $0x1,%r10d
          │             0x00007f79a723fd4f:   nop
   8.67%  │     ↗↗↗     0x00007f79a723fd50:   cmp    $0x29,%r10d
          │     │││     0x00007f79a723fd54:   jge    0x00007f79a723fe97           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@11 (line 149)
          │     │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   1.24%  │     │││     0x00007f79a723fd5a:   mov    0x10(%r11,%r10,4),%edi       ; ImmutableOopMap {rbx=NarrowOop rsi=Oop rdi=NarrowOop r11=Oop [8]=Oop [16]=Oop }
          │     │││                                                               ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │     │││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 149)
          │     │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.40%  │     │││     0x00007f79a723fd5f:   mov    0x18(,%rdi,8),%edx           ; implicit exception: dispatches to 0x00007f79a723ff96
          │     │││                                                               ; ImmutableOopMap {rdx=NarrowOop rbx=NarrowOop rsi=Oop rdi=NarrowOop r11=Oop [8]=Oop [16]=Oop }
          │     │││                                                               ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │     │││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 149)
          │     │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   8.25%  │     │││     0x00007f79a723fd66:   movsbl 0x10(,%rdx,8),%ecx           ; implicit exception: dispatches to 0x00007f79a723ffb9
  14.08%  │     │││     0x00007f79a723fd6e:   mov    0x14(,%rdx,8),%r8d
   0.07%  │     │││     0x00007f79a723fd76:   cmp    %ebx,%edx
          │╭    │││     0x00007f79a723fd78:   je     0x00007f79a723fe1a           ;* unwind (locked if synchronized)
          ││    │││                                                               ; - java.lang.String::equals@-3
          ││    │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││    │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          ││    │││     0x00007f79a723fd7e:   mov    %r10d,%eax
   6.42%  ││    │││     0x00007f79a723fd81:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││    │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@34 (line 149)
          ││    │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   9.26%  ││    │││     0x00007f79a723fd83:   cmp    %bpl,%cl
          ││╭   │││     0x00007f79a723fd86:   jne    0x00007f79a723fde5           ; ImmutableOopMap {rbx=NarrowOop rsi=Oop rdi=NarrowOop r8=NarrowOop r11=Oop [8]=Oop [16]=Oop }
          │││   │││                                                               ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │││   │││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 149)
          │││   │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.09%  │││   │││     0x00007f79a723fd8c:   mov    0xc(,%r8,8),%r9d             ; implicit exception: dispatches to 0x00007f79a723ffdc
   8.67%  │││   │││     0x00007f79a723fd94:   cmp    %r14d,%r9d
          │││╭  │││     0x00007f79a723fd97:   jne    0x00007f79a723fded
   0.78%  ││││  │││     0x00007f79a723fd9d:   data16 xchg %ax,%ax
          ││││  │││     0x00007f79a723fda0:   test   %r14d,%r14d
          ││││╭ │││     0x00007f79a723fda3:   je     0x00007f79a723fe20
          │││││ │││     0x00007f79a723fda9:   mov    %edi,0x4(%rsp)
          │││││ │││     0x00007f79a723fdad:   shl    $0x3,%r8
   0.80%  │││││ │││     0x00007f79a723fdb1:   mov    %rsi,%r10
          │││││ │││     0x00007f79a723fdb4:   mov    $0x10,%rdx
          │││││ │││     0x00007f79a723fdbb:   mov    %r8,%rcx
          │││││ │││     0x00007f79a723fdbe:   mov    $0x10,%r8                    ;* unwind (locked if synchronized)
          │││││ │││                                                               ; - java.lang.String::equals@-3
          │││││ │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │││││ │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.81%  │││││ │││     0x00007f79a723fdc5:   mov    %eax,%r13d
          │││││ │││     0x00007f79a723fdc8:   call   0x00007f79a6dbef80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.42%  │││││ │││     0x00007f79a723fdcd:   nop
          │││││ │││     0x00007f79a723fdce:   test   %eax,%eax
          │││││╭│││     0x00007f79a723fdd0:   jne    0x00007f79a723fdf5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 150)
          │││││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          │││││││││     0x00007f79a723fdd6:   mov    %r13d,%r10d
   0.34%  │││││││││     0x00007f79a723fdd9:   mov    0x8(%rsp),%rsi
   1.15%  │││││││││     0x00007f79a723fdde:   xchg   %ax,%ax
          ││││││╰││     0x00007f79a723fde0:   jmp    0x00007f79a723fd50           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 149)
          ││││││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          ││↘│││ ││     0x00007f79a723fde5:   mov    %eax,%r10d
          ││ │││ ╰│     0x00007f79a723fde8:   jmp    0x00007f79a723fd50
   8.61%  ││ ↘││  │     0x00007f79a723fded:   mov    %eax,%r10d
   6.25%  ││  ││  ╰     0x00007f79a723fdf0:   jmp    0x00007f79a723fd50           ;* unwind (locked if synchronized)
          ││  ││                                                                  ; - java.lang.String::equals@-3
          ││  ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││  ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.77%  ││  │↘   ↗↗   0x00007f79a723fdf5:   mov    0x4(%rsp),%edi               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 150)
          ││  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          ││  │    ││   0x00007f79a723fdf9:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
          ││  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          ││  │    ││↗  0x00007f79a723fdfd:   mov    %rdi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          ││  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@7 (line 75)
   0.01%  ││  │    │││  0x00007f79a723fe00:   mov    0x20(%rsp),%rbp
   0.76%  ││  │    │││  0x00007f79a723fe05:   add    $0x28,%rsp
          ││  │    │││  0x00007f79a723fe09:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │    │││  0x00007f79a723fe10:   ja     0x00007f79a723fef2
          ││  │    │││  0x00007f79a723fe16:   vzeroupper 
   0.81%  ││  │    │││  0x00007f79a723fe19:   ret    
          │↘  │    │││  0x00007f79a723fe1a:   mov    %edi,0x4(%rsp)
   0.00%  │   │    ╰││  0x00007f79a723fe1e:   jmp    0x00007f79a723fdf5
          │   ↘     ││  0x00007f79a723fe20:   mov    %edi,0x4(%rsp)
          │         ╰│  0x00007f79a723fe24:   jmp    0x00007f79a723fdf5           ;* unwind (locked if synchronized)
          │          │                                                            ; - java.lang.String::equals@-3
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          ↘          │  0x00007f79a723fe26:   mov    %rbp,%rdi
                     ╰  0x00007f79a723fe29:   jmp    0x00007f79a723fdfd           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@31 (line 151)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
                        0x00007f79a723fe2b:   mov    %rbp,%rdi
....................................................................................................
  80.98%  <total for region 1>

....[Hottest Regions]...............................................................................
  80.98%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 957 
   8.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 957 
   3.06%                      <unknown> 
   2.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 985 
   2.33%                      <unknown> 
   1.16%                      <unknown> 
   0.25%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.88%  <...other 282 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  89.36%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 957 
   6.62%                      <unknown> 
   2.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 985 
   1.32%              kernel  [unknown] 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __GI___libc_write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%        libc-2.31.so  _IO_old_init 
   0.14%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.77%      jvmci, level 4
   6.62%                    
   1.32%              kernel
   0.13%           libjvm.so
   0.10%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values

# Run progress: 50.00% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 85.027 ns/op
# Warmup Iteration   2: 83.713 ns/op
# Warmup Iteration   3: 83.692 ns/op
# Warmup Iteration   4: 83.984 ns/op
# Warmup Iteration   5: 84.156 ns/op
Iteration   1: 84.292 ns/op
Iteration   2: 84.182 ns/op
Iteration   3: 84.136 ns/op
Iteration   4: 84.246 ns/op
Iteration   5: 84.153 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values":
  84.202 ±(99.9%) 0.253 ns/op [Average]
  (min, avg, max) = (84.136, 84.202, 84.292), stdev = 0.066
  CI (99.9%): [83.949, 84.455] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values:asm":
PrintAssembly processed: 217429 total address lines.
Perf output processed (skipped 60.323 seconds):
 Column 1: cycles (50707 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues, version 2, compile id 961 

                          0x00007fc4bf23db1a:   shl    $0x3,%rcx
                          0x00007fc4bf23db1e:   mov    $0x10,%rdx                   ;* unwind (locked if synchronized)
                                                                                    ; - java.lang.String::equals@-3
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                          0x00007fc4bf23db25:   mov    $0x10,%r8
                          0x00007fc4bf23db2c:   call   0x00007fc4bedbb880           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
                          0x00007fc4bf23db31:   nop
                          0x00007fc4bf23db32:   test   %eax,%eax
          ╭               0x00007fc4bf23db34:   jne    0x00007fc4bf23de09           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 141)
   0.43%  │               0x00007fc4bf23db3a:   nopw   0x0(%rax,%rax,1)
          │               0x00007fc4bf23db40:   test   %r11,%r11
          │               0x00007fc4bf23db43:   je     0x00007fc4bf23de18           ;* unwind (locked if synchronized)
          │                                                                         ; - java.lang.String::equals@-3
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │               0x00007fc4bf23db49:   mov    0x14(%r11),%r10d             ; ImmutableOopMap {r10=NarrowOop r11=Oop [16]=Oop }
          │                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 141)
          │               0x00007fc4bf23db4d:   mov    0xc(,%r10,8),%ebx            ; implicit exception: dispatches to 0x00007fc4bf23e15a
   0.61%  │               0x00007fc4bf23db55:   mov    0x1b8(%r15),%rsi
          │               0x00007fc4bf23db5c:   lea    0xb8(%rsi),%rdx
          │               0x00007fc4bf23db63:   cmp    0x1c8(%r15),%rdx
          │               0x00007fc4bf23db6a:   ja     0x00007fc4bf23de9a
   0.00%  │               0x00007fc4bf23db70:   mov    %rdx,0x1b8(%r15)
   0.47%  │               0x00007fc4bf23db77:   prefetchw 0x178(%rsi)
   0.05%  │               0x00007fc4bf23db7e:   prefetchw 0x1b8(%rsi)
   0.15%  │               0x00007fc4bf23db85:   prefetchw 0x1f8(%rsi)
   0.29%  │               0x00007fc4bf23db8c:   prefetchw 0x238(%rsi)
   0.60%  │               0x00007fc4bf23db93:   movq   $0x1,(%rsi)
   0.05%  │               0x00007fc4bf23db9a:   movl   $0x102afb8,0x8(%rsi)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[])}
   0.09%  │               0x00007fc4bf23dba1:   movl   $0x29,0xc(%rsi)
   0.15%  │               0x00007fc4bf23dba8:   mov    $0x10,%rdx
   0.33%  │╭              0x00007fc4bf23dbaf:   jmp    0x00007fc4bf23dbcc
          ││              0x00007fc4bf23dbb4:   nopl   0x0(%rax,%rax,1)
          ││              0x00007fc4bf23dbbc:   data16 data16 xchg %ax,%ax
   7.91%  ││↗             0x00007fc4bf23dbc0:   movq   $0x0,(%rsi,%rdx,1)
   1.31%  │││             0x00007fc4bf23dbc8:   lea    0x8(%rdx),%rdx
   0.51%  │↘│             0x00007fc4bf23dbcc:   cmp    $0xb8,%rdx
          │ ╰             0x00007fc4bf23dbd3:   jb     0x00007fc4bf23dbc0           ;*getstatic $VALUES {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@0 (line 84)
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 140)
   0.01%  │               0x00007fc4bf23dbd5:   mov    %rsi,%rbp
   0.46%  │               0x00007fc4bf23dbd8:   movl   $0xffdc7595,0xb0(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3aca8})}
   0.04%  │               0x00007fc4bf23dbe2:   movl   $0xffdc7583,0xac(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3ac18})}
   0.14%  │               0x00007fc4bf23dbec:   movl   $0xffdc7573,0xa8(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3ab98})}
   0.24%  │               0x00007fc4bf23dbf6:   movl   $0xffdc7561,0xa4(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3ab08})}
   0.28%  │               0x00007fc4bf23dc00:   movl   $0xffdc754f,0xa0(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3aa78})}
   0.24%  │               0x00007fc4bf23dc0a:   movl   $0xffdc753f,0x9c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a9f8})}
   0.46%  │               0x00007fc4bf23dc14:   movl   $0xffdc752f,0x98(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a978})}
   0.52%  │               0x00007fc4bf23dc1e:   movl   $0xffdc751f,0x94(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a8f8})}
   0.43%  │               0x00007fc4bf23dc28:   movl   $0xffdc750f,0x90(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a878})}
   0.31%  │               0x00007fc4bf23dc32:   movl   $0xffdc74ff,0x8c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a7f8})}
   0.56%  │               0x00007fc4bf23dc3c:   movl   $0xffdc74ef,0x88(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a778})}
   0.51%  │               0x00007fc4bf23dc46:   movl   $0xffdc74df,0x84(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a6f8})}
   0.44%  │               0x00007fc4bf23dc50:   movl   $0xffdc74cd,0x80(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a668})}
   0.36%  │               0x00007fc4bf23dc5a:   movl   $0xffdc74bb,0x7c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a5d8})}
   0.53%  │               0x00007fc4bf23dc61:   movl   $0xffdc74ab,0x78(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a558})}
   0.46%  │               0x00007fc4bf23dc68:   movl   $0xffdc749b,0x74(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a4d8})}
   0.49%  │               0x00007fc4bf23dc6f:   movl   $0xffdc748b,0x70(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a458})}
   0.35%  │               0x00007fc4bf23dc76:   movl   $0xffdc7479,0x6c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a3c8})}
   0.52%  │               0x00007fc4bf23dc7d:   movl   $0xffdc7467,0x68(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a338})}
   0.57%  │               0x00007fc4bf23dc84:   movl   $0xffdc7455,0x64(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a2a8})}
   0.40%  │               0x00007fc4bf23dc8b:   movl   $0xffdc7445,0x60(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a228})}
   0.28%  │               0x00007fc4bf23dc92:   movl   $0xffdc7435,0x5c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a1a8})}
   0.48%  │               0x00007fc4bf23dc99:   movl   $0xffdc7425,0x58(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a128})}
   0.54%  │               0x00007fc4bf23dca0:   movl   $0xffdc7415,0x54(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a0a8})}
   0.45%  │               0x00007fc4bf23dca7:   movl   $0xffdc7405,0x50(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee3a028})}
   0.35%  │               0x00007fc4bf23dcae:   movl   $0xffdc73f5,0x4c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee39fa8})}
   0.56%  │               0x00007fc4bf23dcb5:   movl   $0xffdc73e5,0x48(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee39f28})}
   0.47%  │               0x00007fc4bf23dcbc:   movl   $0xffdc73d5,0x44(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee39ea8})}
   0.41%  │               0x00007fc4bf23dcc3:   movl   $0xffdc73c5,0x40(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee39e28})}
   0.28%  │               0x00007fc4bf23dcca:   movl   $0xffdc73b5,0x3c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee39da8})}
   0.50%  │               0x00007fc4bf23dcd1:   movl   $0xffdc73a5,0x38(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee39d28})}
   0.48%  │               0x00007fc4bf23dcd8:   movl   $0xffdc7395,0x34(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee39ca8})}
   0.47%  │               0x00007fc4bf23dcdf:   movl   $0xffdc7383,0x30(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee39c18})}
   0.30%  │               0x00007fc4bf23dce6:   movl   $0xffdc7373,0x2c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee39b98})}
   0.55%  │               0x00007fc4bf23dced:   movl   $0xffdc7363,0x28(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee39b18})}
   0.46%  │               0x00007fc4bf23dcf4:   movl   $0xffdc7359,0x24(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee39ac8})}
   0.36%  │               0x00007fc4bf23dcfb:   movl   $0xffdc7349,0x20(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee39a48})}
   0.27%  │               0x00007fc4bf23dd02:   movl   $0xffdc7339,0x1c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee399c8})}
   0.53%  │               0x00007fc4bf23dd09:   movl   $0xffdc7327,0x18(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee39938})}
   0.55%  │               0x00007fc4bf23dd10:   movl   $0xffdc7315,0x14(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee398a8})}
   0.50%  │               0x00007fc4bf23dd17:   movl   $0xffdc7305,0x10(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fee39828})}
   0.32%  │               0x00007fc4bf23dd1e:   movsbl 0x10(%r11),%r13d
   0.04%  │               0x00007fc4bf23dd23:   mov    %r10d,%r14d
   0.01%  │               0x00007fc4bf23dd26:   shl    $0x3,%r14                    ;* unwind (locked if synchronized)
          │                                                                         ; - java.lang.String::equals@-3
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
   0.16%  │               0x00007fc4bf23dd2a:   mov    $0x1,%r10d
   8.76%  │       ↗↗↗     0x00007fc4bf23dd30:   cmp    $0x29,%r10d
          │       │││     0x00007fc4bf23dd34:   jge    0x00007fc4bf23e0a8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@11 (line 140)
   0.01%  │       │││     0x00007fc4bf23dd3a:   mov    0x10(%rbp,%r10,4),%edi       ; ImmutableOopMap {rbp=Oop rdi=NarrowOop r11=Oop r14=Oop [16]=Oop }
          │       │││                                                               ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │       │││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
   0.47%  │       │││     0x00007fc4bf23dd3f:   mov    0x18(,%rdi,8),%esi           ; implicit exception: dispatches to 0x00007fc4bf23e17d
          │       │││                                                               ; ImmutableOopMap {rbp=Oop rsi=NarrowOop rdi=NarrowOop r11=Oop r14=Oop [16]=Oop }
          │       │││                                                               ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │       │││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
   1.37%  │       │││     0x00007fc4bf23dd46:   movsbl 0x10(,%rsi,8),%edx           ; implicit exception: dispatches to 0x00007fc4bf23e1a0
  10.96%  │       │││     0x00007fc4bf23dd4e:   mov    0x14(,%rsi,8),%ecx           ;* unwind (locked if synchronized)
          │       │││                                                               ; - java.lang.String::equals@-3
          │       │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
   0.00%  │       │││     0x00007fc4bf23dd55:   shl    $0x3,%rsi                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@21 (line 141)
   0.27%  │       │││     0x00007fc4bf23dd59:   nopl   0x0(%rax)
   0.00%  │       │││     0x00007fc4bf23dd60:   cmp    %r11,%rsi
          │  ╭    │││     0x00007fc4bf23dd63:   je     0x00007fc4bf23ddfd           ;* unwind (locked if synchronized)
          │  │    │││                                                               ; - java.lang.String::equals@-3
          │  │    │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
   8.89%  │  │    │││     0x00007fc4bf23dd69:   mov    %r10d,%eax
   0.01%  │  │    │││     0x00007fc4bf23dd6c:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │    │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@34 (line 140)
   0.29%  │  │    │││     0x00007fc4bf23dd6e:   cmp    %r13b,%dl
          │  │╭   │││     0x00007fc4bf23dd71:   jne    0x00007fc4bf23ddc8           ; ImmutableOopMap {rcx=NarrowOop rbp=Oop rdi=NarrowOop r11=Oop r14=Oop [16]=Oop }
          │  ││   │││                                                               ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  ││   │││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
   0.01%  │  ││   │││     0x00007fc4bf23dd77:   mov    0xc(,%rcx,8),%r9d            ; implicit exception: dispatches to 0x00007fc4bf23e1c3
  11.05%  │  ││   │││     0x00007fc4bf23dd7f:   nop
          │  ││   │││     0x00007fc4bf23dd80:   cmp    %ebx,%r9d
          │  ││╭  │││     0x00007fc4bf23dd83:   jne    0x00007fc4bf23ddd0
   0.42%  │  │││  │││     0x00007fc4bf23dd89:   test   %ebx,%ebx
          │  │││╭ │││     0x00007fc4bf23dd8b:   je     0x00007fc4bf23de03
   0.00%  │  ││││ │││     0x00007fc4bf23dd91:   mov    %edi,0xc(%rsp)
          │  ││││ │││     0x00007fc4bf23dd95:   shl    $0x3,%rcx
          │  ││││ │││     0x00007fc4bf23dd99:   mov    %r14,%rsi
   0.42%  │  ││││ │││     0x00007fc4bf23dd9c:   mov    $0x10,%rdx
   0.00%  │  ││││ │││     0x00007fc4bf23dda3:   mov    $0x10,%r8                    ;* unwind (locked if synchronized)
          │  ││││ │││                                                               ; - java.lang.String::equals@-3
          │  ││││ │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
   0.00%  │  ││││ │││     0x00007fc4bf23ddaa:   mov    %eax,%r11d
   0.00%  │  ││││ │││     0x00007fc4bf23ddad:   call   0x00007fc4bedbb880           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.46%  │  ││││ │││     0x00007fc4bf23ddb2:   nop
          │  ││││ │││     0x00007fc4bf23ddb3:   test   %eax,%eax
          │  ││││╭│││     0x00007fc4bf23ddb5:   jne    0x00007fc4bf23ddd8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  ││││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 141)
          │  ││││││││     0x00007fc4bf23ddbb:   mov    %r11d,%r10d
          │  ││││││││     0x00007fc4bf23ddbe:   mov    0x10(%rsp),%r11
   0.47%  │  │││││╰││     0x00007fc4bf23ddc3:   jmp    0x00007fc4bf23dd30           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │  │││││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
          │  │↘│││ ││     0x00007fc4bf23ddc8:   mov    %eax,%r10d
          │  │ │││ ╰│     0x00007fc4bf23ddcb:   jmp    0x00007fc4bf23dd30
   0.95%  │  │ ↘││  │     0x00007fc4bf23ddd0:   mov    %eax,%r10d
          │  │  ││  ╰     0x00007fc4bf23ddd3:   jmp    0x00007fc4bf23dd30           ;* unwind (locked if synchronized)
          │  │  ││                                                                  ; - java.lang.String::equals@-3
          │  │  ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
   0.41%  │  │  │↘   ↗↗   0x00007fc4bf23ddd8:   mov    0xc(%rsp),%edi               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 141)
   0.00%  │  │  │    ││   0x00007fc4bf23dddc:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │  │  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
   0.00%  │  │  │    ││↗  0x00007fc4bf23dde0:   mov    %rdi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │  │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@33 (line 142)
          │  │  │    │││  0x00007fc4bf23dde3:   mov    0x20(%rsp),%rbp
   0.43%  │  │  │    │││  0x00007fc4bf23dde8:   add    $0x28,%rsp
          │  │  │    │││  0x00007fc4bf23ddec:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  │  │    │││  0x00007fc4bf23ddf3:   ja     0x00007fc4bf23e100
   0.00%  │  │  │    │││  0x00007fc4bf23ddf9:   vzeroupper 
   0.44%  │  │  │    │││  0x00007fc4bf23ddfc:   ret    
   0.48%  │  ↘  │    │││  0x00007fc4bf23ddfd:   mov    %edi,0xc(%rsp)
          │     │    ╰││  0x00007fc4bf23de01:   jmp    0x00007fc4bf23ddd8
          │     ↘     ││  0x00007fc4bf23de03:   mov    %edi,0xc(%rsp)
          │           ╰│  0x00007fc4bf23de07:   jmp    0x00007fc4bf23ddd8           ;* unwind (locked if synchronized)
          │            │                                                            ; - java.lang.String::equals@-3
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ↘            │  0x00007fc4bf23de09:   mov    %rbx,%rdi
                       ╰  0x00007fc4bf23de0c:   jmp    0x00007fc4bf23dde0           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@31 (line 142)
                          0x00007fc4bf23de0e:   mov    %rbx,%rdi
                          0x00007fc4bf23de11:   jmp    0x00007fc4bf23dde0
....................................................................................................
  77.16%  <total for region 1>

....[Hottest Regions]...............................................................................
  77.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues, version 2, compile id 961 
   7.88%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 1000 
   4.82%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues, version 2, compile id 961 
   3.44%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 962 
   2.09%                      <unknown> 
   1.63%                      <unknown> 
   0.48%                      <unknown> 
   0.29%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%              kernel  [unknown] 
   1.65%  <...other 444 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  81.99%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues, version 2, compile id 961 
   7.88%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 1000 
   4.37%                      <unknown> 
   3.44%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 962 
   1.51%              kernel  [unknown] 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.02%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%           libjvm.so  ObjArrayAllocator::initialize 
   0.02%           libjvm.so  JVMCIRuntime::new_array_common 
   0.02%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<598116ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 598116ul>::oop_access_barrier 
   0.01%           libjvm.so  MemAllocator::allocate 
   0.49%  <...other 140 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.30%      jvmci, level 4
   4.37%                    
   1.51%              kernel
   0.58%           libjvm.so
   0.17%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.02%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%         interpreter
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:47

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

Benchmark                                         Mode  Cnt   Score   Error  Units
EnumValuesLookupBenchmark.cached_enum_values      avgt    5  48.410 ± 0.268  ns/op
EnumValuesLookupBenchmark.cached_enum_values:asm  avgt          NaN            ---
EnumValuesLookupBenchmark.enum_values             avgt    5  84.202 ± 0.253  ns/op
EnumValuesLookupBenchmark.enum_values:asm         avgt          NaN            ---
