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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark.method_call_baseline

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3570.903 ns/op
# Warmup Iteration   2: 3554.524 ns/op
# Warmup Iteration   3: 3554.345 ns/op
# Warmup Iteration   4: 3554.187 ns/op
# Warmup Iteration   5: 3554.373 ns/op
Iteration   1: 3554.288 ns/op
Iteration   2: 3554.291 ns/op
Iteration   3: 3554.248 ns/op
Iteration   4: 3554.283 ns/op
Iteration   5: 3554.175 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark.method_call_baseline":
  3554.257 ±(99.9%) 0.189 ns/op [Average]
  (min, avg, max) = (3554.175, 3554.257, 3554.291), stdev = 0.049
  CI (99.9%): [3554.068, 3554.445] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark.method_call_baseline:asm":
PrintAssembly processed: 217349 total address lines.
Perf output processed (skipped 60.300 seconds):
 Column 1: cycles (50704 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline, version 2, compile id 950 

                    # {method} {0x00007ff8c847c050} &apos;method_call_baseline&apos; &apos;()D&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadMethodCallStoreBenchmark&apos;
                    #           [sp+0x20]  (sp of caller)
                    0x00007ff94f239e20:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                    0x00007ff94f239e24:   movabs $0x7ff8d3000000,%r12
                    0x00007ff94f239e2e:   add    %r12,%r10
                    0x00007ff94f239e31:   xor    %r12,%r12
                    0x00007ff94f239e34:   cmp    %r10,%rax
                    0x00007ff94f239e37:   jne    0x00007ff94ec2f080           ;   {runtime_call ic_miss_stub}
                    0x00007ff94f239e3d:   data16 xchg %ax,%ax
                  [Verified Entry Point]
   0.02%            0x00007ff94f239e40:   mov    %eax,-0x14000(%rsp)
                    0x00007ff94f239e47:   sub    $0x18,%rsp
   0.01%            0x00007ff94f239e4b:   nop
                    0x00007ff94f239e4c:   cmpl   $0x1,0x20(%r15)
          ╭         0x00007ff94f239e54:   jne    0x00007ff94f239edb
          │     ↗   0x00007ff94f239e5a:   vmovsd -0x62(%rip),%xmm0        # 0x00007ff94f239e00
          │     │                                                             ;   {section_word}
   0.01%  │     │   0x00007ff94f239e62:   vmovsd -0x62(%rip),%xmm1        # 0x00007ff94f239e08
          │     │                                                             ;   {section_word}
          │     │   0x00007ff94f239e6a:   mov    $0x1,%r11d
          │     │   0x00007ff94f239e70:   mov    $0x5,%r10d
          │     │   0x00007ff94f239e76:   data16 nopw 0x0(%rax,%rax,1)        ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@8 (line 92)
          │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   0.01%  │  ↗↗ │   0x00007ff94f239e80:   cmp    $0x3e8,%r10d
          │╭ ││ │   0x00007ff94f239e87:   jge    0x00007ff94f239ebc           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 92)
          ││ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          ││ ││ │   0x00007ff94f239e8d:   vcvtsi2sd %r10d,%xmm2,%xmm2         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          ││ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   5.35%  ││ ││ │   0x00007ff94f239e92:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          ││ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
  71.26%  ││ ││ │   0x00007ff94f239e96:   mov    %r11d,%r8d
          ││ ││ │   0x00007ff94f239e99:   xor    $0x1,%r8d                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@41 (line 98)
          ││ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          ││ ││ │   0x00007ff94f239e9d:   lea    0x2(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          ││ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          ││ ││ │   0x00007ff94f239ea1:   test   %r11d,%r11d
          ││╭││ │   0x00007ff94f239ea4:   jne    0x00007ff94f239eb3           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@16 (line 93)
          │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   2.70%  │││││ │   0x00007ff94f239eaa:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 96)
          │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   8.03%  │││││ │   0x00007ff94f239eae:   mov    %r8d,%r11d
          │││╰│ │   0x00007ff94f239eb1:   jmp    0x00007ff94f239e80           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@40 (line 98)
          │││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   2.63%  ││↘ │ │   0x00007ff94f239eb3:   vaddsd %xmm1,%xmm2,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││  │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 94)
          ││  │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   7.97%  ││  │ │   0x00007ff94f239eb7:   mov    %r8d,%r11d
          ││  ╰ │   0x00007ff94f239eba:   jmp    0x00007ff94f239e80           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@8 (line 92)
          ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   0.00%  │↘    │   0x00007ff94f239ebc:   vmovsd 0x10(%rsi),%xmm0             ;*getfield circleRadius {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@5 (line 82)
          │     │   0x00007ff94f239ec1:   vmulsd %xmm0,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@12 (line 82)
          │     │   0x00007ff94f239ec5:   vmulsd %xmm1,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@14 (line 82)
   0.03%  │     │   0x00007ff94f239ec9:   add    $0x18,%rsp
          │     │↗  0x00007ff94f239ecd:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │    ╭││  0x00007ff94f239ed4:   ja     0x00007ff94f239eeb
          │    │││  0x00007ff94f239eda:   ret    
          ↘    │││  0x00007ff94f239edb:   mov    %rbp,0x10(%rsp)
               │││  0x00007ff94f239ee0:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
               │╰│  0x00007ff94f239ee5:   jmp    0x00007ff94f239e5a
               │ │  0x00007ff94f239eea:   hlt    
               ↘ ╰  0x00007ff94f239eeb:   lea    -0x25(%rip),%rcx        # 0x00007ff94f239ecd
                    0x00007ff94f239ef2:   mov    %rcx,0x468(%r15)
....................................................................................................
  98.03%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline, version 2, compile id 950 
   0.38%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadMethodCallStoreBenchmark_method_call_baseline_jmhTest::method_call_baseline_avgt_jmhStub, version 5, compile id 978 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.82%  <...other 277 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline, version 2, compile id 950 
   1.61%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadMethodCallStoreBenchmark_method_call_baseline_jmhTest::method_call_baseline_avgt_jmhStub, version 5, compile id 978 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  _IO_str_init_static_internal 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  PeriodicTask::real_time_tick 
   0.14%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.05%      jvmci, level 4
   1.61%              kernel
   0.12%           libjvm.so
   0.09%        libc-2.31.so
   0.06%                    
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark.method_call_dse

# Run progress: 50.00% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4402.599 ns/op
# Warmup Iteration   2: 4349.128 ns/op
# Warmup Iteration   3: 4348.766 ns/op
# Warmup Iteration   4: 4348.694 ns/op
# Warmup Iteration   5: 4348.796 ns/op
Iteration   1: 4348.809 ns/op
Iteration   2: 4348.662 ns/op
Iteration   3: 4348.834 ns/op
Iteration   4: 4348.769 ns/op
Iteration   5: 4348.718 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark.method_call_dse":
  4348.758 ±(99.9%) 0.268 ns/op [Average]
  (min, avg, max) = (4348.662, 4348.758, 4348.834), stdev = 0.070
  CI (99.9%): [4348.490, 4349.026] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark.method_call_dse:asm":
PrintAssembly processed: 213930 total address lines.
Perf output processed (skipped 60.181 seconds):
 Column 1: cycles (50581 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse, version 2, compile id 947 

   0.01%                0x00007f94ab23c45a:   mov    $0x5,%r10d
          ╭             0x00007f94ab23c460:   jmp    0x00007f94ab23c484           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@8 (line 92)
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@0 (line 70)
          │             0x00007f94ab23c465:   data16 data16 nopw 0x0(%rax,%rax,1)
          │             0x00007f94ab23c470:   data16 data16 xchg %ax,%ax
          │             0x00007f94ab23c474:   nopl   0x0(%rax,%rax,1)
          │             0x00007f94ab23c47c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 92)
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@0 (line 70)
   4.35%  │↗            0x00007f94ab23c480:   lea    0x2(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@0 (line 70)
          ↘│            0x00007f94ab23c484:   cmp    $0x3e8,%r10d
           ╰            0x00007f94ab23c48b:   jl     0x00007f94ab23c480           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 92)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@0 (line 70)
                        0x00007f94ab23c48d:   mov    $0x5,%r10d
            ╭           0x00007f94ab23c493:   jmp    0x00007f94ab23c4a4           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@8 (line 92)
            │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@4 (line 71)
            │           0x00007f94ab23c498:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 92)
            │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@4 (line 71)
   4.29%    │↗          0x00007f94ab23c4a0:   lea    0x2(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
            ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@4 (line 71)
   0.03%    ↘│          0x00007f94ab23c4a4:   cmp    $0x3e8,%r10d
             ╰          0x00007f94ab23c4ab:   jl     0x00007f94ab23c4a0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 92)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@4 (line 71)
   0.01%                0x00007f94ab23c4ad:   mov    $0x5,%r10d
   0.02%      ╭         0x00007f94ab23c4b3:   jmp    0x00007f94ab23c4c4           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
              │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@8 (line 92)
              │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@8 (line 72)
              │         0x00007f94ab23c4b8:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 92)
              │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@8 (line 72)
   4.54%      │↗        0x00007f94ab23c4c0:   lea    0x2(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
              ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@8 (line 72)
   0.00%      ↘│        0x00007f94ab23c4c4:   cmp    $0x3e8,%r10d
               ╰        0x00007f94ab23c4cb:   jl     0x00007f94ab23c4c0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 92)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@8 (line 72)
   0.03%                0x00007f94ab23c4cd:   mov    $0x5,%r10d
   0.09%        ╭       0x00007f94ab23c4d3:   jmp    0x00007f94ab23c4e4           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@8 (line 92)
                │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@12 (line 73)
                │       0x00007f94ab23c4d8:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 92)
                │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@12 (line 73)
   4.14%        │↗      0x00007f94ab23c4e0:   lea    0x2(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
                ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@12 (line 73)
                ↘│      0x00007f94ab23c4e4:   cmp    $0x3e8,%r10d
                 ╰      0x00007f94ab23c4eb:   jl     0x00007f94ab23c4e0
   0.12%                0x00007f94ab23c4ed:   vmovsd -0xf5(%rip),%xmm0        # 0x00007f94ab23c400
                                                                                  ;   {section_word}
   0.09%                0x00007f94ab23c4f5:   vmovsd -0xf5(%rip),%xmm1        # 0x00007f94ab23c408
                                                                                  ;   {section_word}
                        0x00007f94ab23c4fd:   mov    $0x1,%r11d
                        0x00007f94ab23c503:   mov    $0x5,%r10d
                        0x00007f94ab23c509:   nopl   0x0(%rax)                    ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@8 (line 92)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   0.01%            ↗↗  0x00007f94ab23c510:   cmp    $0x3e8,%r10d
                  ╭ ││  0x00007f94ab23c517:   jge    0x00007f94ab23c54c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 92)
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
                  │ ││  0x00007f94ab23c51d:   vcvtsi2sd %r10d,%xmm2,%xmm2         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   4.52%          │ ││  0x00007f94ab23c522:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
  58.42%          │ ││  0x00007f94ab23c526:   mov    %r11d,%r8d
                  │ ││  0x00007f94ab23c529:   xor    $0x1,%r8d                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@41 (line 98)
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
                  │ ││  0x00007f94ab23c52d:   lea    0x2(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
                  │ ││  0x00007f94ab23c531:   test   %r11d,%r11d
                  │╭││  0x00007f94ab23c534:   jne    0x00007f94ab23c543           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@16 (line 93)
                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   2.15%          ││││  0x00007f94ab23c53a:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 96)
                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   6.52%          ││││  0x00007f94ab23c53e:   mov    %r8d,%r11d
                  ││╰│  0x00007f94ab23c541:   jmp    0x00007f94ab23c510           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                  ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@40 (line 98)
                  ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   2.16%          │↘ │  0x00007f94ab23c543:   vaddsd %xmm1,%xmm2,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 94)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   6.72%          │  │  0x00007f94ab23c547:   mov    %r8d,%r11d
                  │  ╰  0x00007f94ab23c54a:   jmp    0x00007f94ab23c510           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@8 (line 92)
                  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   0.01%          ↘     0x00007f94ab23c54c:   vmovsd 0x10(%rsi),%xmm0             ;*getfield circleRadius {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@21 (line 75)
                        0x00007f94ab23c551:   vmulsd %xmm0,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@28 (line 75)
                        0x00007f94ab23c555:   vmulsd %xmm1,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@30 (line 75)
   0.03%                0x00007f94ab23c559:   add    $0x18,%rsp
                        0x00007f94ab23c55d:   data16 xchg %ax,%ax
                        0x00007f94ab23c560:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                        0x00007f94ab23c567:   ja     0x00007f94ab23c57e
                        0x00007f94ab23c56d:   ret    
                        0x00007f94ab23c56e:   mov    %rbp,0x10(%rsp)
                        0x00007f94ab23c573:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                        0x00007f94ab23c578:   jmp    0x00007f94ab23c45a
                        0x00007f94ab23c57d:   hlt    
                        0x00007f94ab23c57e:   lea    -0x25(%rip),%rcx        # 0x00007f94ab23c560
....................................................................................................
  98.23%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse, version 2, compile id 947 
   0.32%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadMethodCallStoreBenchmark_method_call_dse_jmhTest::method_call_dse_avgt_jmhStub, version 5, compile id 975 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  fileStream::write 
   0.01%               kernel  [unknown] 
   0.78%  <...other 256 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.24%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse, version 2, compile id 947 
   1.41%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadMethodCallStoreBenchmark_method_call_dse_jmhTest::method_call_dse_avgt_jmhStub, version 5, compile id 975 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%          interpreter  method entry point (kind = zerolocals)  
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.00%         libc-2.31.so  __strlen_avx2 
   0.00%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.13%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.28%       jvmci, level 4
   1.41%               kernel
   0.12%            libjvm.so
   0.09%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.03%                     
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%       hsdis-amd64.so
   0.00%               [vdso]
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

Benchmark                                              Mode  Cnt     Score   Error  Units
DeadMethodCallStoreBenchmark.method_call_baseline      avgt    5  3554.257 ± 0.189  ns/op
DeadMethodCallStoreBenchmark.method_call_baseline:asm  avgt            NaN            ---
DeadMethodCallStoreBenchmark.method_call_dse           avgt    5  4348.758 ± 0.268  ns/op
DeadMethodCallStoreBenchmark.method_call_dse:asm       avgt            NaN            ---
