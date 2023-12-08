# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.559 ns/op
# Warmup Iteration   2: 8.555 ns/op
# Warmup Iteration   3: 8.222 ns/op
# Warmup Iteration   4: 8.357 ns/op
# Warmup Iteration   5: 8.229 ns/op
Iteration   1: 8.269 ns/op
Iteration   2: 8.292 ns/op
Iteration   3: 8.158 ns/op
Iteration   4: 8.271 ns/op
Iteration   5: 8.364 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline":
  8.271 ±(99.9%) 0.286 ns/op [Average]
  (min, avg, max) = (8.158, 8.271, 8.364), stdev = 0.074
  CI (99.9%): [7.985, 8.557] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline:asm":
PrintAssembly processed: 220509 total address lines.
Perf output processed (skipped 85.395 seconds):
 Column 1: cycles (51063 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 1083 

              0x00007f97aeda4273:   mov    0x10(%rsp),%rdx
              0x00007f97aeda4278:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@10 (line 234)
              0x00007f97aeda427c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f97aeda4285:   jmp    0x00007f97aeda42af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 236)
          │   0x00007f97aeda428a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f97aeda4295:   data16 data16 xchg %ax,%ax
          │   0x00007f97aeda4299:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
   3.68%  │↗  0x00007f97aeda42a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
   8.49%  ││  0x00007f97aeda42a7:   test   %eax,(%r11)                  ;   {poll}
   0.37%  ││  0x00007f97aeda42aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 236)
   0.68%  ↘│  0x00007f97aeda42af:   mov    0x8(%rsp),%r10
   3.60%   │  0x00007f97aeda42b4:   mov    %r10,%rsi
   8.66%   │  0x00007f97aeda42b7:   call   0x00007f97ae6f9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
  10.44%   │  0x00007f97aeda42bc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   0.32%   │  0x00007f97aeda42c4:   mov    0x20(%rsp),%r10
   4.37%   │  0x00007f97aeda42c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@26 (line 237)
   8.78%   │  0x00007f97aeda42cc:   mov    0x18(%rsp),%rsi
   0.29%   │  0x00007f97aeda42d1:   cmpb   $0x0,0x94(%rsi)
   1.34%   ╰  0x00007f97aeda42d8:   je     0x00007f97aeda42a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
              0x00007f97aeda42da:   mov    %r10,0x20(%rsp)
              0x00007f97aeda42df:   nop
              0x00007f97aeda42e0:   call   0x00007f97c64d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f97aeda42e5:   nop
              0x00007f97aeda42e6:   mov    0x10(%rsp),%rdx
              0x00007f97aeda42eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 239)
              0x00007f97aeda42ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@46 (line 240)
....................................................................................................
  51.02%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 1061 

                # {method} {0x00007f972047a400} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f97aed9eb00:   mov    0x8(%rsi),%r10d
                0x00007f97aed9eb04:   movabs $0x7f972b000000,%r12
                0x00007f97aed9eb0e:   add    %r12,%r10
                0x00007f97aed9eb11:   xor    %r12,%r12
                0x00007f97aed9eb14:   cmp    %r10,%rax
                0x00007f97aed9eb17:   jne    0x00007f97ae6f9080           ;   {runtime_call ic_miss_stub}
                0x00007f97aed9eb1d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.98%        0x00007f97aed9eb20:   mov    %eax,-0x14000(%rsp)
  12.27%        0x00007f97aed9eb27:   sub    $0x18,%rsp
   0.31%        0x00007f97aed9eb2b:   nop
   0.69%        0x00007f97aed9eb2c:   cmpl   $0x1,0x20(%r15)
   3.71%  ╭     0x00007f97aed9eb34:   jne    0x00007f97aed9eb5c
   8.62%  │ ↗   0x00007f97aed9eb3a:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@1 (line 200)
   0.30%  │ │   0x00007f97aed9eb3d:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@9 (line 202)
   0.74%  │ │   0x00007f97aed9eb41:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@5 (line 200)
   3.45%  │ │   0x00007f97aed9eb43:   shl    $0x3,%r10d
   8.60%  │ │   0x00007f97aed9eb47:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@61 (line 209)
   0.58%  │ │   0x00007f97aed9eb4a:   add    $0x18,%rsp
   0.70%  │ │↗  0x00007f97aed9eb4e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f97aed9eb55:   ja     0x00007f97aed9eb69
   3.71%  ││││  0x00007f97aed9eb5b:   ret    
          ↘│││  0x00007f97aed9eb5c:   mov    %rbp,0x10(%rsp)
           │││  0x00007f97aed9eb61:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f97aed9eb66:   jmp    0x00007f97aed9eb3a
           │ │  0x00007f97aed9eb68:   hlt    
           ↘ ╰  0x00007f97aed9eb69:   lea    -0x22(%rip),%rcx        # 0x00007f97aed9eb4e
                0x00007f97aed9eb70:   mov    %rcx,0x468(%r15)
                0x00007f97aed9eb77:   jmp    0x00007f97ae700000           ;   {runtime_call SafepointBlob}
                0x00007f97aed9eb7c:   hlt    
                0x00007f97aed9eb7d:   data16 xchg %ax,%ax
              [Exception Handler]
....................................................................................................
  44.65%  <total for region 2>

....[Hottest Regions]...............................................................................
  51.02%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 1083 
  44.65%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 1061 
   0.52%                kernel  [unknown] 
   0.28%                kernel  [unknown] 
   0.23%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.05%             libjvm.so  fileStream::flush 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.85%  <...other 333 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.02%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 1083 
  44.65%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 1061 
   3.53%                kernel  [unknown] 
   0.12%                        <unknown> 
   0.05%             libjvm.so  fileStream::flush 
   0.04%             libc.so.6  __strchr_avx2 
   0.04%             libc.so.6  __vfprintf_internal 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libjvm.so  defaultStream::hold 
   0.03%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.03%             libjvm.so  xmlStream::write 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%             libc.so.6  syscall 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.30%  <...other 99 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.67%        jvmci, level 4
   3.53%                kernel
   0.32%             libjvm.so
   0.23%             libc.so.6
   0.12%                      
   0.04%        hsdis-amd64.so
   0.03%           interpreter
   0.03%  ld-linux-x86-64.so.2
   0.01%           c1, level 3
   0.01%        perf-14430.map
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:11:59
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.654 ns/op
# Warmup Iteration   2: 8.302 ns/op
# Warmup Iteration   3: 8.391 ns/op
# Warmup Iteration   4: 8.189 ns/op
# Warmup Iteration   5: 8.249 ns/op
Iteration   1: 8.227 ns/op
Iteration   2: 8.220 ns/op
Iteration   3: 8.210 ns/op
Iteration   4: 8.253 ns/op
Iteration   5: 8.294 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls":
  8.241 ±(99.9%) 0.130 ns/op [Average]
  (min, avg, max) = (8.210, 8.241, 8.294), stdev = 0.034
  CI (99.9%): [8.111, 8.370] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls:asm":
PrintAssembly processed: 213585 total address lines.
Perf output processed (skipped 83.618 seconds):
 Column 1: cycles (50607 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1087 

              0x00007f2cd2da0af3:   mov    0x10(%rsp),%rdx
              0x00007f2cd2da0af8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@10 (line 234)
              0x00007f2cd2da0afc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f2cd2da0b05:   jmp    0x00007f2cd2da0b2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007f2cd2da0b0a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f2cd2da0b15:   data16 data16 xchg %ax,%ax
          │   0x00007f2cd2da0b19:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
   3.81%  │↗  0x00007f2cd2da0b20:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
   8.70%  ││  0x00007f2cd2da0b27:   test   %eax,(%r11)                  ;   {poll}
   0.32%  ││  0x00007f2cd2da0b2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 236)
   0.59%  ↘│  0x00007f2cd2da0b2f:   mov    0x8(%rsp),%r10
   3.70%   │  0x00007f2cd2da0b34:   mov    %r10,%rsi
   8.73%   │  0x00007f2cd2da0b37:   call   0x00007f2cd26f9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
  10.69%   │  0x00007f2cd2da0b3c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   0.33%   │  0x00007f2cd2da0b44:   mov    0x20(%rsp),%r10
   4.36%   │  0x00007f2cd2da0b49:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@26 (line 237)
   9.11%   │  0x00007f2cd2da0b4c:   mov    0x18(%rsp),%rsi
   0.22%   │  0x00007f2cd2da0b51:   cmpb   $0x0,0x94(%rsi)
   1.24%   ╰  0x00007f2cd2da0b58:   je     0x00007f2cd2da0b20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
              0x00007f2cd2da0b5a:   mov    %r10,0x20(%rsp)
              0x00007f2cd2da0b5f:   nop
              0x00007f2cd2da0b60:   call   0x00007f2cec6d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f2cd2da0b65:   nop
              0x00007f2cd2da0b66:   mov    0x10(%rsp),%rdx
              0x00007f2cd2da0b6b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@40 (line 239)
              0x00007f2cd2da0b6f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@46 (line 240)
....................................................................................................
  51.79%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 1056 

                # {method} {0x00007f2c4b47a018} &apos;chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f2cd2d9a780:   mov    0x8(%rsi),%r10d
                0x00007f2cd2d9a784:   movabs $0x7f2c4f000000,%r12
                0x00007f2cd2d9a78e:   add    %r12,%r10
                0x00007f2cd2d9a791:   xor    %r12,%r12
                0x00007f2cd2d9a794:   cmp    %r10,%rax
                0x00007f2cd2d9a797:   jne    0x00007f2cd26f9080           ;   {runtime_call ic_miss_stub}
                0x00007f2cd2d9a79d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.85%        0x00007f2cd2d9a7a0:   mov    %eax,-0x14000(%rsp)
  12.70%        0x00007f2cd2d9a7a7:   sub    $0x18,%rsp
   0.23%        0x00007f2cd2d9a7ab:   nop
   0.62%        0x00007f2cd2d9a7ac:   cmpl   $0x1,0x20(%r15)
   3.70%  ╭     0x00007f2cd2d9a7b4:   jne    0x00007f2cd2d9a7dc
   8.72%  │ ↗   0x00007f2cd2d9a7ba:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@1 (line 115)
   0.24%  │ │   0x00007f2cd2d9a7bd:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 217)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@9 (line 117)
   0.59%  │ │   0x00007f2cd2d9a7c1:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@5 (line 115)
   3.88%  │ │   0x00007f2cd2d9a7c3:   shl    $0x3,%r10d
   8.77%  │ │   0x00007f2cd2d9a7c7:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@51 (line 124)
   0.42%  │ │   0x00007f2cd2d9a7ca:   add    $0x18,%rsp
   0.53%  │ │↗  0x00007f2cd2d9a7ce:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f2cd2d9a7d5:   ja     0x00007f2cd2d9a7e9
   3.65%  ││││  0x00007f2cd2d9a7db:   ret    
          ↘│││  0x00007f2cd2d9a7dc:   mov    %rbp,0x10(%rsp)
           │││  0x00007f2cd2d9a7e1:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f2cd2d9a7e6:   jmp    0x00007f2cd2d9a7ba
           │ │  0x00007f2cd2d9a7e8:   hlt    
           ↘ ╰  0x00007f2cd2d9a7e9:   lea    -0x22(%rip),%rcx        # 0x00007f2cd2d9a7ce
                0x00007f2cd2d9a7f0:   mov    %rcx,0x468(%r15)
                0x00007f2cd2d9a7f7:   jmp    0x00007f2cd2700000           ;   {runtime_call SafepointBlob}
                0x00007f2cd2d9a7fc:   hlt    
                0x00007f2cd2d9a7fd:   data16 xchg %ax,%ax
              [Exception Handler]
....................................................................................................
  44.88%  <total for region 2>

....[Hottest Regions]...............................................................................
  51.79%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1087 
  44.88%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 1056 
   0.37%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.60%  <...other 339 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.79%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1087 
  44.88%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 1056 
   2.62%                kernel  [unknown] 
   0.04%             libjvm.so  fileStream::write 
   0.03%             libjvm.so  defaultStream::hold 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%             libjvm.so  xmlTextStream::flush 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  __strchr_avx2 
   0.01%                        <unknown> 
   0.01%             libjvm.so  outputStream::print 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  _IO_fflush 
   0.01%           interpreter  return entry points  
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%   libjvmcicompiler.so  com.oracle.svm.core.jni.functions.JNIFunctions::NewStringUTF 
   0.41%  <...other 166 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.67%        jvmci, level 4
   2.62%                kernel
   0.32%             libjvm.so
   0.16%             libc.so.6
   0.14%   libjvmcicompiler.so
   0.04%           interpreter
   0.02%        hsdis-amd64.so
   0.01%                      
   0.01%           c1, level 3
   0.00%                [vdso]
   0.00%  ld-linux-x86-64.so.2
   0.00%        perf-14560.map
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:09:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.449 ns/op
# Warmup Iteration   2: 13.689 ns/op
# Warmup Iteration   3: 13.947 ns/op
# Warmup Iteration   4: 13.939 ns/op
# Warmup Iteration   5: 13.825 ns/op
Iteration   1: 13.709 ns/op
Iteration   2: 13.853 ns/op
Iteration   3: 13.767 ns/op
Iteration   4: 13.786 ns/op
Iteration   5: 13.821 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls":
  13.787 ±(99.9%) 0.211 ns/op [Average]
  (min, avg, max) = (13.709, 13.787, 13.853), stdev = 0.055
  CI (99.9%): [13.576, 13.999] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls:asm":
PrintAssembly processed: 221656 total address lines.
Perf output processed (skipped 84.839 seconds):
 Column 1: cycles (51151 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 1068 

             # {method} {0x00007fcc474840e0} &apos;conditional_chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007fccced9f600:   mov    0x8(%rsi),%r10d
             0x00007fccced9f604:   movabs $0x7fcc4b000000,%r12
             0x00007fccced9f60e:   add    %r12,%r10
             0x00007fccced9f611:   xor    %r12,%r12
             0x00007fccced9f614:   cmp    %r10,%rax
             0x00007fccced9f617:   jne    0x00007fccce6f9080           ;   {runtime_call ic_miss_stub}
             0x00007fccced9f61d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   3.78%     0x00007fccced9f620:   mov    %eax,-0x14000(%rsp)
   4.16%     0x00007fccced9f627:   sub    $0x18,%rsp
   1.83%     0x00007fccced9f62b:   nop
   1.87%     0x00007fccced9f62c:   cmpl   $0x1,0x20(%r15)
   1.88%     0x00007fccced9f634:   jne    0x00007fccced9f734
   2.36%     0x00007fccced9f63a:   mov    %rbp,0x10(%rsp)
   1.85%     0x00007fccced9f63f:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@1 (line 132)
   1.92%     0x00007fccced9f642:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@5 (line 132)
   1.77%     0x00007fccced9f644:   cmp    $0x21,%eax
          ╭  0x00007fccced9f647:   jl     0x00007fccced9f6cf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 135)
   2.25%  │  0x00007fccced9f64d:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 136)
   1.81%  │  0x00007fccced9f651:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 136)
   1.99%  │  0x00007fccced9f654:   cmp    $0x21,%eax
          │  0x00007fccced9f657:   jl     0x00007fccced9f722           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@22 (line 138)
   1.94%  │  0x00007fccced9f65d:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@27 (line 139)
   2.43%  │  0x00007fccced9f660:   cmp    $0x21,%eax
          │  0x00007fccced9f663:   jl     0x00007fccced9f6f5           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@34 (line 141)
   1.88%  │  0x00007fccced9f669:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@39 (line 142)
   1.93%  │  0x00007fccced9f66c:   cmp    $0x21,%eax
          │  0x00007fccced9f66f:   jl     0x00007fccced9f72b           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@46 (line 144)
   2.02%  │  0x00007fccced9f675:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@51 (line 145)
   2.15%  │  0x00007fccced9f678:   nopl   0x0(%rax,%rax,1)
   2.00%  │  0x00007fccced9f680:   cmp    $0x21,%eax
          │  0x00007fccced9f683:   jl     0x00007fccced9f719           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@58 (line 147)
   1.96%  │  0x00007fccced9f689:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@63 (line 148)
   1.94%  │  0x00007fccced9f68c:   cmp    $0x21,%eax
          │  0x00007fccced9f68f:   jl     0x00007fccced9f707           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@70 (line 150)
   2.25%  │  0x00007fccced9f695:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@75 (line 151)
   2.00%  │  0x00007fccced9f698:   nopl   0x0(%rax,%rax,1)
   1.91%  │  0x00007fccced9f6a0:   cmp    $0x21,%eax
          │  0x00007fccced9f6a3:   jl     0x00007fccced9f6fe           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@82 (line 153)
   2.27%  │  0x00007fccced9f6a9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@87 (line 154)
   2.28%  │  0x00007fccced9f6ac:   cmp    $0x21,%eax
          │  0x00007fccced9f6af:   jl     0x00007fccced9f710           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@94 (line 156)
   1.90%  │  0x00007fccced9f6b5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@99 (line 157)
   1.97%  │  0x00007fccced9f6b8:   mov    0x10(%rsp),%rbp
   2.17%  │  0x00007fccced9f6bd:   add    $0x18,%rsp
   2.13%  │  0x00007fccced9f6c1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fccced9f6c8:   ja     0x00007fccced9f746
   1.90%  │  0x00007fccced9f6ce:   ret    
          ↘  0x00007fccced9f6cf:   mov    $0x14,%r10
             0x00007fccced9f6d6:   movl   $0xffffffed,0x484(%r15)      ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 135)
             0x00007fccced9f6e1:   mov    %r10,0x490(%r15)
             0x00007fccced9f6e8:   call   0x00007fccce6ff17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@0 (line 132)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007fccced9f6ed:   nopl   0x0(%rax,%rax,1)             ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@34 (line 141)
....................................................................................................
  66.50%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 1095 

              0x00007fccceda3573:   mov    0x10(%rsp),%rdx
              0x00007fccceda3578:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@10 (line 234)
              0x00007fccceda357c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fccceda3585:   jmp    0x00007fccceda35af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007fccceda358a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fccceda3595:   data16 data16 xchg %ax,%ax
          │   0x00007fccceda3599:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
   1.97%  │↗  0x00007fccceda35a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
   2.24%  ││  0x00007fccceda35a7:   test   %eax,(%r11)                  ;   {poll}
   1.99%  ││  0x00007fccceda35aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 236)
   1.97%  ↘│  0x00007fccceda35af:   mov    0x8(%rsp),%r10
   1.94%   │  0x00007fccceda35b4:   mov    %r10,%rsi
   2.19%   │  0x00007fccceda35b7:   call   0x00007fccce6f9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual conditional_chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   3.50%   │  0x00007fccceda35bc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   1.83%   │  0x00007fccceda35c4:   mov    0x20(%rsp),%r10
   4.11%   │  0x00007fccceda35c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@26 (line 237)
   2.50%   │  0x00007fccceda35cc:   mov    0x18(%rsp),%rsi
   1.80%   │  0x00007fccceda35d1:   cmpb   $0x0,0x94(%rsi)
   2.66%   ╰  0x00007fccceda35d8:   je     0x00007fccceda35a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
              0x00007fccceda35da:   mov    %r10,0x20(%rsp)
              0x00007fccceda35df:   nop
              0x00007fccceda35e0:   call   0x00007fcce7ed32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fccceda35e5:   nop
              0x00007fccceda35e6:   mov    0x10(%rsp),%rdx
              0x00007fccceda35eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@40 (line 239)
              0x00007fccceda35ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@46 (line 240)
....................................................................................................
  28.71%  <total for region 2>

....[Hottest Regions]...............................................................................
  66.50%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 1068 
  28.71%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 1095 
   0.45%                kernel  [unknown] 
   0.26%                kernel  [unknown] 
   0.23%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   2.24%  <...other 431 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  66.50%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 1068 
  28.71%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 1095 
   3.83%                kernel  [unknown] 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.04%   libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libjvm.so  xmlStream::write_text 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  fileStream::write 
   0.01%           interpreter  invokevirtual  182 invokevirtual  
   0.01%   libjvmcicompiler.so  org.graalvm.collections.EconomicMapImpl::find 
   0.01%   libjvmcicompiler.so  org.graalvm.collections.EconomicMapImpl::findHash 
   0.01%                        <unknown> 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.62%  <...other 226 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.21%        jvmci, level 4
   3.83%                kernel
   0.37%   libjvmcicompiler.so
   0.30%             libjvm.so
   0.19%             libc.so.6
   0.04%        hsdis-amd64.so
   0.03%           interpreter
   0.01%                      
   0.01%  ld-linux-x86-64.so.2
   0.01%           c1, level 3
   0.00%                [vdso]
   0.00%          runtime stub
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:07:04
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.461 ns/op
# Warmup Iteration   2: 13.736 ns/op
# Warmup Iteration   3: 13.990 ns/op
# Warmup Iteration   4: 13.741 ns/op
# Warmup Iteration   5: 13.760 ns/op
Iteration   1: 13.834 ns/op
Iteration   2: 13.655 ns/op
Iteration   3: 13.652 ns/op
Iteration   4: 13.743 ns/op
Iteration   5: 13.902 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls":
  13.757 ±(99.9%) 0.424 ns/op [Average]
  (min, avg, max) = (13.652, 13.757, 13.902), stdev = 0.110
  CI (99.9%): [13.333, 14.181] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls:asm":
PrintAssembly processed: 220143 total address lines.
Perf output processed (skipped 84.802 seconds):
 Column 1: cycles (50793 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 1075 

                     # {method} {0x00007f1f50484248} &apos;conditional_nested_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                     #           [sp+0x20]  (sp of caller)
                     0x00007f1fded9d980:   mov    0x8(%rsi),%r10d
                     0x00007f1fded9d984:   movabs $0x7f1f5b000000,%r12
                     0x00007f1fded9d98e:   add    %r12,%r10
                     0x00007f1fded9d991:   xor    %r12,%r12
                     0x00007f1fded9d994:   cmp    %r10,%rax
                     0x00007f1fded9d997:   jne    0x00007f1fde6f9080           ;   {runtime_call ic_miss_stub}
                     0x00007f1fded9d99d:   data16 xchg %ax,%ax
                   [Verified Entry Point]
   4.01%             0x00007f1fded9d9a0:   mov    %eax,-0x14000(%rsp)
   4.24%             0x00007f1fded9d9a7:   sub    $0x18,%rsp
   1.88%             0x00007f1fded9d9ab:   nop
   2.02%             0x00007f1fded9d9ac:   cmpl   $0x1,0x20(%r15)
   1.83%  ╭          0x00007f1fded9d9b4:   jne    0x00007f1fded9da72
   2.36%  │          0x00007f1fded9d9ba:   mov    %rbp,0x10(%rsp)
   1.80%  │          0x00007f1fded9d9bf:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@1 (line 166)
   2.07%  │          0x00007f1fded9d9c2:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@5 (line 166)
   1.84%  │          0x00007f1fded9d9c4:   cmp    $0x21,%eax
          │╭         0x00007f1fded9d9c7:   jl     0x00007f1fded9da4f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 169)
   2.30%  ││         0x00007f1fded9d9cd:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 217)
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 170)
   1.82%  ││         0x00007f1fded9d9d1:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 170)
   2.03%  ││         0x00007f1fded9d9d4:   cmp    $0x21,%eax
          ││╭        0x00007f1fded9d9d7:   jl     0x00007f1fded9da4f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@22 (line 171)
   1.95%  │││        0x00007f1fded9d9dd:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@27 (line 172)
   2.35%  │││        0x00007f1fded9d9e0:   cmp    $0x21,%eax
          │││╭       0x00007f1fded9d9e3:   jl     0x00007f1fded9da4f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@34 (line 173)
   2.00%  ││││       0x00007f1fded9d9e9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@39 (line 174)
   2.14%  ││││       0x00007f1fded9d9ec:   cmp    $0x21,%eax
          ││││╭      0x00007f1fded9d9ef:   jl     0x00007f1fded9da4f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@46 (line 175)
   1.98%  │││││      0x00007f1fded9d9f5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@51 (line 176)
   2.27%  │││││      0x00007f1fded9d9f8:   nopl   0x0(%rax,%rax,1)
   1.90%  │││││      0x00007f1fded9da00:   cmp    $0x21,%eax
   0.00%  │││││╭     0x00007f1fded9da03:   jl     0x00007f1fded9da4f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@58 (line 177)
   2.04%  ││││││     0x00007f1fded9da09:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          ││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@63 (line 178)
   1.90%  ││││││     0x00007f1fded9da0c:   cmp    $0x21,%eax
          ││││││╭    0x00007f1fded9da0f:   jl     0x00007f1fded9da4f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@70 (line 179)
   2.36%  │││││││    0x00007f1fded9da15:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@75 (line 180)
   1.91%  │││││││    0x00007f1fded9da18:   nopl   0x0(%rax,%rax,1)
   2.13%  │││││││    0x00007f1fded9da20:   cmp    $0x21,%eax
          │││││││╭   0x00007f1fded9da23:   jl     0x00007f1fded9da4f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@82 (line 181)
   2.07%  ││││││││   0x00007f1fded9da29:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@87 (line 182)
   2.29%  ││││││││   0x00007f1fded9da2c:   cmp    $0x21,%eax
          ││││││││╭  0x00007f1fded9da2f:   jl     0x00007f1fded9da4f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@94 (line 183)
   1.85%  │││││││││  0x00007f1fded9da35:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@99 (line 184)
   2.30%  │││││││││  0x00007f1fded9da38:   mov    0x10(%rsp),%rbp
   2.20%  │││││││││  0x00007f1fded9da3d:   add    $0x18,%rsp
   2.16%  │││││││││  0x00007f1fded9da41:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││││││││  0x00007f1fded9da48:   ja     0x00007f1fded9da86
   2.45%  │││││││││  0x00007f1fded9da4e:   ret    
          │↘↘↘↘↘↘↘↘  0x00007f1fded9da4f:   movl   $0xffffffed,0x484(%r15)      ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 169)
          │          0x00007f1fded9da5a:   movq   $0x14,0x490(%r15)
          │          0x00007f1fded9da65:   call   0x00007f1fde6ff17a           ; ImmutableOopMap {rsi=Oop }
          │                                                                    ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@0 (line 166)
          │                                                                    ;   {runtime_call DeoptimizationBlob}
          │          0x00007f1fded9da6a:   nopl   0x0(%rax,%rax,1)
          ↘          0x00007f1fded9da72:   mov    %rbp,0x10(%rsp)
                     0x00007f1fded9da77:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
....................................................................................................
  68.43%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 1106 

                                                                        ;*lconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@0 (line 232)
              0x00007f1fdeda0ad3:   test   %eax,(%rdx)                  ; implicit exception: dispatches to 0x00007f1fdeda0bdd
                                                                        ; ImmutableOopMap {rdx=Oop rsi=Oop rdi=Oop r10=Oop [8]=Oop [16]=Oop [24]=Oop }
                                                                        ;*lconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@0 (line 232)
              0x00007f1fdeda0ad5:   test   %eax,(%rdi)                  ; implicit exception: dispatches to 0x00007f1fdeda0c00
                                                                        ; ImmutableOopMap {rdx=Oop rsi=Oop rdi=Oop r10=Oop [8]=Oop [16]=Oop [24]=Oop }
                                                                        ;*lconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@0 (line 232)
   0.00%      0x00007f1fdeda0ad7:   test   %eax,(%r10)                  ; implicit exception: dispatches to 0x00007f1fdeda0c23
              0x00007f1fdeda0ada:   nopw   0x0(%rax,%rax,1)
              0x00007f1fdeda0ae0:   test   %rsi,%rsi
              0x00007f1fdeda0ae3:   je     0x00007f1fdeda0b9a           ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@30 (line 238)
              0x00007f1fdeda0ae9:   mov    %rdi,(%rsp)
              0x00007f1fdeda0aed:   call   0x00007f1ff50d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1fdeda0af2:   nop
              0x00007f1fdeda0af3:   mov    0x10(%rsp),%rdx
              0x00007f1fdeda0af8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@10 (line 234)
              0x00007f1fdeda0afc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f1fdeda0b05:   jmp    0x00007f1fdeda0b2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007f1fdeda0b0a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f1fdeda0b15:   data16 data16 xchg %ax,%ax
          │   0x00007f1fdeda0b19:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
   1.99%  │↗  0x00007f1fdeda0b20:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
   2.27%  ││  0x00007f1fdeda0b27:   test   %eax,(%r11)                  ;   {poll}
   1.84%  ││  0x00007f1fdeda0b2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 236)
   1.95%  ↘│  0x00007f1fdeda0b2f:   mov    0x8(%rsp),%r10
   1.85%   │  0x00007f1fdeda0b34:   mov    %r10,%rsi
   2.31%   │  0x00007f1fdeda0b37:   call   0x00007f1fde6f9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual conditional_nested_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   3.10%   │  0x00007f1fdeda0b3c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   1.78%   │  0x00007f1fdeda0b44:   mov    0x20(%rsp),%r10
   3.98%   │  0x00007f1fdeda0b49:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@26 (line 237)
   2.61%   │  0x00007f1fdeda0b4c:   mov    0x18(%rsp),%rsi
   1.81%   │  0x00007f1fdeda0b51:   cmpb   $0x0,0x94(%rsi)
   2.55%   ╰  0x00007f1fdeda0b58:   je     0x00007f1fdeda0b20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
              0x00007f1fdeda0b5a:   mov    %r10,0x20(%rsp)
              0x00007f1fdeda0b5f:   nop
              0x00007f1fdeda0b60:   call   0x00007f1ff50d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1fdeda0b65:   nop
              0x00007f1fdeda0b66:   mov    0x10(%rsp),%rdx
              0x00007f1fdeda0b6b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@40 (line 239)
              0x00007f1fdeda0b6f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@46 (line 240)
....................................................................................................
  28.07%  <total for region 2>

....[Hottest Regions]...............................................................................
  68.43%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 1075 
  28.07%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 1106 
   0.39%                kernel  [unknown] 
   0.29%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%             libjvm.so  fileStream::write 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   1.49%  <...other 295 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  68.43%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 1075 
  28.07%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 1106 
   2.79%                kernel  [unknown] 
   0.15%                        <unknown> 
   0.04%             libjvm.so  fileStream::write 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libjvm.so  xmlStream::write_text 
   0.02%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5 
   0.25%  <...other 84 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.50%        jvmci, level 4
   2.79%                kernel
   0.29%             libjvm.so
   0.20%             libc.so.6
   0.15%                      
   0.03%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.01%           c1, level 3
   0.01%                [vdso]
   0.00%        perf-14792.map
   0.00%        libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:04:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.503 ns/op
# Warmup Iteration   2: 8.326 ns/op
# Warmup Iteration   3: 8.230 ns/op
# Warmup Iteration   4: 8.219 ns/op
# Warmup Iteration   5: 8.220 ns/op
Iteration   1: 8.245 ns/op
Iteration   2: 8.254 ns/op
Iteration   3: 8.161 ns/op
Iteration   4: 8.230 ns/op
Iteration   5: 8.511 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized":
  8.280 ±(99.9%) 0.518 ns/op [Average]
  (min, avg, max) = (8.161, 8.280, 8.511), stdev = 0.134
  CI (99.9%): [7.762, 8.798] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized:asm":
PrintAssembly processed: 219785 total address lines.
Perf output processed (skipped 84.801 seconds):
 Column 1: cycles (51438 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 1066 

              0x00007fb5feda2673:   mov    0x10(%rsp),%rdx
              0x00007fb5feda2678:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@10 (line 234)
              0x00007fb5feda267c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fb5feda2685:   jmp    0x00007fb5feda26af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 236)
          │   0x00007fb5feda268a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fb5feda2695:   data16 data16 xchg %ax,%ax
          │   0x00007fb5feda2699:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
   3.79%  │↗  0x00007fb5feda26a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
   8.61%  ││  0x00007fb5feda26a7:   test   %eax,(%r11)                  ;   {poll}
   0.38%  ││  0x00007fb5feda26aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 236)
   0.64%  ↘│  0x00007fb5feda26af:   mov    0x8(%rsp),%r10
   3.69%   │  0x00007fb5feda26b4:   mov    %r10,%rsi
   8.52%   │  0x00007fb5feda26b7:   call   0x00007fb5fe6f9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual nested_synchronized {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
  10.23%   │  0x00007fb5feda26bc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   0.39%   │  0x00007fb5feda26c4:   mov    0x20(%rsp),%r10
   4.24%   │  0x00007fb5feda26c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@26 (line 237)
   8.75%   │  0x00007fb5feda26cc:   mov    0x18(%rsp),%rsi
   0.27%   │  0x00007fb5feda26d1:   cmpb   $0x0,0x94(%rsi)
   1.05%   ╰  0x00007fb5feda26d8:   je     0x00007fb5feda26a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
              0x00007fb5feda26da:   mov    %r10,0x20(%rsp)
              0x00007fb5feda26df:   nop
              0x00007fb5feda26e0:   call   0x00007fb616cd32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fb5feda26e5:   nop
              0x00007fb5feda26e6:   mov    0x10(%rsp),%rdx
              0x00007fb5feda26eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@40 (line 239)
              0x00007fb5feda26ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@46 (line 240)
....................................................................................................
  50.56%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized, version 1, compile id 1042 

                # {method} {0x00007fb570479db0} &apos;nested_synchronized&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fb5fed9f800:   mov    0x8(%rsi),%r10d
                0x00007fb5fed9f804:   movabs $0x7fb57b000000,%r12
                0x00007fb5fed9f80e:   add    %r12,%r10
                0x00007fb5fed9f811:   xor    %r12,%r12
                0x00007fb5fed9f814:   cmp    %r10,%rax
                0x00007fb5fed9f817:   jne    0x00007fb5fe6f9080           ;   {runtime_call ic_miss_stub}
                0x00007fb5fed9f81d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.95%        0x00007fb5fed9f820:   mov    %eax,-0x14000(%rsp)
  12.48%        0x00007fb5fed9f827:   sub    $0x18,%rsp
   0.31%        0x00007fb5fed9f82b:   nop
   0.54%        0x00007fb5fed9f82c:   cmpl   $0x1,0x20(%r15)
   3.72%  ╭     0x00007fb5fed9f834:   jne    0x00007fb5fed9f85c
   8.61%  │ ↗   0x00007fb5fed9f83a:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@1 (line 72)
   0.27%  │ │   0x00007fb5fed9f83d:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@21 (line 77)
   0.68%  │ │   0x00007fb5fed9f841:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@5 (line 72)
   3.62%  │ │   0x00007fb5fed9f843:   shl    $0x3,%r10d
   8.67%  │ │   0x00007fb5fed9f847:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@108 (line 91)
   0.47%  │ │   0x00007fb5fed9f84a:   add    $0x18,%rsp
   0.61%  │ │↗  0x00007fb5fed9f84e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
   0.00%  │╭││  0x00007fb5fed9f855:   ja     0x00007fb5fed9f869
   3.51%  ││││  0x00007fb5fed9f85b:   ret    
          ↘│││  0x00007fb5fed9f85c:   mov    %rbp,0x10(%rsp)
           │││  0x00007fb5fed9f861:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007fb5fed9f866:   jmp    0x00007fb5fed9f83a
           │ │  0x00007fb5fed9f868:   hlt    
           ↘ ╰  0x00007fb5fed9f869:   lea    -0x22(%rip),%rcx        # 0x00007fb5fed9f84e
                0x00007fb5fed9f870:   mov    %rcx,0x468(%r15)
                0x00007fb5fed9f877:   jmp    0x00007fb5fe700000           ;   {runtime_call SafepointBlob}
                0x00007fb5fed9f87c:   hlt    
                0x00007fb5fed9f87d:   data16 xchg %ax,%ax
              [Exception Handler]
....................................................................................................
  44.44%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.56%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 1066 
  44.44%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized, version 1, compile id 1042 
   0.65%                kernel  [unknown] 
   0.33%                kernel  [unknown] 
   0.29%                kernel  [unknown] 
   0.22%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   2.20%  <...other 431 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.56%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 1066 
  44.44%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized, version 1, compile id 1042 
   3.93%                kernel  [unknown] 
   0.35%                        <unknown> 
   0.04%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libjvm.so  stringStream::~stringStream 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libjvm.so  xmlStream::write 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  __vsnprintf_internal 
   0.02%             libjvm.so  RelocIterator::initialize 
   0.02%             libc.so.6  _IO_default_xsputn 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libc.so.6  __strcmp_avx2 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.33%  <...other 114 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.00%        jvmci, level 4
   3.93%                kernel
   0.38%             libjvm.so
   0.35%                      
   0.23%             libc.so.6
   0.04%        hsdis-amd64.so
   0.04%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%        perf-14913.map
   0.00%           c1, level 3
   0.00%           c1, level 2
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:02:21
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.663 ns/op
# Warmup Iteration   2: 8.162 ns/op
# Warmup Iteration   3: 8.276 ns/op
# Warmup Iteration   4: 8.187 ns/op
# Warmup Iteration   5: 8.204 ns/op
Iteration   1: 8.223 ns/op
Iteration   2: 8.153 ns/op
Iteration   3: 8.238 ns/op
Iteration   4: 8.173 ns/op
Iteration   5: 8.475 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls":
  8.252 ±(99.9%) 0.497 ns/op [Average]
  (min, avg, max) = (8.153, 8.252, 8.475), stdev = 0.129
  CI (99.9%): [7.756, 8.749] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 218227 total address lines.
Perf output processed (skipped 85.306 seconds):
 Column 1: cycles (50809 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1105 

              0x00007fbd6eda4473:   mov    0x10(%rsp),%rdx
              0x00007fbd6eda4478:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@10 (line 234)
              0x00007fbd6eda447c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fbd6eda4485:   jmp    0x00007fbd6eda44af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007fbd6eda448a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fbd6eda4495:   data16 data16 xchg %ax,%ax
          │   0x00007fbd6eda4499:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
   3.92%  │↗  0x00007fbd6eda44a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
   8.69%  ││  0x00007fbd6eda44a7:   test   %eax,(%r11)                  ;   {poll}
   0.34%  ││  0x00007fbd6eda44aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 236)
   0.61%  ↘│  0x00007fbd6eda44af:   mov    0x8(%rsp),%r10
   3.65%   │  0x00007fbd6eda44b4:   mov    %r10,%rsi
   8.57%   │  0x00007fbd6eda44b7:   call   0x00007fbd6e6f9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual recursive_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
  10.00%   │  0x00007fbd6eda44bc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   0.47%   │  0x00007fbd6eda44c4:   mov    0x20(%rsp),%r10
   4.30%   │  0x00007fbd6eda44c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@26 (line 237)
   8.83%   │  0x00007fbd6eda44cc:   mov    0x18(%rsp),%rsi
   0.29%   │  0x00007fbd6eda44d1:   cmpb   $0x0,0x94(%rsi)
   1.15%   ╰  0x00007fbd6eda44d8:   je     0x00007fbd6eda44a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
              0x00007fbd6eda44da:   mov    %r10,0x20(%rsp)
              0x00007fbd6eda44df:   nop
              0x00007fbd6eda44e0:   call   0x00007fbd86ed32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fbd6eda44e5:   nop
              0x00007fbd6eda44e6:   mov    0x10(%rsp),%rdx
              0x00007fbd6eda44eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@40 (line 239)
              0x00007fbd6eda44ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@46 (line 240)
....................................................................................................
  50.83%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 1077 

                # {method} {0x00007fbce3479f00} &apos;recursive_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fbd6ed9f980:   mov    0x8(%rsi),%r10d
                0x00007fbd6ed9f984:   movabs $0x7fbce7000000,%r12
                0x00007fbd6ed9f98e:   add    %r12,%r10
                0x00007fbd6ed9f991:   xor    %r12,%r12
                0x00007fbd6ed9f994:   cmp    %r10,%rax
                0x00007fbd6ed9f997:   jne    0x00007fbd6e6f9080           ;   {runtime_call ic_miss_stub}
                0x00007fbd6ed9f99d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   1.01%        0x00007fbd6ed9f9a0:   mov    %eax,-0x14000(%rsp)
  12.60%        0x00007fbd6ed9f9a7:   sub    $0x18,%rsp
   0.30%        0x00007fbd6ed9f9ab:   nop
   0.61%        0x00007fbd6ed9f9ac:   cmpl   $0x1,0x20(%r15)
   3.82%  ╭     0x00007fbd6ed9f9b4:   jne    0x00007fbd6ed9f9dc
   8.70%  │ ↗   0x00007fbd6ed9f9ba:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@1 (line 107)
   0.31%  │ │   0x00007fbd6ed9f9bd:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@23 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 108)
   0.64%  │ │   0x00007fbd6ed9f9c1:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@5 (line 107)
   3.88%  │ │   0x00007fbd6ed9f9c3:   shl    $0x3,%r10d
   8.66%  │ │   0x00007fbd6ed9f9c7:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 108)
   0.47%  │ │   0x00007fbd6ed9f9ca:   add    $0x18,%rsp
   0.67%  │ │↗  0x00007fbd6ed9f9ce:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fbd6ed9f9d5:   ja     0x00007fbd6ed9f9e9
   3.80%  ││││  0x00007fbd6ed9f9db:   ret    
          ↘│││  0x00007fbd6ed9f9dc:   mov    %rbp,0x10(%rsp)
           │││  0x00007fbd6ed9f9e1:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007fbd6ed9f9e6:   jmp    0x00007fbd6ed9f9ba
           │ │  0x00007fbd6ed9f9e8:   hlt    
           ↘ ╰  0x00007fbd6ed9f9e9:   lea    -0x22(%rip),%rcx        # 0x00007fbd6ed9f9ce
                0x00007fbd6ed9f9f0:   mov    %rcx,0x468(%r15)
                0x00007fbd6ed9f9f7:   jmp    0x00007fbd6e700000           ;   {runtime_call SafepointBlob}
                0x00007fbd6ed9f9fc:   hlt    
                0x00007fbd6ed9f9fd:   data16 xchg %ax,%ax
              [Exception Handler]
....................................................................................................
  45.47%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.83%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1105 
  45.47%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 1077 
   0.36%                kernel  [unknown] 
   0.28%                kernel  [unknown] 
   0.19%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.55%  <...other 325 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.83%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1105 
  45.47%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 1077 
   3.02%                kernel  [unknown] 
   0.17%                        <unknown> 
   0.04%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.04%             libc.so.6  __vfprintf_internal 
   0.04%             libjvm.so  stringStream::~stringStream 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libjvm.so  xmlTextStream::flush 
   0.02%             libc.so.6  _IO_setb 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  __memmove_avx_unaligned_erms 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.01%             libc.so.6  _itoa_word 
   0.01%             libc.so.6  __GI___futex_abstimed_wait_cancelable64 
   0.01%        hsdis-amd64.so  print_insn 
   0.22%  <...other 87 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.29%        jvmci, level 4
   3.02%                kernel
   0.27%             libjvm.so
   0.17%                      
   0.17%             libc.so.6
   0.03%           interpreter
   0.02%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%        libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:08

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

Benchmark                                                 Mode  Cnt   Score   Error  Units
LockElisionBenchmark.baseline                             avgt    5   8.271 ± 0.286  ns/op
LockElisionBenchmark.baseline:asm                         avgt          NaN            ---
LockElisionBenchmark.chain_method_calls                   avgt    5   8.241 ± 0.130  ns/op
LockElisionBenchmark.chain_method_calls:asm               avgt          NaN            ---
LockElisionBenchmark.conditional_chain_method_calls       avgt    5  13.787 ± 0.211  ns/op
LockElisionBenchmark.conditional_chain_method_calls:asm   avgt          NaN            ---
LockElisionBenchmark.conditional_nested_method_calls      avgt    5  13.757 ± 0.424  ns/op
LockElisionBenchmark.conditional_nested_method_calls:asm  avgt          NaN            ---
LockElisionBenchmark.nested_synchronized                  avgt    5   8.280 ± 0.518  ns/op
LockElisionBenchmark.nested_synchronized:asm              avgt          NaN            ---
LockElisionBenchmark.recursive_method_calls               avgt    5   8.252 ± 0.497  ns/op
LockElisionBenchmark.recursive_method_calls:asm           avgt          NaN            ---
