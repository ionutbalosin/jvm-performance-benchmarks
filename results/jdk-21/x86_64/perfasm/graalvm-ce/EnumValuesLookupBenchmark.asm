# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions
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
# Warmup Iteration   1: 106.382 ns/op
# Warmup Iteration   2: 103.226 ns/op
# Warmup Iteration   3: 102.541 ns/op
# Warmup Iteration   4: 102.447 ns/op
# Warmup Iteration   5: 102.652 ns/op
Iteration   1: 101.555 ns/op
Iteration   2: 101.943 ns/op
Iteration   3: 102.654 ns/op
Iteration   4: 102.202 ns/op
Iteration   5: 104.208 ns/op
# Processing profiler results: LinuxPerfAsmProfiler


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values":
  102.512 ±(99.9%) 3.960 ns/op [Average]
  (min, avg, max) = (101.555, 102.512, 104.208), stdev = 1.029
  CI (99.9%): [98.552, 106.473] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values:asm":
PrintAssembly processed: 211747 total address lines.
Perf output processed (skipped 82.493 seconds):
 Column 1: cycles (50158 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 1055

                                                                                  ; - java.lang.String::equals@-3
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
                        0x00007f3083193184:   mov    %r10d,%r9d
                        0x00007f3083193187:   call   0x00007f3082d14a80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
                        0x00007f308319318c:   nop
                        0x00007f308319318d:   test   %eax,%eax
          ╭             0x00007f308319318f:   jne    0x00007f30831932a6           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 150)
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.03%  │             0x00007f3083193195:   mov    %ebx,%r13d
   0.94%  │             0x00007f3083193198:   shl    $0x3,%r13                    ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@1 (line 75)
          │             0x00007f308319319c:   mov    %r13,0x10(%rsp)
   0.01%  │             0x00007f30831931a1:   test   %ebx,%ebx
          │             0x00007f30831931a3:   je     0x00007f30831932b5           ;* unwind (locked if synchronized)
          │                                                                       ; - java.lang.String::equals@-3
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.03%  │             0x00007f30831931a9:   mov    0x14(,%rbx,8),%esi           ; ImmutableOopMap {rbx=NarrowOop rbp=Oop rsi=NarrowOop r11=Oop r13=Oop [16]=Oop }
          │                                                                       ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 150)
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.96%  │             0x00007f30831931b0:   mov    0xc(,%rsi,8),%r14d           ; implicit exception: dispatches to 0x00007f30831933f3
   0.01%  │             0x00007f30831931b8:   movsbl 0x10(,%rbx,8),%ebp
          │             0x00007f30831931c0:   shl    $0x3,%rsi                    ;* unwind (locked if synchronized)
          │                                                                       ; - java.lang.String::equals@-3
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.02%  │             0x00007f30831931c4:   mov    %rsi,0x8(%rsp)
   0.95%  │             0x00007f30831931c9:   mov    $0x1,%r10d
   0.00%  │             0x00007f30831931cf:   nop
   9.78%  │     ↗↗↗     0x00007f30831931d0:   cmp    $0x29,%r10d
          │     │││     0x00007f30831931d4:   jge    0x00007f3083193317           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@11 (line 149)
          │     │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.06%  │     │││     0x00007f30831931da:   mov    0x10(%r11,%r10,4),%edi       ; ImmutableOopMap {rbx=NarrowOop rsi=Oop rdi=NarrowOop r11=Oop [8]=Oop [16]=Oop }
          │     │││                                                               ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │     │││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 149)
          │     │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   1.00%  │     │││     0x00007f30831931df:   mov    0x18(,%rdi,8),%edx           ; implicit exception: dispatches to 0x00007f3083193416
          │     │││                                                               ; ImmutableOopMap {rdx=NarrowOop rbx=NarrowOop rsi=Oop rdi=NarrowOop r11=Oop [8]=Oop [16]=Oop }
          │     │││                                                               ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │     │││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 149)
          │     │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   9.74%  │     │││     0x00007f30831931e6:   movsbl 0x10(,%rdx,8),%ecx           ; implicit exception: dispatches to 0x00007f3083193439
  10.10%  │     │││     0x00007f30831931ee:   mov    0x14(,%rdx,8),%r8d
   0.03%  │     │││     0x00007f30831931f6:   cmp    %ebx,%edx
          │╭    │││     0x00007f30831931f8:   je     0x00007f308319329a           ;* unwind (locked if synchronized)
          ││    │││                                                               ; - java.lang.String::equals@-3
          ││    │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││    │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.95%  ││    │││     0x00007f30831931fe:   mov    %r10d,%eax
   9.60%  ││    │││     0x00007f3083193201:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││    │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@34 (line 149)
          ││    │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   9.17%  ││    │││     0x00007f3083193203:   cmp    %bpl,%cl
          ││╭   │││     0x00007f3083193206:   jne    0x00007f3083193265           ; ImmutableOopMap {rbx=NarrowOop rsi=Oop rdi=NarrowOop r8=NarrowOop r11=Oop [8]=Oop [16]=Oop }
          │││   │││                                                               ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │││   │││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 149)
          │││   │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.04%  │││   │││     0x00007f308319320c:   mov    0xc(,%r8,8),%r9d             ; implicit exception: dispatches to 0x00007f308319345c
   1.47%  │││   │││     0x00007f3083193214:   cmp    %r14d,%r9d
   0.00%  │││╭  │││     0x00007f3083193217:   jne    0x00007f308319326d
   0.03%  ││││  │││     0x00007f308319321d:   data16 xchg %ax,%ax
          ││││  │││     0x00007f3083193220:   test   %r14d,%r14d
          ││││╭ │││     0x00007f3083193223:   je     0x00007f30831932a0
          │││││ │││     0x00007f3083193229:   mov    %edi,0x4(%rsp)
   0.97%  │││││ │││     0x00007f308319322d:   shl    $0x3,%r8
   0.04%  │││││ │││     0x00007f3083193231:   mov    %rsi,%r10
          │││││ │││     0x00007f3083193234:   mov    $0x10,%rdx
   0.00%  │││││ │││     0x00007f308319323b:   mov    %r8,%rcx
   1.01%  │││││ │││     0x00007f308319323e:   mov    $0x10,%r8                    ;* unwind (locked if synchronized)
          │││││ │││                                                               ; - java.lang.String::equals@-3
          │││││ │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │││││ │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.03%  │││││ │││     0x00007f3083193245:   mov    %eax,%r13d
          │││││ │││     0x00007f3083193248:   call   0x00007f3082d14a80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.03%  │││││ │││     0x00007f308319324d:   nop
   0.00%  │││││ │││     0x00007f308319324e:   test   %eax,%eax
          │││││╭│││     0x00007f3083193250:   jne    0x00007f3083193275           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 150)
          │││││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   1.01%  │││││││││     0x00007f3083193256:   mov    %r13d,%r10d
   0.01%  │││││││││     0x00007f3083193259:   mov    0x8(%rsp),%rsi
   0.03%  │││││││││     0x00007f308319325e:   xchg   %ax,%ax
   0.99%  ││││││╰││     0x00007f3083193260:   jmp    0x00007f30831931d0           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 149)
          ││││││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          ││↘│││ ││     0x00007f3083193265:   mov    %eax,%r10d
          ││ │││ ╰│     0x00007f3083193268:   jmp    0x00007f30831931d0
   9.84%  ││ ↘││  │     0x00007f308319326d:   mov    %eax,%r10d
   8.75%  ││  ││  ╰     0x00007f3083193270:   jmp    0x00007f30831931d0           ;* unwind (locked if synchronized)
          ││  ││                                                                  ; - java.lang.String::equals@-3
          ││  ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││  ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.99%  ││  │↘   ↗↗   0x00007f3083193275:   mov    0x4(%rsp),%edi               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 150)
          ││  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.01%  ││  │    ││   0x00007f3083193279:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
          ││  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.00%  ││  │    ││↗  0x00007f308319327d:   mov    %rdi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          ││  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@7 (line 75)
          ││  │    │││  0x00007f3083193280:   mov    0x20(%rsp),%rbp
   0.96%  ││  │    │││  0x00007f3083193285:   add    $0x28,%rsp
          ││  │    │││  0x00007f3083193289:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │    │││  0x00007f3083193290:   ja     0x00007f3083193372
   0.01%  ││  │    │││  0x00007f3083193296:   vzeroupper
   0.98%  ││  │    │││  0x00007f3083193299:   ret
   0.00%  │↘  │    │││  0x00007f308319329a:   mov    %edi,0x4(%rsp)
   0.01%  │   │    ╰││  0x00007f308319329e:   jmp    0x00007f3083193275
          │   ↘     ││  0x00007f30831932a0:   mov    %edi,0x4(%rsp)
          │         ╰│  0x00007f30831932a4:   jmp    0x00007f3083193275           ;* unwind (locked if synchronized)
          │          │                                                            ; - java.lang.String::equals@-3
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          ↘          │  0x00007f30831932a6:   mov    %rbp,%rdi
                     ╰  0x00007f30831932a9:   jmp    0x00007f308319327d           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@31 (line 151)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
                        0x00007f30831932ab:   mov    %rbp,%rdi
....................................................................................................
  80.63%  <total for region 1>

....[Hottest Regions]...............................................................................
  80.63%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 1055
   6.93%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 1055
   3.12%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 1091
   2.88%                        <unknown>
   2.88%                        <unknown>
   1.03%                        <unknown>
   0.27%                kernel  [unknown]
   0.24%                kernel  [unknown]
   0.17%                kernel  [unknown]
   0.13%                kernel  [unknown]
   0.11%                kernel  [unknown]
   0.04%                kernel  [unknown]
   0.03%                kernel  [unknown]
   0.02%             libjvm.so  fileStream::write
   0.02%                        <unknown>
   0.02%                kernel  [unknown]
   0.02%                kernel  [unknown]
   0.02%                kernel  [unknown]
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool>
   0.02%             libjvm.so  xmlStream::write_text
   1.41%  <...other 494 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  87.56%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 1055
   6.86%                        <unknown>
   3.12%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 1091
   1.81%                kernel  [unknown]
   0.04%             libjvm.so  fileStream::write
   0.03%             libjvm.so  xmlStream::write_text
   0.02%             libc.so.6  __vfprintf_internal
   0.02%        hsdis-amd64.so  print_insn
   0.02%             libjvm.so  defaultStream::write
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool>
   0.02%             libc.so.6  syscall
   0.01%             libjvm.so  ElfSymbolTable::lookup
   0.01%             libjvm.so  RelocIterator::initialize
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer
   0.01%             libc.so.6  __vsnprintf_internal
   0.01%             libc.so.6  __strchrnul_avx2
   0.01%             libc.so.6  _IO_fwrite
   0.01%        hsdis-amd64.so  putop
   0.01%             libc.so.6  __strchr_avx2
   0.38%  <...other 162 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.68%        jvmci, level 4
   6.86%
   1.81%                kernel
   0.31%             libjvm.so
   0.16%             libc.so.6
   0.10%   libjvmcicompiler.so
   0.04%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.01%           interpreter
   0.00%           c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values

# Run progress: 50.00% complete, ETA 00:02:19
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 198.002 ns/op
# Warmup Iteration   2: 174.920 ns/op
# Warmup Iteration   3: 176.439 ns/op
# Warmup Iteration   4: 185.298 ns/op
# Warmup Iteration   5: 214.658 ns/op
Iteration   1: 209.498 ns/op
Iteration   2: 188.466 ns/op
Iteration   3: 170.773 ns/op
Iteration   4: 169.175 ns/op
Iteration   5: 170.564 ns/op
# Processing profiler results: LinuxPerfAsmProfiler


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values":
  181.695 ±(99.9%) 67.215 ns/op [Average]
  (min, avg, max) = (169.175, 181.695, 209.498), stdev = 17.455
  CI (99.9%): [114.481, 248.910] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values:asm":
PrintAssembly processed: 216446 total address lines.
Perf output processed (skipped 78.755 seconds):
 Column 1: cycles (50704 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 1044

                                                                                    ; - java.lang.String::equals@-3
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
                          0x00007f7dfb190846:   mov    $0x10,%r8
                          0x00007f7dfb19084d:   call   0x00007f7dfad14e80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
                          0x00007f7dfb190852:   nop
                          0x00007f7dfb190853:   test   %eax,%eax
          ╭               0x00007f7dfb190855:   jne    0x00007f7dfb190b4c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 141)
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.05%  │               0x00007f7dfb19085b:   mov    %ebx,%r11d
   0.58%  │               0x00007f7dfb19085e:   shl    $0x3,%r11                    ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@1 (line 81)
          │               0x00007f7dfb190862:   mov    %r11,0x10(%rsp)
   0.00%  │               0x00007f7dfb190867:   test   %ebx,%ebx
          │               0x00007f7dfb190869:   je     0x00007f7dfb190b5b           ;* unwind (locked if synchronized)
          │                                                                         ; - java.lang.String::equals@-3
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.04%  │               0x00007f7dfb19086f:   mov    0x14(,%rbx,8),%r10d          ; ImmutableOopMap {rbx=NarrowOop r10=NarrowOop r11=Oop [16]=Oop }
          │                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 141)
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.53%  │               0x00007f7dfb190877:   mov    0xc(,%r10,8),%ebp            ; implicit exception: dispatches to 0x00007f7dfb190eb7
   0.03%  │               0x00007f7dfb19087f:   mov    0x1b8(%r15),%rsi
   0.00%  │               0x00007f7dfb190886:   lea    0xb8(%rsi),%rdx
   0.04%  │               0x00007f7dfb19088d:   cmp    0x1c8(%r15),%rdx
          │               0x00007f7dfb190894:   ja     0x00007f7dfb190bda
   0.56%  │               0x00007f7dfb19089a:   mov    %rdx,0x1b8(%r15)
   0.00%  │               0x00007f7dfb1908a1:   prefetchw 0x178(%rsi)
   0.01%  │               0x00007f7dfb1908a8:   prefetchw 0x1b8(%rsi)
   0.07%  │               0x00007f7dfb1908af:   prefetchw 0x1f8(%rsi)
   0.72%  │               0x00007f7dfb1908b6:   prefetchw 0x238(%rsi)
   0.11%  │               0x00007f7dfb1908bd:   movq   $0x1,(%rsi)
   0.00%  │               0x00007f7dfb1908c4:   movl   $0x102a4b8,0x8(%rsi)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[])}
   0.04%  │               0x00007f7dfb1908cb:   movl   $0x29,0xc(%rsi)
   0.53%  │               0x00007f7dfb1908d2:   mov    $0x10,%rdx
   0.00%  │╭              0x00007f7dfb1908d9:   jmp    0x00007f7dfb1908ec
          ││              0x00007f7dfb1908de:   xchg   %ax,%ax
  12.08%  ││↗             0x00007f7dfb1908e0:   movq   $0x0,(%rsi,%rdx,1)
   0.48%  │││             0x00007f7dfb1908e8:   lea    0x8(%rdx),%rdx
   0.09%  │↘│             0x00007f7dfb1908ec:   cmp    $0xb8,%rdx
          │ ╰             0x00007f7dfb1908f3:   jb     0x00007f7dfb1908e0           ;*getstatic $VALUES {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@0 (line 84)
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 140)
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.00%  │               0x00007f7dfb1908f5:   mov    %rsi,%r13
   0.53%  │               0x00007f7dfb1908f8:   movl   $0xc55261c7,0xb0(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930e38})}
   0.02%  │               0x00007f7dfb190903:   movl   $0xc55261b5,0xac(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930da8})}
   0.01%  │               0x00007f7dfb19090e:   movl   $0xc55261a5,0xa8(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930d28})}
   0.03%  │               0x00007f7dfb190919:   movl   $0xc5526193,0xa4(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930c98})}
   0.56%  │               0x00007f7dfb190924:   movl   $0xc5526181,0xa0(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930c08})}
   0.02%  │               0x00007f7dfb19092f:   movl   $0xc5526171,0x9c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930b88})}
   0.05%  │               0x00007f7dfb19093a:   movl   $0xc5526161,0x98(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930b08})}
   0.06%  │               0x00007f7dfb190945:   movl   $0xc5526151,0x94(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930a88})}
   0.58%  │               0x00007f7dfb190950:   movl   $0xc5526141,0x90(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930a08})}
   0.03%  │               0x00007f7dfb19095b:   movl   $0xc5526131,0x8c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930988})}
   0.05%  │               0x00007f7dfb190966:   movl   $0xc5526121,0x88(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930908})}
   0.04%  │               0x00007f7dfb190971:   movl   $0xc5526111,0x84(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930888})}
   0.59%  │               0x00007f7dfb19097c:   movl   $0xc55260ff,0x80(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9307f8})}
   0.03%  │               0x00007f7dfb190987:   movl   $0xc55260ed,0x7c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930768})}
   0.05%  │               0x00007f7dfb19098f:   movl   $0xc55260dd,0x78(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9306e8})}
   0.05%  │               0x00007f7dfb190997:   movl   $0xc55260cd,0x74(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930668})}
   0.57%  │               0x00007f7dfb19099f:   movl   $0xc55260bd,0x70(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9305e8})}
   0.04%  │               0x00007f7dfb1909a7:   movl   $0xc55260ab,0x6c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930558})}
   0.04%  │               0x00007f7dfb1909af:   movl   $0xc5526099,0x68(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9304c8})}
   0.05%  │               0x00007f7dfb1909b7:   movl   $0xc5526087,0x64(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930438})}
   0.59%  │               0x00007f7dfb1909bf:   movl   $0xc5526077,0x60(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9303b8})}
   0.07%  │               0x00007f7dfb1909c7:   movl   $0xc5526067,0x5c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930338})}
   0.05%  │               0x00007f7dfb1909cf:   movl   $0xc5526057,0x58(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9302b8})}
   0.06%  │               0x00007f7dfb1909d7:   movl   $0xc5526047,0x54(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930238})}
   0.58%  │               0x00007f7dfb1909df:   movl   $0xc5526037,0x50(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9301b8})}
   0.07%  │               0x00007f7dfb1909e7:   movl   $0xc5526027,0x4c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930138})}
   0.11%  │               0x00007f7dfb1909ef:   movl   $0xc5526017,0x48(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9300b8})}
   0.19%  │               0x00007f7dfb1909f7:   movl   $0xc5526007,0x44(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930038})}
   0.65%  │               0x00007f7dfb1909ff:   movl   $0xc5525ff7,0x40(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92ffb8})}
   0.49%  │               0x00007f7dfb190a07:   movl   $0xc5525fe7,0x3c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92ff38})}
   0.51%  │               0x00007f7dfb190a0f:   movl   $0xc5525fd7,0x38(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92feb8})}
   0.50%  │               0x00007f7dfb190a17:   movl   $0xc5525fc7,0x34(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fe38})}
   0.57%  │               0x00007f7dfb190a1f:   movl   $0xc5525fb5,0x30(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fda8})}
   0.54%  │               0x00007f7dfb190a27:   movl   $0xc5525fa5,0x2c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fd28})}
   0.60%  │               0x00007f7dfb190a2f:   movl   $0xc5525f95,0x28(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fca8})}
   0.55%  │               0x00007f7dfb190a37:   movl   $0xc5525f8b,0x24(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fc58})}
   0.62%  │               0x00007f7dfb190a3f:   movl   $0xc5525f7b,0x20(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fbd8})}
   0.60%  │               0x00007f7dfb190a47:   movl   $0xc5525f6b,0x1c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fb58})}
   0.61%  │               0x00007f7dfb190a4f:   movl   $0xc5525f59,0x18(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fac8})}
   0.60%  │               0x00007f7dfb190a57:   movl   $0xc5525f47,0x14(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fa38})}
   0.66%  │               0x00007f7dfb190a5f:   movl   $0xc5525f37,0x10(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92f9b8})}
   0.60%  │               0x00007f7dfb190a67:   movsbl 0x10(,%rbx,8),%r14d
   0.05%  │               0x00007f7dfb190a70:   shl    $0x3,%r10                    ;* unwind (locked if synchronized)
          │                                                                         ; - java.lang.String::equals@-3
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.01%  │               0x00007f7dfb190a74:   mov    %r10,0x8(%rsp)
   0.65%  │               0x00007f7dfb190a79:   mov    $0x1,%r8d
   0.01%  │               0x00007f7dfb190a7f:   nop
   5.99%  │       ↗↗↗     0x00007f7dfb190a80:   cmp    $0x29,%r8d
          │       │││     0x00007f7dfb190a84:   jge    0x00007f7dfb190e23           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@11 (line 140)
          │       │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.02%  │       │││     0x00007f7dfb190a8a:   mov    0x10(%r13,%r8,4),%edi        ; ImmutableOopMap {rbx=NarrowOop rdi=NarrowOop r10=Oop r13=Oop [8]=Oop [16]=Oop }
          │       │││                                                               ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │       │││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
          │       │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   1.23%  │       │││     0x00007f7dfb190a8f:   mov    0x18(,%rdi,8),%esi           ; implicit exception: dispatches to 0x00007f7dfb190eda
          │       │││                                                               ; ImmutableOopMap {rbx=NarrowOop rsi=NarrowOop rdi=NarrowOop r10=Oop r13=Oop [8]=Oop [16]=Oop }
          │       │││                                                               ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │       │││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
          │       │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   7.29%  │       │││     0x00007f7dfb190a96:   movsbl 0x10(,%rsi,8),%edx           ; implicit exception: dispatches to 0x00007f7dfb190efd
   8.97%  │       │││     0x00007f7dfb190a9e:   mov    0x14(,%rsi,8),%ecx
   0.05%  │       │││     0x00007f7dfb190aa5:   cmp    %ebx,%esi
          │  ╭    │││     0x00007f7dfb190aa7:   je     0x00007f7dfb190b40           ;* unwind (locked if synchronized)
          │  │    │││                                                               ; - java.lang.String::equals@-3
          │  │    │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │  │    │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.62%  │  │    │││     0x00007f7dfb190aad:   mov    %r8d,%eax
   5.03%  │  │    │││     0x00007f7dfb190ab0:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │    │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@34 (line 140)
          │  │    │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   5.78%  │  │    │││     0x00007f7dfb190ab2:   cmp    %r14b,%dl
          │  │╭   │││     0x00007f7dfb190ab5:   jne    0x00007f7dfb190b0b           ; ImmutableOopMap {rcx=NarrowOop rbx=NarrowOop rdi=NarrowOop r10=Oop r13=Oop [8]=Oop [16]=Oop }
          │  ││   │││                                                               ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  ││   │││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
          │  ││   │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.05%  │  ││   │││     0x00007f7dfb190abb:   mov    0xc(,%rcx,8),%r9d            ; implicit exception: dispatches to 0x00007f7dfb190f20
   3.92%  │  ││   │││     0x00007f7dfb190ac3:   cmp    %ebp,%r9d
          │  ││╭  │││     0x00007f7dfb190ac6:   jne    0x00007f7dfb190b13
   0.65%  │  │││  │││     0x00007f7dfb190acc:   test   %ebp,%ebp
          │  │││╭ │││     0x00007f7dfb190ace:   je     0x00007f7dfb190b46
   0.00%  │  ││││ │││     0x00007f7dfb190ad4:   mov    %edi,0x4(%rsp)
   0.00%  │  ││││ │││     0x00007f7dfb190ad8:   shl    $0x3,%rcx
          │  ││││ │││     0x00007f7dfb190adc:   mov    %r10,%rsi
   0.60%  │  ││││ │││     0x00007f7dfb190adf:   mov    $0x10,%rdx
   0.01%  │  ││││ │││     0x00007f7dfb190ae6:   mov    $0x10,%r8                    ;* unwind (locked if synchronized)
          │  ││││ │││                                                               ; - java.lang.String::equals@-3
          │  ││││ │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │  ││││ │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.00%  │  ││││ │││     0x00007f7dfb190aed:   mov    %eax,%r11d
   0.01%  │  ││││ │││     0x00007f7dfb190af0:   call   0x00007f7dfad14e80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.67%  │  ││││ │││     0x00007f7dfb190af5:   nop
   0.00%  │  ││││ │││     0x00007f7dfb190af6:   test   %eax,%eax
          │  ││││╭│││     0x00007f7dfb190af8:   jne    0x00007f7dfb190b1b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  ││││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 141)
          │  ││││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          │  ││││││││     0x00007f7dfb190afe:   mov    %r11d,%r8d
          │  ││││││││     0x00007f7dfb190b01:   mov    0x8(%rsp),%r10
   0.57%  │  │││││╰││     0x00007f7dfb190b06:   jmp    0x00007f7dfb190a80           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │  │││││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
          │  │││││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          │  │↘│││ ││     0x00007f7dfb190b0b:   mov    %eax,%r8d
          │  │ │││ ╰│     0x00007f7dfb190b0e:   jmp    0x00007f7dfb190a80
   5.49%  │  │ ↘││  │     0x00007f7dfb190b13:   mov    %eax,%r8d
   5.19%  │  │  ││  ╰     0x00007f7dfb190b16:   jmp    0x00007f7dfb190a80           ;* unwind (locked if synchronized)
          │  │  ││                                                                  ; - java.lang.String::equals@-3
          │  │  ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │  │  ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.60%  │  │  │↘   ↗↗   0x00007f7dfb190b1b:   mov    0x4(%rsp),%edi               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 141)
          │  │  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.03%  │  │  │    ││   0x00007f7dfb190b1f:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │  │  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
          │  │  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.00%  │  │  │    ││↗  0x00007f7dfb190b23:   mov    %rdi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │  │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@7 (line 81)
   0.02%  │  │  │    │││  0x00007f7dfb190b26:   mov    0x20(%rsp),%rbp
   0.57%  │  │  │    │││  0x00007f7dfb190b2b:   add    $0x28,%rsp
          │  │  │    │││  0x00007f7dfb190b2f:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  │  │    │││  0x00007f7dfb190b36:   ja     0x00007f7dfb190e5d
   0.02%  │  │  │    │││  0x00007f7dfb190b3c:   vzeroupper
   0.57%  │  │  │    │││  0x00007f7dfb190b3f:   ret
   0.00%  │  ↘  │    │││  0x00007f7dfb190b40:   mov    %edi,0x4(%rsp)
   0.05%  │     │    ╰││  0x00007f7dfb190b44:   jmp    0x00007f7dfb190b1b
          │     ↘     ││  0x00007f7dfb190b46:   mov    %edi,0x4(%rsp)
          │           ╰│  0x00007f7dfb190b4a:   jmp    0x00007f7dfb190b1b           ;* unwind (locked if synchronized)
          │            │                                                            ; - java.lang.String::equals@-3
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          ↘            │  0x00007f7dfb190b4c:   mov    %r11,%rdi
                       ╰  0x00007f7dfb190b4f:   jmp    0x00007f7dfb190b23           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@31 (line 142)
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
                          0x00007f7dfb190b51:   mov    %r11,%rdi
....................................................................................................
  83.88%  <total for region 1>

....[Hottest Regions]...............................................................................
  83.88%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 1044
   3.74%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 1044
   2.90%                        <unknown>
   2.45%                        <unknown>
   1.81%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 1084
   0.70%                        <unknown>
   0.20%                kernel  [unknown]
   0.17%                kernel  [unknown]
   0.15%                kernel  [unknown]
   0.13%                kernel  [unknown]
   0.11%             libjvm.so  HeapRegionManager::par_iterate
   0.11%             libc.so.6  __memset_avx2_unaligned_erms
   0.10%                kernel  [unknown]
   0.07%                kernel  [unknown]
   0.06%                kernel  [unknown]
   0.05%             libjvm.so  SpinPause
   0.03%                kernel  [unknown]
   0.03%             libjvm.so  ElfSymbolTable::lookup
   0.03%             libjvm.so  WeakProcessor::Task::work<G1STWIsAliveClosure, G1KeepAliveClosure>
   0.03%             libjvm.so  fileStream::write
   3.25%  <...other 912 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  87.62%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 1044
   6.16%                        <unknown>
   2.63%                kernel  [unknown]
   1.81%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 1084
   0.12%             libc.so.6  __memset_avx2_unaligned_erms
   0.11%             libjvm.so  HeapRegionManager::par_iterate
   0.07%             libjvm.so  WeakProcessor::Task::work<G1STWIsAliveClosure, G1KeepAliveClosure>
   0.05%             libjvm.so  SpinPause
   0.03%             libjvm.so  fileStream::write
   0.03%             libjvm.so  ElfSymbolTable::lookup
   0.03%  ld-linux-x86-64.so.2  __tls_get_addr
   0.02%             libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region
   0.02%             libjvm.so  JVMCIRuntime::new_array_common
   0.02%             libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region
   0.02%                [vdso]  [unknown]
   0.02%             libjvm.so  FreeListAllocator::reset
   0.02%             libjvm.so  HeapRegionClaimer::claim_region
   0.02%             libjvm.so  G1FromCardCache::clear
   0.02%             libjvm.so  InstanceKlass::array_klass
   0.02%             libc.so.6  __vfprintf_internal
   1.14%  <...other 319 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  89.43%        jvmci, level 4
   6.16%
   2.63%                kernel
   1.19%             libjvm.so
   0.37%             libc.so.6
   0.10%   libjvmcicompiler.so
   0.04%           interpreter
   0.03%  ld-linux-x86-64.so.2
   0.02%                [vdso]
   0.01%        hsdis-amd64.so
   0.00%         perf-8541.map
   0.00%           c1, level 3
....................................................................................................
  99.99%  <totals>



# Run complete. Total time: 00:04:34

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

Benchmark                                         Mode  Cnt    Score    Error  Units
EnumValuesLookupBenchmark.cached_enum_values      avgt    5  102.512 ±  3.960  ns/op
EnumValuesLookupBenchmark.cached_enum_values:asm  avgt           NaN             ---
EnumValuesLookupBenchmark.enum_values             avgt    5  181.695 ± 67.215  ns/op
EnumValuesLookupBenchmark.enum_values:asm         avgt           NaN             ---
