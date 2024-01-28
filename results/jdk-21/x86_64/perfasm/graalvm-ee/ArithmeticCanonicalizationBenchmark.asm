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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark.add
# Parameters: (isHeavy = true, value = 179426549)

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.431 ns/op
# Warmup Iteration   2: 12.372 ns/op
# Warmup Iteration   3: 12.321 ns/op
# Warmup Iteration   4: 12.187 ns/op
# Warmup Iteration   5: 12.117 ns/op
Iteration   1: 12.127 ns/op
Iteration   2: 12.202 ns/op
Iteration   3: 12.118 ns/op
Iteration   4: 12.139 ns/op
Iteration   5: 12.174 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark.add":
  12.152 ±(99.9%) 0.135 ns/op [Average]
  (min, avg, max) = (12.118, 12.152, 12.202), stdev = 0.035
  CI (99.9%): [12.017, 12.287] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark.add:asm":
PrintAssembly processed: 226783 total address lines.
Perf output processed (skipped 60.801 seconds):
 Column 1: cycles (50524 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_add_jmhTest::add_avgt_jmhStub, version 6, compile id 1001 

              0x00007f99e2d84af3:   mov    0x10(%rsp),%rdx
              0x00007f99e2d84af8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_add_jmhTest::add_avgt_jmhStub@10 (line 192)
              0x00007f99e2d84afc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f99e2d84b05:   jmp    0x00007f99e2d84b2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_add_jmhTest::add_avgt_jmhStub@13 (line 194)
          │   0x00007f99e2d84b0a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f99e2d84b15:   data16 data16 xchg %ax,%ax
          │   0x00007f99e2d84b19:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_add_jmhTest::add_avgt_jmhStub@33 (line 196)
   3.19%  │↗  0x00007f99e2d84b20:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_add_jmhTest::add_avgt_jmhStub@33 (line 196)
          ││  0x00007f99e2d84b27:   test   %eax,(%r11)                  ;   {poll}
   2.35%  ││  0x00007f99e2d84b2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_add_jmhTest::add_avgt_jmhStub@13 (line 194)
          ↘│  0x00007f99e2d84b2f:   mov    0x8(%rsp),%r10
   1.08%   │  0x00007f99e2d84b34:   mov    %r10,%rsi
           │  0x00007f99e2d84b37:   call   0x00007f99e2764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual add {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_add_jmhTest::add_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   5.44%   │  0x00007f99e2d84b3c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_add_jmhTest::add_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   1.62%   │  0x00007f99e2d84b44:   mov    0x20(%rsp),%r10
  21.90%   │  0x00007f99e2d84b49:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_add_jmhTest::add_avgt_jmhStub@26 (line 195)
   3.09%   │  0x00007f99e2d84b4c:   mov    0x18(%rsp),%rsi
           │  0x00007f99e2d84b51:   cmpb   $0x0,0x94(%rsi)
  12.69%   ╰  0x00007f99e2d84b58:   je     0x00007f99e2d84b20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_add_jmhTest::add_avgt_jmhStub@33 (line 196)
              0x00007f99e2d84b5a:   mov    %r10,0x20(%rsp)
              0x00007f99e2d84b5f:   nop
              0x00007f99e2d84b60:   call   0x00007f99f974cdf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f99e2d84b65:   nop
              0x00007f99e2d84b66:   mov    0x10(%rsp),%rdx
              0x00007f99e2d84b6b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_add_jmhTest::add_avgt_jmhStub@40 (line 197)
              0x00007f99e2d84b6f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_add_jmhTest::add_avgt_jmhStub@46 (line 198)
....................................................................................................
  51.37%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::add, version 2, compile id 967

                # {method} {0x00007f995c485f48} &apos;add&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ArithmeticCanonicalizationBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f99e2d80b20:   mov    0x8(%rsi),%r10d
                0x00007f99e2d80b24:   movabs $0x7f9967000000,%r12
                0x00007f99e2d80b2e:   add    %r12,%r10
                0x00007f99e2d80b31:   xor    %r12,%r12
                0x00007f99e2d80b34:   cmp    %r10,%rax
                0x00007f99e2d80b37:   jne    0x00007f99e2764080           ;   {runtime_call ic_miss_stub}
                0x00007f99e2d80b3d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   1.87%        0x00007f99e2d80b40:   mov    %eax,-0x14000(%rsp)
   3.32%        0x00007f99e2d80b47:   sub    $0x18,%rsp
   1.94%        0x00007f99e2d80b4b:   nop
                0x00007f99e2d80b4c:   cmpl   $0x1,0x20(%r15)
   0.54%  ╭     0x00007f99e2d80b54:   jne    0x00007f99e2d80b8e
   2.13%  │ ↗   0x00007f99e2d80b5a:   mov    %rbp,0x10(%rsp)
   0.58%  │ │   0x00007f99e2d80b5f:   nop
          │ │   0x00007f99e2d80b60:   data16 xchg %ax,%ax
   0.51%  │ │   0x00007f99e2d80b63:   call   0x00007f99db3b74c0           ; ImmutableOopMap {}
          │ │                                                             ;*invokevirtual doAdd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::add@1 (line 71)
          │ │                                                             ;   {optimized virtual_call}
  15.57%  │ │   0x00007f99e2d80b68:   nopl   0x1d8(%rax,%rax,1)           ;   {other}
          │ │   0x00007f99e2d80b70:   mov    0x10(%rsp),%rbp
   0.01%  │ │   0x00007f99e2d80b75:   add    $0x18,%rsp
   3.07%  │ │   0x00007f99e2d80b79:   nopl   0x0(%rax)
          │ │↗  0x00007f99e2d80b80:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f99e2d80b87:   ja     0x00007f99e2d80b9b
          ││││  0x00007f99e2d80b8d:   ret    
          ↘│││  0x00007f99e2d80b8e:   mov    %rbp,0x10(%rsp)
           │││  0x00007f99e2d80b93:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f99e2d80b98:   jmp    0x00007f99e2d80b5a
           │ │  0x00007f99e2d80b9a:   hlt    
           ↘ ╰  0x00007f99e2d80b9b:   lea    -0x22(%rip),%rcx        # 0x00007f99e2d80b80
                0x00007f99e2d80ba2:   mov    %rcx,0x468(%r15)
                0x00007f99e2d80ba9:   jmp    0x00007f99e276b000           ;   {runtime_call SafepointBlob}
....................................................................................................
  29.53%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doAdd, version 2, compile id 968

              # {method} {0x00007f995c486270} &apos;doAdd&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ArithmeticCanonicalizationBenchmark&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007f99e2d80e00:   mov    0x8(%rsi),%r10d
              0x00007f99e2d80e04:   movabs $0x7f9967000000,%r12
              0x00007f99e2d80e0e:   add    %r12,%r10
              0x00007f99e2d80e11:   xor    %r12,%r12
              0x00007f99e2d80e14:   cmp    %r10,%rax
              0x00007f99e2d80e17:   jne    0x00007f99e2764080           ;   {runtime_call ic_miss_stub}
              0x00007f99e2d80e1d:   data16 xchg %ax,%ax
            [Verified Entry Point]
   2.67%      0x00007f99e2d80e20:   mov    %eax,-0x14000(%rsp)
   0.54%      0x00007f99e2d80e27:   sub    $0x18,%rsp
   2.10%      0x00007f99e2d80e2b:   nop
   0.60%      0x00007f99e2d80e2c:   cmpl   $0x1,0x20(%r15)
          ╭   0x00007f99e2d80e34:   jne    0x00007f99e2d80e91
   0.45%  │   0x00007f99e2d80e3a:   mov    %rbp,0x10(%rsp)
   2.64%  │   0x00007f99e2d80e3f:   nop
   0.37%  │   0x00007f99e2d80e40:   cmpb   $0x0,0xc(%rsi)
          │╭  0x00007f99e2d80e44:   je     0x00007f99e2d80e6e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doAdd@9 (line 89)
   2.04%  ││  0x00007f99e2d80e4a:   mov    0x10(%rsi),%rax              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doAdd@1 (line 88)
   0.78%  ││  0x00007f99e2d80e4e:   shl    $0x6,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doAdd@138 (line 94)
   0.36%  ││  0x00007f99e2d80e52:   mov    0x10(%rsp),%rbp
   4.39%  ││  0x00007f99e2d80e57:   add    $0x18,%rsp
   0.03%  ││  0x00007f99e2d80e5b:   nopl   0x0(%rax,%rax,1)
   0.51%  ││  0x00007f99e2d80e60:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  0x00007f99e2d80e67:   ja     0x00007f99e2d80e9e
   0.01%  ││  0x00007f99e2d80e6d:   ret    
          │↘  0x00007f99e2d80e6e:   movl   $0xffffffed,0x484(%r15)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doAdd@9 (line 89)
          │   0x00007f99e2d80e79:   movq   $0x14,0x490(%r15)
          │   0x00007f99e2d80e84:   call   0x00007f99e276a17a           ; ImmutableOopMap {rsi=Oop }
          │                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doAdd@0 (line 88)
          │                                                             ;   {runtime_call DeoptimizationBlob}
          │   0x00007f99e2d80e89:   nopl   0x0(%rax,%rax,1)
          ↘   0x00007f99e2d80e91:   mov    %rbp,0x10(%rsp)
              0x00007f99e2d80e96:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
....................................................................................................
  17.49%  <total for region 3>

....[Hottest Regions]...............................................................................
  51.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_add_jmhTest::add_avgt_jmhStub, version 6, compile id 1001 
  29.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::add, version 2, compile id 967
  17.49%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doAdd, version 2, compile id 968
   0.15%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.89%  <...other 300 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_add_jmhTest::add_avgt_jmhStub, version 6, compile id 1001 
  29.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::add, version 2, compile id 967
  17.49%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doAdd, version 2, compile id 968
   1.27%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%           libjvm.so  defaultStream::hold 
   0.13%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.39%      jvmci, level 4
   1.27%              kernel
   0.15%           libjvm.so
   0.07%        libc-2.31.so
   0.06%                    
   0.02%          ld-2.31.so
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark.multiply
# Parameters: (isHeavy = true, value = 179426549)

# Run progress: 33.33% complete, ETA 00:03:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.295 ns/op
# Warmup Iteration   2: 12.095 ns/op
# Warmup Iteration   3: 12.189 ns/op
# Warmup Iteration   4: 12.125 ns/op
# Warmup Iteration   5: 12.195 ns/op
Iteration   1: 12.157 ns/op
Iteration   2: 12.182 ns/op
Iteration   3: 12.123 ns/op
Iteration   4: 12.127 ns/op
Iteration   5: 12.215 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark.multiply":
  12.161 ±(99.9%) 0.148 ns/op [Average]
  (min, avg, max) = (12.123, 12.161, 12.215), stdev = 0.039
  CI (99.9%): [12.012, 12.309] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark.multiply:asm":
PrintAssembly processed: 225511 total address lines.
Perf output processed (skipped 60.585 seconds):
 Column 1: cycles (50599 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_multiply_jmhTest::multiply_avgt_jmhStub, version 6, compile id 1032 

              0x00007f06d6d842f3:   mov    0x10(%rsp),%rdx
              0x00007f06d6d842f8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@10 (line 192)
              0x00007f06d6d842fc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f06d6d84305:   jmp    0x00007f06d6d8432f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@13 (line 194)
          │   0x00007f06d6d8430a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f06d6d84315:   data16 data16 xchg %ax,%ax
          │   0x00007f06d6d84319:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@33 (line 196)
   3.11%  │↗  0x00007f06d6d84320:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@33 (line 196)
          ││  0x00007f06d6d84327:   test   %eax,(%r11)                  ;   {poll}
   1.96%  ││  0x00007f06d6d8432a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@13 (line 194)
          ↘│  0x00007f06d6d8432f:   mov    0x8(%rsp),%r10
   1.42%   │  0x00007f06d6d84334:   mov    %r10,%rsi
           │  0x00007f06d6d84337:   call   0x00007f06d6764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual multiply {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   5.29%   │  0x00007f06d6d8433c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   1.25%   │  0x00007f06d6d84344:   mov    0x20(%rsp),%r10
  22.31%   │  0x00007f06d6d84349:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@26 (line 195)
   3.15%   │  0x00007f06d6d8434c:   mov    0x18(%rsp),%rsi
           │  0x00007f06d6d84351:   cmpb   $0x0,0x94(%rsi)
  12.46%   ╰  0x00007f06d6d84358:   je     0x00007f06d6d84320           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@33 (line 196)
              0x00007f06d6d8435a:   mov    %r10,0x20(%rsp)
              0x00007f06d6d8435f:   nop
              0x00007f06d6d84360:   call   0x00007f06ee78bdf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f06d6d84365:   nop
              0x00007f06d6d84366:   mov    0x10(%rsp),%rdx
              0x00007f06d6d8436b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@40 (line 197)
              0x00007f06d6d8436f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@46 (line 198)
....................................................................................................
  50.95%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::multiply, version 2, compile id 1003

                # {method} {0x00007f065047d228} &apos;multiply&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ArithmeticCanonicalizationBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f06d6d7ed20:   mov    0x8(%rsi),%r10d
                0x00007f06d6d7ed24:   movabs $0x7f065b000000,%r12
                0x00007f06d6d7ed2e:   add    %r12,%r10
                0x00007f06d6d7ed31:   xor    %r12,%r12
                0x00007f06d6d7ed34:   cmp    %r10,%rax
                0x00007f06d6d7ed37:   jne    0x00007f06d6764080           ;   {runtime_call ic_miss_stub}
                0x00007f06d6d7ed3d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   1.64%        0x00007f06d6d7ed40:   mov    %eax,-0x14000(%rsp)
   3.47%        0x00007f06d6d7ed47:   sub    $0x18,%rsp
   1.59%        0x00007f06d6d7ed4b:   nop
                0x00007f06d6d7ed4c:   cmpl   $0x1,0x20(%r15)
   1.04%  ╭     0x00007f06d6d7ed54:   jne    0x00007f06d6d7ed8e
   1.89%  │ ↗   0x00007f06d6d7ed5a:   mov    %rbp,0x10(%rsp)
   0.47%  │ │   0x00007f06d6d7ed5f:   nop
          │ │   0x00007f06d6d7ed60:   data16 xchg %ax,%ax
   0.71%  │ │   0x00007f06d6d7ed63:   call   0x00007f06cf3b39c0           ; ImmutableOopMap {}
          │ │                                                             ;*invokevirtual doMultiply {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::multiply@1 (line 77)
          │ │                                                             ;   {optimized virtual_call}
  15.40%  │ │   0x00007f06d6d7ed68:   nopl   0x1d8(%rax,%rax,1)           ;   {other}
          │ │   0x00007f06d6d7ed70:   mov    0x10(%rsp),%rbp
          │ │   0x00007f06d6d7ed75:   add    $0x18,%rsp
   3.06%  │ │   0x00007f06d6d7ed79:   nopl   0x0(%rax)
          │ │↗  0x00007f06d6d7ed80:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f06d6d7ed87:   ja     0x00007f06d6d7ed9b
          ││││  0x00007f06d6d7ed8d:   ret    
          ↘│││  0x00007f06d6d7ed8e:   mov    %rbp,0x10(%rsp)
           │││  0x00007f06d6d7ed93:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f06d6d7ed98:   jmp    0x00007f06d6d7ed5a
           │ │  0x00007f06d6d7ed9a:   hlt    
           ↘ ╰  0x00007f06d6d7ed9b:   lea    -0x22(%rip),%rcx        # 0x00007f06d6d7ed80
                0x00007f06d6d7eda2:   mov    %rcx,0x468(%r15)
                0x00007f06d6d7eda9:   jmp    0x00007f06d676b000           ;   {runtime_call SafepointBlob}
....................................................................................................
  29.27%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doMultiply, version 2, compile id 1004

             # {method} {0x00007f065047d310} &apos;doMultiply&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ArithmeticCanonicalizationBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f06d6d7f000:   mov    0x8(%rsi),%r10d
             0x00007f06d6d7f004:   movabs $0x7f065b000000,%r12
             0x00007f06d6d7f00e:   add    %r12,%r10
             0x00007f06d6d7f011:   xor    %r12,%r12
             0x00007f06d6d7f014:   cmp    %r10,%rax
             0x00007f06d6d7f017:   jne    0x00007f06d6764080           ;   {runtime_call ic_miss_stub}
             0x00007f06d6d7f01d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   2.62%     0x00007f06d6d7f020:   mov    %eax,-0x14000(%rsp)
   0.80%     0x00007f06d6d7f027:   sub    $0x18,%rsp
   1.89%     0x00007f06d6d7f02b:   nop
   0.49%     0x00007f06d6d7f02c:   cmpl   $0x1,0x20(%r15)
             0x00007f06d6d7f034:   jne    0x00007f06d6d7f091
   0.77%     0x00007f06d6d7f03a:   mov    %rbp,0x10(%rsp)
   2.80%     0x00007f06d6d7f03f:   nop
   0.25%     0x00007f06d6d7f040:   cmpb   $0x0,0xc(%rsi)
          ╭  0x00007f06d6d7f044:   je     0x00007f06d6d7f06e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doMultiply@9 (line 83)
   2.17%  │  0x00007f06d6d7f04a:   mov    0x10(%rsi),%rax              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doMultiply@1 (line 82)
   0.72%  │  0x00007f06d6d7f04e:   shl    $0x6,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doMultiply@16 (line 83)
   0.32%  │  0x00007f06d6d7f052:   mov    0x10(%rsp),%rbp
   4.68%  │  0x00007f06d6d7f057:   add    $0x18,%rsp
   0.02%  │  0x00007f06d6d7f05b:   nopl   0x0(%rax,%rax,1)
   0.46%  │  0x00007f06d6d7f060:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f06d6d7f067:   ja     0x00007f06d6d7f09e
          │  0x00007f06d6d7f06d:   ret    
          ↘  0x00007f06d6d7f06e:   movl   $0xffffffed,0x484(%r15)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doMultiply@9 (line 83)
             0x00007f06d6d7f079:   movq   $0x14,0x490(%r15)
             0x00007f06d6d7f084:   call   0x00007f06d676a17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doMultiply@0 (line 82)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f06d6d7f089:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  17.99%  <total for region 3>

....[Hottest Regions]...............................................................................
  50.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_multiply_jmhTest::multiply_avgt_jmhStub, version 6, compile id 1032 
  29.27%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::multiply, version 2, compile id 1003
  17.99%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doMultiply, version 2, compile id 1004
   0.31%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.84%  <...other 294 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_multiply_jmhTest::multiply_avgt_jmhStub, version 6, compile id 1032 
  29.27%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::multiply, version 2, compile id 1003
  17.99%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doMultiply, version 2, compile id 1004
   1.46%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  syscall 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.14%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.21%      jvmci, level 4
   1.46%              kernel
   0.13%           libjvm.so
   0.09%        libc-2.31.so
   0.05%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%         c1, level 1
   0.00%              [vdso]
   0.00%    perf-2151282.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark.shift
# Parameters: (isHeavy = true, value = 179426549)

# Run progress: 66.67% complete, ETA 00:01:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.463 ns/op
# Warmup Iteration   2: 12.148 ns/op
# Warmup Iteration   3: 12.136 ns/op
# Warmup Iteration   4: 12.214 ns/op
# Warmup Iteration   5: 12.140 ns/op
Iteration   1: 12.186 ns/op
Iteration   2: 12.205 ns/op
Iteration   3: 12.169 ns/op
Iteration   4: 12.192 ns/op
Iteration   5: 12.187 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark.shift":
  12.188 ±(99.9%) 0.050 ns/op [Average]
  (min, avg, max) = (12.169, 12.188, 12.205), stdev = 0.013
  CI (99.9%): [12.138, 12.237] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark.shift:asm":
PrintAssembly processed: 227446 total address lines.
Perf output processed (skipped 60.679 seconds):
 Column 1: cycles (51249 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_shift_jmhTest::shift_avgt_jmhStub, version 6, compile id 1007 

              0x00007f6282d81f73:   mov    0x10(%rsp),%rdx
              0x00007f6282d81f78:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_shift_jmhTest::shift_avgt_jmhStub@10 (line 192)
              0x00007f6282d81f7c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f6282d81f85:   jmp    0x00007f6282d81faf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_shift_jmhTest::shift_avgt_jmhStub@13 (line 194)
          │   0x00007f6282d81f8a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f6282d81f95:   data16 data16 xchg %ax,%ax
          │   0x00007f6282d81f99:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_shift_jmhTest::shift_avgt_jmhStub@33 (line 196)
   2.99%  │↗  0x00007f6282d81fa0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_shift_jmhTest::shift_avgt_jmhStub@33 (line 196)
          ││  0x00007f6282d81fa7:   test   %eax,(%r11)                  ;   {poll}
   2.22%  ││  0x00007f6282d81faa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_shift_jmhTest::shift_avgt_jmhStub@13 (line 194)
          ↘│  0x00007f6282d81faf:   mov    0x8(%rsp),%r10
   1.12%   │  0x00007f6282d81fb4:   mov    %r10,%rsi
           │  0x00007f6282d81fb7:   call   0x00007f6282764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual shift {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_shift_jmhTest::shift_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   5.63%   │  0x00007f6282d81fbc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_shift_jmhTest::shift_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   1.50%   │  0x00007f6282d81fc4:   mov    0x20(%rsp),%r10
  21.75%   │  0x00007f6282d81fc9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_shift_jmhTest::shift_avgt_jmhStub@26 (line 195)
   3.12%   │  0x00007f6282d81fcc:   mov    0x18(%rsp),%rsi
           │  0x00007f6282d81fd1:   cmpb   $0x0,0x94(%rsi)
  12.79%   ╰  0x00007f6282d81fd8:   je     0x00007f6282d81fa0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_shift_jmhTest::shift_avgt_jmhStub@33 (line 196)
              0x00007f6282d81fda:   mov    %r10,0x20(%rsp)
              0x00007f6282d81fdf:   nop
              0x00007f6282d81fe0:   call   0x00007f629b005df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f6282d81fe5:   nop
              0x00007f6282d81fe6:   mov    0x10(%rsp),%rdx
              0x00007f6282d81feb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_shift_jmhTest::shift_avgt_jmhStub@40 (line 197)
              0x00007f6282d81fef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_shift_jmhTest::shift_avgt_jmhStub@46 (line 198)
....................................................................................................
  51.12%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::shift, version 2, compile id 973

                # {method} {0x00007f620347d078} &apos;shift&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ArithmeticCanonicalizationBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f6282d7e520:   mov    0x8(%rsi),%r10d
                0x00007f6282d7e524:   movabs $0x7f6207000000,%r12
                0x00007f6282d7e52e:   add    %r12,%r10
                0x00007f6282d7e531:   xor    %r12,%r12
                0x00007f6282d7e534:   cmp    %r10,%rax
                0x00007f6282d7e537:   jne    0x00007f6282764080           ;   {runtime_call ic_miss_stub}
                0x00007f6282d7e53d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   1.87%        0x00007f6282d7e540:   mov    %eax,-0x14000(%rsp)
   3.09%        0x00007f6282d7e547:   sub    $0x18,%rsp
   1.91%        0x00007f6282d7e54b:   nop
                0x00007f6282d7e54c:   cmpl   $0x1,0x20(%r15)
   0.58%  ╭     0x00007f6282d7e554:   jne    0x00007f6282d7e58e
   1.95%  │ ↗   0x00007f6282d7e55a:   mov    %rbp,0x10(%rsp)
   0.61%  │ │   0x00007f6282d7e55f:   nop
          │ │   0x00007f6282d7e560:   data16 xchg %ax,%ax
   0.42%  │ │   0x00007f6282d7e563:   call   0x00007f627b3b82c0           ; ImmutableOopMap {}
          │ │                                                             ;*invokevirtual doShift {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::shift@1 (line 65)
          │ │                                                             ;   {optimized virtual_call}
  14.55%  │ │   0x00007f6282d7e568:   nopl   0x1d8(%rax,%rax,1)           ;   {other}
          │ │   0x00007f6282d7e570:   mov    0x10(%rsp),%rbp
   0.00%  │ │   0x00007f6282d7e575:   add    $0x18,%rsp
   3.02%  │ │   0x00007f6282d7e579:   nopl   0x0(%rax)
          │ │↗  0x00007f6282d7e580:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f6282d7e587:   ja     0x00007f6282d7e59b
          ││││  0x00007f6282d7e58d:   ret    
          ↘│││  0x00007f6282d7e58e:   mov    %rbp,0x10(%rsp)
           │││  0x00007f6282d7e593:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f6282d7e598:   jmp    0x00007f6282d7e55a
           │ │  0x00007f6282d7e59a:   hlt    
           ↘ ╰  0x00007f6282d7e59b:   lea    -0x22(%rip),%rcx        # 0x00007f6282d7e580
                0x00007f6282d7e5a2:   mov    %rcx,0x468(%r15)
                0x00007f6282d7e5a9:   jmp    0x00007f628276b000           ;   {runtime_call SafepointBlob}
....................................................................................................
  28.02%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doShift, version 2, compile id 974

              # {method} {0x00007f620347d560} &apos;doShift&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ArithmeticCanonicalizationBenchmark&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007f6282d7e800:   mov    0x8(%rsi),%r10d
              0x00007f6282d7e804:   movabs $0x7f6207000000,%r12
              0x00007f6282d7e80e:   add    %r12,%r10
              0x00007f6282d7e811:   xor    %r12,%r12
              0x00007f6282d7e814:   cmp    %r10,%rax
              0x00007f6282d7e817:   jne    0x00007f6282764080           ;   {runtime_call ic_miss_stub}
              0x00007f6282d7e81d:   data16 xchg %ax,%ax
            [Verified Entry Point]
   2.84%      0x00007f6282d7e820:   mov    %eax,-0x14000(%rsp)
   0.42%      0x00007f6282d7e827:   sub    $0x18,%rsp
   2.06%      0x00007f6282d7e82b:   nop
   0.61%      0x00007f6282d7e82c:   cmpl   $0x1,0x20(%r15)
          ╭   0x00007f6282d7e834:   jne    0x00007f6282d7e891
   0.43%  │   0x00007f6282d7e83a:   mov    %rbp,0x10(%rsp)
   2.63%  │   0x00007f6282d7e83f:   nop
   0.34%  │   0x00007f6282d7e840:   cmpb   $0x0,0xc(%rsi)
          │╭  0x00007f6282d7e844:   je     0x00007f6282d7e86e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doShift@9 (line 101)
   2.04%  ││  0x00007f6282d7e84a:   mov    0x10(%rsi),%rax              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doShift@1 (line 100)
   0.76%  ││  0x00007f6282d7e84e:   shl    $0x6,%rax                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doShift@15 (line 101)
   0.29%  ││  0x00007f6282d7e852:   mov    0x10(%rsp),%rbp
   4.51%  ││  0x00007f6282d7e857:   add    $0x18,%rsp
   0.01%  ││  0x00007f6282d7e85b:   nopl   0x0(%rax,%rax,1)
   0.47%  ││  0x00007f6282d7e860:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  0x00007f6282d7e867:   ja     0x00007f6282d7e89e
   0.04%  ││  0x00007f6282d7e86d:   ret    
          │↘  0x00007f6282d7e86e:   movl   $0xffffffed,0x484(%r15)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doShift@9 (line 101)
          │   0x00007f6282d7e879:   movq   $0x14,0x490(%r15)
          │   0x00007f6282d7e884:   call   0x00007f628276a17a           ; ImmutableOopMap {rsi=Oop }
          │                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doShift@0 (line 100)
          │                                                             ;   {runtime_call DeoptimizationBlob}
          │   0x00007f6282d7e889:   nopl   0x0(%rax,%rax,1)
          ↘   0x00007f6282d7e891:   mov    %rbp,0x10(%rsp)
              0x00007f6282d7e896:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
....................................................................................................
  17.44%  <total for region 3>

....[Hottest Regions]...............................................................................
  51.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_shift_jmhTest::shift_avgt_jmhStub, version 6, compile id 1007 
  28.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::shift, version 2, compile id 973
  17.44%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doShift, version 2, compile id 974
   1.48%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.11%  <...other 381 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ArithmeticCanonicalizationBenchmark_shift_jmhTest::shift_avgt_jmhStub, version 6, compile id 1007 
  28.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::shift, version 2, compile id 973
  17.44%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doShift, version 2, compile id 974
   3.04%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  _IO_setb 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  Monitor::wait_without_safepoint_check 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.19%  <...other 88 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  96.58%       jvmci, level 4
   3.04%               kernel
   0.14%            libjvm.so
   0.12%         libc-2.31.so
   0.04%                     
   0.04%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.01%   libpthread-2.31.so
....................................................................................................
  99.99%  <totals>



# Run complete. Total time: 00:05:44

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

Benchmark                                (isHeavy)    (value)  Mode  Cnt   Score   Error  Units
ArithmeticCanonicalizationBenchmark.add                true  179426549  avgt    5  12.152 ± 0.135  ns/op
ArithmeticCanonicalizationBenchmark.add:asm            true  179426549  avgt          NaN            ---
ArithmeticCanonicalizationBenchmark.multiply           true  179426549  avgt    5  12.161 ± 0.148  ns/op
ArithmeticCanonicalizationBenchmark.multiply:asm       true  179426549  avgt          NaN            ---
ArithmeticCanonicalizationBenchmark.shift              true  179426549  avgt    5  12.188 ± 0.050  ns/op
ArithmeticCanonicalizationBenchmark.shift:asm          true  179426549  avgt          NaN            ---
