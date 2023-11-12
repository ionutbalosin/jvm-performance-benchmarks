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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 16)

# Run progress: 0.00% complete, ETA 00:08:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 22.387 ns/op
# Warmup Iteration   2: 22.294 ns/op
# Warmup Iteration   3: 23.385 ns/op
# Warmup Iteration   4: 22.814 ns/op
# Warmup Iteration   5: 22.745 ns/op
Iteration   1: 22.833 ns/op
Iteration   2: 22.901 ns/op
Iteration   3: 22.833 ns/op
Iteration   4: 22.881 ns/op
Iteration   5: 22.809 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  22.851 ±(99.9%) 0.147 ns/op [Average]
  (min, avg, max) = (22.809, 22.851, 22.901), stdev = 0.038
  CI (99.9%): [22.704, 22.998] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:asm":
PrintAssembly processed: 224821 total address lines.
Perf output processed (skipped 60.687 seconds):
 Column 1: cycles (50636 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 969 

                    # {method} {0x00007fe46047fde8} &apos;instanceof_type_check&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark&apos;
                    #           [sp+0x20]  (sp of caller)
                    0x00007fe4e723f220:   mov    0x8(%rsi),%r10d
                    0x00007fe4e723f224:   movabs $0x7fe46b000000,%r12
                    0x00007fe4e723f22e:   add    %r12,%r10
                    0x00007fe4e723f231:   xor    %r12,%r12
                    0x00007fe4e723f234:   cmp    %r10,%rax
                    0x00007fe4e723f237:   jne    0x00007fe4e6c2f080           ;   {runtime_call ic_miss_stub}
                    0x00007fe4e723f23d:   data16 xchg %ax,%ax
                  [Verified Entry Point]
   0.79%            0x00007fe4e723f240:   mov    %eax,-0x14000(%rsp)
   1.12%            0x00007fe4e723f247:   sub    $0x18,%rsp
   0.24%            0x00007fe4e723f24b:   nop
   0.52%            0x00007fe4e723f24c:   cmpl   $0x1,0x20(%r15)
   0.70%            0x00007fe4e723f254:   jne    0x00007fe4e723f332
   0.72%            0x00007fe4e723f25a:   mov    %rbp,0x10(%rsp)
   0.11%            0x00007fe4e723f25f:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rsi=Oop }
                                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@0 (line 105)
   0.49%            0x00007fe4e723f262:   mov    0x8(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007fe4e723f35a
   3.03%            0x00007fe4e723f269:   movabs $0x7fe46b000000,%r10         ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 111)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   0.15%            0x00007fe4e723f273:   lea    (%r10,%rax,1),%r11
   1.40%            0x00007fe4e723f277:   movabs $0x7fe46b00bab8,%r10         ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
   0.07%            0x00007fe4e723f281:   cmp    0x20(%r11),%r10
          ╭         0x00007fe4e723f285:   jne    0x00007fe4e723f2b3
          │ ↗    ↗  0x00007fe4e723f28b:   cmp    $0x102b3b8,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
          │╭│    │  0x00007fe4e723f291:   jne    0x00007fe4e723f30f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
          │││    │  0x00007fe4e723f297:   mov    $0x1,%eax
   0.06%  │││   ↗│  0x00007fe4e723f29c:   mov    0x10(%rsp),%rbp
   0.02%  │││   ││  0x00007fe4e723f2a1:   add    $0x18,%rsp
   1.55%  │││   ││  0x00007fe4e723f2a5:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││   ││  0x00007fe4e723f2ac:   ja     0x00007fe4e723f346
   0.01%  │││   ││  0x00007fe4e723f2b2:   ret    
   9.68%  ↘││   ││  0x00007fe4e723f2b3:   cmp    $0xbab8,%eax                 ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
           │╰   ││  0x00007fe4e723f2b9:   je     0x00007fe4e723f28b
           │    ││  0x00007fe4e723f2bb:   mov    0x28(%r11),%r8
   0.00%   │    ││  0x00007fe4e723f2bf:   mov    (%r8),%r9d
   4.91%   │    ││  0x00007fe4e723f2c2:   mov    $0x0,%ecx
           │ ╭  ││  0x00007fe4e723f2c7:   jmp    0x00007fe4e723f2fa
           │ │  ││  0x00007fe4e723f2cc:   data16 data16 nopw 0x0(%rax,%rax,1)
           │ │  ││  0x00007fe4e723f2d7:   data16 data16 xchg %ax,%ax
           │ │  ││  0x00007fe4e723f2db:   nopl   0x0(%rax,%rax,1)
  29.77%   │ │ ↗││  0x00007fe4e723f2e0:   mov    %ecx,%ebx
   0.00%   │ │ │││  0x00007fe4e723f2e2:   shl    $0x3,%ebx
   1.42%   │ │ │││  0x00007fe4e723f2e5:   lea    0x8(%rbx),%ebx
           │ │ │││  0x00007fe4e723f2e8:   movslq %ebx,%rbx
  30.27%   │ │ │││  0x00007fe4e723f2eb:   mov    (%r8,%rbx,1),%rbx
           │ │ │││  0x00007fe4e723f2ef:   cmp    %rbx,%r10
           │ │╭│││  0x00007fe4e723f2f2:   je     0x00007fe4e723f306
   1.53%   │ │││││  0x00007fe4e723f2f8:   inc    %ecx
           │ ↘││││  0x00007fe4e723f2fa:   cmp    %ecx,%r9d
           │  │╰││  0x00007fe4e723f2fd:   jg     0x00007fe4e723f2e0
   1.56%   │  │ ││  0x00007fe4e723f2ff:   mov    $0x0,%eax
   0.01%   │  │ ╰│  0x00007fe4e723f304:   jmp    0x00007fe4e723f29c
           │  ↘  │  0x00007fe4e723f306:   mov    %r10,0x20(%r11)
           │     ╰  0x00007fe4e723f30a:   jmp    0x00007fe4e723f28b           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 111)
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
           ↘        0x00007fe4e723f30f:   movl   $0xffffffcd,0x484(%r15)      ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
                    0x00007fe4e723f31a:   movq   $0x14,0x490(%r15)
                    0x00007fe4e723f325:   call   0x00007fe4e6c3517a           ; ImmutableOopMap {rsi=Oop }
                                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  90.12%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 969 
   7.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 997 
   0.43%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
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
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.96%  <...other 315 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 969 
   7.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 997 
   1.75%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  fileStream::write 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%       hsdis-amd64.so  putop 
   0.00%         libc-2.31.so  syscall 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.00%            libjvm.so  decode_env::print_hook_comments 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%         libc-2.31.so  __sigsetjmp 
   0.15%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.95%       jvmci, level 4
   1.75%               kernel
   0.10%            libjvm.so
   0.08%         libc-2.31.so
   0.04%                     
   0.03%  libjvmcicompiler.so
   0.03%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.00%     perf-2133031.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 32)

# Run progress: 20.00% complete, ETA 00:07:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 35.146 ns/op
# Warmup Iteration   2: 34.927 ns/op
# Warmup Iteration   3: 35.582 ns/op
# Warmup Iteration   4: 46.227 ns/op
# Warmup Iteration   5: 46.270 ns/op
Iteration   1: 46.248 ns/op
Iteration   2: 46.226 ns/op
Iteration   3: 46.301 ns/op
Iteration   4: 46.233 ns/op
Iteration   5: 46.321 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  46.266 ±(99.9%) 0.165 ns/op [Average]
  (min, avg, max) = (46.226, 46.266, 46.321), stdev = 0.043
  CI (99.9%): [46.101, 46.431] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:asm":
PrintAssembly processed: 224461 total address lines.
Perf output processed (skipped 60.693 seconds):
 Column 1: cycles (50682 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 967 

                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   0.09%            0x00007f09a323e273:   lea    (%r10,%rax,1),%r11
   0.72%            0x00007f09a323e277:   movabs $0x7f092300bab8,%r10         ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                    0x00007f09a323e281:   cmp    0x20(%r11),%r10
          ╭         0x00007f09a323e285:   jne    0x00007f09a323e2b3
          │ ↗    ↗  0x00007f09a323e28b:   cmp    $0x102b3b8,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
          │╭│    │  0x00007f09a323e291:   jne    0x00007f09a323e30f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
          │││    │  0x00007f09a323e297:   mov    $0x1,%eax
   0.95%  │││   ↗│  0x00007f09a323e29c:   mov    0x10(%rsp),%rbp
   5.50%  │││   ││  0x00007f09a323e2a1:   add    $0x18,%rsp
          │││   ││  0x00007f09a323e2a5:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││   ││  0x00007f09a323e2ac:   ja     0x00007f09a323e346
   2.40%  │││   ││  0x00007f09a323e2b2:   ret    
   4.55%  ↘││   ││  0x00007f09a323e2b3:   cmp    $0xbab8,%eax                 ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
           │╰   ││  0x00007f09a323e2b9:   je     0x00007f09a323e28b
           │    ││  0x00007f09a323e2bb:   mov    0x28(%r11),%r8
           │    ││  0x00007f09a323e2bf:   mov    (%r8),%r9d
   2.44%   │    ││  0x00007f09a323e2c2:   mov    $0x0,%ecx
           │ ╭  ││  0x00007f09a323e2c7:   jmp    0x00007f09a323e2fa
           │ │  ││  0x00007f09a323e2cc:   data16 data16 nopw 0x0(%rax,%rax,1)
           │ │  ││  0x00007f09a323e2d7:   data16 data16 xchg %ax,%ax
           │ │  ││  0x00007f09a323e2db:   nopl   0x0(%rax,%rax,1)
   1.92%   │ │ ↗││  0x00007f09a323e2e0:   mov    %ecx,%ebx
   0.01%   │ │ │││  0x00007f09a323e2e2:   shl    $0x3,%ebx
  26.91%   │ │ │││  0x00007f09a323e2e5:   lea    0x8(%rbx),%ebx
   0.01%   │ │ │││  0x00007f09a323e2e8:   movslq %ebx,%rbx
   2.01%   │ │ │││  0x00007f09a323e2eb:   mov    (%r8,%rbx,1),%rbx
   0.01%   │ │ │││  0x00007f09a323e2ef:   cmp    %rbx,%r10
           │ │╭│││  0x00007f09a323e2f2:   je     0x00007f09a323e306
  28.10%   │ │││││  0x00007f09a323e2f8:   inc    %ecx
   0.00%   │ ↘││││  0x00007f09a323e2fa:   cmp    %ecx,%r9d
           │  │╰││  0x00007f09a323e2fd:   jg     0x00007f09a323e2e0
   0.08%   │  │ ││  0x00007f09a323e2ff:   mov    $0x0,%eax
   3.63%   │  │ ╰│  0x00007f09a323e304:   jmp    0x00007f09a323e29c
           │  ↘  │  0x00007f09a323e306:   mov    %r10,0x20(%r11)
           │     ╰  0x00007f09a323e30a:   jmp    0x00007f09a323e28b           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 111)
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
           ↘        0x00007f09a323e30f:   movl   $0xffffffcd,0x484(%r15)      ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
                    0x00007f09a323e31a:   movq   $0x14,0x490(%r15)
                    0x00007f09a323e325:   call   0x00007f09a2c3517a           ; ImmutableOopMap {rsi=Oop }
                                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  78.53%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 997 

              0x00007f09a3244410:   mov    0x18(%rsp),%rsi
              0x00007f09a3244415:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f09a3244420:   cmpb   $0x0,0x94(%rsi)
              0x00007f09a3244427:   jne    0x00007f09a32444ba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 238)
              0x00007f09a324442d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f09a3244436:   jmp    0x00007f09a324444f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 236)
          │   0x00007f09a324443b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 238)
   0.89%  │↗  0x00007f09a3244440:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 238)
          ││  0x00007f09a3244447:   test   %eax,(%r11)                  ;   {poll}
   0.28%  ││  0x00007f09a324444a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 236)
          ↘│  0x00007f09a324444f:   mov    0x8(%rsp),%r10
   0.56%   │  0x00007f09a3244454:   mov    %r10,%rsi
           │  0x00007f09a3244457:   call   0x00007f09a2c2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual instanceof_type_check {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   0.84%   │  0x00007f09a324445c:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
           │  0x00007f09a3244464:   mov    0x20(%rsp),%r10
   7.73%   │  0x00007f09a3244469:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@26 (line 237)
   0.85%   │  0x00007f09a324446c:   mov    0x18(%rsp),%rsi
           │  0x00007f09a3244471:   cmpb   $0x0,0x94(%rsi)
   3.31%   ╰  0x00007f09a3244478:   je     0x00007f09a3244440           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 238)
              0x00007f09a324447a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 239)
              0x00007f09a324447f:   nop
              0x00007f09a3244480:   call   0x00007f09ba4fadf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f09a3244485:   nop
              0x00007f09a3244486:   mov    0x10(%rsp),%rdx
              0x00007f09a324448b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@40 (line 239)
              0x00007f09a324448f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  14.46%  <total for region 2>

....[Hottest Regions]...............................................................................
  78.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 967 
  14.46%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 997 
   5.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 967 
   0.44%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.91%  <...other 284 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  83.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 967 
  14.46%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 997 
   1.61%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  outputStream::print 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%           libjvm.so  decode_env::print_hook_comments 
   0.13%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.08%      jvmci, level 4
   1.61%              kernel
   0.13%           libjvm.so
   0.08%        libc-2.31.so
   0.07%                    
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 64)

# Run progress: 40.00% complete, ETA 00:05:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 60.183 ns/op
# Warmup Iteration   2: 59.748 ns/op
# Warmup Iteration   3: 72.615 ns/op
# Warmup Iteration   4: 71.850 ns/op
# Warmup Iteration   5: 72.260 ns/op
Iteration   1: 71.820 ns/op
Iteration   2: 71.690 ns/op
Iteration   3: 71.376 ns/op
Iteration   4: 71.797 ns/op
Iteration   5: 71.765 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  71.690 ±(99.9%) 0.700 ns/op [Average]
  (min, avg, max) = (71.376, 71.690, 71.820), stdev = 0.182
  CI (99.9%): [70.989, 72.390] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:asm":
PrintAssembly processed: 227870 total address lines.
Perf output processed (skipped 60.803 seconds):
 Column 1: cycles (50615 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 999 

                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   0.02%            0x00007ff997245273:   lea    (%r10,%rax,1),%r11
   0.53%            0x00007ff997245277:   movabs $0x7ff91b00bab8,%r10         ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                    0x00007ff997245281:   cmp    0x20(%r11),%r10
          ╭         0x00007ff997245285:   jne    0x00007ff9972452b3
          │ ↗    ↗  0x00007ff99724528b:   cmp    $0x102b3b8,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
          │╭│    │  0x00007ff997245291:   jne    0x00007ff99724530f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
          │││    │  0x00007ff997245297:   mov    $0x1,%eax
   0.50%  │││   ↗│  0x00007ff99724529c:   mov    0x10(%rsp),%rbp
   2.95%  │││   ││  0x00007ff9972452a1:   add    $0x18,%rsp
          │││   ││  0x00007ff9972452a5:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││   ││  0x00007ff9972452ac:   ja     0x00007ff997245346
   1.30%  │││   ││  0x00007ff9972452b2:   ret    
   3.08%  ↘││   ││  0x00007ff9972452b3:   cmp    $0xbab8,%eax                 ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
           │╰   ││  0x00007ff9972452b9:   je     0x00007ff99724528b
           │    ││  0x00007ff9972452bb:   mov    0x28(%r11),%r8
           │    ││  0x00007ff9972452bf:   mov    (%r8),%r9d
   1.59%   │    ││  0x00007ff9972452c2:   mov    $0x0,%ecx
           │ ╭  ││  0x00007ff9972452c7:   jmp    0x00007ff9972452fa
           │ │  ││  0x00007ff9972452cc:   data16 data16 nopw 0x0(%rax,%rax,1)
           │ │  ││  0x00007ff9972452d7:   data16 data16 xchg %ax,%ax
           │ │  ││  0x00007ff9972452db:   nopl   0x0(%rax,%rax,1)
   5.31%   │ │ ↗││  0x00007ff9972452e0:   mov    %ecx,%ebx
   0.10%   │ │ │││  0x00007ff9972452e2:   shl    $0x3,%ebx
  31.11%   │ │ │││  0x00007ff9972452e5:   lea    0x8(%rbx),%ebx
   0.13%   │ │ │││  0x00007ff9972452e8:   movslq %ebx,%rbx
   5.03%   │ │ │││  0x00007ff9972452eb:   mov    (%r8,%rbx,1),%rbx
   0.83%   │ │ │││  0x00007ff9972452ef:   cmp    %rbx,%r10
           │ │╭│││  0x00007ff9972452f2:   je     0x00007ff997245306
  30.44%   │ │││││  0x00007ff9972452f8:   inc    %ecx
   0.00%   │ ↘││││  0x00007ff9972452fa:   cmp    %ecx,%r9d
           │  │╰││  0x00007ff9972452fd:   jg     0x00007ff9972452e0
   0.27%   │  │ ││  0x00007ff9972452ff:   mov    $0x0,%eax
   2.63%   │  │ ╰│  0x00007ff997245304:   jmp    0x00007ff99724529c
           │  ↘  │  0x00007ff997245306:   mov    %r10,0x20(%r11)
           │     ╰  0x00007ff99724530a:   jmp    0x00007ff99724528b           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 111)
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
           ↘        0x00007ff99724530f:   movl   $0xffffffcd,0x484(%r15)      ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
                    0x00007ff99724531a:   movq   $0x14,0x490(%r15)
                    0x00007ff997245325:   call   0x00007ff996c3517a           ; ImmutableOopMap {rsi=Oop }
                                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  85.27%  <total for region 1>

....[Hottest Regions]...............................................................................
  85.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 999 
   9.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 1025 
   3.64%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 999 
   0.25%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.92%  <...other 312 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  88.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 999 
   9.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 1025 
   1.46%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%            libjvm.so  VMError::is_error_reported 
   0.16%  <...other 79 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.21%       jvmci, level 4
   1.46%               kernel
   0.12%            libjvm.so
   0.08%         libc-2.31.so
   0.04%                     
   0.03%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%               [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 128)

# Run progress: 60.00% complete, ETA 00:03:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 121.626 ns/op
# Warmup Iteration   2: 121.047 ns/op
# Warmup Iteration   3: 121.954 ns/op
# Warmup Iteration   4: 121.465 ns/op
# Warmup Iteration   5: 121.505 ns/op
Iteration   1: 121.461 ns/op
Iteration   2: 121.401 ns/op
Iteration   3: 121.555 ns/op
Iteration   4: 121.475 ns/op
Iteration   5: 121.410 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  121.460 ±(99.9%) 0.238 ns/op [Average]
  (min, avg, max) = (121.401, 121.460, 121.555), stdev = 0.062
  CI (99.9%): [121.223, 121.698] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:asm":
PrintAssembly processed: 231856 total address lines.
Perf output processed (skipped 61.140 seconds):
 Column 1: cycles (50610 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1019 

                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   0.02%            0x00007f41db244cf3:   lea    (%r10,%rax,1),%r11
   0.26%            0x00007f41db244cf7:   movabs $0x7f415f00bab8,%r10         ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                    0x00007f41db244d01:   cmp    0x20(%r11),%r10
          ╭         0x00007f41db244d05:   jne    0x00007f41db244d33
          │ ↗    ↗  0x00007f41db244d0b:   cmp    $0x102b3b8,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
          │╭│    │  0x00007f41db244d11:   jne    0x00007f41db244d8f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
          │││    │  0x00007f41db244d17:   mov    $0x1,%eax
   0.20%  │││   ↗│  0x00007f41db244d1c:   mov    0x10(%rsp),%rbp
   1.97%  │││   ││  0x00007f41db244d21:   add    $0x18,%rsp
          │││   ││  0x00007f41db244d25:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││   ││  0x00007f41db244d2c:   ja     0x00007f41db244dc6
   0.91%  │││   ││  0x00007f41db244d32:   ret    
   1.73%  ↘││   ││  0x00007f41db244d33:   cmp    $0xbab8,%eax                 ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
           │╰   ││  0x00007f41db244d39:   je     0x00007f41db244d0b
           │    ││  0x00007f41db244d3b:   mov    0x28(%r11),%r8
           │    ││  0x00007f41db244d3f:   mov    (%r8),%r9d
   0.90%   │    ││  0x00007f41db244d42:   mov    $0x0,%ecx
           │ ╭  ││  0x00007f41db244d47:   jmp    0x00007f41db244d7a
           │ │  ││  0x00007f41db244d4c:   data16 data16 nopw 0x0(%rax,%rax,1)
           │ │  ││  0x00007f41db244d57:   data16 data16 xchg %ax,%ax
           │ │  ││  0x00007f41db244d5b:   nopl   0x0(%rax,%rax,1)
   0.61%   │ │ ↗││  0x00007f41db244d60:   mov    %ecx,%ebx
           │ │ │││  0x00007f41db244d62:   shl    $0x3,%ebx
  40.59%   │ │ │││  0x00007f41db244d65:   lea    0x8(%rbx),%ebx
   0.01%   │ │ │││  0x00007f41db244d68:   movslq %ebx,%rbx
   0.66%   │ │ │││  0x00007f41db244d6b:   mov    (%r8,%rbx,1),%rbx
           │ │ │││  0x00007f41db244d6f:   cmp    %rbx,%r10
           │ │╭│││  0x00007f41db244d72:   je     0x00007f41db244d86
  40.76%   │ │││││  0x00007f41db244d78:   inc    %ecx
   0.02%   │ ↘││││  0x00007f41db244d7a:   cmp    %ecx,%r9d
           │  │╰││  0x00007f41db244d7d:   jg     0x00007f41db244d60
   0.65%   │  │ ││  0x00007f41db244d7f:   mov    $0x0,%eax
   1.98%   │  │ ╰│  0x00007f41db244d84:   jmp    0x00007f41db244d1c
           │  ↘  │  0x00007f41db244d86:   mov    %r10,0x20(%r11)
           │     ╰  0x00007f41db244d8a:   jmp    0x00007f41db244d0b           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 111)
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
           ↘        0x00007f41db244d8f:   movl   $0xffffffcd,0x484(%r15)      ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
                    0x00007f41db244d9a:   movq   $0x14,0x490(%r15)
                    0x00007f41db244da5:   call   0x00007f41dac3517a           ; ImmutableOopMap {rsi=Oop }
                                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  90.98%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1019 
   5.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 1040 
   1.97%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1019 
   0.16%               kernel  [unknown] 
   0.15%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
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
   0.97%  <...other 308 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1019 
   5.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 1040 
   1.44%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.16%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.22%       jvmci, level 4
   1.44%               kernel
   0.14%            libjvm.so
   0.10%         libc-2.31.so
   0.04%                     
   0.02%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.01%               [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 256)

# Run progress: 80.00% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 224.817 ns/op
# Warmup Iteration   2: 223.384 ns/op
# Warmup Iteration   3: 222.534 ns/op
# Warmup Iteration   4: 222.018 ns/op
# Warmup Iteration   5: 222.016 ns/op
Iteration   1: 222.013 ns/op
Iteration   2: 222.004 ns/op
Iteration   3: 222.013 ns/op
Iteration   4: 222.005 ns/op
Iteration   5: 222.009 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  222.009 ±(99.9%) 0.015 ns/op [Average]
  (min, avg, max) = (222.004, 222.009, 222.013), stdev = 0.004
  CI (99.9%): [221.993, 222.024] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:asm":
PrintAssembly processed: 242451 total address lines.
Perf output processed (skipped 61.472 seconds):
 Column 1: cycles (50541 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1050 

                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   0.00%            0x00007f342f247073:   lea    (%r10,%rax,1),%r11
   0.19%            0x00007f342f247077:   movabs $0x7f33b300bab8,%r10         ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                    0x00007f342f247081:   cmp    0x20(%r11),%r10
          ╭         0x00007f342f247085:   jne    0x00007f342f2470b3
          │ ↗    ↗  0x00007f342f24708b:   cmp    $0x102b3b8,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
          │╭│    │  0x00007f342f247091:   jne    0x00007f342f24710f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
          │││    │  0x00007f342f247097:   mov    $0x1,%eax
   0.14%  │││   ↗│  0x00007f342f24709c:   mov    0x10(%rsp),%rbp
   0.93%  │││   ││  0x00007f342f2470a1:   add    $0x18,%rsp
          │││   ││  0x00007f342f2470a5:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││   ││  0x00007f342f2470ac:   ja     0x00007f342f247146
   0.47%  │││   ││  0x00007f342f2470b2:   ret    
   0.99%  ↘││   ││  0x00007f342f2470b3:   cmp    $0xbab8,%eax                 ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
           │╰   ││  0x00007f342f2470b9:   je     0x00007f342f24708b
           │    ││  0x00007f342f2470bb:   mov    0x28(%r11),%r8
           │    ││  0x00007f342f2470bf:   mov    (%r8),%r9d
   0.54%   │    ││  0x00007f342f2470c2:   mov    $0x0,%ecx
           │ ╭  ││  0x00007f342f2470c7:   jmp    0x00007f342f2470fa
           │ │  ││  0x00007f342f2470cc:   data16 data16 nopw 0x0(%rax,%rax,1)
           │ │  ││  0x00007f342f2470d7:   data16 data16 xchg %ax,%ax
           │ │  ││  0x00007f342f2470db:   nopl   0x0(%rax,%rax,1)
   0.30%   │ │ ↗││  0x00007f342f2470e0:   mov    %ecx,%ebx
           │ │ │││  0x00007f342f2470e2:   shl    $0x3,%ebx
  44.80%   │ │ │││  0x00007f342f2470e5:   lea    0x8(%rbx),%ebx
           │ │ │││  0x00007f342f2470e8:   movslq %ebx,%rbx
   0.34%   │ │ │││  0x00007f342f2470eb:   mov    (%r8,%rbx,1),%rbx
   0.47%   │ │ │││  0x00007f342f2470ef:   cmp    %rbx,%r10
           │ │╭│││  0x00007f342f2470f2:   je     0x00007f342f247106
  44.10%   │ │││││  0x00007f342f2470f8:   inc    %ecx
           │ ↘││││  0x00007f342f2470fa:   cmp    %ecx,%r9d
           │  │╰││  0x00007f342f2470fd:   jg     0x00007f342f2470e0
   0.33%   │  │ ││  0x00007f342f2470ff:   mov    $0x0,%eax
   0.79%   │  │ ╰│  0x00007f342f247104:   jmp    0x00007f342f24709c
           │  ↘  │  0x00007f342f247106:   mov    %r10,0x20(%r11)
           │     ╰  0x00007f342f24710a:   jmp    0x00007f342f24708b           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 111)
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
           ↘        0x00007f342f24710f:   movl   $0xffffffcd,0x484(%r15)      ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
                    0x00007f342f24711a:   movq   $0x14,0x490(%r15)
                    0x00007f342f247125:   call   0x00007f342ec3517a           ; ImmutableOopMap {rsi=Oop }
                                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  94.21%  <total for region 1>

....[Hottest Regions]...............................................................................
  94.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1050 
   2.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 1072 
   1.19%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1050 
   0.17%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
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
   0.90%  <...other 294 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.40%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1050 
   2.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 1072 
   1.28%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  ___vsnprintf 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.13%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.35%      jvmci, level 4
   1.28%              kernel
   0.11%                    
   0.10%           libjvm.so
   0.10%        libc-2.31.so
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%        runtime stub
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:09:31

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

Benchmark                                             (supertypes)  Mode  Cnt    Score   Error  Units
TypeCheckSlowPathBenchmark.instanceof_type_check                16  avgt    5   22.851 ± 0.147  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:asm            16  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                32  avgt    5   46.266 ± 0.165  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:asm            32  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                64  avgt    5   71.690 ± 0.700  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:asm            64  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check               128  avgt    5  121.460 ± 0.238  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:asm           128  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check               256  avgt    5  222.009 ± 0.015  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:asm           256  avgt           NaN            ---
