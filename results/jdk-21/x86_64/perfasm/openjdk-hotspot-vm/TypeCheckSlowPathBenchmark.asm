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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 16)

# Run progress: 0.00% complete, ETA 00:08:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 48.836 ns/op
# Warmup Iteration   2: 48.253 ns/op
# Warmup Iteration   3: 48.490 ns/op
# Warmup Iteration   4: 48.245 ns/op
# Warmup Iteration   5: 48.259 ns/op
Iteration   1: 48.270 ns/op
Iteration   2: 48.235 ns/op
Iteration   3: 48.252 ns/op
Iteration   4: 48.233 ns/op
Iteration   5: 48.239 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  48.246 ±(99.9%) 0.060 ns/op [Average]
  (min, avg, max) = (48.233, 48.246, 48.270), stdev = 0.016
  CI (99.9%): [48.186, 48.306] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:asm":
PrintAssembly processed: 130786 total address lines.
Perf output processed (skipped 56.443 seconds):
 Column 1: cycles (50635 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 575 

                 # {method} {0x00007f10eb47d5d0} &apos;instanceof_type_check&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark&apos;
                 #           [sp+0x20]  (sp of caller)
                 0x00007f116c63a0a0:   mov    0x8(%rsi),%r10d
                 0x00007f116c63a0a4:   movabs $0x7f10ef000000,%r11
                 0x00007f116c63a0ae:   add    %r11,%r10
                 0x00007f116c63a0b1:   cmp    %r10,%rax
                 0x00007f116c63a0b4:   jne    0x00007f116c0c4080           ;   {runtime_call ic_miss_stub}
                 0x00007f116c63a0ba:   xchg   %ax,%ax
                 0x00007f116c63a0bc:   nopl   0x0(%rax)
               [Verified Entry Point]
   0.76%         0x00007f116c63a0c0:   mov    %eax,-0x14000(%rsp)
   2.58%         0x00007f116c63a0c7:   push   %rbp
   0.18%         0x00007f116c63a0c8:   sub    $0x10,%rsp
                 0x00007f116c63a0cc:   cmpl   $0x1,0x20(%r15)
   0.58%         0x00007f116c63a0d4:   jne    0x00007f116c63a186           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@-1 (line 105)
   0.17%         0x00007f116c63a0da:   mov    0x10(%rsi),%r10d             ;*getfield obj {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@1 (line 105)
   0.00%         0x00007f116c63a0de:   xchg   %ax,%ax
                 0x00007f116c63a0e0:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f116c63a15c
                                                                           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   1.57%         0x00007f116c63a0e5:   movabs $0x7f10ef00bab8,%rax         ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                 0x00007f116c63a0ef:   movabs $0x7f10ef000000,%rsi
                 0x00007f116c63a0f9:   add    %r8,%rsi
   0.77%         0x00007f116c63a0fc:   mov    0x20(%rsi),%r11
   3.71%         0x00007f116c63a100:   cmp    %rax,%r11
          ╭      0x00007f116c63a103:   jne    0x00007f116c63a126           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@4 (line 111)
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
          │  ↗   0x00007f116c63a105:   cmp    $0x102a908,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
          │╭ │   0x00007f116c63a10c:   jne    0x00007f116c63a146           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
          ││ │   0x00007f116c63a10e:   mov    $0x1,%eax                    ;*invokestatic closeNotAutoCloseable {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   1.59%  ││ │↗  0x00007f116c63a113:   add    $0x10,%rsp
          ││ ││  0x00007f116c63a117:   pop    %rbp
   4.92%  ││ ││  0x00007f116c63a118:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ ││  0x00007f116c63a11f:   ja     0x00007f116c63a170
   0.91%  ││ ││  0x00007f116c63a125:   ret    
   0.69%  ↘│ ││  0x00007f116c63a126:   mov    0x28(%rsi),%rdi
           │ ││  0x00007f116c63a12a:   mov    (%rdi),%ecx
   2.11%   │ ││  0x00007f116c63a12c:   add    $0x8,%rdi
           │ ││  0x00007f116c63a130:   test   %rax,%rax
  28.50%   │ ││  0x00007f116c63a133:   repnz scas %es:(%rdi),%rax
  30.10%   │╭││  0x00007f116c63a136:   jne    0x00007f116c63a140
           ││││  0x00007f116c63a13c:   mov    %rax,0x20(%rsi)
   7.52%   │↘╰│  0x00007f116c63a140:   je     0x00007f116c63a105
           │  │  0x00007f116c63a142:   xor    %eax,%eax
           │  ╰  0x00007f116c63a144:   jmp    0x00007f116c63a113
           ↘     0x00007f116c63a146:   mov    $0xffffffde,%esi
                 0x00007f116c63a14b:   mov    %r10d,%ebp
                 0x00007f116c63a14e:   nop
                 0x00007f116c63a14f:   call   0x00007f116c0c9f00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
                                                                           ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  86.67%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 607 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@30 (line 238)
              0x00007f116c63c6c8:   mov    $0x1,%ebp
              0x00007f116c63c6cd:   test   %r11d,%r11d
          ╭   0x00007f116c63c6d0:   jne    0x00007f116c63c705           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 239)
          │↗  0x00007f116c63c6d2:   mov    0x40(%rsp),%rsi
          ││  0x00007f116c63c6d7:   call   0x00007f116c0c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual instanceof_type_check {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 236)
          ││                                                            ;   {optimized virtual_call}
   0.77%  ││  0x00007f116c63c6dc:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual instanceof_type_check {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 236)
          ││                                                            ;   {other}
          ││  0x00007f116c63c6e4:   mov    0x38(%rsp),%r10
   6.92%  ││  0x00007f116c63c6e9:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@30 (line 238)
   3.09%  ││  0x00007f116c63c6f1:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 238)
          ││  0x00007f116c63c6f5:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 238)
          ││  0x00007f116c63c6fc:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f116c63c6ff:   nop
   0.72%  ││  0x00007f116c63c700:   test   %r10d,%r10d
          │╰  0x00007f116c63c703:   je     0x00007f116c63c6d2           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 239)
          ↘   0x00007f116c63c705:   movabs $0x7f1181a5fb90,%r10
              0x00007f116c63c70f:   call   *%r10
              0x00007f116c63c712:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@37 (line 239)
                                                                        ;   {other}
              0x00007f116c63c71a:   mov    0x30(%rsp),%r10
              0x00007f116c63c71f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@40 (line 239)
....................................................................................................
  11.50%  <total for region 2>

....[Hottest Regions]...............................................................................
  86.67%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 575 
  11.50%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 607 
   0.55%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
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
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.73%  <...other 237 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  86.67%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 575 
  11.50%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 607 
   1.58%              kernel  [unknown] 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  HighResTimeSampler::take_sample 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.12%  <...other 55 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.17%         c2, level 4
   1.58%              kernel
   0.11%           libjvm.so
   0.08%        libc-2.31.so
   0.02%                    
   0.02%         interpreter
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%          ld-2.31.so
   0.00%    perf-1959790.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 32)

# Run progress: 20.00% complete, ETA 00:07:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 61.043 ns/op
# Warmup Iteration   2: 60.408 ns/op
# Warmup Iteration   3: 61.116 ns/op
# Warmup Iteration   4: 60.594 ns/op
# Warmup Iteration   5: 60.592 ns/op
Iteration   1: 60.596 ns/op
Iteration   2: 60.583 ns/op
Iteration   3: 60.607 ns/op
Iteration   4: 60.633 ns/op
Iteration   5: 60.632 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  60.610 ±(99.9%) 0.085 ns/op [Average]
  (min, avg, max) = (60.583, 60.610, 60.633), stdev = 0.022
  CI (99.9%): [60.525, 60.695] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:asm":
PrintAssembly processed: 124500 total address lines.
Perf output processed (skipped 56.106 seconds):
 Column 1: cycles (50741 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 573 

                 # {method} {0x00007f912447d5d0} &apos;instanceof_type_check&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark&apos;
                 #           [sp+0x20]  (sp of caller)
                 0x00007f91a86384a0:   mov    0x8(%rsi),%r10d
                 0x00007f91a86384a4:   movabs $0x7f912f000000,%r11
                 0x00007f91a86384ae:   add    %r11,%r10
                 0x00007f91a86384b1:   cmp    %r10,%rax
                 0x00007f91a86384b4:   jne    0x00007f91a80c4080           ;   {runtime_call ic_miss_stub}
                 0x00007f91a86384ba:   xchg   %ax,%ax
                 0x00007f91a86384bc:   nopl   0x0(%rax)
               [Verified Entry Point]
   0.56%         0x00007f91a86384c0:   mov    %eax,-0x14000(%rsp)
   2.26%         0x00007f91a86384c7:   push   %rbp
   0.19%         0x00007f91a86384c8:   sub    $0x10,%rsp
                 0x00007f91a86384cc:   cmpl   $0x1,0x20(%r15)
   0.45%         0x00007f91a86384d4:   jne    0x00007f91a8638586           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@-1 (line 105)
   0.17%         0x00007f91a86384da:   mov    0x10(%rsi),%r10d             ;*getfield obj {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@1 (line 105)
                 0x00007f91a86384de:   xchg   %ax,%ax
                 0x00007f91a86384e0:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f91a863855c
                                                                           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   1.30%         0x00007f91a86384e5:   movabs $0x7f912f00bab8,%rax         ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                 0x00007f91a86384ef:   movabs $0x7f912f000000,%rsi
                 0x00007f91a86384f9:   add    %r8,%rsi
   0.60%         0x00007f91a86384fc:   mov    0x20(%rsi),%r11
   3.13%         0x00007f91a8638500:   cmp    %rax,%r11
          ╭      0x00007f91a8638503:   jne    0x00007f91a8638526           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@4 (line 111)
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
          │  ↗   0x00007f91a8638505:   cmp    $0x102a908,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
          │╭ │   0x00007f91a863850c:   jne    0x00007f91a8638546           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
          ││ │   0x00007f91a863850e:   mov    $0x1,%eax                    ;*invokestatic closeNotAutoCloseable {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   1.21%  ││ │↗  0x00007f91a8638513:   add    $0x10,%rsp
          ││ ││  0x00007f91a8638517:   pop    %rbp
   3.75%  ││ ││  0x00007f91a8638518:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ ││  0x00007f91a863851f:   ja     0x00007f91a8638570
   0.60%  ││ ││  0x00007f91a8638525:   ret    
   0.60%  ↘│ ││  0x00007f91a8638526:   mov    0x28(%rsi),%rdi
           │ ││  0x00007f91a863852a:   mov    (%rdi),%ecx
   1.75%   │ ││  0x00007f91a863852c:   add    $0x8,%rdi
           │ ││  0x00007f91a8638530:   test   %rax,%rax
  44.06%   │ ││  0x00007f91a8638533:   repnz scas %es:(%rdi),%rax
  22.40%   │╭││  0x00007f91a8638536:   jne    0x00007f91a8638540
           ││││  0x00007f91a863853c:   mov    %rax,0x20(%rsi)
   5.58%   │↘╰│  0x00007f91a8638540:   je     0x00007f91a8638505
           │  │  0x00007f91a8638542:   xor    %eax,%eax
           │  ╰  0x00007f91a8638544:   jmp    0x00007f91a8638513
           ↘     0x00007f91a8638546:   mov    $0xffffffde,%esi
                 0x00007f91a863854b:   mov    %r10d,%ebp
                 0x00007f91a863854e:   nop
                 0x00007f91a863854f:   call   0x00007f91a80c9f00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
                                                                           ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  88.61%  <total for region 1>

....[Hottest Regions]...............................................................................
  88.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 573 
   9.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 604 
   0.76%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.64%  <...other 236 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  88.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 573 
   9.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 604 
   1.72%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  os::javaTimeNanos 
   0.01%  libpthread-2.31.so  __libc_write 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  os::vsnprintf 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%    perf-1959858.map  [unknown] 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.12%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.98%         c2, level 4
   1.72%              kernel
   0.12%           libjvm.so
   0.08%        libc-2.31.so
   0.06%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%          ld-2.31.so
   0.00%    perf-1959858.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 64)

# Run progress: 40.00% complete, ETA 00:05:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 85.785 ns/op
# Warmup Iteration   2: 85.358 ns/op
# Warmup Iteration   3: 85.805 ns/op
# Warmup Iteration   4: 85.113 ns/op
# Warmup Iteration   5: 85.119 ns/op
Iteration   1: 85.091 ns/op
Iteration   2: 85.094 ns/op
Iteration   3: 85.112 ns/op
Iteration   4: 85.094 ns/op
Iteration   5: 85.107 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  85.100 ±(99.9%) 0.036 ns/op [Average]
  (min, avg, max) = (85.091, 85.100, 85.112), stdev = 0.009
  CI (99.9%): [85.064, 85.136] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:asm":
PrintAssembly processed: 128797 total address lines.
Perf output processed (skipped 56.294 seconds):
 Column 1: cycles (50716 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 585 

                 # {method} {0x00007f82d847d5d0} &apos;instanceof_type_check&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark&apos;
                 #           [sp+0x20]  (sp of caller)
                 0x00007f835c63a020:   mov    0x8(%rsi),%r10d
                 0x00007f835c63a024:   movabs $0x7f82e3000000,%r11
                 0x00007f835c63a02e:   add    %r11,%r10
                 0x00007f835c63a031:   cmp    %r10,%rax
                 0x00007f835c63a034:   jne    0x00007f835c0c4080           ;   {runtime_call ic_miss_stub}
                 0x00007f835c63a03a:   xchg   %ax,%ax
                 0x00007f835c63a03c:   nopl   0x0(%rax)
               [Verified Entry Point]
   0.46%         0x00007f835c63a040:   mov    %eax,-0x14000(%rsp)
   1.82%         0x00007f835c63a047:   push   %rbp
   0.02%         0x00007f835c63a048:   sub    $0x10,%rsp
   0.13%         0x00007f835c63a04c:   cmpl   $0x1,0x20(%r15)
   0.40%         0x00007f835c63a054:   jne    0x00007f835c63a106           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@-1 (line 105)
   0.01%         0x00007f835c63a05a:   mov    0x10(%rsi),%r10d             ;*getfield obj {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@1 (line 105)
   0.09%         0x00007f835c63a05e:   xchg   %ax,%ax
                 0x00007f835c63a060:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f835c63a0dc
                                                                           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   0.47%         0x00007f835c63a065:   movabs $0x7f82e300bab8,%rax         ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                 0x00007f835c63a06f:   movabs $0x7f82e3000000,%rsi
   0.12%         0x00007f835c63a079:   add    %r8,%rsi
   0.39%         0x00007f835c63a07c:   mov    0x20(%rsi),%r11
   2.24%         0x00007f835c63a080:   cmp    %rax,%r11
          ╭      0x00007f835c63a083:   jne    0x00007f835c63a0a6           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@4 (line 111)
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
          │  ↗   0x00007f835c63a085:   cmp    $0x102a908,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
          │╭ │   0x00007f835c63a08c:   jne    0x00007f835c63a0c6           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
          ││ │   0x00007f835c63a08e:   mov    $0x1,%eax                    ;*invokestatic closeNotAutoCloseable {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   1.12%  ││ │↗  0x00007f835c63a093:   add    $0x10,%rsp
          ││ ││  0x00007f835c63a097:   pop    %rbp
   3.00%  ││ ││  0x00007f835c63a098:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ ││  0x00007f835c63a09f:   ja     0x00007f835c63a0f0
   0.49%  ││ ││  0x00007f835c63a0a5:   ret    
   0.45%  ↘│ ││  0x00007f835c63a0a6:   mov    0x28(%rsi),%rdi
           │ ││  0x00007f835c63a0aa:   mov    (%rdi),%ecx
   1.37%   │ ││  0x00007f835c63a0ac:   add    $0x8,%rdi
           │ ││  0x00007f835c63a0b0:   test   %rax,%rax
  55.71%   │ ││  0x00007f835c63a0b3:   repnz scas %es:(%rdi),%rax
  17.45%   │╭││  0x00007f835c63a0b6:   jne    0x00007f835c63a0c0
           ││││  0x00007f835c63a0bc:   mov    %rax,0x20(%rsi)
   4.74%   │↘╰│  0x00007f835c63a0c0:   je     0x00007f835c63a085
   0.00%   │  │  0x00007f835c63a0c2:   xor    %eax,%eax
           │  ╰  0x00007f835c63a0c4:   jmp    0x00007f835c63a093
           ↘     0x00007f835c63a0c6:   mov    $0xffffffde,%esi
                 0x00007f835c63a0cb:   mov    %r10d,%ebp
                 0x00007f835c63a0ce:   nop
                 0x00007f835c63a0cf:   call   0x00007f835c0c9f00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
                                                                           ;   {runtime_call UncommonTrapBlob}
                 0x00007f835c63a0d4:   nopl   0x244(%rax,%rax,1)           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  90.47%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.47%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 585 
   7.55%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 626 
   0.38%              kernel  [unknown] 
   0.33%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
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
   0.74%  <...other 243 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.47%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 585 
   7.55%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 626 
   1.71%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  os::vsnprintf 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.12%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.02%         c2, level 4
   1.71%              kernel
   0.13%           libjvm.so
   0.08%        libc-2.31.so
   0.02%                    
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 128)

# Run progress: 60.00% complete, ETA 00:03:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 135.594 ns/op
# Warmup Iteration   2: 134.814 ns/op
# Warmup Iteration   3: 135.585 ns/op
# Warmup Iteration   4: 134.830 ns/op
# Warmup Iteration   5: 134.826 ns/op
Iteration   1: 134.812 ns/op
Iteration   2: 134.833 ns/op
Iteration   3: 134.812 ns/op
Iteration   4: 134.814 ns/op
Iteration   5: 134.825 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  134.819 ±(99.9%) 0.035 ns/op [Average]
  (min, avg, max) = (134.812, 134.819, 134.833), stdev = 0.009
  CI (99.9%): [134.784, 134.854] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:asm":
PrintAssembly processed: 133336 total address lines.
Perf output processed (skipped 56.492 seconds):
 Column 1: cycles (50984 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 603 

                 # {method} {0x00007fa7e847d5d0} &apos;instanceof_type_check&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark&apos;
                 #           [sp+0x20]  (sp of caller)
                 0x00007fa86c639da0:   mov    0x8(%rsi),%r10d
                 0x00007fa86c639da4:   movabs $0x7fa7f3000000,%r11
                 0x00007fa86c639dae:   add    %r11,%r10
                 0x00007fa86c639db1:   cmp    %r10,%rax
                 0x00007fa86c639db4:   jne    0x00007fa86c0c4080           ;   {runtime_call ic_miss_stub}
                 0x00007fa86c639dba:   xchg   %ax,%ax
                 0x00007fa86c639dbc:   nopl   0x0(%rax)
               [Verified Entry Point]
   0.32%         0x00007fa86c639dc0:   mov    %eax,-0x14000(%rsp)
   1.14%         0x00007fa86c639dc7:   push   %rbp
   0.06%         0x00007fa86c639dc8:   sub    $0x10,%rsp
                 0x00007fa86c639dcc:   cmpl   $0x1,0x20(%r15)
   0.28%         0x00007fa86c639dd4:   jne    0x00007fa86c639e86           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@-1 (line 105)
   0.06%         0x00007fa86c639dda:   mov    0x10(%rsi),%r10d             ;*getfield obj {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@1 (line 105)
                 0x00007fa86c639dde:   xchg   %ax,%ax
                 0x00007fa86c639de0:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007fa86c639e5c
                                                                           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   0.63%         0x00007fa86c639de5:   movabs $0x7fa7f300bab8,%rax         ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                 0x00007fa86c639def:   movabs $0x7fa7f3000000,%rsi
                 0x00007fa86c639df9:   add    %r8,%rsi
   0.34%         0x00007fa86c639dfc:   mov    0x20(%rsi),%r11
   1.47%         0x00007fa86c639e00:   cmp    %rax,%r11
          ╭      0x00007fa86c639e03:   jne    0x00007fa86c639e26           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@4 (line 111)
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
          │  ↗   0x00007fa86c639e05:   cmp    $0x102a908,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
          │╭ │   0x00007fa86c639e0c:   jne    0x00007fa86c639e46           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
          ││ │   0x00007fa86c639e0e:   mov    $0x1,%eax                    ;*invokestatic closeNotAutoCloseable {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   0.62%  ││ │↗  0x00007fa86c639e13:   add    $0x10,%rsp
          ││ ││  0x00007fa86c639e17:   pop    %rbp
   1.89%  ││ ││  0x00007fa86c639e18:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ ││  0x00007fa86c639e1f:   ja     0x00007fa86c639e70
   0.32%  ││ ││  0x00007fa86c639e25:   ret    
   0.27%  ↘│ ││  0x00007fa86c639e26:   mov    0x28(%rsi),%rdi
           │ ││  0x00007fa86c639e2a:   mov    (%rdi),%ecx
   0.94%   │ ││  0x00007fa86c639e2c:   add    $0x8,%rdi
           │ ││  0x00007fa86c639e30:   test   %rax,%rax
  70.66%   │ ││  0x00007fa86c639e33:   repnz scas %es:(%rdi),%rax
  11.18%   │╭││  0x00007fa86c639e36:   jne    0x00007fa86c639e40
           ││││  0x00007fa86c639e3c:   mov    %rax,0x20(%rsi)
   2.91%   │↘╰│  0x00007fa86c639e40:   je     0x00007fa86c639e05
           │  │  0x00007fa86c639e42:   xor    %eax,%eax
           │  ╰  0x00007fa86c639e44:   jmp    0x00007fa86c639e13
           ↘     0x00007fa86c639e46:   mov    $0xffffffde,%esi
                 0x00007fa86c639e4b:   mov    %r10d,%ebp
                 0x00007fa86c639e4e:   nop
                 0x00007fa86c639e4f:   call   0x00007fa86c0c9f00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
                                                                           ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  93.10%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 603 
   4.41%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 642 
   0.95%              kernel  [unknown] 
   0.27%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  xmlStream::write_text 
   0.70%  <...other 244 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 603 
   4.41%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 642 
   2.18%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  outputStream::print 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  syscall 
   0.00%  libpthread-2.31.so  _pthread_cleanup_pop 
   0.15%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.50%         c2, level 4
   2.18%              kernel
   0.18%           libjvm.so
   0.06%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%      hsdis-amd64.so
   0.00%    perf-1959988.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 256)

# Run progress: 80.00% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 235.469 ns/op
# Warmup Iteration   2: 236.173 ns/op
# Warmup Iteration   3: 233.582 ns/op
# Warmup Iteration   4: 233.582 ns/op
# Warmup Iteration   5: 233.584 ns/op
Iteration   1: 233.584 ns/op
Iteration   2: 233.580 ns/op
Iteration   3: 233.586 ns/op
Iteration   4: 233.574 ns/op
Iteration   5: 233.607 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  233.586 ±(99.9%) 0.047 ns/op [Average]
  (min, avg, max) = (233.574, 233.586, 233.607), stdev = 0.012
  CI (99.9%): [233.539, 233.633] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:asm":
PrintAssembly processed: 132446 total address lines.
Perf output processed (skipped 56.443 seconds):
 Column 1: cycles (50660 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 598 

                 # {method} {0x00007f1df447d5d0} &apos;instanceof_type_check&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark&apos;
                 #           [sp+0x20]  (sp of caller)
                 0x00007f1e7863b220:   mov    0x8(%rsi),%r10d
                 0x00007f1e7863b224:   movabs $0x7f1dff000000,%r11
                 0x00007f1e7863b22e:   add    %r11,%r10
                 0x00007f1e7863b231:   cmp    %r10,%rax
                 0x00007f1e7863b234:   jne    0x00007f1e780c4080           ;   {runtime_call ic_miss_stub}
                 0x00007f1e7863b23a:   xchg   %ax,%ax
                 0x00007f1e7863b23c:   nopl   0x0(%rax)
               [Verified Entry Point]
   0.18%         0x00007f1e7863b240:   mov    %eax,-0x14000(%rsp)
   0.63%         0x00007f1e7863b247:   push   %rbp
   0.01%         0x00007f1e7863b248:   sub    $0x10,%rsp
   0.05%         0x00007f1e7863b24c:   cmpl   $0x1,0x20(%r15)
   0.15%         0x00007f1e7863b254:   jne    0x00007f1e7863b306           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@-1 (line 105)
   0.00%         0x00007f1e7863b25a:   mov    0x10(%rsi),%r10d             ;*getfield obj {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@1 (line 105)
   0.02%         0x00007f1e7863b25e:   xchg   %ax,%ax
                 0x00007f1e7863b260:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f1e7863b2dc
                                                                           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   0.16%         0x00007f1e7863b265:   movabs $0x7f1dff00bab8,%rax         ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                 0x00007f1e7863b26f:   movabs $0x7f1dff000000,%rsi
   0.04%         0x00007f1e7863b279:   add    %r8,%rsi
   0.13%         0x00007f1e7863b27c:   mov    0x20(%rsi),%r11
   0.83%         0x00007f1e7863b280:   cmp    %rax,%r11
          ╭      0x00007f1e7863b283:   jne    0x00007f1e7863b2a6           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@4 (line 111)
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
          │  ↗   0x00007f1e7863b285:   cmp    $0x102a908,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
          │╭ │   0x00007f1e7863b28c:   jne    0x00007f1e7863b2c6           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
          ││ │   0x00007f1e7863b28e:   mov    $0x1,%eax                    ;*invokestatic closeNotAutoCloseable {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
   0.30%  ││ │↗  0x00007f1e7863b293:   add    $0x10,%rsp
          ││ ││  0x00007f1e7863b297:   pop    %rbp
   0.98%  ││ ││  0x00007f1e7863b298:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ ││  0x00007f1e7863b29f:   ja     0x00007f1e7863b2f0
   0.19%  ││ ││  0x00007f1e7863b2a5:   ret    
   0.17%  ↘│ ││  0x00007f1e7863b2a6:   mov    0x28(%rsi),%rdi
           │ ││  0x00007f1e7863b2aa:   mov    (%rdi),%ecx
   0.46%   │ ││  0x00007f1e7863b2ac:   add    $0x8,%rdi
           │ ││  0x00007f1e7863b2b0:   test   %rax,%rax
  83.32%   │ ││  0x00007f1e7863b2b3:   repnz scas %es:(%rdi),%rax
   6.34%   │╭││  0x00007f1e7863b2b6:   jne    0x00007f1e7863b2c0
           ││││  0x00007f1e7863b2bc:   mov    %rax,0x20(%rsi)
   1.56%   │↘╰│  0x00007f1e7863b2c0:   je     0x00007f1e7863b285
           │  │  0x00007f1e7863b2c2:   xor    %eax,%eax
           │  ╰  0x00007f1e7863b2c4:   jmp    0x00007f1e7863b293
           ↘     0x00007f1e7863b2c6:   mov    $0xffffffde,%esi
                 0x00007f1e7863b2cb:   mov    %r10d,%ebp
                 0x00007f1e7863b2ce:   nop
                 0x00007f1e7863b2cf:   call   0x00007f1e780c9f00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 113)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 105)
                                                                           ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  95.52%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.52%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 598 
   2.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 4, compile id 626 
   0.52%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
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
   0.79%  <...other 250 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.52%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 598 
   2.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 4, compile id 626 
   1.60%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fflush 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%  libpthread-2.31.so  __condvar_cancel_waiting 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.13%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.12%         c2, level 4
   1.60%              kernel
   0.11%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.01%          ld-2.31.so
   0.00%      hsdis-amd64.so
   0.00%    perf-1960053.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:09:04

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
TypeCheckSlowPathBenchmark.instanceof_type_check                16  avgt    5   48.246 ± 0.060  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:asm            16  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                32  avgt    5   60.610 ± 0.085  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:asm            32  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                64  avgt    5   85.100 ± 0.036  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:asm            64  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check               128  avgt    5  134.819 ± 0.035  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:asm           128  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check               256  avgt    5  233.586 ± 0.047  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:asm           256  avgt           NaN            ---
