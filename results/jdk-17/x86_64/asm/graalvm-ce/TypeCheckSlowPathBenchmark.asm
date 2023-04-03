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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 16)

# Run progress: 0.00% complete, ETA 00:08:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 20.242 ns/op
# Warmup Iteration   2: 17.026 ns/op
# Warmup Iteration   3: 18.738 ns/op
# Warmup Iteration   4: 16.701 ns/op
# Warmup Iteration   5: 16.718 ns/op
Iteration   1: 16.723 ns/op
Iteration   2: 16.697 ns/op
Iteration   3: 16.816 ns/op
Iteration   4: 16.772 ns/op
Iteration   5: 16.710 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  16.743 ±(99.9%) 0.190 ns/op [Average]
  (min, avg, max) = (16.697, 16.743, 16.816), stdev = 0.049
  CI (99.9%): [16.553, 16.933] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 197188 total address lines.
Perf output processed (skipped 58.929 seconds):
 Column 1: cycles (50849 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 781 

                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
                    0x00007fd2270008de:   xchg   %ax,%ax
           ↗↗    ↗  0x00007fd2270008e0:   cmp    $0xc265e0,%r9d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
           ││    │  0x00007fd2270008e7:   jne    0x00007fd227000a6b           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
           ││    │  0x00007fd2270008ed:   mov    $0x1,%r9d                    ;* unwind (locked if synchronized)
           ││    │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@20 (line 232)
   0.08%   ││   ↗│  0x00007fd2270008f3:   inc    %r8                          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@26 (line 233)
           ││   ││  0x00007fd2270008f6:   data16 nopw 0x0(%rax,%rax,1)
   2.19%   ││   ││  0x00007fd227000900:   cmpb   $0x0,0x94(%rsi)
          ╭││   ││  0x00007fd227000907:   jne    0x00007fd227000992           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
   0.12%  │││   ││  0x00007fd22700090d:   mov    0x348(%r15),%r9              ; ImmutableOopMap {rdx=Oop rsi=Oop r11=Oop [24]=Oop [32]=Oop }
          │││   ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
          │││   ││  0x00007fd227000914:   test   %eax,(%r9)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
          │││   ││                                                            ;   {poll}
   2.10%  │││   ││  0x00007fd227000917:   mov    0x10(%r11),%r9d              ; ImmutableOopMap {rdx=Oop rsi=Oop r11=Oop [24]=Oop [32]=Oop }
          │││   ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
          │││   ││  0x00007fd22700091b:   mov    0x8(,%r9,8),%r9d             ; implicit exception: dispatches to 0x00007fd227000b26
   0.11%  │││   ││  0x00007fd227000923:   movabs $0x800000000,%rcx
          │││   ││  0x00007fd22700092d:   lea    (%rcx,%r9,1),%rbx
   2.06%  │││   ││  0x00007fd227000931:   cmp    0x20(%rbx),%r10
          │╰│   ││  0x00007fd227000935:   je     0x00007fd2270008e0
   0.04%  │ │   ││  0x00007fd227000937:   nopw   0x0(%rax,%rax,1)
   0.10%  │ │   ││  0x00007fd227000940:   cmp    $0x157e8,%r9d                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
          │ ╰   ││  0x00007fd227000947:   je     0x00007fd2270008e0
          │     ││  0x00007fd227000949:   mov    0x28(%rbx),%rcx
   2.13%  │     ││  0x00007fd22700094d:   mov    (%rcx),%edi
   0.45%  │     ││  0x00007fd22700094f:   mov    $0x0,%eax
   0.08%  │  ╭  ││  0x00007fd227000954:   jmp    0x00007fd22700097a
          │  │  ││  0x00007fd227000959:   nopl   0x0(%rax)
  41.37%  │  │ ↗││  0x00007fd227000960:   mov    %eax,%ebp
          │  │ │││  0x00007fd227000962:   shl    $0x3,%ebp
   1.69%  │  │ │││  0x00007fd227000965:   lea    0x8(%rbp),%ebp
          │  │ │││  0x00007fd227000968:   movslq %ebp,%rbp
  41.25%  │  │ │││  0x00007fd22700096b:   mov    (%rcx,%rbp,1),%rbp
   0.04%  │  │ │││  0x00007fd22700096f:   cmp    %rbp,%r10
          │  │╭│││  0x00007fd227000972:   je     0x00007fd227000989
   1.93%  │  │││││  0x00007fd227000978:   inc    %eax
          │  ↘││││  0x00007fd22700097a:   cmp    %eax,%edi
   0.00%  │   │╰││  0x00007fd22700097c:   jg     0x00007fd227000960
   2.06%  │   │ ││  0x00007fd22700097e:   mov    $0x0,%r9d
          │   │ ╰│  0x00007fd227000984:   jmp    0x00007fd2270008f3
          │   ↘  │  0x00007fd227000989:   mov    %r10,0x20(%rbx)
          │      ╰  0x00007fd22700098d:   jmp    0x00007fd2270008e0           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 109)
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
          ↘         0x00007fd227000992:   mov    %r8,0x28(%rsp)
                    0x00007fd227000997:   call   0x00007fd23e86e6f0           ;   {runtime_call os::javaTimeNanos()}
                    0x00007fd22700099c:   nop
                    0x00007fd22700099d:   mov    0x20(%rsp),%rdx
....................................................................................................
  97.80%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 781 
   0.84%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.83%  <...other 265 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 781 
   1.92%               kernel  [unknown] 
   0.02%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%            libjvm.so  defaultStream::write 
   0.00%            libjvm.so  WatcherThread::sleep 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%         libc-2.31.so  _IO_fwrite 
   0.13%  <...other 64 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.80%       jvmci, level 4
   1.92%               kernel
   0.13%            libjvm.so
   0.07%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.02%                     
   0.02%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.00%       perf-47732.map
   0.00%          interpreter
   0.00%           ld-2.31.so
   0.00%               [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 32)

# Run progress: 20.00% complete, ETA 00:07:30
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 33.049 ns/op
# Warmup Iteration   2: 32.764 ns/op
# Warmup Iteration   3: 32.513 ns/op
# Warmup Iteration   4: 29.330 ns/op
# Warmup Iteration   5: 29.318 ns/op
Iteration   1: 29.321 ns/op
Iteration   2: 29.339 ns/op
Iteration   3: 29.338 ns/op
Iteration   4: 29.323 ns/op
Iteration   5: 29.312 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  29.327 ±(99.9%) 0.044 ns/op [Average]
  (min, avg, max) = (29.312, 29.327, 29.339), stdev = 0.011
  CI (99.9%): [29.283, 29.371] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 199572 total address lines.
Perf output processed (skipped 58.904 seconds):
 Column 1: cycles (50951 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 5, compile id 771 

                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
                    0x00007f413afff8de:   xchg   %ax,%ax
           ↗↗    ↗  0x00007f413afff8e0:   cmp    $0xc265e0,%r9d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
           ││    │  0x00007f413afff8e7:   jne    0x00007f413afffa6b           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
           ││    │  0x00007f413afff8ed:   mov    $0x1,%r9d                    ;* unwind (locked if synchronized)
           ││    │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@20 (line 232)
   0.19%   ││   ↗│  0x00007f413afff8f3:   inc    %r8                          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@26 (line 233)
           ││   ││  0x00007f413afff8f6:   data16 nopw 0x0(%rax,%rax,1)
   1.20%   ││   ││  0x00007f413afff900:   cmpb   $0x0,0x94(%rsi)
          ╭││   ││  0x00007f413afff907:   jne    0x00007f413afff992           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
   0.16%  │││   ││  0x00007f413afff90d:   mov    0x348(%r15),%r9              ; ImmutableOopMap {rdx=Oop rsi=Oop r11=Oop [24]=Oop [32]=Oop }
          │││   ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
          │││   ││  0x00007f413afff914:   test   %eax,(%r9)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
          │││   ││                                                            ;   {poll}
   1.16%  │││   ││  0x00007f413afff917:   mov    0x10(%r11),%r9d              ; ImmutableOopMap {rdx=Oop rsi=Oop r11=Oop [24]=Oop [32]=Oop }
          │││   ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
   0.00%  │││   ││  0x00007f413afff91b:   mov    0x8(,%r9,8),%r9d             ; implicit exception: dispatches to 0x00007f413afffb26
   0.19%  │││   ││  0x00007f413afff923:   movabs $0x800000000,%rcx
          │││   ││  0x00007f413afff92d:   lea    (%rcx,%r9,1),%rbx
   1.12%  │││   ││  0x00007f413afff931:   cmp    0x20(%rbx),%r10
          │╰│   ││  0x00007f413afff935:   je     0x00007f413afff8e0
   0.07%  │ │   ││  0x00007f413afff937:   nopw   0x0(%rax,%rax,1)
   0.16%  │ │   ││  0x00007f413afff940:   cmp    $0x157e8,%r9d                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
          │ ╰   ││  0x00007f413afff947:   je     0x00007f413afff8e0
          │     ││  0x00007f413afff949:   mov    0x28(%rbx),%rcx
   1.00%  │     ││  0x00007f413afff94d:   mov    (%rcx),%edi
   0.87%  │     ││  0x00007f413afff94f:   mov    $0x0,%eax
   0.06%  │  ╭  ││  0x00007f413afff954:   jmp    0x00007f413afff97a
          │  │  ││  0x00007f413afff959:   nopl   0x0(%rax)
  40.01%  │  │ ↗││  0x00007f413afff960:   mov    %eax,%ebp
          │  │ │││  0x00007f413afff962:   shl    $0x3,%ebp
   5.17%  │  │ │││  0x00007f413afff965:   lea    0x8(%rbp),%ebp
          │  │ │││  0x00007f413afff968:   movslq %ebp,%rbp
  40.12%  │  │ │││  0x00007f413afff96b:   mov    (%rcx,%rbp,1),%rbp
   0.03%  │  │ │││  0x00007f413afff96f:   cmp    %rbp,%r10
   0.00%  │  │╭│││  0x00007f413afff972:   je     0x00007f413afff989
   5.00%  │  │││││  0x00007f413afff978:   inc    %eax
          │  ↘││││  0x00007f413afff97a:   cmp    %eax,%edi
   0.00%  │   │╰││  0x00007f413afff97c:   jg     0x00007f413afff960
   1.10%  │   │ ││  0x00007f413afff97e:   mov    $0x0,%r9d
          │   │ ╰│  0x00007f413afff984:   jmp    0x00007f413afff8f3
          │   ↘  │  0x00007f413afff989:   mov    %r10,0x20(%rbx)
          │      ╰  0x00007f413afff98d:   jmp    0x00007f413afff8e0           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 109)
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
          ↘         0x00007f413afff992:   mov    %r8,0x28(%rsp)
                    0x00007f413afff997:   call   0x00007f41538736f0           ;   {runtime_call os::javaTimeNanos()}
                    0x00007f413afff99c:   nop
                    0x00007f413afff99d:   mov    0x20(%rsp),%rdx
....................................................................................................
  97.63%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.63%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 5, compile id 771 
   0.56%               kernel  [unknown] 
   0.16%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.98%  <...other 311 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.63%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 5, compile id 771 
   1.91%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  os::elapsed_counter 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  _IO_fflush 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.21%  <...other 79 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.63%       jvmci, level 4
   1.91%               kernel
   0.19%            libjvm.so
   0.11%         libc-2.31.so
   0.06%                     
   0.02%           ld-2.31.so
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.02%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%               [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 64)

# Run progress: 40.00% complete, ETA 00:05:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 61.196 ns/op
# Warmup Iteration   2: 54.167 ns/op
# Warmup Iteration   3: 65.836 ns/op
# Warmup Iteration   4: 59.437 ns/op
# Warmup Iteration   5: 54.100 ns/op
Iteration   1: 54.111 ns/op
Iteration   2: 54.391 ns/op
Iteration   3: 54.120 ns/op
Iteration   4: 54.112 ns/op
Iteration   5: 54.123 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  54.171 ±(99.9%) 0.473 ns/op [Average]
  (min, avg, max) = (54.111, 54.171, 54.391), stdev = 0.123
  CI (99.9%): [53.698, 54.645] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 203754 total address lines.
Perf output processed (skipped 59.044 seconds):
 Column 1: cycles (51019 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 7, compile id 796 

                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
                    0x00007f7827001ade:   xchg   %ax,%ax
           ↗↗    ↗  0x00007f7827001ae0:   cmp    $0xc265e0,%r9d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
           ││    │  0x00007f7827001ae7:   jne    0x00007f7827001c6b           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
           ││    │  0x00007f7827001aed:   mov    $0x1,%r9d                    ;* unwind (locked if synchronized)
           ││    │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@20 (line 232)
   0.18%   ││   ↗│  0x00007f7827001af3:   inc    %r8                          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@26 (line 233)
           ││   ││  0x00007f7827001af6:   data16 nopw 0x0(%rax,%rax,1)
   0.56%   ││   ││  0x00007f7827001b00:   cmpb   $0x0,0x94(%rsi)
   0.00%  ╭││   ││  0x00007f7827001b07:   jne    0x00007f7827001b92           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
   0.18%  │││   ││  0x00007f7827001b0d:   mov    0x348(%r15),%r9              ; ImmutableOopMap {rdx=Oop rsi=Oop r11=Oop [24]=Oop [32]=Oop }
          │││   ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
          │││   ││  0x00007f7827001b14:   test   %eax,(%r9)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
          │││   ││                                                            ;   {poll}
   0.54%  │││   ││  0x00007f7827001b17:   mov    0x10(%r11),%r9d              ; ImmutableOopMap {rdx=Oop rsi=Oop r11=Oop [24]=Oop [32]=Oop }
          │││   ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
          │││   ││  0x00007f7827001b1b:   mov    0x8(,%r9,8),%r9d             ; implicit exception: dispatches to 0x00007f7827001d26
   0.15%  │││   ││  0x00007f7827001b23:   movabs $0x800000000,%rcx
          │││   ││  0x00007f7827001b2d:   lea    (%rcx,%r9,1),%rbx
   0.49%  │││   ││  0x00007f7827001b31:   cmp    0x20(%rbx),%r10
          │╰│   ││  0x00007f7827001b35:   je     0x00007f7827001ae0
   0.00%  │ │   ││  0x00007f7827001b37:   nopw   0x0(%rax,%rax,1)
   0.16%  │ │   ││  0x00007f7827001b40:   cmp    $0x157e8,%r9d                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
          │ ╰   ││  0x00007f7827001b47:   je     0x00007f7827001ae0
          │     ││  0x00007f7827001b49:   mov    0x28(%rbx),%rcx
   0.55%  │     ││  0x00007f7827001b4d:   mov    (%rcx),%edi
   0.33%  │     ││  0x00007f7827001b4f:   mov    $0x0,%eax
   0.08%  │  ╭  ││  0x00007f7827001b54:   jmp    0x00007f7827001b7a
          │  │  ││  0x00007f7827001b59:   nopl   0x0(%rax)
  38.87%  │  │ ↗││  0x00007f7827001b60:   mov    %eax,%ebp
          │  │ │││  0x00007f7827001b62:   shl    $0x3,%ebp
   8.02%  │  │ │││  0x00007f7827001b65:   lea    0x8(%rbp),%ebp
   0.00%  │  │ │││  0x00007f7827001b68:   movslq %ebp,%rbp
  38.56%  │  │ │││  0x00007f7827001b6b:   mov    (%rcx,%rbp,1),%rbp
   0.06%  │  │ │││  0x00007f7827001b6f:   cmp    %rbp,%r10
          │  │╭│││  0x00007f7827001b72:   je     0x00007f7827001b89
   8.14%  │  │││││  0x00007f7827001b78:   inc    %eax
          │  ↘││││  0x00007f7827001b7a:   cmp    %eax,%edi
   0.00%  │   │╰││  0x00007f7827001b7c:   jg     0x00007f7827001b60
   0.58%  │   │ ││  0x00007f7827001b7e:   mov    $0x0,%r9d
   0.00%  │   │ ╰│  0x00007f7827001b84:   jmp    0x00007f7827001af3
          │   ↘  │  0x00007f7827001b89:   mov    %r10,0x20(%rbx)
          │      ╰  0x00007f7827001b8d:   jmp    0x00007f7827001ae0           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 109)
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
          ↘         0x00007f7827001b92:   mov    %r8,0x28(%rsp)
                    0x00007f7827001b97:   call   0x00007f783e7956f0           ;   {runtime_call os::javaTimeNanos()}
                    0x00007f7827001b9c:   nop
                    0x00007f7827001b9d:   mov    0x20(%rsp),%rdx
                    0x00007f7827001ba2:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.45%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 7, compile id 796 
   0.85%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.03%  <...other 351 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 7, compile id 796 
   2.09%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.02%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  fileStream::write 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  OtherRegionsTable::occupied 
   0.01%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%       hsdis-amd64.so  print_insn 
   0.22%  <...other 89 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.45%       jvmci, level 4
   2.09%               kernel
   0.21%            libjvm.so
   0.12%         libc-2.31.so
   0.05%                     
   0.04%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.00%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 128)

# Run progress: 60.00% complete, ETA 00:03:44
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 124.944 ns/op
# Warmup Iteration   2: 125.533 ns/op
# Warmup Iteration   3: 112.076 ns/op
# Warmup Iteration   4: 112.088 ns/op
# Warmup Iteration   5: 112.432 ns/op
Iteration   1: 112.082 ns/op
Iteration   2: 112.378 ns/op
Iteration   3: 112.093 ns/op
Iteration   4: 112.081 ns/op
Iteration   5: 112.089 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  112.145 ±(99.9%) 0.503 ns/op [Average]
  (min, avg, max) = (112.081, 112.145, 112.378), stdev = 0.131
  CI (99.9%): [111.642, 112.648] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 205284 total address lines.
Perf output processed (skipped 59.396 seconds):
 Column 1: cycles (50467 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 5, compile id 796 

                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
                    0x00007fe08f00245e:   xchg   %ax,%ax
           ↗↗    ↗  0x00007fe08f002460:   cmp    $0xc265e0,%r9d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
           ││    │  0x00007fe08f002467:   jne    0x00007fe08f0025eb           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
           ││    │  0x00007fe08f00246d:   mov    $0x1,%r9d                    ;* unwind (locked if synchronized)
           ││    │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@20 (line 232)
   0.52%   ││   ↗│  0x00007fe08f002473:   inc    %r8                          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@26 (line 233)
   0.03%   ││   ││  0x00007fe08f002476:   data16 nopw 0x0(%rax,%rax,1)
           ││   ││  0x00007fe08f002480:   cmpb   $0x0,0x94(%rsi)
   1.79%  ╭││   ││  0x00007fe08f002487:   jne    0x00007fe08f002512           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
   0.31%  │││   ││  0x00007fe08f00248d:   mov    0x348(%r15),%r9              ; ImmutableOopMap {rdx=Oop rsi=Oop r11=Oop [24]=Oop [32]=Oop }
          │││   ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
          │││   ││  0x00007fe08f002494:   test   %eax,(%r9)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
          │││   ││                                                            ;   {poll}
   1.23%  │││   ││  0x00007fe08f002497:   mov    0x10(%r11),%r9d              ; ImmutableOopMap {rdx=Oop rsi=Oop r11=Oop [24]=Oop [32]=Oop }
          │││   ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
          │││   ││  0x00007fe08f00249b:   mov    0x8(,%r9,8),%r9d             ; implicit exception: dispatches to 0x00007fe08f0026a6
   0.28%  │││   ││  0x00007fe08f0024a3:   movabs $0x800000000,%rcx
          │││   ││  0x00007fe08f0024ad:   lea    (%rcx,%r9,1),%rbx
   0.34%  │││   ││  0x00007fe08f0024b1:   cmp    0x20(%rbx),%r10
          │╰│   ││  0x00007fe08f0024b5:   je     0x00007fe08f002460
   2.05%  │ │   ││  0x00007fe08f0024b7:   nopw   0x0(%rax,%rax,1)
          │ │   ││  0x00007fe08f0024c0:   cmp    $0x157e8,%r9d                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
          │ ╰   ││  0x00007fe08f0024c7:   je     0x00007fe08f002460
          │     ││  0x00007fe08f0024c9:   mov    0x28(%rbx),%rcx
          │     ││  0x00007fe08f0024cd:   mov    (%rcx),%edi
   0.94%  │     ││  0x00007fe08f0024cf:   mov    $0x0,%eax
          │  ╭  ││  0x00007fe08f0024d4:   jmp    0x00007fe08f0024fa
          │  │  ││  0x00007fe08f0024d9:   nopl   0x0(%rax)
   4.23%  │  │ ↗││  0x00007fe08f0024e0:   mov    %eax,%ebp
          │  │ │││  0x00007fe08f0024e2:   shl    $0x3,%ebp
  41.13%  │  │ │││  0x00007fe08f0024e5:   lea    0x8(%rbp),%ebp
   0.00%  │  │ │││  0x00007fe08f0024e8:   movslq %ebp,%rbp
   4.23%  │  │ │││  0x00007fe08f0024eb:   mov    (%rcx,%rbp,1),%rbp
   0.42%  │  │ │││  0x00007fe08f0024ef:   cmp    %rbp,%r10
          │  │╭│││  0x00007fe08f0024f2:   je     0x00007fe08f002509
  40.22%  │  │││││  0x00007fe08f0024f8:   inc    %eax
          │  ↘││││  0x00007fe08f0024fa:   cmp    %eax,%edi
          │   │╰││  0x00007fe08f0024fc:   jg     0x00007fe08f0024e0
   0.04%  │   │ ││  0x00007fe08f0024fe:   mov    $0x0,%r9d
   0.76%  │   │ ╰│  0x00007fe08f002504:   jmp    0x00007fe08f002473
          │   ↘  │  0x00007fe08f002509:   mov    %r10,0x20(%rbx)
          │      ╰  0x00007fe08f00250d:   jmp    0x00007fe08f002460           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 109)
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
          ↘         0x00007fe08f002512:   mov    %r8,0x28(%rsp)
                    0x00007fe08f002517:   call   0x00007fe0a65d26f0           ;   {runtime_call os::javaTimeNanos()}
                    0x00007fe08f00251c:   nop
                    0x00007fe08f00251d:   mov    0x20(%rsp),%rdx
                    0x00007fe08f002522:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.54%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 5, compile id 796 
   0.24%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
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
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  syscall 
   0.75%  <...other 272 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 5, compile id 796 
   1.14%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  event_to_env 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.00%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.00%          interpreter  invokestatic  184 invokestatic  
   0.14%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.54%       jvmci, level 4
   1.14%               kernel
   0.12%            libjvm.so
   0.09%         libc-2.31.so
   0.05%                     
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 256)

# Run progress: 80.00% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 239.108 ns/op
# Warmup Iteration   2: 212.574 ns/op
# Warmup Iteration   3: 236.552 ns/op
# Warmup Iteration   4: 211.870 ns/op
# Warmup Iteration   5: 212.356 ns/op
Iteration   1: 212.361 ns/op
Iteration   2: 211.695 ns/op
Iteration   3: 212.347 ns/op
Iteration   4: 212.358 ns/op
Iteration   5: 212.336 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  212.220 ±(99.9%) 1.130 ns/op [Average]
  (min, avg, max) = (211.695, 212.220, 212.361), stdev = 0.293
  CI (99.9%): [211.090, 213.349] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 217785 total address lines.
Perf output processed (skipped 59.944 seconds):
 Column 1: cycles (50655 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 841 

                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
                    0x00007f8a0b002e5e:   xchg   %ax,%ax
           ↗↗    ↗  0x00007f8a0b002e60:   cmp    $0xc265e0,%r9d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
           ││    │  0x00007f8a0b002e67:   jne    0x00007f8a0b002feb           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
           ││    │  0x00007f8a0b002e6d:   mov    $0x1,%r9d                    ;* unwind (locked if synchronized)
           ││    │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@20 (line 232)
   0.29%   ││   ↗│  0x00007f8a0b002e73:   inc    %r8                          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@26 (line 233)
   0.01%   ││   ││  0x00007f8a0b002e76:   data16 nopw 0x0(%rax,%rax,1)
           ││   ││  0x00007f8a0b002e80:   cmpb   $0x0,0x94(%rsi)
   0.84%  ╭││   ││  0x00007f8a0b002e87:   jne    0x00007f8a0b002f12           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
   0.19%  │││   ││  0x00007f8a0b002e8d:   mov    0x348(%r15),%r9              ; ImmutableOopMap {rdx=Oop rsi=Oop r11=Oop [24]=Oop [32]=Oop }
          │││   ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
          │││   ││  0x00007f8a0b002e94:   test   %eax,(%r9)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
          │││   ││                                                            ;   {poll}
   0.59%  │││   ││  0x00007f8a0b002e97:   mov    0x10(%r11),%r9d              ; ImmutableOopMap {rdx=Oop rsi=Oop r11=Oop [24]=Oop [32]=Oop }
          │││   ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
          │││   ││  0x00007f8a0b002e9b:   mov    0x8(,%r9,8),%r9d             ; implicit exception: dispatches to 0x00007f8a0b0030a6
   0.14%  │││   ││  0x00007f8a0b002ea3:   movabs $0x800000000,%rcx
          │││   ││  0x00007f8a0b002ead:   lea    (%rcx,%r9,1),%rbx
   0.19%  │││   ││  0x00007f8a0b002eb1:   cmp    0x20(%rbx),%r10
          │╰│   ││  0x00007f8a0b002eb5:   je     0x00007f8a0b002e60
   1.08%  │ │   ││  0x00007f8a0b002eb7:   nopw   0x0(%rax,%rax,1)
          │ │   ││  0x00007f8a0b002ec0:   cmp    $0x157e8,%r9d                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
          │ ╰   ││  0x00007f8a0b002ec7:   je     0x00007f8a0b002e60
          │     ││  0x00007f8a0b002ec9:   mov    0x28(%rbx),%rcx
          │     ││  0x00007f8a0b002ecd:   mov    (%rcx),%edi
   0.58%  │     ││  0x00007f8a0b002ecf:   mov    $0x0,%eax
          │  ╭  ││  0x00007f8a0b002ed4:   jmp    0x00007f8a0b002efa
          │  │  ││  0x00007f8a0b002ed9:   nopl   0x0(%rax)
   0.25%  │  │ ↗││  0x00007f8a0b002ee0:   mov    %eax,%ebp
          │  │ │││  0x00007f8a0b002ee2:   shl    $0x3,%ebp
  46.37%  │  │ │││  0x00007f8a0b002ee5:   lea    0x8(%rbp),%ebp
   0.00%  │  │ │││  0x00007f8a0b002ee8:   movslq %ebp,%rbp
   0.26%  │  │ │││  0x00007f8a0b002eeb:   mov    (%rcx,%rbp,1),%rbp
   0.26%  │  │ │││  0x00007f8a0b002eef:   cmp    %rbp,%r10
   0.00%  │  │╭│││  0x00007f8a0b002ef2:   je     0x00007f8a0b002f09
  46.44%  │  │││││  0x00007f8a0b002ef8:   inc    %eax
   0.00%  │  ↘││││  0x00007f8a0b002efa:   cmp    %eax,%edi
          │   │╰││  0x00007f8a0b002efc:   jg     0x00007f8a0b002ee0
          │   │ ││  0x00007f8a0b002efe:   mov    $0x0,%r9d
   0.53%  │   │ ╰│  0x00007f8a0b002f04:   jmp    0x00007f8a0b002e73
          │   ↘  │  0x00007f8a0b002f09:   mov    %r10,0x20(%rbx)
          │      ╰  0x00007f8a0b002f0d:   jmp    0x00007f8a0b002e60           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 109)
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
          ↘         0x00007f8a0b002f12:   mov    %r8,0x28(%rsp)
                    0x00007f8a0b002f17:   call   0x00007f8a21d5f6f0           ;   {runtime_call os::javaTimeNanos()}
                    0x00007f8a0b002f1c:   nop
                    0x00007f8a0b002f1d:   mov    0x20(%rsp),%rdx
                    0x00007f8a0b002f22:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.04%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 841 
   0.54%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
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
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.91%  <...other 296 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 841 
   1.65%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  os::javaTimeNanos 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  fileStream::write 
   0.00%            libjvm.so  os::elapsed_counter 
   0.00%       hsdis-amd64.so  putop 
   0.00%         libc-2.31.so  syscall 
   0.00%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.16%  <...other 71 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.04%       jvmci, level 4
   1.65%               kernel
   0.13%            libjvm.so
   0.08%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%          c1, level 3
   0.00%         libm-2.31.so
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:09:20

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

Benchmark                                              (supertypes)  Mode  Cnt    Score   Error  Units
TypeCheckSlowPathBenchmark.instanceof_type_check                 16  avgt    5   16.743 ± 0.190  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm            16  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                 32  avgt    5   29.327 ± 0.044  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm            32  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                 64  avgt    5   54.171 ± 0.473  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm            64  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                128  avgt    5  112.145 ± 0.503  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm           128  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                256  avgt    5  212.220 ± 1.130  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm           256  avgt           NaN            ---
