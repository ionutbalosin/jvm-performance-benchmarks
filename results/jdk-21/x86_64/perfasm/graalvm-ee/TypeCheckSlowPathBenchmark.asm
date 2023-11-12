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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 16)

# Run progress: 0.00% complete, ETA 00:08:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 22.963 ns/op
# Warmup Iteration   2: 22.356 ns/op
# Warmup Iteration   3: 22.464 ns/op
# Warmup Iteration   4: 22.551 ns/op
# Warmup Iteration   5: 22.557 ns/op
Iteration   1: 22.561 ns/op
Iteration   2: 22.584 ns/op
Iteration   3: 22.559 ns/op
Iteration   4: 22.533 ns/op
Iteration   5: 22.553 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  22.558 ±(99.9%) 0.070 ns/op [Average]
  (min, avg, max) = (22.533, 22.558, 22.584), stdev = 0.018
  CI (99.9%): [22.488, 22.628] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:asm":
PrintAssembly processed: 230220 total address lines.
Perf output processed (skipped 60.921 seconds):
 Column 1: cycles (50870 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 995 

               0x00007f47dad84113:   jne    0x00007f47dad841a5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
               0x00007f47dad84119:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@7 (line 105)
               0x00007f47dad8411e:   mov    0x10(%rsp),%rbp
               0x00007f47dad84123:   add    $0x18,%rsp
               0x00007f47dad84127:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               0x00007f47dad8412e:   ja     0x00007f47dad841d8
               0x00007f47dad84134:   ret    
   9.90%       0x00007f47dad84135:   cmp    $0xbab8,%r10d                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
               0x00007f47dad8413c:   je     0x00007f47dad8410c
               0x00007f47dad8413e:   mov    0x28(%r11),%rax
   0.00%       0x00007f47dad84142:   mov    (%rax),%r9d
   4.94%       0x00007f47dad84145:   mov    $0x0,%ecx
          ╭    0x00007f47dad8414a:   jmp    0x00007f47dad8417a
          │    0x00007f47dad8414f:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007f47dad8415a:   data16 data16 xchg %ax,%ax
          │    0x00007f47dad8415e:   xchg   %ax,%ax
  27.91%  │ ↗  0x00007f47dad84160:   mov    %ecx,%ebx
          │ │  0x00007f47dad84162:   shl    $0x3,%ebx
   3.77%  │ │  0x00007f47dad84165:   lea    0x8(%rbx),%ebx
          │ │  0x00007f47dad84168:   movslq %ebx,%rbx
  27.75%  │ │  0x00007f47dad8416b:   mov    (%rax,%rbx,1),%rbx
   0.00%  │ │  0x00007f47dad8416f:   cmp    %rbx,%r8
          │╭│  0x00007f47dad84172:   je     0x00007f47dad8419b
   4.01%  │││  0x00007f47dad84178:   inc    %ecx
          ↘││  0x00007f47dad8417a:   cmp    %ecx,%r9d
           │╰  0x00007f47dad8417d:   jg     0x00007f47dad84160           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 111)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   1.47%   │   0x00007f47dad8417f:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@7 (line 105)
   0.00%   │   0x00007f47dad84184:   mov    0x10(%rsp),%rbp
   0.27%   │   0x00007f47dad84189:   add    $0x18,%rsp
           │   0x00007f47dad8418d:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │   0x00007f47dad84194:   ja     0x00007f47dad841ec
   1.45%   │   0x00007f47dad8419a:   ret    
           ↘   0x00007f47dad8419b:   mov    %r8,0x20(%r11)
               0x00007f47dad8419f:   nop
               0x00007f47dad841a0:   jmp    0x00007f47dad8410c           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
               0x00007f47dad841a5:   movl   $0xffffffcd,0x484(%r15)      ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
               0x00007f47dad841b0:   movq   $0x14,0x490(%r15)
               0x00007f47dad841bb:   call   0x00007f47da76a17a           ; ImmutableOopMap {rsi=Oop }
....................................................................................................
  81.47%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 995 

            # {method} {0x00007f475447fde8} &apos;instanceof_type_check&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark&apos;
            #           [sp+0x20]  (sp of caller)
            0x00007f47dad840a0:   mov    0x8(%rsi),%r10d
            0x00007f47dad840a4:   movabs $0x7f475f000000,%r12
            0x00007f47dad840ae:   add    %r12,%r10
            0x00007f47dad840b1:   xor    %r12,%r12
            0x00007f47dad840b4:   cmp    %r10,%rax
            0x00007f47dad840b7:   jne    0x00007f47da764080           ;   {runtime_call ic_miss_stub}
            0x00007f47dad840bd:   data16 xchg %ax,%ax
          [Verified Entry Point]
   0.30%    0x00007f47dad840c0:   mov    %eax,-0x14000(%rsp)
   1.83%    0x00007f47dad840c7:   sub    $0x18,%rsp
   0.30%    0x00007f47dad840cb:   nop
            0x00007f47dad840cc:   cmpl   $0x0,0x20(%r15)
   1.16%    0x00007f47dad840d4:   jne    0x00007f47dad841c8
   0.41%    0x00007f47dad840da:   mov    %rbp,0x10(%rsp)
   0.20%    0x00007f47dad840df:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rsi=Oop }
                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@0 (line 105)
            0x00007f47dad840e2:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f47dad84200
   4.27%    0x00007f47dad840ea:   movabs $0x7f475f000000,%rax         ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 111)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   0.17%    0x00007f47dad840f4:   lea    (%rax,%r10,1),%r11
   1.40%    0x00007f47dad840f8:   movabs $0x7f475f00bab8,%r8          ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
            0x00007f47dad84102:   cmp    0x20(%r11),%r8
            0x00007f47dad84106:   jne    0x00007f47dad84135
            0x00007f47dad8410c:   cmp    $0x102b3b8,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
            0x00007f47dad84113:   jne    0x00007f47dad841a5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
            0x00007f47dad84119:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@7 (line 105)
            0x00007f47dad8411e:   mov    0x10(%rsp),%rbp
            0x00007f47dad84123:   add    $0x18,%rsp
....................................................................................................
  10.04%  <total for region 2>

....[Hottest Regions]...............................................................................
  81.47%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 995 
  10.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 995 
   5.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 1019 
   0.86%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
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
   1.30%  <...other 399 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.51%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 995 
   5.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 1019 
   2.62%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.14%  <...other 65 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  97.04%      jvmci, level 4
   2.62%              kernel
   0.13%           libjvm.so
   0.09%        libc-2.31.so
   0.07%                    
   0.03%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
....................................................................................................
  99.99%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 32)

# Run progress: 20.00% complete, ETA 00:07:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 47.514 ns/op
# Warmup Iteration   2: 45.554 ns/op
# Warmup Iteration   3: 47.548 ns/op
# Warmup Iteration   4: 47.332 ns/op
# Warmup Iteration   5: 47.130 ns/op
Iteration   1: 47.115 ns/op
Iteration   2: 47.099 ns/op
Iteration   3: 47.134 ns/op
Iteration   4: 47.869 ns/op
Iteration   5: 47.387 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  47.321 ±(99.9%) 1.264 ns/op [Average]
  (min, avg, max) = (47.099, 47.321, 47.869), stdev = 0.328
  CI (99.9%): [46.057, 48.584] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:asm":
PrintAssembly processed: 232428 total address lines.
Perf output processed (skipped 60.861 seconds):
 Column 1: cycles (50690 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1004 

               0x00007f9186d7fe13:   jne    0x00007f9186d7fea5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
               0x00007f9186d7fe19:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@7 (line 105)
               0x00007f9186d7fe1e:   mov    0x10(%rsp),%rbp
               0x00007f9186d7fe23:   add    $0x18,%rsp
               0x00007f9186d7fe27:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               0x00007f9186d7fe2e:   ja     0x00007f9186d7fed8
               0x00007f9186d7fe34:   ret    
   4.54%       0x00007f9186d7fe35:   cmp    $0xbab8,%r10d                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
               0x00007f9186d7fe3c:   je     0x00007f9186d7fe0c
               0x00007f9186d7fe3e:   mov    0x28(%r11),%rax
               0x00007f9186d7fe42:   mov    (%rax),%r9d
   2.45%       0x00007f9186d7fe45:   mov    $0x0,%ecx
          ╭    0x00007f9186d7fe4a:   jmp    0x00007f9186d7fe7a
          │    0x00007f9186d7fe4f:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007f9186d7fe5a:   data16 data16 xchg %ax,%ax
          │    0x00007f9186d7fe5e:   xchg   %ax,%ax
   2.22%  │ ↗  0x00007f9186d7fe60:   mov    %ecx,%ebx
   0.07%  │ │  0x00007f9186d7fe62:   shl    $0x3,%ebx
  27.47%  │ │  0x00007f9186d7fe65:   lea    0x8(%rbx),%ebx
   0.15%  │ │  0x00007f9186d7fe68:   movslq %ebx,%rbx
   1.59%  │ │  0x00007f9186d7fe6b:   mov    (%rax,%rbx,1),%rbx
   0.50%  │ │  0x00007f9186d7fe6f:   cmp    %rbx,%r8
          │╭│  0x00007f9186d7fe72:   je     0x00007f9186d7fe9b
  26.92%  │││  0x00007f9186d7fe78:   inc    %ecx
   0.20%  ↘││  0x00007f9186d7fe7a:   cmp    %ecx,%r9d
           │╰  0x00007f9186d7fe7d:   jg     0x00007f9186d7fe60           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 111)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   1.44%   │   0x00007f9186d7fe7f:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@7 (line 105)
   4.69%   │   0x00007f9186d7fe84:   mov    0x10(%rsp),%rbp
   3.13%   │   0x00007f9186d7fe89:   add    $0x18,%rsp
           │   0x00007f9186d7fe8d:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │   0x00007f9186d7fe94:   ja     0x00007f9186d7feec
   3.30%   │   0x00007f9186d7fe9a:   ret    
           ↘   0x00007f9186d7fe9b:   mov    %r8,0x20(%r11)
               0x00007f9186d7fe9f:   nop
               0x00007f9186d7fea0:   jmp    0x00007f9186d7fe0c           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
               0x00007f9186d7fea5:   movl   $0xffffffcd,0x484(%r15)      ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
               0x00007f9186d7feb0:   movq   $0x14,0x490(%r15)
               0x00007f9186d7febb:   call   0x00007f918676a17a           ; ImmutableOopMap {rsi=Oop }
....................................................................................................
  78.69%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 1027 

              0x00007f9186d82b73:   mov    0x10(%rsp),%rdx
              0x00007f9186d82b78:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@10 (line 234)
              0x00007f9186d82b7c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f9186d82b85:   jmp    0x00007f9186d82baf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 236)
          │   0x00007f9186d82b8a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f9186d82b95:   data16 data16 xchg %ax,%ax
          │   0x00007f9186d82b99:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 238)
   0.80%  │↗  0x00007f9186d82ba0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 238)
          ││  0x00007f9186d82ba7:   test   %eax,(%r11)                  ;   {poll}
   0.50%  ││  0x00007f9186d82baa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 236)
          ↘│  0x00007f9186d82baf:   mov    0x8(%rsp),%r10
   0.47%   │  0x00007f9186d82bb4:   mov    %r10,%rsi
           │  0x00007f9186d82bb7:   call   0x00007f9186764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual instanceof_type_check {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   0.78%   │  0x00007f9186d82bbc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
           │  0x00007f9186d82bc4:   mov    0x20(%rsp),%r10
   7.14%   │  0x00007f9186d82bc9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@26 (line 237)
   0.79%   │  0x00007f9186d82bcc:   mov    0x18(%rsp),%rsi
           │  0x00007f9186d82bd1:   cmpb   $0x0,0x94(%rsi)
   4.24%   ╰  0x00007f9186d82bd8:   je     0x00007f9186d82ba0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 238)
              0x00007f9186d82bda:   mov    %r10,0x20(%rsp)
              0x00007f9186d82bdf:   nop
              0x00007f9186d82be0:   call   0x00007f91a0173df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f9186d82be5:   nop
              0x00007f9186d82be6:   mov    0x10(%rsp),%rdx
              0x00007f9186d82beb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@40 (line 239)
              0x00007f9186d82bef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@46 (line 240)
....................................................................................................
  14.72%  <total for region 2>

....[Hottest Regions]...............................................................................
  78.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1004 
  14.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 1027 
   4.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1004 
   0.28%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.96%  <...other 330 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  83.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1004 
  14.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 1027 
   1.50%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  MethodMatcher::matches 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  Monitor::wait_without_safepoint_check 
   0.00%            libjvm.so  PcDesc::PcDesc 
   0.00%            libjvm.so  RelocIterator::initialize 
   0.23%  <...other 107 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.07%       jvmci, level 4
   1.50%               kernel
   0.20%            libjvm.so
   0.11%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.00%     Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 64)

# Run progress: 40.00% complete, ETA 00:05:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 59.845 ns/op
# Warmup Iteration   2: 59.628 ns/op
# Warmup Iteration   3: 59.513 ns/op
# Warmup Iteration   4: 59.511 ns/op
# Warmup Iteration   5: 59.510 ns/op
Iteration   1: 59.425 ns/op
Iteration   2: 59.493 ns/op
Iteration   3: 59.459 ns/op
Iteration   4: 59.450 ns/op
Iteration   5: 59.487 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  59.463 ±(99.9%) 0.107 ns/op [Average]
  (min, avg, max) = (59.425, 59.463, 59.493), stdev = 0.028
  CI (99.9%): [59.356, 59.570] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:asm":
PrintAssembly processed: 234655 total address lines.
Perf output processed (skipped 61.077 seconds):
 Column 1: cycles (51126 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 999 

               0x00007f5682d80393:   jne    0x00007f5682d80425           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
               0x00007f5682d80399:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@7 (line 105)
               0x00007f5682d8039e:   mov    0x10(%rsp),%rbp
               0x00007f5682d803a3:   add    $0x18,%rsp
               0x00007f5682d803a7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               0x00007f5682d803ae:   ja     0x00007f5682d80458
               0x00007f5682d803b4:   ret    
   3.46%       0x00007f5682d803b5:   cmp    $0xbab8,%r10d                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
               0x00007f5682d803bc:   je     0x00007f5682d8038c
               0x00007f5682d803be:   mov    0x28(%r11),%rax
   0.00%       0x00007f5682d803c2:   mov    (%rax),%r9d
   1.90%       0x00007f5682d803c5:   mov    $0x0,%ecx
          ╭    0x00007f5682d803ca:   jmp    0x00007f5682d803fa
          │    0x00007f5682d803cf:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007f5682d803da:   data16 data16 xchg %ax,%ax
          │    0x00007f5682d803de:   xchg   %ax,%ax
  37.11%  │ ↗  0x00007f5682d803e0:   mov    %ecx,%ebx
          │ │  0x00007f5682d803e2:   shl    $0x3,%ebx
   5.56%  │ │  0x00007f5682d803e5:   lea    0x8(%rbx),%ebx
          │ │  0x00007f5682d803e8:   movslq %ebx,%rbx
  36.45%  │ │  0x00007f5682d803eb:   mov    (%rax,%rbx,1),%rbx
   0.04%  │ │  0x00007f5682d803ef:   cmp    %rbx,%r8
          │╭│  0x00007f5682d803f2:   je     0x00007f5682d8041b
   5.66%  │││  0x00007f5682d803f8:   inc    %ecx
          ↘││  0x00007f5682d803fa:   cmp    %ecx,%r9d
           │╰  0x00007f5682d803fd:   jg     0x00007f5682d803e0           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 111)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   0.43%   │   0x00007f5682d803ff:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@7 (line 105)
   0.00%   │   0x00007f5682d80404:   mov    0x10(%rsp),%rbp
   0.12%   │   0x00007f5682d80409:   add    $0x18,%rsp
           │   0x00007f5682d8040d:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │   0x00007f5682d80414:   ja     0x00007f5682d8046c
   0.51%   │   0x00007f5682d8041a:   ret    
           ↘   0x00007f5682d8041b:   mov    %r8,0x20(%r11)
               0x00007f5682d8041f:   nop
               0x00007f5682d80420:   jmp    0x00007f5682d8038c           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
               0x00007f5682d80425:   movl   $0xffffffcd,0x484(%r15)      ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
               0x00007f5682d80430:   movq   $0x14,0x490(%r15)
               0x00007f5682d8043b:   call   0x00007f568276a17a           ; ImmutableOopMap {rsi=Oop }
....................................................................................................
  91.24%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 999 
   3.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 999 
   2.31%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 1029 
   1.34%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   1.07%  <...other 337 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 999 
   2.75%              kernel  [unknown] 
   2.31%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 1029 
   0.08%                      <unknown> 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  fileStream::write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.11%  <...other 52 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.92%      jvmci, level 4
   2.75%              kernel
   0.12%           libjvm.so
   0.09%        libc-2.31.so
   0.08%                    
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%              [vdso]
   0.00%    perf-2153993.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 128)

# Run progress: 60.00% complete, ETA 00:03:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 121.961 ns/op
# Warmup Iteration   2: 121.336 ns/op
# Warmup Iteration   3: 121.131 ns/op
# Warmup Iteration   4: 120.786 ns/op
# Warmup Iteration   5: 120.888 ns/op
Iteration   1: 120.775 ns/op
Iteration   2: 120.797 ns/op
Iteration   3: 120.802 ns/op
Iteration   4: 120.760 ns/op
Iteration   5: 120.828 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  120.792 ±(99.9%) 0.100 ns/op [Average]
  (min, avg, max) = (120.760, 120.792, 120.828), stdev = 0.026
  CI (99.9%): [120.692, 120.893] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:asm":
PrintAssembly processed: 240471 total address lines.
Perf output processed (skipped 61.463 seconds):
 Column 1: cycles (50536 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1012 

               0x00007ff852d83193:   jne    0x00007ff852d83225           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
               0x00007ff852d83199:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@7 (line 105)
               0x00007ff852d8319e:   mov    0x10(%rsp),%rbp
               0x00007ff852d831a3:   add    $0x18,%rsp
               0x00007ff852d831a7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               0x00007ff852d831ae:   ja     0x00007ff852d83258
               0x00007ff852d831b4:   ret    
   1.83%       0x00007ff852d831b5:   cmp    $0xbab8,%r10d                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
               0x00007ff852d831bc:   je     0x00007ff852d8318c
               0x00007ff852d831be:   mov    0x28(%r11),%rax
               0x00007ff852d831c2:   mov    (%rax),%r9d
   0.93%       0x00007ff852d831c5:   mov    $0x0,%ecx
          ╭    0x00007ff852d831ca:   jmp    0x00007ff852d831fa
          │    0x00007ff852d831cf:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007ff852d831da:   data16 data16 xchg %ax,%ax
          │    0x00007ff852d831de:   xchg   %ax,%ax
   0.47%  │ ↗  0x00007ff852d831e0:   mov    %ecx,%ebx
          │ │  0x00007ff852d831e2:   shl    $0x3,%ebx
  40.86%  │ │  0x00007ff852d831e5:   lea    0x8(%rbx),%ebx
          │ │  0x00007ff852d831e8:   movslq %ebx,%rbx
   0.47%  │ │  0x00007ff852d831eb:   mov    (%rax,%rbx,1),%rbx
   0.15%  │ │  0x00007ff852d831ef:   cmp    %rbx,%r8
          │╭│  0x00007ff852d831f2:   je     0x00007ff852d8321b
  40.97%  │││  0x00007ff852d831f8:   inc    %ecx
          ↘││  0x00007ff852d831fa:   cmp    %ecx,%r9d
           │╰  0x00007ff852d831fd:   jg     0x00007ff852d831e0           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 111)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   0.71%   │   0x00007ff852d831ff:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@7 (line 105)
   1.87%   │   0x00007ff852d83204:   mov    0x10(%rsp),%rbp
   1.33%   │   0x00007ff852d83209:   add    $0x18,%rsp
           │   0x00007ff852d8320d:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │   0x00007ff852d83214:   ja     0x00007ff852d8326c
   1.24%   │   0x00007ff852d8321a:   ret    
           ↘   0x00007ff852d8321b:   mov    %r8,0x20(%r11)
               0x00007ff852d8321f:   nop
               0x00007ff852d83220:   jmp    0x00007ff852d8318c           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
               0x00007ff852d83225:   movl   $0xffffffcd,0x484(%r15)      ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
               0x00007ff852d83230:   movq   $0x14,0x490(%r15)
               0x00007ff852d8323b:   call   0x00007ff85276a17a           ; ImmutableOopMap {rsi=Oop }
....................................................................................................
  90.84%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.84%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1012 
   5.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 1035 
   2.18%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1012 
   0.14%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
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
   0.91%  <...other 311 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1012 
   5.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 1035 
   1.23%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.02%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strncmp_avx2 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.17%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.37%      jvmci, level 4
   1.23%              kernel
   0.15%           libjvm.so
   0.10%        libc-2.31.so
   0.08%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%    perf-2154058.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 256)

# Run progress: 80.00% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 222.554 ns/op
# Warmup Iteration   2: 221.724 ns/op
# Warmup Iteration   3: 221.418 ns/op
# Warmup Iteration   4: 221.579 ns/op
# Warmup Iteration   5: 221.804 ns/op
Iteration   1: 222.120 ns/op
Iteration   2: 221.639 ns/op
Iteration   3: 221.608 ns/op
Iteration   4: 221.646 ns/op
Iteration   5: 221.434 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  221.689 ±(99.9%) 0.986 ns/op [Average]
  (min, avg, max) = (221.434, 221.689, 222.120), stdev = 0.256
  CI (99.9%): [220.703, 222.675] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:asm":
PrintAssembly processed: 248555 total address lines.
Perf output processed (skipped 61.854 seconds):
 Column 1: cycles (51214 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1044 

               0x00007fba16d85c13:   jne    0x00007fba16d85ca5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
               0x00007fba16d85c19:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@7 (line 105)
               0x00007fba16d85c1e:   mov    0x10(%rsp),%rbp
               0x00007fba16d85c23:   add    $0x18,%rsp
               0x00007fba16d85c27:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               0x00007fba16d85c2e:   ja     0x00007fba16d85cd8
               0x00007fba16d85c34:   ret    
   1.04%       0x00007fba16d85c35:   cmp    $0xbab8,%r10d                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
               0x00007fba16d85c3c:   je     0x00007fba16d85c0c
               0x00007fba16d85c3e:   mov    0x28(%r11),%rax
               0x00007fba16d85c42:   mov    (%rax),%r9d
   0.50%       0x00007fba16d85c45:   mov    $0x0,%ecx
          ╭    0x00007fba16d85c4a:   jmp    0x00007fba16d85c7a
          │    0x00007fba16d85c4f:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007fba16d85c5a:   data16 data16 xchg %ax,%ax
          │    0x00007fba16d85c5e:   xchg   %ax,%ax
   0.30%  │ ↗  0x00007fba16d85c60:   mov    %ecx,%ebx
          │ │  0x00007fba16d85c62:   shl    $0x3,%ebx
  44.04%  │ │  0x00007fba16d85c65:   lea    0x8(%rbx),%ebx
          │ │  0x00007fba16d85c68:   movslq %ebx,%rbx
   0.32%  │ │  0x00007fba16d85c6b:   mov    (%rax,%rbx,1),%rbx
   0.43%  │ │  0x00007fba16d85c6f:   cmp    %rbx,%r8
          │╭│  0x00007fba16d85c72:   je     0x00007fba16d85c9b
  43.52%  │││  0x00007fba16d85c78:   inc    %ecx
          ↘││  0x00007fba16d85c7a:   cmp    %ecx,%r9d
           │╰  0x00007fba16d85c7d:   jg     0x00007fba16d85c60           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 111)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   0.38%   │   0x00007fba16d85c7f:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@7 (line 105)
   0.81%   │   0x00007fba16d85c84:   mov    0x10(%rsp),%rbp
   0.69%   │   0x00007fba16d85c89:   add    $0x18,%rsp
           │   0x00007fba16d85c8d:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │   0x00007fba16d85c94:   ja     0x00007fba16d85cec
   0.64%   │   0x00007fba16d85c9a:   ret    
           ↘   0x00007fba16d85c9b:   mov    %r8,0x20(%r11)
               0x00007fba16d85c9f:   nop
               0x00007fba16d85ca0:   jmp    0x00007fba16d85c0c           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
               0x00007fba16d85ca5:   movl   $0xffffffcd,0x484(%r15)      ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
               0x00007fba16d85cb0:   movq   $0x14,0x490(%r15)
               0x00007fba16d85cbb:   call   0x00007fba1676a17a           ; ImmutableOopMap {rsi=Oop }
....................................................................................................
  92.69%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1044 
   3.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 1066 
   1.64%               kernel  [unknown] 
   1.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1044 
   0.11%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
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
   0.95%  <...other 306 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 1044 
   3.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 1066 
   2.89%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.00%     perf-2154121.map  [unknown] 
   0.00%  libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.14%  <...other 71 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.81%       jvmci, level 4
   2.89%               kernel
   0.12%            libjvm.so
   0.09%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.03%                     
   0.01%       hsdis-amd64.so
   0.01%          c1, level 3
   0.01%   libpthread-2.31.so
   0.00%     perf-2154121.map
   0.00%          interpreter
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:09:32

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
TypeCheckSlowPathBenchmark.instanceof_type_check                16  avgt    5   22.558 ± 0.070  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:asm            16  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                32  avgt    5   47.321 ± 1.264  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:asm            32  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                64  avgt    5   59.463 ± 0.107  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:asm            64  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check               128  avgt    5  120.792 ± 0.100  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:asm           128  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check               256  avgt    5  221.689 ± 0.986  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:asm           256  avgt           NaN            ---
