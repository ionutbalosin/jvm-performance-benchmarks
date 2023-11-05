# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 47.285 ns/op
# Warmup Iteration   2: 47.910 ns/op
# Warmup Iteration   3: 47.710 ns/op
# Warmup Iteration   4: 47.585 ns/op
# Warmup Iteration   5: 48.117 ns/op
Iteration   1: 48.476 ns/op
Iteration   2: 47.692 ns/op
Iteration   3: 48.037 ns/op
Iteration   4: 48.135 ns/op
Iteration   5: 47.222 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values":
  47.912 ±(99.9%) 1.835 ns/op [Average]
  (min, avg, max) = (47.222, 47.912, 48.476), stdev = 0.476
  CI (99.9%): [46.078, 49.747] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values:·asm":
PrintAssembly processed: 195447 total address lines.
Perf output processed (skipped 58.487 seconds):
 Column 1: cycles (50897 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 739 

                                                                                   ; - java.lang.String::equals@-3
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 152)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
                         0x00007f746aff906d:   mov    %r10d,%r9d
                         0x00007f746aff9070:   call   0x00007f746365c900           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
                         0x00007f746aff9075:   nop
                         0x00007f746aff9076:   test   %eax,%eax
          ╭              0x00007f746aff9078:   jne    0x00007f746aff9192           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 152)
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   0.84%  │              0x00007f746aff907e:   mov    %ebx,%r13d
          │              0x00007f746aff9081:   shl    $0x3,%r13                    ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@1 (line 77)
          │              0x00007f746aff9085:   mov    %r13,0x10(%rsp)
          │              0x00007f746aff908a:   test   %ebx,%ebx
          │              0x00007f746aff908c:   je     0x00007f746aff91a2           ;* unwind (locked if synchronized)
          │                                                                        ; - java.lang.String::equals@-3
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 152)
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   0.78%  │              0x00007f746aff9092:   mov    0x14(,%rbx,8),%esi           ; ImmutableOopMap {rbx=NarrowOop rbp=Oop rsi=NarrowOop r11=Oop r13=Oop [16]=Oop }
          │                                                                        ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 152)
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
          │              0x00007f746aff9099:   mov    0xc(,%rsi,8),%r14d           ; implicit exception: dispatches to 0x00007f746aff92a6
          │              0x00007f746aff90a1:   movsbl 0x10(,%rbx,8),%ebp
          │              0x00007f746aff90a9:   shl    $0x3,%rsi                    ;* unwind (locked if synchronized)
          │                                                                        ; - java.lang.String::equals@-3
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 152)
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   0.77%  │              0x00007f746aff90ad:   mov    %rsi,0x8(%rsp)
          │              0x00007f746aff90b2:   mov    $0x1,%r10d
          │              0x00007f746aff90b8:   nopl   0x0(%rax,%rax,1)
   7.86%  │     ↗↗↗      0x00007f746aff90c0:   cmp    $0x29,%r10d
          │     │││      0x00007f746aff90c4:   jge    0x00007f746aff9213           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@11 (line 151)
          │     │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   0.81%  │     │││      0x00007f746aff90ca:   mov    0x10(%r11,%r10,4),%edi       ; ImmutableOopMap {rbx=NarrowOop rsi=Oop rdi=NarrowOop r11=Oop [8]=Oop [16]=Oop }
          │     │││                                                                ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │     │││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 151)
          │     │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   0.96%  │     │││      0x00007f746aff90cf:   mov    0x14(,%rdi,8),%edx           ; implicit exception: dispatches to 0x00007f746aff92c6
          │     │││                                                                ; ImmutableOopMap {rdx=NarrowOop rbx=NarrowOop rsi=Oop rdi=NarrowOop r11=Oop [8]=Oop [16]=Oop }
          │     │││                                                                ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │     │││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 151)
          │     │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   8.88%  │     │││      0x00007f746aff90d6:   movsbl 0x10(,%rdx,8),%ecx           ; implicit exception: dispatches to 0x00007f746aff92e6
  11.74%  │     │││      0x00007f746aff90de:   mov    0x14(,%rdx,8),%r8d
   0.41%  │     │││      0x00007f746aff90e6:   cmp    %ebx,%edx
          │╭    │││      0x00007f746aff90e8:   je     0x00007f746aff9186           ;* unwind (locked if synchronized)
          ││    │││                                                                ; - java.lang.String::equals@-3
          ││    │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 152)
          ││    │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   0.02%  ││    │││      0x00007f746aff90ee:   mov    %r10d,%eax
   6.45%  ││    │││      0x00007f746aff90f1:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││    │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@34 (line 151)
          ││    │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   9.13%  ││    │││      0x00007f746aff90f3:   cmp    %bpl,%cl
          ││╭   │││      0x00007f746aff90f6:   jne    0x00007f746aff9155           ; ImmutableOopMap {rbx=NarrowOop rsi=Oop rdi=NarrowOop r8=NarrowOop r11=Oop [8]=Oop [16]=Oop }
          │││   │││                                                                ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │││   │││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 151)
          │││   │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   0.38%  │││   │││      0x00007f746aff90fc:   mov    0xc(,%r8,8),%r9d             ; implicit exception: dispatches to 0x00007f746aff9306
   7.06%  │││   │││      0x00007f746aff9104:   cmp    %r14d,%r9d
          │││╭  │││      0x00007f746aff9107:   jne    0x00007f746aff915d
   0.77%  ││││  │││      0x00007f746aff910d:   test   %r14d,%r14d
          ││││╭ │││      0x00007f746aff9110:   je     0x00007f746aff918c
          │││││ │││      0x00007f746aff9116:   mov    %edi,0x4(%rsp)
   0.01%  │││││ │││      0x00007f746aff911a:   shl    $0x3,%r8
          │││││ │││      0x00007f746aff911e:   mov    %rsi,%r10
   0.80%  │││││ │││      0x00007f746aff9121:   mov    $0x10,%rdx
          │││││ │││      0x00007f746aff9128:   mov    %r8,%rcx
   0.00%  │││││ │││      0x00007f746aff912b:   mov    $0x10,%r8                    ;* unwind (locked if synchronized)
          │││││ │││                                                                ; - java.lang.String::equals@-3
          │││││ │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 152)
          │││││ │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
          │││││ │││      0x00007f746aff9132:   mov    %eax,%r13d
   0.85%  │││││ │││      0x00007f746aff9135:   call   0x00007f746365c900           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.79%  │││││ │││      0x00007f746aff913a:   nop
          │││││ │││      0x00007f746aff913b:   nopl   0x0(%rax,%rax,1)
          │││││ │││      0x00007f746aff9140:   test   %eax,%eax
          │││││╭│││      0x00007f746aff9142:   jne    0x00007f746aff9165           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 152)
          │││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
          │││││││││      0x00007f746aff9148:   mov    %r13d,%r10d
   0.83%  │││││││││      0x00007f746aff914b:   mov    0x8(%rsp),%rsi
          ││││││╰││      0x00007f746aff9150:   jmp    0x00007f746aff90c0           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 151)
          ││││││ ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
          ││↘│││ ││      0x00007f746aff9155:   mov    %eax,%r10d
          ││ │││ ╰│      0x00007f746aff9158:   jmp    0x00007f746aff90c0
   7.80%  ││ ↘││  │      0x00007f746aff915d:   mov    %eax,%r10d
   6.95%  ││  ││  ╰      0x00007f746aff9160:   jmp    0x00007f746aff90c0           ;* unwind (locked if synchronized)
          ││  ││                                                                   ; - java.lang.String::equals@-3
          ││  ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 152)
          ││  ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
          ││  │↘   ↗↗    0x00007f746aff9165:   mov    0x4(%rsp),%edi               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││  │    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 152)
          ││  │    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   0.00%  ││  │    ││    0x00007f746aff9169:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││  │    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 151)
          ││  │    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
          ││  │    ││↗↗  0x00007f746aff916d:   mov    %rdi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          ││  │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@7 (line 77)
   0.77%  ││  │    ││││  0x00007f746aff9170:   mov    0x20(%rsp),%rbp
   0.01%  ││  │    ││││  0x00007f746aff9175:   add    $0x28,%rsp
          ││  │    ││││  0x00007f746aff9179:   mov    0x348(%r15),%rcx
          ││  │    ││││  0x00007f746aff9180:   test   %eax,(%rcx)                  ;   {poll_return}
   0.73%  ││  │    ││││  0x00007f746aff9182:   vzeroupper 
   0.83%  ││  │    ││││  0x00007f746aff9185:   ret    
   0.00%  │↘  │    ││││  0x00007f746aff9186:   mov    %edi,0x4(%rsp)
   0.79%  │   │    ╰│││  0x00007f746aff918a:   jmp    0x00007f746aff9165
          │   ↘     │││  0x00007f746aff918c:   mov    %edi,0x4(%rsp)
          │         ╰││  0x00007f746aff9190:   jmp    0x00007f746aff9165
          ↘          ││  0x00007f746aff9192:   mov    %rbp,%rdi
                     ╰│  0x00007f746aff9195:   jmp    0x00007f746aff916d
                      │  0x00007f746aff9197:   mov    %rbp,%rdi
                      ╰  0x00007f746aff919a:   jmp    0x00007f746aff916d
                         0x00007f746aff919c:   mov    %rbp,%rdi
                         0x00007f746aff919f:   nop
                         0x00007f746aff91a0:   jmp    0x00007f746aff916d           ;* unwind (locked if synchronized)
                                                                                   ; - java.lang.String::equals@-3
....................................................................................................
  78.01%  <total for region 1>

....[Hottest Regions]...............................................................................
  78.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 739 
   9.89%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 739 
   4.62%                       <unknown> 
   2.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 763 
   1.55%                       <unknown> 
   1.06%                       <unknown> 
   0.70%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.17%  <...other 365 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  87.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 739 
   7.27%                       <unknown> 
   2.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 763 
   2.08%               kernel  [unknown] 
   0.05%         libc-2.31.so  [unknown] 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%            libjvm.so  Monitor::wait_without_safepoint_check 
   0.17%  <...other 71 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.28%       jvmci, level 4
   7.27%                     
   2.08%               kernel
   0.13%            libjvm.so
   0.13%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values

# Run progress: 50.00% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 84.642 ns/op
# Warmup Iteration   2: 83.924 ns/op
# Warmup Iteration   3: 84.121 ns/op
# Warmup Iteration   4: 83.924 ns/op
# Warmup Iteration   5: 83.745 ns/op
Iteration   1: 83.779 ns/op
Iteration   2: 83.909 ns/op
Iteration   3: 83.826 ns/op
Iteration   4: 84.042 ns/op
Iteration   5: 83.830 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values":
  83.877 ±(99.9%) 0.398 ns/op [Average]
  (min, avg, max) = (83.779, 83.877, 84.042), stdev = 0.103
  CI (99.9%): [83.479, 84.275] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values:·asm":
PrintAssembly processed: 191088 total address lines.
Perf output processed (skipped 58.447 seconds):
 Column 1: cycles (50515 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues, version 2, compile id 732 

                           0x00007efe5aff8b10:   mov    $0x10,%rdx
                           0x00007efe5aff8b17:   mov    $0x10,%r8                    ;* unwind (locked if synchronized)
                                                                                     ; - java.lang.String::equals@-3
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
                           0x00007efe5aff8b1e:   xchg   %ax,%ax
                           0x00007efe5aff8b20:   call   0x00007efe5365c900           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
                           0x00007efe5aff8b25:   nop
                           0x00007efe5aff8b26:   test   %eax,%eax
          ╭                0x00007efe5aff8b28:   jne    0x00007efe5aff8e05           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 143)
   0.43%  │                0x00007efe5aff8b2e:   test   %r11,%r11
          │                0x00007efe5aff8b31:   je     0x00007efe5aff8e14           ;* unwind (locked if synchronized)
          │                                                                          ; - java.lang.String::equals@-3
          │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
          │                0x00007efe5aff8b37:   mov    0x14(%r11),%r10d             ; ImmutableOopMap {r10=NarrowOop r11=Oop [16]=Oop }
          │                                                                          ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 143)
          │                0x00007efe5aff8b3b:   mov    0xc(,%r10,8),%ebx            ; implicit exception: dispatches to 0x00007efe5aff9109
   0.00%  │                0x00007efe5aff8b43:   mov    0x108(%r15),%rsi
   0.46%  │                0x00007efe5aff8b4a:   lea    0xb8(%rsi),%rdx
   0.00%  │                0x00007efe5aff8b51:   cmp    0x118(%r15),%rdx
          │                0x00007efe5aff8b58:   ja     0x00007efe5aff8e9a
          │                0x00007efe5aff8b5e:   mov    %rdx,0x108(%r15)
          │                0x00007efe5aff8b65:   prefetchw 0x178(%rsi)
   0.44%  │                0x00007efe5aff8b6c:   prefetchw 0x1b8(%rsi)
   0.16%  │                0x00007efe5aff8b73:   prefetchw 0x1f8(%rsi)
   0.24%  │                0x00007efe5aff8b7a:   prefetchw 0x238(%rsi)
   0.25%  │                0x00007efe5aff8b81:   movq   $0x1,(%rsi)
   0.40%  │                0x00007efe5aff8b88:   movl   $0xc26020,0x8(%rsi)          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[])}
          │                0x00007efe5aff8b8f:   movl   $0x29,0xc(%rsi)
   0.02%  │                0x00007efe5aff8b96:   mov    $0x10,%rdx
   0.03%  │                0x00007efe5aff8b9d:   data16 xchg %ax,%ax
   0.36%  │╭               0x00007efe5aff8ba0:   jmp    0x00007efe5aff8bcc
          ││               0x00007efe5aff8ba5:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││               0x00007efe5aff8bb0:   data16 data16 xchg %ax,%ax
          ││               0x00007efe5aff8bb4:   nopl   0x0(%rax,%rax,1)
          ││               0x00007efe5aff8bbc:   data16 data16 xchg %ax,%ax
   9.09%  ││↗              0x00007efe5aff8bc0:   movq   $0x0,(%rsi,%rdx,1)
   0.61%  │││              0x00007efe5aff8bc8:   lea    0x8(%rdx),%rdx
   0.24%  │↘│              0x00007efe5aff8bcc:   cmp    $0xb8,%rdx
          │ ╰              0x00007efe5aff8bd3:   jb     0x00007efe5aff8bc0           ;*getstatic $VALUES {reexecute=0 rethrow=0 return_oop=0}
          │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@0 (line 86)
          │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 142)
   0.01%  │                0x00007efe5aff8bd5:   mov    %rsi,%rbp
   0.47%  │                0x00007efe5aff8bd8:   movl   $0xffde567a,0xb0(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2b3d0})}
   0.03%  │                0x00007efe5aff8be2:   movl   $0xffde5669,0xac(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2b348})}
   0.02%  │                0x00007efe5aff8bec:   movl   $0xffde565a,0xa8(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2b2d0})}
   0.47%  │                0x00007efe5aff8bf6:   movl   $0xffde5649,0xa4(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2b248})}
   0.63%  │                0x00007efe5aff8c00:   movl   $0xffde5638,0xa0(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2b1c0})}
   0.21%  │                0x00007efe5aff8c0a:   movl   $0xffde5629,0x9c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2b148})}
   0.04%  │                0x00007efe5aff8c14:   movl   $0xffde561a,0x98(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2b0d0})}
   0.05%  │                0x00007efe5aff8c1e:   movl   $0xffde560b,0x94(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2b058})}
   1.22%  │                0x00007efe5aff8c28:   movl   $0xffde55fc,0x90(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2afe0})}
   0.41%  │                0x00007efe5aff8c32:   movl   $0xffde55ed,0x8c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2af68})}
   0.05%  │                0x00007efe5aff8c3c:   movl   $0xffde55de,0x88(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2aef0})}
   0.05%  │                0x00007efe5aff8c46:   movl   $0xffde55cf,0x84(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2ae78})}
   1.22%  │                0x00007efe5aff8c50:   movl   $0xffde55be,0x80(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2adf0})}
   0.39%  │                0x00007efe5aff8c5a:   movl   $0xffde55ad,0x7c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2ad68})}
   0.04%  │                0x00007efe5aff8c61:   movl   $0xffde559e,0x78(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2acf0})}
   0.04%  │                0x00007efe5aff8c68:   movl   $0xffde558f,0x74(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2ac78})}
   1.27%  │                0x00007efe5aff8c6f:   movl   $0xffde5580,0x70(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2ac00})}
   0.42%  │                0x00007efe5aff8c76:   movl   $0xffde556f,0x6c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2ab78})}
   0.05%  │                0x00007efe5aff8c7d:   movl   $0xffde555e,0x68(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2aaf0})}
   0.05%  │                0x00007efe5aff8c84:   movl   $0xffde554d,0x64(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2aa68})}
   1.29%  │                0x00007efe5aff8c8b:   movl   $0xffde553e,0x60(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a9f0})}
   0.43%  │                0x00007efe5aff8c92:   movl   $0xffde552f,0x5c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a978})}
   0.05%  │                0x00007efe5aff8c99:   movl   $0xffde5520,0x58(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a900})}
   0.06%  │                0x00007efe5aff8ca0:   movl   $0xffde5511,0x54(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a888})}
   1.30%  │                0x00007efe5aff8ca7:   movl   $0xffde5502,0x50(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a810})}
   0.45%  │                0x00007efe5aff8cae:   movl   $0xffde54f3,0x4c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a798})}
   0.04%  │                0x00007efe5aff8cb5:   movl   $0xffde54e4,0x48(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a720})}
   0.05%  │                0x00007efe5aff8cbc:   movl   $0xffde54d5,0x44(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a6a8})}
   1.27%  │                0x00007efe5aff8cc3:   movl   $0xffde54c6,0x40(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a630})}
   0.40%  │                0x00007efe5aff8cca:   movl   $0xffde54b7,0x3c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a5b8})}
   0.05%  │                0x00007efe5aff8cd1:   movl   $0xffde54a8,0x38(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a540})}
   0.07%  │                0x00007efe5aff8cd8:   movl   $0xffde5499,0x34(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a4c8})}
   1.31%  │                0x00007efe5aff8cdf:   movl   $0xffde5488,0x30(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a440})}
   0.43%  │                0x00007efe5aff8ce6:   movl   $0xffde5479,0x2c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a3c8})}
   0.04%  │                0x00007efe5aff8ced:   movl   $0xffde546a,0x28(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a350})}
   0.05%  │                0x00007efe5aff8cf4:   movl   $0xffde5461,0x24(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a308})}
   1.28%  │                0x00007efe5aff8cfb:   movl   $0xffde5452,0x20(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a290})}
   0.36%  │                0x00007efe5aff8d02:   movl   $0xffde5443,0x1c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a218})}
   0.05%  │                0x00007efe5aff8d09:   movl   $0xffde5432,0x18(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a190})}
   0.05%  │                0x00007efe5aff8d10:   movl   $0xffde5421,0x14(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a108})}
   1.21%  │                0x00007efe5aff8d17:   movl   $0xffde5412,0x10(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef2a090})}
   0.47%  │                0x00007efe5aff8d1e:   movsbl 0x10(%r11),%r13d
   0.05%  │                0x00007efe5aff8d23:   mov    %r10d,%r14d
          │                0x00007efe5aff8d26:   shl    $0x3,%r14                    ;* unwind (locked if synchronized)
          │                                                                          ; - java.lang.String::equals@-3
          │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
   0.02%  │                0x00007efe5aff8d2a:   mov    $0x1,%r10d
   9.03%  │       ↗↗↗      0x00007efe5aff8d30:   cmp    $0x29,%r10d
          │       │││      0x00007efe5aff8d34:   jge    0x00007efe5aff9099           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@11 (line 142)
   0.02%  │       │││      0x00007efe5aff8d3a:   mov    0x10(%rbp,%r10,4),%edi       ; ImmutableOopMap {rbp=Oop rdi=NarrowOop r11=Oop r14=Oop [16]=Oop }
          │       │││                                                                ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │       │││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 142)
   0.08%  │       │││      0x00007efe5aff8d3f:   mov    0x14(,%rdi,8),%esi           ; implicit exception: dispatches to 0x00007efe5aff9126
          │       │││                                                                ; ImmutableOopMap {rbp=Oop rsi=NarrowOop rdi=NarrowOop r11=Oop r14=Oop [16]=Oop }
          │       │││                                                                ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │       │││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 142)
   1.85%  │       │││      0x00007efe5aff8d46:   movsbl 0x10(,%rsi,8),%edx           ; implicit exception: dispatches to 0x00007efe5aff9146
  11.34%  │       │││      0x00007efe5aff8d4e:   mov    0x14(,%rsi,8),%ecx           ;* unwind (locked if synchronized)
          │       │││                                                                ; - java.lang.String::equals@-3
          │       │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
   0.00%  │       │││      0x00007efe5aff8d55:   shl    $0x3,%rsi                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@21 (line 143)
   0.05%  │       │││      0x00007efe5aff8d59:   nopl   0x0(%rax)
   0.14%  │       │││      0x00007efe5aff8d60:   cmp    %r11,%rsi
          │  ╭    │││      0x00007efe5aff8d63:   je     0x00007efe5aff8df9           ;* unwind (locked if synchronized)
          │  │    │││                                                                ; - java.lang.String::equals@-3
          │  │    │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
   9.12%  │  │    │││      0x00007efe5aff8d69:   mov    %r10d,%eax
          │  │    │││      0x00007efe5aff8d6c:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │    │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@34 (line 142)
   0.05%  │  │    │││      0x00007efe5aff8d6e:   cmp    %r13b,%dl
          │  │╭   │││      0x00007efe5aff8d71:   jne    0x00007efe5aff8dc8           ; ImmutableOopMap {rcx=NarrowOop rbp=Oop rdi=NarrowOop r11=Oop r14=Oop [16]=Oop }
          │  ││   │││                                                                ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  ││   │││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 142)
   0.17%  │  ││   │││      0x00007efe5aff8d77:   mov    0xc(,%rcx,8),%r9d            ; implicit exception: dispatches to 0x00007efe5aff9166
  11.78%  │  ││   │││      0x00007efe5aff8d7f:   nop
          │  ││   │││      0x00007efe5aff8d80:   cmp    %ebx,%r9d
          │  ││╭  │││      0x00007efe5aff8d83:   jne    0x00007efe5aff8dd0
   0.47%  │  │││  │││      0x00007efe5aff8d89:   test   %ebx,%ebx
          │  │││╭ │││      0x00007efe5aff8d8b:   je     0x00007efe5aff8dff
   0.00%  │  ││││ │││      0x00007efe5aff8d91:   mov    %edi,0xc(%rsp)
          │  ││││ │││      0x00007efe5aff8d95:   shl    $0x3,%rcx
          │  ││││ │││      0x00007efe5aff8d99:   mov    %r14,%rsi
   0.47%  │  ││││ │││      0x00007efe5aff8d9c:   mov    $0x10,%rdx
          │  ││││ │││      0x00007efe5aff8da3:   mov    $0x10,%r8                    ;* unwind (locked if synchronized)
          │  ││││ │││                                                                ; - java.lang.String::equals@-3
          │  ││││ │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
          │  ││││ │││      0x00007efe5aff8daa:   mov    %eax,%r11d
          │  ││││ │││      0x00007efe5aff8dad:   call   0x00007efe5365c900           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.43%  │  ││││ │││      0x00007efe5aff8db2:   nop
          │  ││││ │││      0x00007efe5aff8db3:   test   %eax,%eax
          │  ││││╭│││      0x00007efe5aff8db5:   jne    0x00007efe5aff8dd8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 143)
          │  ││││││││      0x00007efe5aff8dbb:   mov    %r11d,%r10d
          │  ││││││││      0x00007efe5aff8dbe:   mov    0x10(%rsp),%r11
   0.50%  │  │││││╰││      0x00007efe5aff8dc3:   jmp    0x00007efe5aff8d30           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │  │││││ ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 142)
          │  │↘│││ ││      0x00007efe5aff8dc8:   mov    %eax,%r10d
          │  │ │││ ╰│      0x00007efe5aff8dcb:   jmp    0x00007efe5aff8d30
   1.04%  │  │ ↘││  │      0x00007efe5aff8dd0:   mov    %eax,%r10d
   0.10%  │  │  ││  ╰      0x00007efe5aff8dd3:   jmp    0x00007efe5aff8d30           ;* unwind (locked if synchronized)
          │  │  ││                                                                   ; - java.lang.String::equals@-3
          │  │  ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
   0.45%  │  │  │↘   ↗↗    0x00007efe5aff8dd8:   mov    0xc(%rsp),%edi               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │  │    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 143)
          │  │  │    ││    0x00007efe5aff8ddc:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │  │  │    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 142)
          │  │  │    ││↗↗  0x00007efe5aff8de0:   mov    %rdi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │  │  │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@33 (line 144)
          │  │  │    ││││  0x00007efe5aff8de3:   mov    0x20(%rsp),%rbp
   0.47%  │  │  │    ││││  0x00007efe5aff8de8:   add    $0x28,%rsp
          │  │  │    ││││  0x00007efe5aff8dec:   mov    0x348(%r15),%rcx
          │  │  │    ││││  0x00007efe5aff8df3:   test   %eax,(%rcx)                  ;   {poll_return}
   0.02%  │  │  │    ││││  0x00007efe5aff8df5:   vzeroupper 
   0.43%  │  │  │    ││││  0x00007efe5aff8df8:   ret    
   0.39%  │  ↘  │    ││││  0x00007efe5aff8df9:   mov    %edi,0xc(%rsp)
          │     │    ╰│││  0x00007efe5aff8dfd:   jmp    0x00007efe5aff8dd8
          │     ↘     │││  0x00007efe5aff8dff:   mov    %edi,0xc(%rsp)
          │           ╰││  0x00007efe5aff8e03:   jmp    0x00007efe5aff8dd8
          ↘            ││  0x00007efe5aff8e05:   mov    %rbx,%rdi
                       ╰│  0x00007efe5aff8e08:   jmp    0x00007efe5aff8de0
                        │  0x00007efe5aff8e0a:   mov    %rbx,%rdi
                        ╰  0x00007efe5aff8e0d:   jmp    0x00007efe5aff8de0
                           0x00007efe5aff8e0f:   mov    %rbx,%rdi
                           0x00007efe5aff8e12:   jmp    0x00007efe5aff8de0           ;* unwind (locked if synchronized)
                                                                                     ; - java.lang.String::equals@-3
....................................................................................................
  79.03%  <total for region 1>

....[Hottest Regions]...............................................................................
  79.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues, version 2, compile id 732 
   6.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 757 
   4.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 733 
   4.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues, version 2, compile id 732 
   2.21%                       <unknown> 
   1.39%                       <unknown> 
   0.43%                       <unknown> 
   0.16%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%                       <unknown> 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%                       <unknown> 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   1.40%  <...other 401 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  83.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues, version 2, compile id 732 
   6.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 757 
   4.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 733 
   4.26%                       <unknown> 
   1.04%               kernel  [unknown] 
   0.04%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%            libjvm.so  InstanceKlass::allocate_objArray 
   0.03%            libjvm.so  JVMCIRuntime::new_array_common 
   0.02%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%            libjvm.so  stringStream::write 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   0.02%            libjvm.so  MemAllocator::allocate_inside_tlab_slow 
   0.02%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.02%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ClassLoaderData::holder_phantom 
   0.50%  <...other 144 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.91%       jvmci, level 4
   4.26%                     
   1.04%               kernel
   0.61%            libjvm.so
   0.07%         libc-2.31.so
   0.04%           ld-2.31.so
   0.04%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:42

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
EnumValuesLookupBenchmark.cached_enum_values       avgt    5  47.912 ± 1.835  ns/op
EnumValuesLookupBenchmark.cached_enum_values:·asm  avgt          NaN            ---
EnumValuesLookupBenchmark.enum_values              avgt    5  83.877 ± 0.398  ns/op
EnumValuesLookupBenchmark.enum_values:·asm         avgt          NaN            ---
