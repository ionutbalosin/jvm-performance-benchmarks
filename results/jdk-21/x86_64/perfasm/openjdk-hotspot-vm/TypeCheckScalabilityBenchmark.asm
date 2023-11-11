# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1
# Parameters: (typePollution = false)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.830 ns/op
# Warmup Iteration   2: 7.223 ns/op
# Warmup Iteration   3: 7.770 ns/op
# Warmup Iteration   4: 7.083 ns/op
# Warmup Iteration   5: 7.080 ns/op
Iteration   1: 7.079 ns/op
Iteration   2: 7.079 ns/op
Iteration   3: 7.095 ns/op
Iteration   4: 7.086 ns/op
Iteration   5: 7.093 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1":
  7.086 ±(99.9%) 0.029 ns/op [Average]
  (min, avg, max) = (7.079, 7.086, 7.095), stdev = 0.008
  CI (99.9%): [7.058, 7.115] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1:asm":
PrintAssembly processed: 127944 total address lines.
Perf output processed (skipped 56.118 seconds):
 Column 1: cycles (50728 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 604 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@30 (line 192)
              0x00007f3adc63b748:   mov    $0x1,%ebp
              0x00007f3adc63b74d:   test   %r11d,%r11d
          ╭   0x00007f3adc63b750:   jne    0x00007f3adc63b785           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@36 (line 193)
          │↗  0x00007f3adc63b752:   mov    0x40(%rsp),%rsi
          ││  0x00007f3adc63b757:   call   0x00007f3adc0c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual is_duplicated_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
  57.43%  ││  0x00007f3adc63b75c:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual is_duplicated_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {other}
          ││  0x00007f3adc63b764:   mov    0x38(%rsp),%r10
          ││  0x00007f3adc63b769:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@30 (line 192)
   5.88%  ││  0x00007f3adc63b771:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 192)
          ││  0x00007f3adc63b775:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 192)
          ││  0x00007f3adc63b77c:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f3adc63b77f:   nop
   5.32%  ││  0x00007f3adc63b780:   test   %r10d,%r10d
          │╰  0x00007f3adc63b783:   je     0x00007f3adc63b752           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@36 (line 193)
          ↘   0x00007f3adc63b785:   movabs $0x7f3af1006b90,%r10
              0x00007f3adc63b78f:   call   *%r10
              0x00007f3adc63b792:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@37 (line 193)
                                                                        ;   {other}
              0x00007f3adc63b79a:   mov    0x30(%rsp),%r10
              0x00007f3adc63b79f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@40 (line 193)
....................................................................................................
  68.64%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 569 

             # {method} {0x00007f3a5747a868} &apos;is_duplicated_1&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
             #           [sp+0x30]  (sp of caller)
             0x00007f3adc638b20:   mov    0x8(%rsi),%r10d
             0x00007f3adc638b24:   movabs $0x7f3a5b000000,%r11
             0x00007f3adc638b2e:   add    %r11,%r10
             0x00007f3adc638b31:   cmp    %r10,%rax
             0x00007f3adc638b34:   jne    0x00007f3adc0c4080           ;   {runtime_call ic_miss_stub}
             0x00007f3adc638b3a:   xchg   %ax,%ax
             0x00007f3adc638b3c:   nopl   0x0(%rax)
           [Verified Entry Point]
   5.49%     0x00007f3adc638b40:   mov    %eax,-0x14000(%rsp)
   2.29%     0x00007f3adc638b47:   push   %rbp
             0x00007f3adc638b48:   sub    $0x20,%rsp
   3.94%     0x00007f3adc638b4c:   cmpl   $0x1,0x20(%r15)
   1.37%     0x00007f3adc638b54:   jne    0x00007f3adc638bca           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@-1 (line 95)
             0x00007f3adc638b5a:   mov    0x10(%rsi),%r10d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@1 (line 95)
   3.72%     0x00007f3adc638b5e:   xchg   %ax,%ax
             0x00007f3adc638b60:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f3adc638b9c
   1.72%     0x00007f3adc638b65:   cmp    $0x102acf8,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          ╭  0x00007f3adc638b6c:   jne    0x00007f3adc638b86
   5.44%  │  0x00007f3adc638b6e:   mov    $0x1,%eax
          │  0x00007f3adc638b73:   add    $0x20,%rsp
          │  0x00007f3adc638b77:   pop    %rbp
          │  0x00007f3adc638b78:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f3adc638b7f:   ja     0x00007f3adc638bb4
   5.40%  │  0x00007f3adc638b85:   ret    
          ↘  0x00007f3adc638b86:   mov    $0xffffffde,%esi
             0x00007f3adc638b8b:   mov    %r10d,%ebp
             0x00007f3adc638b8e:   nop
             0x00007f3adc638b8f:   call   0x00007f3adc0c9f00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
                                                                       ;   {runtime_call UncommonTrapBlob}
             0x00007f3adc638b94:   nopl   0x204(%rax,%rax,1)           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
....................................................................................................
  29.37%  <total for region 2>

....[Hottest Regions]...............................................................................
  68.64%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 604 
  29.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 569 
   0.68%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.68%  <...other 240 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  68.64%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 604 
  29.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 569 
   1.70%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  decode_env::print_hook_comments 
   0.01%        libc-2.31.so  ___vsnprintf 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.12%  <...other 54 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.01%         c2, level 4
   1.70%              kernel
   0.13%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1
# Parameters: (typePollution = true)

# Run progress: 12.50% complete, ETA 00:12:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 60.141 ns/op
# Warmup Iteration   2: 59.522 ns/op
# Warmup Iteration   3: 60.106 ns/op
# Warmup Iteration   4: 59.553 ns/op
# Warmup Iteration   5: 59.536 ns/op
Iteration   1: 59.559 ns/op
Iteration   2: 59.404 ns/op
Iteration   3: 59.558 ns/op
Iteration   4: 59.592 ns/op
Iteration   5: 59.581 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1":
  59.539 ±(99.9%) 0.296 ns/op [Average]
  (min, avg, max) = (59.404, 59.539, 59.592), stdev = 0.077
  CI (99.9%): [59.242, 59.835] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1:asm":
PrintAssembly processed: 126986 total address lines.
Perf output processed (skipped 56.220 seconds):
 Column 1: cycles (50753 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 570 

                    # {method} {0x00007f1bfc47a868} &apos;is_duplicated_1&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
                    #           [sp+0x30]  (sp of caller)
                    0x00007f1c80637f20:   mov    0x8(%rsi),%r10d
                    0x00007f1c80637f24:   movabs $0x7f1c07000000,%r11
                    0x00007f1c80637f2e:   add    %r11,%r10
                    0x00007f1c80637f31:   cmp    %r10,%rax
                    0x00007f1c80637f34:   jne    0x00007f1c800c4080           ;   {runtime_call ic_miss_stub}
                    0x00007f1c80637f3a:   xchg   %ax,%ax
                    0x00007f1c80637f3c:   nopl   0x0(%rax)
                  [Verified Entry Point]
   0.66%            0x00007f1c80637f40:   mov    %eax,-0x14000(%rsp)
   2.16%            0x00007f1c80637f47:   push   %rbp
   0.08%            0x00007f1c80637f48:   sub    $0x20,%rsp
                    0x00007f1c80637f4c:   cmpl   $0x1,0x20(%r15)
   0.53%            0x00007f1c80637f54:   jne    0x00007f1c8063809e           ;*synchronization entry
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@-1 (line 95)
   0.20%            0x00007f1c80637f5a:   mov    0x10(%rsi),%r10d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@1 (line 95)
                    0x00007f1c80637f5e:   xchg   %ax,%ax
                    0x00007f1c80637f60:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f1c80638070
   1.11%            0x00007f1c80637f65:   movabs $0x7f1c0802a908,%rax         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
                    0x00007f1c80637f6f:   movabs $0x7f1c07000000,%rsi
                    0x00007f1c80637f79:   add    %r8,%rsi
   0.52%            0x00007f1c80637f7c:   mov    0x20(%rsi),%r11
   3.06%            0x00007f1c80637f80:   cmp    %rax,%r11
          ╭         0x00007f1c80637f83:   jne    0x00007f1c80637ff2
          │    ↗    0x00007f1c80637f89:   lea    (%r12,%r10,8),%rbp           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
          │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
          │    │    0x00007f1c80637f8d:   mov    0x8(%rbp),%r10d
   1.90%  │    │    0x00007f1c80637f91:   movabs $0x7f1c0802ab00,%rax         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
          │    │    0x00007f1c80637f9b:   movabs $0x7f1c07000000,%rsi
          │    │    0x00007f1c80637fa5:   add    %r10,%rsi
   0.61%  │    │    0x00007f1c80637fa8:   mov    0x20(%rsi),%r10
   3.14%  │    │    0x00007f1c80637fac:   cmp    %rax,%r10
          │╭   │    0x00007f1c80637faf:   jne    0x00007f1c80638028           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
          ││   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
          ││   │ ↗  0x00007f1c80637fb5:   mov    0x8(%rbp),%r10d
   1.24%  ││   │ │  0x00007f1c80637fb9:   nopl   0x0(%rax)
          ││   │ │  0x00007f1c80637fc0:   cmp    $0x102af18,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          ││╭  │ │  0x00007f1c80637fc7:   jne    0x00007f1c80637fe1
   0.64%  │││  │ │  0x00007f1c80637fc9:   mov    $0x1,%eax
          │││↗ │ │  0x00007f1c80637fce:   add    $0x20,%rsp
          ││││ │ │  0x00007f1c80637fd2:   pop    %rbp
   2.97%  ││││ │ │  0x00007f1c80637fd3:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││││ │ │  0x00007f1c80637fda:   ja     0x00007f1c80638088
          ││││ │ │  0x00007f1c80637fe0:   ret    
          ││↘│ │ │  0x00007f1c80637fe1:   cmp    $0x102acf8,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
          ││ │ │ │  0x00007f1c80637fe8:   jne    0x00007f1c8063805c           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 123)
          ││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
          ││ │ │ │  0x00007f1c80637fee:   xor    %eax,%eax
          ││ ╰ │ │  0x00007f1c80637ff0:   jmp    0x00007f1c80637fce
   0.60%  ↘│   │ │  0x00007f1c80637ff2:   mov    0x28(%rsi),%rdi
           │   │ │  0x00007f1c80637ff6:   mov    (%rdi),%ecx
   1.80%   │   │ │  0x00007f1c80637ff8:   add    $0x8,%rdi
           │   │ │  0x00007f1c80637ffc:   test   %rax,%rax
           │   │ │  0x00007f1c80637fff:   repnz scas %es:(%rdi),%rax
  23.57%   │  ╭│ │  0x00007f1c80638002:   jne    0x00007f1c8063800c
   3.90%   │  ││ │  0x00007f1c80638008:   mov    %rax,0x20(%rsi)
   3.72%   │  ↘╰ │  0x00007f1c8063800c:   je     0x00007f1c80637f89
           │     │  0x00007f1c80638012:   mov    $0xffffffde,%esi
           │     │  0x00007f1c80638017:   mov    %r10d,%ebp
           │     │  0x00007f1c8063801a:   nop
           │     │  0x00007f1c8063801b:   call   0x00007f1c800c9f00           ; ImmutableOopMap {rbp=NarrowOop }
           │     │                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
           │     │                                                            ;   {runtime_call UncommonTrapBlob}
           │     │  0x00007f1c80638020:   nopl   0x290(%rax,%rax,1)           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
           │     │                                                            ;   {other}
   0.58%   ↘     │  0x00007f1c80638028:   mov    0x28(%rsi),%rdi
                 │  0x00007f1c8063802c:   mov    (%rdi),%ecx
   1.92%         │  0x00007f1c8063802e:   add    $0x8,%rdi
                 │  0x00007f1c80638032:   test   %rax,%rax
   2.54%         │  0x00007f1c80638035:   repnz scas %es:(%rdi),%rax
  22.56%        ╭│  0x00007f1c80638038:   jne    0x00007f1c80638042
   3.92%        ││  0x00007f1c8063803e:   mov    %rax,0x20(%rsi)
   3.94%        ↘╰  0x00007f1c80638042:   je     0x00007f1c80637fb5
                    0x00007f1c80638048:   mov    $0xffffffde,%esi
                    0x00007f1c8063804d:   xchg   %ax,%ax
                    0x00007f1c8063804f:   call   0x00007f1c800c9f00           ; ImmutableOopMap {rbp=Oop }
                                                                              ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
                                                                              ;   {runtime_call UncommonTrapBlob}
                    0x00007f1c80638054:   nopl   0x10002c4(%rax,%rax,1)       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
....................................................................................................
  87.87%  <total for region 1>

....[Hottest Regions]...............................................................................
  87.87%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 570 
   9.78%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 608 
   0.79%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.94%  <...other 316 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  87.87%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 570 
   9.78%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 608 
   2.07%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%         interpreter  aconst_null  1 aconst_null  
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.12%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.65%         c2, level 4
   2.07%              kernel
   0.13%           libjvm.so
   0.07%        libc-2.31.so
   0.04%                    
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%          libjava.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 2 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2
# Parameters: (typePollution = false)

# Run progress: 25.00% complete, ETA 00:10:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.678 ns/op
# Warmup Iteration   2: 7.114 ns/op
# Warmup Iteration   3: 7.764 ns/op
# Warmup Iteration   4: 7.254 ns/op
# Warmup Iteration   5: 7.244 ns/op
Iteration   1: 7.259 ns/op
Iteration   2: 7.134 ns/op
Iteration   3: 7.216 ns/op
Iteration   4: 7.231 ns/op
Iteration   5: 7.247 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2":
  7.217 ±(99.9%) 0.190 ns/op [Average]
  (min, avg, max) = (7.134, 7.217, 7.259), stdev = 0.049
  CI (99.9%): [7.027, 7.408] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2:asm":
PrintAssembly processed: 122750 total address lines.
Perf output processed (skipped 56.092 seconds):
 Column 1: cycles (100674 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 591 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@20 (line 190)
              0x00007fda406397b5:   mov    0x38(%rsp),%r10
              0x00007fda406397ba:   nopw   0x0(%rax,%rax,1)
              0x00007fda406397c0:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007fda40639894
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@30 (line 192)
              0x00007fda406397c8:   mov    $0x1,%ebp
              0x00007fda406397cd:   test   %r11d,%r11d
          ╭   0x00007fda406397d0:   jne    0x00007fda40639805           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@36 (line 193)
   1.04%  │↗  0x00007fda406397d2:   mov    0x40(%rsp),%rsi
          ││  0x00007fda406397d7:   call   0x00007fda400c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual is_duplicated_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
  43.14%  ││  0x00007fda406397dc:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual is_duplicated_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {other}
          ││  0x00007fda406397e4:   mov    0x38(%rsp),%r10
   0.01%  ││  0x00007fda406397e9:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@30 (line 192)
  12.99%  ││  0x00007fda406397f1:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 192)
          ││  0x00007fda406397f5:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 192)
          ││  0x00007fda406397fc:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007fda406397ff:   nop
   5.19%  ││  0x00007fda40639800:   test   %r10d,%r10d
          │╰  0x00007fda40639803:   je     0x00007fda406397d2           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@36 (line 193)
          ↘   0x00007fda40639805:   movabs $0x7fda56d2db90,%r10
              0x00007fda4063980f:   call   *%r10
              0x00007fda40639812:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@37 (line 193)
                                                                        ;   {other}
              0x00007fda4063981a:   mov    0x30(%rsp),%r10
              0x00007fda4063981f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@40 (line 193)
....................................................................................................
  62.37%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 553 

             # {method} {0x00007fd9bc47a948} &apos;is_duplicated_2&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
             #           [sp+0x30]  (sp of caller)
             0x00007fda40635fa0:   mov    0x8(%rsi),%r10d
             0x00007fda40635fa4:   movabs $0x7fd9c7000000,%r11
             0x00007fda40635fae:   add    %r11,%r10
             0x00007fda40635fb1:   cmp    %r10,%rax
             0x00007fda40635fb4:   jne    0x00007fda400c4080           ;   {runtime_call ic_miss_stub}
             0x00007fda40635fba:   xchg   %ax,%ax
             0x00007fda40635fbc:   nopl   0x0(%rax)
           [Verified Entry Point]
   5.22%     0x00007fda40635fc0:   mov    %eax,-0x14000(%rsp)
   7.59%     0x00007fda40635fc7:   push   %rbp
   0.14%     0x00007fda40635fc8:   sub    $0x20,%rsp
   3.42%     0x00007fda40635fcc:   cmpl   $0x1,0x20(%r15)
   1.90%     0x00007fda40635fd4:   jne    0x00007fda4063604a           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@-1 (line 102)
   0.18%     0x00007fda40635fda:   mov    0x10(%rsi),%r10d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@1 (line 102)
   3.34%     0x00007fda40635fde:   xchg   %ax,%ax
             0x00007fda40635fe0:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007fda4063601c
   3.89%     0x00007fda40635fe5:   cmp    $0x102acf8,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          ╭  0x00007fda40635fec:   jne    0x00007fda40636006
   4.24%  │  0x00007fda40635fee:   mov    $0x1,%eax
   1.05%  │  0x00007fda40635ff3:   add    $0x20,%rsp
          │  0x00007fda40635ff7:   pop    %rbp
          │  0x00007fda40635ff8:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fda40635fff:   ja     0x00007fda40636034
   5.41%  │  0x00007fda40636005:   ret    
          ↘  0x00007fda40636006:   mov    $0xffffffde,%esi
             0x00007fda4063600b:   mov    %r10d,%ebp
             0x00007fda4063600e:   nop
             0x00007fda4063600f:   call   0x00007fda400c9f00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
                                                                       ;   {runtime_call UncommonTrapBlob}
             0x00007fda40636014:   nopl   0x204(%rax,%rax,1)           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
....................................................................................................
  36.39%  <total for region 2>

....[Hottest Regions]...............................................................................
  62.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 591 
  36.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 553 
   0.72%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
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
   0.00%              kernel  [unknown] 
   0.25%  <...other 165 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  62.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 591 
  36.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 553 
   1.14%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%           libjvm.so  outputStream::print 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%         interpreter  fast_zputfield  213 fast_zputfield  
   0.00%           libjvm.so  nmethod::fix_oop_relocations 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%      hsdis-amd64.so  print_insn_i386 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.03%  <...other 33 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.76%         c2, level 4
   1.14%              kernel
   0.05%           libjvm.so
   0.03%        libc-2.31.so
   0.01%                    
   0.01%  libpthread-2.31.so
   0.00%          ld-2.31.so
   0.00%         interpreter
   0.00%      hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 2 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2
# Parameters: (typePollution = true)

# Run progress: 37.50% complete, ETA 00:09:05
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 88.238 ns/op
# Warmup Iteration   2: 86.436 ns/op
# Warmup Iteration   3: 92.565 ns/op
# Warmup Iteration   4: 88.971 ns/op
# Warmup Iteration   5: 86.271 ns/op
Iteration   1: 88.783 ns/op
Iteration   2: 87.552 ns/op
Iteration   3: 87.498 ns/op
Iteration   4: 85.833 ns/op
Iteration   5: 85.903 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2":
  87.114 ±(99.9%) 4.807 ns/op [Average]
  (min, avg, max) = (85.833, 87.114, 88.783), stdev = 1.248
  CI (99.9%): [82.307, 91.921] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2:asm":
PrintAssembly processed: 124595 total address lines.
Perf output processed (skipped 56.301 seconds):
 Column 1: cycles (100815 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 565 

                    # {method} {0x00007fe2c847a948} &apos;is_duplicated_2&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
                    #           [sp+0x30]  (sp of caller)
                    0x00007fe34c639520:   mov    0x8(%rsi),%r10d
                    0x00007fe34c639524:   movabs $0x7fe2d3000000,%r11
                    0x00007fe34c63952e:   add    %r11,%r10
                    0x00007fe34c639531:   cmp    %r10,%rax
                    0x00007fe34c639534:   jne    0x00007fe34c0c4080           ;   {runtime_call ic_miss_stub}
                    0x00007fe34c63953a:   xchg   %ax,%ax
                    0x00007fe34c63953c:   nopl   0x0(%rax)
                  [Verified Entry Point]
   0.43%            0x00007fe34c639540:   mov    %eax,-0x14000(%rsp)
   1.39%            0x00007fe34c639547:   push   %rbp
   0.09%            0x00007fe34c639548:   sub    $0x20,%rsp
   0.00%            0x00007fe34c63954c:   cmpl   $0x1,0x20(%r15)
   0.33%            0x00007fe34c639554:   jne    0x00007fe34c63969e           ;*synchronization entry
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@-1 (line 102)
   0.14%            0x00007fe34c63955a:   mov    0x10(%rsi),%r10d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@1 (line 102)
   0.00%            0x00007fe34c63955e:   xchg   %ax,%ax
                    0x00007fe34c639560:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007fe34c639670
   0.84%            0x00007fe34c639565:   movabs $0x7fe2d402a908,%rax         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
                    0x00007fe34c63956f:   movabs $0x7fe2d3000000,%rsi
                    0x00007fe34c639579:   add    %r8,%rsi
   0.46%            0x00007fe34c63957c:   mov    0x20(%rsi),%r11
   8.55%            0x00007fe34c639580:   cmp    %rax,%r11
          ╭         0x00007fe34c639583:   jne    0x00007fe34c6395f2
   0.30%  │    ↗    0x00007fe34c639589:   lea    (%r12,%r10,8),%rbp           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
          │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   0.14%  │    │    0x00007fe34c63958d:   mov    0x8(%rbp),%r10d
   1.34%  │    │    0x00007fe34c639591:   movabs $0x7fe2d402ab00,%rax         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
          │    │    0x00007fe34c63959b:   movabs $0x7fe2d3000000,%rsi
   0.01%  │    │    0x00007fe34c6395a5:   add    %r10,%rsi
   0.45%  │    │    0x00007fe34c6395a8:   mov    0x20(%rsi),%r10
   4.53%  │    │    0x00007fe34c6395ac:   cmp    %rax,%r10
          │╭   │    0x00007fe34c6395af:   jne    0x00007fe34c639628           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
          ││   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   0.05%  ││   │ ↗  0x00007fe34c6395b5:   mov    0x8(%rbp),%r10d
   0.06%  ││   │ │  0x00007fe34c6395b9:   nopl   0x0(%rax)
          ││   │ │  0x00007fe34c6395c0:   cmp    $0x102acf8,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
          ││╭  │ │  0x00007fe34c6395c7:   je     0x00007fe34c6395dd
   0.43%  │││  │ │  0x00007fe34c6395c9:   cmp    $0x102af18,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          │││  │ │  0x00007fe34c6395d0:   jne    0x00007fe34c63965c
   0.42%  │││  │ │  0x00007fe34c6395d6:   mov    $0x1,%eax
          │││╭ │ │  0x00007fe34c6395db:   jmp    0x00007fe34c6395df
          ││↘│ │ │  0x00007fe34c6395dd:   xor    %eax,%eax                    ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 123)
          ││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
          ││ ↘ │ │  0x00007fe34c6395df:   add    $0x20,%rsp
   0.01%  ││   │ │  0x00007fe34c6395e3:   pop    %rbp
   2.66%  ││   │ │  0x00007fe34c6395e4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││   │ │  0x00007fe34c6395eb:   ja     0x00007fe34c639688
   0.17%  ││   │ │  0x00007fe34c6395f1:   ret    
   0.46%  ↘│   │ │  0x00007fe34c6395f2:   mov    0x28(%rsi),%rdi
  11.14%   │   │ │  0x00007fe34c6395f6:   mov    (%rdi),%ecx
   1.55%   │   │ │  0x00007fe34c6395f8:   add    $0x8,%rdi
           │   │ │  0x00007fe34c6395fc:   test   %rax,%rax
   0.00%   │   │ │  0x00007fe34c6395ff:   repnz scas %es:(%rdi),%rax
  15.24%   │  ╭│ │  0x00007fe34c639602:   jne    0x00007fe34c63960c
   2.46%   │  ││ │  0x00007fe34c639608:   mov    %rax,0x20(%rsi)
   2.49%   │  ↘╰ │  0x00007fe34c63960c:   je     0x00007fe34c639589
           │     │  0x00007fe34c639612:   mov    $0xffffffde,%esi
           │     │  0x00007fe34c639617:   mov    %r10d,%ebp
           │     │  0x00007fe34c63961a:   nop
           │     │  0x00007fe34c63961b:   call   0x00007fe34c0c9f00           ; ImmutableOopMap {rbp=NarrowOop }
           │     │                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
           │     │                                                            ;   {runtime_call UncommonTrapBlob}
           │     │  0x00007fe34c639620:   nopl   0x290(%rax,%rax,1)           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
           │     │                                                            ;   {other}
   0.46%   ↘     │  0x00007fe34c639628:   mov    0x28(%rsi),%rdi
  11.46%         │  0x00007fe34c63962c:   mov    (%rdi),%ecx
   1.59%         │  0x00007fe34c63962e:   add    $0x8,%rdi
                 │  0x00007fe34c639632:   test   %rax,%rax
   1.72%         │  0x00007fe34c639635:   repnz scas %es:(%rdi),%rax
  15.53%        ╭│  0x00007fe34c639638:   jne    0x00007fe34c639642
   2.58%        ││  0x00007fe34c63963e:   mov    %rax,0x20(%rsi)
   2.68%        ↘╰  0x00007fe34c639642:   je     0x00007fe34c6395b5
                    0x00007fe34c639648:   mov    $0xffffffde,%esi
                    0x00007fe34c63964d:   xchg   %ax,%ax
                    0x00007fe34c63964f:   call   0x00007fe34c0c9f00           ; ImmutableOopMap {rbp=Oop }
                                                                              ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
                                                                              ;   {runtime_call UncommonTrapBlob}
                    0x00007fe34c639654:   nopl   0x10002c4(%rax,%rax,1)       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
....................................................................................................
  92.18%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.18%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 565 
   6.43%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 609 
   0.88%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.29%  <...other 186 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.18%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 565 
   6.43%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 609 
   1.30%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%                      <unknown> 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  __vfprintf_internal 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%           libjvm.so  SafeFetchN_impl 
   0.00%           libjvm.so  decode_env::print_hook_comments 
   0.00%           libjvm.so  frame::sender_for_interpreter_frame 
   0.00%           libjvm.so  CompilationPolicy::select_task 
   0.00%        libc-2.31.so  _IO_file_sync@@GLIBC_2.2.5 
   0.00%        libc-2.31.so  __strcmp_avx2 
   0.04%  <...other 42 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.61%         c2, level 4
   1.30%              kernel
   0.04%           libjvm.so
   0.02%        libc-2.31.so
   0.01%                    
   0.01%         interpreter
   0.00%  libpthread-2.31.so
   0.00%      hsdis-amd64.so
   0.00%    perf-1959355.map
   0.00%          ld-2.31.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 3 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3
# Parameters: (typePollution = false)

# Run progress: 50.00% complete, ETA 00:07:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.808 ±(99.9%) 0.540 ns/op
# Warmup Iteration   2: 7.095 ±(99.9%) 0.044 ns/op
# Warmup Iteration   3: 7.766 ±(99.9%) 0.001 ns/op
# Warmup Iteration   4: 7.227 ±(99.9%) 1.134 ns/op
# Warmup Iteration   5: 7.211 ±(99.9%) 0.579 ns/op
Iteration   1: 7.262 ±(99.9%) 0.195 ns/op
Iteration   2: 7.248 ±(99.9%) 0.121 ns/op
Iteration   3: 7.254 ±(99.9%) 0.470 ns/op
Iteration   4: 7.245 ±(99.9%) 0.282 ns/op
Iteration   5: 7.251 ±(99.9%) 0.487 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3":
  7.252 ±(99.9%) 0.025 ns/op [Average]
  (min, avg, max) = (7.245, 7.252, 7.262), stdev = 0.006
  CI (99.9%): [7.227, 7.277] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3:asm":
PrintAssembly processed: 131373 total address lines.
Perf output processed (skipped 56.200 seconds):
 Column 1: cycles (150041 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 614 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@30 (line 192)
              0x00007f111063d0c8:   mov    $0x1,%ebp
              0x00007f111063d0cd:   test   %r11d,%r11d
          ╭   0x00007f111063d0d0:   jne    0x00007f111063d105           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@36 (line 193)
          │↗  0x00007f111063d0d2:   mov    0x40(%rsp),%rsi
          ││  0x00007f111063d0d7:   call   0x00007f11100c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual is_duplicated_3 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
  45.69%  ││  0x00007f111063d0dc:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual is_duplicated_3 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {other}
          ││  0x00007f111063d0e4:   mov    0x38(%rsp),%r10
   0.00%  ││  0x00007f111063d0e9:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@30 (line 192)
  10.58%  ││  0x00007f111063d0f1:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 192)
          ││  0x00007f111063d0f5:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 192)
          ││  0x00007f111063d0fc:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f111063d0ff:   nop
   5.20%  ││  0x00007f111063d100:   test   %r10d,%r10d
          │╰  0x00007f111063d103:   je     0x00007f111063d0d2           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@36 (line 193)
          ↘   0x00007f111063d105:   movabs $0x7f11256dcb90,%r10
              0x00007f111063d10f:   call   *%r10
              0x00007f111063d112:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@37 (line 193)
                                                                        ;   {other}
              0x00007f111063d11a:   mov    0x30(%rsp),%r10
              0x00007f111063d11f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@40 (line 193)
....................................................................................................
  61.47%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 573 

             # {method} {0x00007f108f47aa28} &apos;is_duplicated_3&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
             #           [sp+0x30]  (sp of caller)
             0x00007f1110638a20:   mov    0x8(%rsi),%r10d
             0x00007f1110638a24:   movabs $0x7f1093000000,%r11
             0x00007f1110638a2e:   add    %r11,%r10
             0x00007f1110638a31:   cmp    %r10,%rax
             0x00007f1110638a34:   jne    0x00007f11100c4080           ;   {runtime_call ic_miss_stub}
             0x00007f1110638a3a:   xchg   %ax,%ax
             0x00007f1110638a3c:   nopl   0x0(%rax)
           [Verified Entry Point]
   5.32%     0x00007f1110638a40:   mov    %eax,-0x14000(%rsp)
   9.45%     0x00007f1110638a47:   push   %rbp
   0.01%     0x00007f1110638a48:   sub    $0x20,%rsp
   2.97%     0x00007f1110638a4c:   cmpl   $0x1,0x20(%r15)
   2.29%     0x00007f1110638a54:   jne    0x00007f1110638aca           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@-1 (line 109)
   0.02%     0x00007f1110638a5a:   mov    0x10(%rsi),%r10d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@1 (line 109)
   3.09%     0x00007f1110638a5e:   xchg   %ax,%ax
             0x00007f1110638a60:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f1110638a9c
   4.04%     0x00007f1110638a65:   cmp    $0x102acf8,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          ╭  0x00007f1110638a6c:   jne    0x00007f1110638a86
   5.30%  │  0x00007f1110638a6e:   mov    $0x1,%eax
   0.01%  │  0x00007f1110638a73:   add    $0x20,%rsp
          │  0x00007f1110638a77:   pop    %rbp
          │  0x00007f1110638a78:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f1110638a7f:   ja     0x00007f1110638ab4
   5.41%  │  0x00007f1110638a85:   ret    
          ↘  0x00007f1110638a86:   mov    $0xffffffde,%esi
             0x00007f1110638a8b:   mov    %r10d,%ebp
             0x00007f1110638a8e:   nop
             0x00007f1110638a8f:   call   0x00007f11100c9f00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
                                                                       ;   {runtime_call UncommonTrapBlob}
             0x00007f1110638a94:   nopl   0x204(%rax,%rax,1)           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
....................................................................................................
  37.91%  <total for region 2>

....[Hottest Regions]...............................................................................
  61.47%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 614 
  37.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 573 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.33%  <...other 319 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  61.47%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 614 
  37.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 573 
   0.47%              kernel  [unknown] 
   0.01%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%         interpreter  return entry points  
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%        libc-2.31.so  _IO_setb 
   0.00%        libc-2.31.so  _IO_no_init 
   0.07%  <...other 91 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.37%         c2, level 4
   0.47%              kernel
   0.06%           libjvm.so
   0.05%        libc-2.31.so
   0.01%         interpreter
   0.01%                    
   0.00%      hsdis-amd64.so
   0.00%  libpthread-2.31.so
   0.00%          ld-2.31.so
   0.00%    Unknown, level 0
   0.00%         c1, level 3
   0.00%          libjava.so
   0.00%    perf-1959417.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 3 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3
# Parameters: (typePollution = true)

# Run progress: 62.50% complete, ETA 00:05:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 110.996 ±(99.9%) 33.924 ns/op
# Warmup Iteration   2: 110.647 ±(99.9%) 10.852 ns/op
# Warmup Iteration   3: 105.767 ±(99.9%) 14.658 ns/op
# Warmup Iteration   4: 109.160 ±(99.9%) 35.665 ns/op
# Warmup Iteration   5: 106.746 ±(99.9%) 49.571 ns/op
Iteration   1: 111.289 ±(99.9%) 70.206 ns/op
Iteration   2: 104.103 ±(99.9%) 69.780 ns/op
Iteration   3: 110.508 ±(99.9%) 80.791 ns/op
Iteration   4: 110.479 ±(99.9%) 82.161 ns/op
Iteration   5: 109.173 ±(99.9%) 35.695 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3":
  109.110 ±(99.9%) 11.168 ns/op [Average]
  (min, avg, max) = (104.103, 109.110, 111.289), stdev = 2.900
  CI (99.9%): [97.942, 120.279] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3:asm":
PrintAssembly processed: 128246 total address lines.
Perf output processed (skipped 56.166 seconds):
 Column 1: cycles (150557 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 581 

                     # {method} {0x00007f830f47aa28} &apos;is_duplicated_3&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
                     #           [sp+0x30]  (sp of caller)
                     0x00007f8390638f20:   mov    0x8(%rsi),%r10d
                     0x00007f8390638f24:   movabs $0x7f8313000000,%r11
                     0x00007f8390638f2e:   add    %r11,%r10
                     0x00007f8390638f31:   cmp    %r10,%rax
                     0x00007f8390638f34:   jne    0x00007f83900c4080           ;   {runtime_call ic_miss_stub}
                     0x00007f8390638f3a:   xchg   %ax,%ax
                     0x00007f8390638f3c:   nopl   0x0(%rax)
                   [Verified Entry Point]
   0.36%             0x00007f8390638f40:   mov    %eax,-0x14000(%rsp)
   0.66%             0x00007f8390638f47:   push   %rbp
   0.00%             0x00007f8390638f48:   sub    $0x20,%rsp
   0.22%             0x00007f8390638f4c:   cmpl   $0x1,0x20(%r15)
   0.14%             0x00007f8390638f54:   jne    0x00007f83906390a6           ;*synchronization entry
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@-1 (line 109)
   0.01%             0x00007f8390638f5a:   mov    0x10(%rsi),%r10d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@1 (line 109)
   0.20%             0x00007f8390638f5e:   xchg   %ax,%ax
                     0x00007f8390638f60:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f8390639078
   0.18%             0x00007f8390638f65:   movabs $0x7f831402a908,%rax         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
                     0x00007f8390638f6f:   movabs $0x7f8313000000,%rsi
   0.18%             0x00007f8390638f79:   add    %r8,%rsi
   0.15%             0x00007f8390638f7c:   mov    0x20(%rsi),%r11
  11.90%             0x00007f8390638f80:   cmp    %rax,%r11
          ╭          0x00007f8390638f83:   jne    0x00007f8390638fe2
   0.14%  │   ↗      0x00007f8390638f85:   lea    (%r12,%r10,8),%rbp           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
          │   │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.06%  │   │      0x00007f8390638f89:   mov    0x8(%rbp),%r10d
   1.06%  │   │      0x00007f8390638f8d:   movabs $0x7f831402ab00,%rax         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
          │   │      0x00007f8390638f97:   movabs $0x7f8313000000,%rsi
          │   │      0x00007f8390638fa1:   add    %r10,%rsi
   0.35%  │   │      0x00007f8390638fa4:   mov    0x20(%rsi),%r10
   3.16%  │   │      0x00007f8390638fa8:   cmp    %rax,%r10
          │╭  │      0x00007f8390638fab:   jne    0x00007f839063901c           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
          ││  │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.04%  ││  │ ↗    0x00007f8390638fb1:   mov    0x8(%rbp),%r10d
   0.04%  ││  │ │    0x00007f8390638fb5:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││  │ │    0x00007f8390638fc0:   cmp    $0x102acf8,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
          ││╭ │ │    0x00007f8390638fc7:   jne    0x00007f8390639050
          │││ │ │    0x00007f8390638fcd:   xor    %eax,%eax                    ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 123)
          │││ │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
          │││ │ │ ↗  0x00007f8390638fcf:   add    $0x20,%rsp
   0.69%  │││ │ │ │  0x00007f8390638fd3:   pop    %rbp
   1.39%  │││ │ │ │  0x00007f8390638fd4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││ │ │ │  0x00007f8390638fdb:   ja     0x00007f8390639090
   0.01%  │││ │ │ │  0x00007f8390638fe1:   ret    
   0.34%  ↘││ │ │ │  0x00007f8390638fe2:   mov    0x28(%rsi),%rdi
  17.25%   ││ │ │ │  0x00007f8390638fe6:   mov    (%rdi),%ecx
   1.26%   ││ │ │ │  0x00007f8390638fe8:   add    $0x8,%rdi
           ││ │ │ │  0x00007f8390638fec:   test   %rax,%rax
   0.02%   ││ │ │ │  0x00007f8390638fef:   repnz scas %es:(%rdi),%rax
  12.75%   ││╭│ │ │  0x00007f8390638ff2:   jne    0x00007f8390638ffc
   2.07%   ││││ │ │  0x00007f8390638ff8:   mov    %rax,0x20(%rsi)
   2.03%   ││↘│ │ │  0x00007f8390638ffc:   nopl   0x0(%rax)
           ││ ╰ │ │  0x00007f8390639000:   je     0x00007f8390638f85
           ││   │ │  0x00007f8390639006:   mov    $0xffffffde,%esi
           ││   │ │  0x00007f839063900b:   mov    %r10d,%ebp
           ││   │ │  0x00007f839063900e:   nop
           ││   │ │  0x00007f839063900f:   call   0x00007f83900c9f00           ; ImmutableOopMap {rbp=NarrowOop }
           ││   │ │                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           ││   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
           ││   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
           ││   │ │                                                            ;   {runtime_call UncommonTrapBlob}
           ││   │ │  0x00007f8390639014:   nopl   0x284(%rax,%rax,1)           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           ││   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
           ││   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
           ││   │ │                                                            ;   {other}
   0.40%   ↘│   │ │  0x00007f839063901c:   mov    0x28(%rsi),%rdi
  15.27%    │   │ │  0x00007f8390639020:   mov    (%rdi),%ecx
   1.31%    │   │ │  0x00007f8390639022:   add    $0x8,%rdi
            │   │ │  0x00007f8390639026:   test   %rax,%rax
   1.41%    │   │ │  0x00007f8390639029:   repnz scas %es:(%rdi),%rax
  12.68%    │  ╭│ │  0x00007f839063902c:   jne    0x00007f8390639036
   2.13%    │  ││ │  0x00007f8390639032:   mov    %rax,0x20(%rsi)
   2.07%    │  ↘╰ │  0x00007f8390639036:   je     0x00007f8390638fb1
            │     │  0x00007f839063903c:   mov    $0xffffffde,%esi
            │     │  0x00007f8390639041:   xchg   %ax,%ax
            │     │  0x00007f8390639043:   call   0x00007f83900c9f00           ; ImmutableOopMap {rbp=Oop }
            │     │                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
            │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
            │     │                                                            ;   {runtime_call UncommonTrapBlob}
            │     │  0x00007f8390639048:   nopl   0x10002b8(%rax,%rax,1)       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
            │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
            │     │                                                            ;   {other}
   0.34%    ↘     │  0x00007f8390639050:   cmp    $0x102af18,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
                 ╭│  0x00007f8390639057:   jne    0x00007f8390639065
   0.37%         ││  0x00007f8390639059:   mov    $0x1,%eax
                 ││  0x00007f839063905e:   xchg   %ax,%ax
                 │╰  0x00007f8390639060:   jmp    0x00007f8390638fcf
                 ↘   0x00007f8390639065:   mov    $0xffffffc6,%esi
                     0x00007f839063906a:   nop
                     0x00007f839063906b:   call   0x00007f83900c9f00           ; ImmutableOopMap {rbp=Oop }
                                                                               ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 123)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
                                                                               ;   {runtime_call UncommonTrapBlob}
                     0x00007f8390639070:   nopl   0x20002e0(%rax,%rax,1)       ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  92.66%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.66%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 581 
   6.29%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 623 
   0.55%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.31%  <...other 296 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.66%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 581 
   6.29%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 623 
   0.94%              kernel  [unknown] 
   0.01%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  printf_to_env 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.05%  <...other 58 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.96%         c2, level 4
   0.94%              kernel
   0.05%           libjvm.so
   0.02%        libc-2.31.so
   0.01%                    
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%  libpthread-2.31.so
   0.00%      hsdis-amd64.so
   0.00%    perf-1959485.map
   0.00%              [vdso]
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 4 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4
# Parameters: (typePollution = false)

# Run progress: 75.00% complete, ETA 00:03:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.821 ±(99.9%) 0.043 ns/op
# Warmup Iteration   2: 7.839 ±(99.9%) 0.209 ns/op
# Warmup Iteration   3: 7.142 ±(99.9%) 0.401 ns/op
# Warmup Iteration   4: 7.102 ±(99.9%) 0.046 ns/op
# Warmup Iteration   5: 7.099 ±(99.9%) 0.061 ns/op
Iteration   1: 7.104 ±(99.9%) 0.091 ns/op
Iteration   2: 7.096 ±(99.9%) 0.044 ns/op
Iteration   3: 7.104 ±(99.9%) 0.107 ns/op
Iteration   4: 7.094 ±(99.9%) 0.030 ns/op
Iteration   5: 7.097 ±(99.9%) 0.063 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4":
  7.099 ±(99.9%) 0.017 ns/op [Average]
  (min, avg, max) = (7.094, 7.099, 7.104), stdev = 0.005
  CI (99.9%): [7.081, 7.116] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4:asm":
PrintAssembly processed: 128729 total address lines.
Perf output processed (skipped 56.122 seconds):
 Column 1: cycles (200135 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 4, compile id 599 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@20 (line 190)
              0x00007f4fb463b4b5:   mov    0x38(%rsp),%r10
              0x00007f4fb463b4ba:   nopw   0x0(%rax,%rax,1)
              0x00007f4fb463b4c0:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f4fb463b594
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@30 (line 192)
              0x00007f4fb463b4c8:   mov    $0x1,%ebp
              0x00007f4fb463b4cd:   test   %r11d,%r11d
          ╭   0x00007f4fb463b4d0:   jne    0x00007f4fb463b505           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@36 (line 193)
   1.10%  │↗  0x00007f4fb463b4d2:   mov    0x40(%rsp),%rsi
   0.00%  ││  0x00007f4fb463b4d7:   call   0x00007f4fb40c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual is_duplicated_4 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
  56.36%  ││  0x00007f4fb463b4dc:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual is_duplicated_4 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {other}
   0.00%  ││  0x00007f4fb463b4e4:   mov    0x38(%rsp),%r10
          ││  0x00007f4fb463b4e9:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@30 (line 192)
   6.92%  ││  0x00007f4fb463b4f1:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 192)
          ││  0x00007f4fb463b4f5:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 192)
          ││  0x00007f4fb463b4fc:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f4fb463b4ff:   nop
   5.41%  ││  0x00007f4fb463b500:   test   %r10d,%r10d
          │╰  0x00007f4fb463b503:   je     0x00007f4fb463b4d2           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@36 (line 193)
          ↘   0x00007f4fb463b505:   movabs $0x7f4fca3ecb90,%r10
              0x00007f4fb463b50f:   call   *%r10
              0x00007f4fb463b512:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@37 (line 193)
                                                                        ;   {other}
              0x00007f4fb463b51a:   mov    0x30(%rsp),%r10
              0x00007f4fb463b51f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@40 (line 193)
....................................................................................................
  69.80%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 568 

             # {method} {0x00007f4f3347ab08} &apos;is_duplicated_4&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
             #           [sp+0x30]  (sp of caller)
             0x00007f4fb4638120:   mov    0x8(%rsi),%r10d
             0x00007f4fb4638124:   movabs $0x7f4f37000000,%r11
             0x00007f4fb463812e:   add    %r11,%r10
             0x00007f4fb4638131:   cmp    %r10,%rax
             0x00007f4fb4638134:   jne    0x00007f4fb40c4080           ;   {runtime_call ic_miss_stub}
             0x00007f4fb463813a:   xchg   %ax,%ax
             0x00007f4fb463813c:   nopl   0x0(%rax)
           [Verified Entry Point]
   5.51%     0x00007f4fb4638140:   mov    %eax,-0x14000(%rsp)
   2.15%     0x00007f4fb4638147:   push   %rbp
   0.00%     0x00007f4fb4638148:   sub    $0x20,%rsp
   4.21%     0x00007f4fb463814c:   cmpl   $0x1,0x20(%r15)
   1.24%     0x00007f4fb4638154:   jne    0x00007f4fb46381ca           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@-1 (line 116)
   0.00%     0x00007f4fb463815a:   mov    0x10(%rsi),%r10d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@1 (line 116)
   4.12%     0x00007f4fb463815e:   xchg   %ax,%ax
             0x00007f4fb4638160:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f4fb463819c
   1.43%     0x00007f4fb4638165:   cmp    $0x102acf8,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          ╭  0x00007f4fb463816c:   jne    0x00007f4fb4638186
   4.29%  │  0x00007f4fb463816e:   mov    $0x1,%eax
   1.07%  │  0x00007f4fb4638173:   add    $0x20,%rsp
          │  0x00007f4fb4638177:   pop    %rbp
          │  0x00007f4fb4638178:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f4fb463817f:   ja     0x00007f4fb46381b4
   5.43%  │  0x00007f4fb4638185:   ret    
          ↘  0x00007f4fb4638186:   mov    $0xffffffde,%esi
             0x00007f4fb463818b:   mov    %r10d,%ebp
             0x00007f4fb463818e:   nop
             0x00007f4fb463818f:   call   0x00007f4fb40c9f00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
                                                                       ;   {runtime_call UncommonTrapBlob}
             0x00007f4fb4638194:   nopl   0x204(%rax,%rax,1)           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
....................................................................................................
  29.45%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.80%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 4, compile id 599 
  29.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 568 
   0.13%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%        libc-2.31.so  syscall 
   0.40%  <...other 465 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  69.80%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 4, compile id 599 
  29.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 568 
   0.62%              kernel  [unknown] 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%                      <unknown> 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%  libpthread-2.31.so  __libc_write 
   0.05%  <...other 84 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.25%         c2, level 4
   0.62%              kernel
   0.05%           libjvm.so
   0.05%        libc-2.31.so
   0.01%      hsdis-amd64.so
   0.01%                    
   0.00%  libpthread-2.31.so
   0.00%         interpreter
   0.00%          ld-2.31.so
   0.00%       libdl-2.31.so
   0.00%    perf-1959551.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 4 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4
# Parameters: (typePollution = true)

# Run progress: 87.50% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 126.540 ±(99.9%) 43.591 ns/op
# Warmup Iteration   2: 127.128 ±(99.9%) 42.978 ns/op
# Warmup Iteration   3: 124.293 ±(99.9%) 41.087 ns/op
# Warmup Iteration   4: 123.896 ±(99.9%) 32.406 ns/op
# Warmup Iteration   5: 122.170 ±(99.9%) 32.245 ns/op
Iteration   1: 119.262 ±(99.9%) 31.160 ns/op
Iteration   2: 120.048 ±(99.9%) 11.336 ns/op
Iteration   3: 122.635 ±(99.9%) 37.178 ns/op
Iteration   4: 117.560 ±(99.9%) 28.695 ns/op
Iteration   5: 127.313 ±(99.9%) 54.519 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4":
  121.364 ±(99.9%) 14.615 ns/op [Average]
  (min, avg, max) = (117.560, 121.364, 127.313), stdev = 3.796
  CI (99.9%): [106.748, 135.979] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4:asm":
PrintAssembly processed: 134613 total address lines.
Perf output processed (skipped 56.352 seconds):
 Column 1: cycles (200230 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 582 

                    # {method} {0x00007f6aa047ab08} &apos;is_duplicated_4&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
                    #           [sp+0x30]  (sp of caller)
                    0x00007f6b2463a9a0:   mov    0x8(%rsi),%r10d
                    0x00007f6b2463a9a4:   movabs $0x7f6aab000000,%r11
                    0x00007f6b2463a9ae:   add    %r11,%r10
                    0x00007f6b2463a9b1:   cmp    %r10,%rax
                    0x00007f6b2463a9b4:   jne    0x00007f6b240c4080           ;   {runtime_call ic_miss_stub}
                    0x00007f6b2463a9ba:   xchg   %ax,%ax
                    0x00007f6b2463a9bc:   nopl   0x0(%rax)
                  [Verified Entry Point]
   0.30%            0x00007f6b2463a9c0:   mov    %eax,-0x14000(%rsp)
   1.39%            0x00007f6b2463a9c7:   push   %rbp
   0.01%            0x00007f6b2463a9c8:   sub    $0x20,%rsp
   0.00%            0x00007f6b2463a9cc:   cmpl   $0x1,0x20(%r15)
   0.32%            0x00007f6b2463a9d4:   jne    0x00007f6b2463ab1e           ;*synchronization entry
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@-1 (line 116)
   0.03%            0x00007f6b2463a9da:   mov    0x10(%rsi),%r10d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@1 (line 116)
   0.30%            0x00007f6b2463a9de:   xchg   %ax,%ax
                    0x00007f6b2463a9e0:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f6b2463aaf0
   0.58%            0x00007f6b2463a9e5:   movabs $0x7f6aac02a908,%rax         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
                    0x00007f6b2463a9ef:   movabs $0x7f6aab000000,%rsi
   0.00%            0x00007f6b2463a9f9:   add    %r8,%rsi
   0.31%            0x00007f6b2463a9fc:   mov    0x20(%rsi),%r11
  15.91%            0x00007f6b2463aa00:   cmp    %rax,%r11
          ╭         0x00007f6b2463aa03:   jne    0x00007f6b2463aa72
   0.07%  │    ↗    0x00007f6b2463aa09:   lea    (%r12,%r10,8),%rbp           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
          │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.04%  │    │    0x00007f6b2463aa0d:   mov    0x8(%rbp),%r10d
   0.97%  │    │    0x00007f6b2463aa11:   movabs $0x7f6aac02ab00,%rax         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
          │    │    0x00007f6b2463aa1b:   movabs $0x7f6aab000000,%rsi
          │    │    0x00007f6b2463aa25:   add    %r10,%rsi
   0.32%  │    │    0x00007f6b2463aa28:   mov    0x20(%rsi),%r10
   2.84%  │    │    0x00007f6b2463aa2c:   cmp    %rax,%r10
          │╭   │    0x00007f6b2463aa2f:   jne    0x00007f6b2463aaa8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
          ││   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.02%  ││   │ ↗  0x00007f6b2463aa35:   mov    0x8(%rbp),%r10d
   0.02%  ││   │ │  0x00007f6b2463aa39:   nopl   0x0(%rax)
          ││   │ │  0x00007f6b2463aa40:   cmp    $0x102acf8,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
          ││╭  │ │  0x00007f6b2463aa47:   je     0x00007f6b2463aa5d
   0.32%  │││  │ │  0x00007f6b2463aa49:   cmp    $0x102af18,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          │││  │ │  0x00007f6b2463aa50:   jne    0x00007f6b2463aadc
   0.30%  │││  │ │  0x00007f6b2463aa56:   mov    $0x1,%eax
          │││╭ │ │  0x00007f6b2463aa5b:   jmp    0x00007f6b2463aa5f
          ││↘│ │ │  0x00007f6b2463aa5d:   xor    %eax,%eax                    ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 123)
          ││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
          ││ ↘ │ │  0x00007f6b2463aa5f:   add    $0x20,%rsp
   0.00%  ││   │ │  0x00007f6b2463aa63:   pop    %rbp
   1.96%  ││   │ │  0x00007f6b2463aa64:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││   │ │  0x00007f6b2463aa6b:   ja     0x00007f6b2463ab08
   0.09%  ││   │ │  0x00007f6b2463aa71:   ret    
   0.33%  ↘│   │ │  0x00007f6b2463aa72:   mov    0x28(%rsi),%rdi
  19.46%   │   │ │  0x00007f6b2463aa76:   mov    (%rdi),%ecx
   1.22%   │   │ │  0x00007f6b2463aa78:   add    $0x8,%rdi
           │   │ │  0x00007f6b2463aa7c:   test   %rax,%rax
   0.02%   │   │ │  0x00007f6b2463aa7f:   repnz scas %es:(%rdi),%rax
  11.56%   │  ╭│ │  0x00007f6b2463aa82:   jne    0x00007f6b2463aa8c
   1.84%   │  ││ │  0x00007f6b2463aa88:   mov    %rax,0x20(%rsi)
   1.88%   │  ↘╰ │  0x00007f6b2463aa8c:   je     0x00007f6b2463aa09
           │     │  0x00007f6b2463aa92:   mov    $0xffffffde,%esi
           │     │  0x00007f6b2463aa97:   mov    %r10d,%ebp
           │     │  0x00007f6b2463aa9a:   nop
           │     │  0x00007f6b2463aa9b:   call   0x00007f6b240c9f00           ; ImmutableOopMap {rbp=NarrowOop }
           │     │                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
           │     │                                                            ;   {runtime_call UncommonTrapBlob}
           │     │  0x00007f6b2463aaa0:   nopl   0x290(%rax,%rax,1)           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
           │     │                                                            ;   {other}
   0.33%   ↘     │  0x00007f6b2463aaa8:   mov    0x28(%rsi),%rdi
  14.73%         │  0x00007f6b2463aaac:   mov    (%rdi),%ecx
   1.17%         │  0x00007f6b2463aaae:   add    $0x8,%rdi
                 │  0x00007f6b2463aab2:   test   %rax,%rax
   1.25%         │  0x00007f6b2463aab5:   repnz scas %es:(%rdi),%rax
  11.12%        ╭│  0x00007f6b2463aab8:   jne    0x00007f6b2463aac2
   1.89%        ││  0x00007f6b2463aabe:   mov    %rax,0x20(%rsi)
   1.90%        ↘╰  0x00007f6b2463aac2:   je     0x00007f6b2463aa35
                    0x00007f6b2463aac8:   mov    $0xffffffde,%esi
                    0x00007f6b2463aacd:   xchg   %ax,%ax
                    0x00007f6b2463aacf:   call   0x00007f6b240c9f00           ; ImmutableOopMap {rbp=Oop }
                                                                              ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
                                                                              ;   {runtime_call UncommonTrapBlob}
                    0x00007f6b2463aad4:   nopl   0x10002c4(%rax,%rax,1)       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
....................................................................................................
  94.79%  <total for region 1>

....[Hottest Regions]...............................................................................
  94.79%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 582 
   4.52%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 623 
   0.14%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.33%  <...other 408 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.79%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 582 
   4.52%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 623 
   0.56%              kernel  [unknown] 
   0.01%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%           libjvm.so  fileStream::write 
   0.00%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%           libjvm.so  stringStream::write 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.06%  <...other 99 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.31%         c2, level 4
   0.56%              kernel
   0.06%           libjvm.so
   0.03%        libc-2.31.so
   0.01%                    
   0.01%      hsdis-amd64.so
   0.00%  libpthread-2.31.so
   0.00%          ld-2.31.so
   0.00%         c1, level 3
   0.00%         interpreter
   0.00%    perf-1959617.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:35

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

Benchmark                                          (typePollution)  Mode  Cnt    Score    Error  Units
TypeCheckScalabilityBenchmark.is_duplicated_1                false  avgt    5    7.086 ±  0.029  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_1:asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_1                 true  avgt    5   59.539 ±  0.296  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_1:asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_2                false  avgt    5    7.217 ±  0.190  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_2:asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_2                 true  avgt    5   87.114 ±  4.807  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_2:asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_3                false  avgt    5    7.252 ±  0.025  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_3:asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_3                 true  avgt    5  109.110 ± 11.168  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_3:asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_4                false  avgt    5    7.099 ±  0.017  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_4:asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_4                 true  avgt    5  121.364 ± 14.615  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_4:asm             true  avgt           NaN             ---
