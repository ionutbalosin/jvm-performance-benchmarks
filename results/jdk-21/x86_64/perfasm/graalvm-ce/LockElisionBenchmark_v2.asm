# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
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
# Warmup Iteration   1: 8.368 ns/op
# Warmup Iteration   2: 7.515 ns/op
# Warmup Iteration   3: 8.308 ns/op
# Warmup Iteration   4: 7.372 ns/op
# Warmup Iteration   5: 7.419 ns/op
Iteration   1: 7.300 ns/op
Iteration   2: 7.345 ns/op
Iteration   3: 7.350 ns/op
Iteration   4: 7.352 ns/op
Iteration   5: 7.395 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline":
  7.348 ±(99.9%) 0.130 ns/op [Average]
  (min, avg, max) = (7.300, 7.348, 7.395), stdev = 0.034
  CI (99.9%): [7.218, 7.479] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline:asm":
PrintAssembly processed: 204254 total address lines.
Perf output processed (skipped 95.457 seconds):
 Column 1: cycles (50036 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1167 

              0x00007ff03b198910:   mov    0x18(%rsp),%rsi
              0x00007ff03b198915:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007ff03b198920:   cmpb   $0x0,0x94(%rsi)
              0x00007ff03b198927:   jne    0x00007ff03b1989ba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
              0x00007ff03b19892d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007ff03b198936:   jmp    0x00007ff03b19894f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 236)
          │   0x00007ff03b19893b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
   3.78%  │↗  0x00007ff03b198940:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
   8.58%  ││  0x00007ff03b198947:   test   %eax,(%r11)                  ;   {poll}
   0.40%  ││  0x00007ff03b19894a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 236)
   0.74%  ↘│  0x00007ff03b19894f:   mov    0x8(%rsp),%r10
   3.73%   │  0x00007ff03b198954:   mov    %r10,%rsi
   8.93%   │  0x00007ff03b198957:   call   0x00007ff03aaf9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   9.46%   │  0x00007ff03b19895c:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   0.41%   │  0x00007ff03b198964:   mov    0x20(%rsp),%r10
   4.43%   │  0x00007ff03b198969:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@26 (line 237)
   8.68%   │  0x00007ff03b19896c:   mov    0x18(%rsp),%rsi
   0.41%   │  0x00007ff03b198971:   cmpb   $0x0,0x94(%rsi)
   1.05%   ╰  0x00007ff03b198978:   je     0x00007ff03b198940           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
              0x00007ff03b19897a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 239)
              0x00007ff03b19897f:   nop
              0x00007ff03b198980:   call   0x00007ff0514d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007ff03b198985:   nop
              0x00007ff03b198986:   mov    0x10(%rsp),%rdx
              0x00007ff03b19898b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 239)
              0x00007ff03b19898f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  50.59%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 1135 

                # {method} {0x00007fefac47a400} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007ff03b190e00:   mov    0x8(%rsi),%r10d
                0x00007ff03b190e04:   movabs $0x7fefb7000000,%r12
                0x00007ff03b190e0e:   add    %r12,%r10
                0x00007ff03b190e11:   xor    %r12,%r12
                0x00007ff03b190e14:   cmp    %r10,%rax
                0x00007ff03b190e17:   jne    0x00007ff03aaf9080           ;   {runtime_call ic_miss_stub}
                0x00007ff03b190e1d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   1.13%        0x00007ff03b190e20:   mov    %eax,-0x14000(%rsp)
  12.55%        0x00007ff03b190e27:   sub    $0x18,%rsp
   0.43%        0x00007ff03b190e2b:   nop
   0.66%        0x00007ff03b190e2c:   cmpl   $0x1,0x20(%r15)
   3.71%  ╭     0x00007ff03b190e34:   jne    0x00007ff03b190e5c
   8.80%  │ ↗   0x00007ff03b190e3a:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@1 (line 200)
   0.35%  │ │   0x00007ff03b190e3d:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@9 (line 202)
   0.68%  │ │   0x00007ff03b190e41:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@5 (line 200)
   3.73%  │ │   0x00007ff03b190e43:   shl    $0x3,%r10d
   8.50%  │ │   0x00007ff03b190e47:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@61 (line 209)
   0.46%  │ │   0x00007ff03b190e4a:   add    $0x18,%rsp
   0.65%  │ │↗  0x00007ff03b190e4e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007ff03b190e55:   ja     0x00007ff03b190e69
   3.83%  ││││  0x00007ff03b190e5b:   ret    
          ↘│││  0x00007ff03b190e5c:   mov    %rbp,0x10(%rsp)
           │││  0x00007ff03b190e61:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007ff03b190e66:   jmp    0x00007ff03b190e3a
           │ │  0x00007ff03b190e68:   hlt    
           ↘ ╰  0x00007ff03b190e69:   lea    -0x22(%rip),%rcx        # 0x00007ff03b190e4e
                0x00007ff03b190e70:   mov    %rcx,0x468(%r15)
                0x00007ff03b190e77:   jmp    0x00007ff03ab00000           ;   {runtime_call SafepointBlob}
                0x00007ff03b190e7c:   hlt    
                0x00007ff03b190e7d:   data16 xchg %ax,%ax
              [Exception Handler]
....................................................................................................
  45.48%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.59%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1167 
  45.48%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 1135 
   0.37%                kernel  [unknown] 
   0.23%                kernel  [unknown] 
   0.21%                kernel  [unknown] 
   0.19%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.64%  <...other 330 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.59%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1167 
  45.48%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 1135 
   3.13%                kernel  [unknown] 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libjvm.so  fileStream::write 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  xmlStream::write_text 
   0.02%             libc.so.6  _itoa_word 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%   libjvmcicompiler.so  com.oracle.svm.core.graal.jdk.SubstrateArraycopySnippets::boundsCheck 
   0.01%             libc.so.6  _IO_fflush 
   0.01%                        <unknown> 
   0.01%   libjvmcicompiler.so  java.lang.AbstractStringBuilder::append 
   0.49%  <...other 171 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.07%        jvmci, level 4
   3.13%                kernel
   0.27%             libjvm.so
   0.26%   libjvmcicompiler.so
   0.15%             libc.so.6
   0.04%        hsdis-amd64.so
   0.03%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.01%                      
   0.01%                [vdso]
   0.00%           c1, level 3
   0.00%          runtime stub
   0.00%        perf-11472.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:12:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.553 ns/op
# Warmup Iteration   2: 7.315 ns/op
# Warmup Iteration   3: 7.429 ns/op
# Warmup Iteration   4: 7.362 ns/op
# Warmup Iteration   5: 7.358 ns/op
Iteration   1: 7.459 ns/op
Iteration   2: 7.329 ns/op
Iteration   3: 8.254 ns/op
Iteration   4: 9.390 ns/op
Iteration   5: 7.825 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls":
  8.052 ±(99.9%) 3.197 ns/op [Average]
  (min, avg, max) = (7.329, 8.052, 9.390), stdev = 0.830
  CI (99.9%): [4.854, 11.249] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls:asm":
PrintAssembly processed: 218195 total address lines.
Perf output processed (skipped 81.237 seconds):
 Column 1: cycles (51016 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1091 

              0x00007f9a5b19c210:   mov    0x18(%rsp),%rsi
              0x00007f9a5b19c215:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f9a5b19c220:   cmpb   $0x0,0x94(%rsi)
              0x00007f9a5b19c227:   jne    0x00007f9a5b19c2ba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
              0x00007f9a5b19c22d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f9a5b19c236:   jmp    0x00007f9a5b19c24f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007f9a5b19c23b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
   4.94%  │↗  0x00007f9a5b19c240:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
   7.06%  ││  0x00007f9a5b19c247:   test   %eax,(%r11)                  ;   {poll}
   0.39%  ││  0x00007f9a5b19c24a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 236)
   0.61%  ↘│  0x00007f9a5b19c24f:   mov    0x8(%rsp),%r10
   5.10%   │  0x00007f9a5b19c254:   mov    %r10,%rsi
   6.91%   │  0x00007f9a5b19c257:   call   0x00007f9a5aaf9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
  10.07%   │  0x00007f9a5b19c25c:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   0.42%   │  0x00007f9a5b19c264:   mov    0x20(%rsp),%r10
   5.14%   │  0x00007f9a5b19c269:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@26 (line 237)
   7.56%   │  0x00007f9a5b19c26c:   mov    0x18(%rsp),%rsi
   0.38%   │  0x00007f9a5b19c271:   cmpb   $0x0,0x94(%rsi)
   2.23%   ╰  0x00007f9a5b19c278:   je     0x00007f9a5b19c240           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
              0x00007f9a5b19c27a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@36 (line 239)
              0x00007f9a5b19c27f:   nop
              0x00007f9a5b19c280:   call   0x00007f9a740d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f9a5b19c285:   nop
              0x00007f9a5b19c286:   mov    0x10(%rsp),%rdx
              0x00007f9a5b19c28b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@40 (line 239)
              0x00007f9a5b19c28f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  50.82%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 1058 

                # {method} {0x00007f99d347a018} &apos;chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f9a5b196380:   mov    0x8(%rsi),%r10d
                0x00007f9a5b196384:   movabs $0x7f99d7000000,%r12
                0x00007f9a5b19638e:   add    %r12,%r10
                0x00007f9a5b196391:   xor    %r12,%r12
                0x00007f9a5b196394:   cmp    %r10,%rax
                0x00007f9a5b196397:   jne    0x00007f9a5aaf9080           ;   {runtime_call ic_miss_stub}
                0x00007f9a5b19639d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.91%        0x00007f9a5b1963a0:   mov    %eax,-0x14000(%rsp)
  11.75%        0x00007f9a5b1963a7:   sub    $0x18,%rsp
   0.34%        0x00007f9a5b1963ab:   nop
   0.60%        0x00007f9a5b1963ac:   cmpl   $0x1,0x20(%r15)
   4.96%  ╭     0x00007f9a5b1963b4:   jne    0x00007f9a5b1963dc
   7.20%  │ ↗   0x00007f9a5b1963ba:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@1 (line 115)
   0.36%  │ │   0x00007f9a5b1963bd:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 217)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@9 (line 117)
   0.64%  │ │   0x00007f9a5b1963c1:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@5 (line 115)
   5.09%  │ │   0x00007f9a5b1963c3:   shl    $0x3,%r10d
   7.09%  │ │   0x00007f9a5b1963c7:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@51 (line 124)
   0.53%  │ │   0x00007f9a5b1963ca:   add    $0x18,%rsp
   0.60%  │ │↗  0x00007f9a5b1963ce:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f9a5b1963d5:   ja     0x00007f9a5b1963e9
   4.92%  ││││  0x00007f9a5b1963db:   ret    
          ↘│││  0x00007f9a5b1963dc:   mov    %rbp,0x10(%rsp)
           │││  0x00007f9a5b1963e1:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f9a5b1963e6:   jmp    0x00007f9a5b1963ba
           │ │  0x00007f9a5b1963e8:   hlt    
           ↘ ╰  0x00007f9a5b1963e9:   lea    -0x22(%rip),%rcx        # 0x00007f9a5b1963ce
                0x00007f9a5b1963f0:   mov    %rcx,0x468(%r15)
                0x00007f9a5b1963f7:   jmp    0x00007f9a5ab00000           ;   {runtime_call SafepointBlob}
                0x00007f9a5b1963fc:   hlt    
                0x00007f9a5b1963fd:   data16 xchg %ax,%ax
              [Exception Handler]
....................................................................................................
  45.00%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.82%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1091 
  45.00%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 1058 
   0.44%                kernel  [unknown] 
   0.42%                kernel  [unknown] 
   0.19%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.65%  <...other 367 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.82%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1091 
  45.00%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 1058 
   3.49%                kernel  [unknown] 
   0.19%                        <unknown> 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  fileStream::write 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  xmlStream::write 
   0.01%             libc.so.6  __strchr_avx2 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.01%                [vdso]  [unknown] 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%             libc.so.6  _IO_default_xsputn 
   0.01%             libc.so.6  _int_free 
   0.01%             libc.so.6  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.28%  <...other 107 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.81%        jvmci, level 4
   3.49%                kernel
   0.27%             libjvm.so
   0.19%                      
   0.18%             libc.so.6
   0.03%           interpreter
   0.02%        hsdis-amd64.so
   0.01%                [vdso]
   0.01%  ld-linux-x86-64.so.2
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:09:45
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.601 ns/op
# Warmup Iteration   2: 16.644 ns/op
# Warmup Iteration   3: 16.055 ns/op
# Warmup Iteration   4: 15.538 ns/op
# Warmup Iteration   5: 14.859 ns/op
Iteration   1: 15.334 ns/op
Iteration   2: 13.920 ns/op
Iteration   3: 12.867 ns/op
Iteration   4: 13.729 ns/op
Iteration   5: 16.576 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls":
  14.485 ±(99.9%) 5.647 ns/op [Average]
  (min, avg, max) = (12.867, 14.485, 16.576), stdev = 1.466
  CI (99.9%): [8.838, 20.132] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls:asm":
PrintAssembly processed: 207881 total address lines.
Perf output processed (skipped 84.725 seconds):
 Column 1: cycles (50807 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 1058 

             # {method} {0x00007fa3374840e0} &apos;conditional_chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007fa3bf18d500:   mov    0x8(%rsi),%r10d
             0x00007fa3bf18d504:   movabs $0x7fa33b000000,%r12
             0x00007fa3bf18d50e:   add    %r12,%r10
             0x00007fa3bf18d511:   xor    %r12,%r12
             0x00007fa3bf18d514:   cmp    %r10,%rax
             0x00007fa3bf18d517:   jne    0x00007fa3beaf9080           ;   {runtime_call ic_miss_stub}
             0x00007fa3bf18d51d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   3.33%     0x00007fa3bf18d520:   mov    %eax,-0x14000(%rsp)
   4.25%     0x00007fa3bf18d527:   sub    $0x18,%rsp
   1.66%     0x00007fa3bf18d52b:   nop
   1.74%     0x00007fa3bf18d52c:   cmpl   $0x1,0x20(%r15)
   1.86%     0x00007fa3bf18d534:   jne    0x00007fa3bf18d634
   2.25%     0x00007fa3bf18d53a:   mov    %rbp,0x10(%rsp)
   1.75%     0x00007fa3bf18d53f:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@1 (line 132)
   1.83%     0x00007fa3bf18d542:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@5 (line 132)
   1.89%     0x00007fa3bf18d544:   cmp    $0x21,%eax
          ╭  0x00007fa3bf18d547:   jl     0x00007fa3bf18d5cf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 135)
   2.37%  │  0x00007fa3bf18d54d:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 136)
   1.59%  │  0x00007fa3bf18d551:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 136)
   1.73%  │  0x00007fa3bf18d554:   cmp    $0x21,%eax
          │  0x00007fa3bf18d557:   jl     0x00007fa3bf18d622           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@22 (line 138)
   2.07%  │  0x00007fa3bf18d55d:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@27 (line 139)
   2.25%  │  0x00007fa3bf18d560:   cmp    $0x21,%eax
          │  0x00007fa3bf18d563:   jl     0x00007fa3bf18d5f5           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@34 (line 141)
   2.19%  │  0x00007fa3bf18d569:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@39 (line 142)
   1.78%  │  0x00007fa3bf18d56c:   cmp    $0x21,%eax
   0.00%  │  0x00007fa3bf18d56f:   jl     0x00007fa3bf18d62b           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@46 (line 144)
   2.31%  │  0x00007fa3bf18d575:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@51 (line 145)
   2.07%  │  0x00007fa3bf18d578:   nopl   0x0(%rax,%rax,1)
   2.09%  │  0x00007fa3bf18d580:   cmp    $0x21,%eax
   0.00%  │  0x00007fa3bf18d583:   jl     0x00007fa3bf18d619           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@58 (line 147)
   1.81%  │  0x00007fa3bf18d589:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@63 (line 148)
   1.79%  │  0x00007fa3bf18d58c:   cmp    $0x21,%eax
   0.00%  │  0x00007fa3bf18d58f:   jl     0x00007fa3bf18d607           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@70 (line 150)
   2.22%  │  0x00007fa3bf18d595:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@75 (line 151)
   1.85%  │  0x00007fa3bf18d598:   nopl   0x0(%rax,%rax,1)
   1.86%  │  0x00007fa3bf18d5a0:   cmp    $0x21,%eax
   0.00%  │  0x00007fa3bf18d5a3:   jl     0x00007fa3bf18d5fe           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@82 (line 153)
   2.26%  │  0x00007fa3bf18d5a9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@87 (line 154)
   2.16%  │  0x00007fa3bf18d5ac:   cmp    $0x21,%eax
          │  0x00007fa3bf18d5af:   jl     0x00007fa3bf18d610           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@94 (line 156)
   1.95%  │  0x00007fa3bf18d5b5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@99 (line 157)
   1.98%  │  0x00007fa3bf18d5b8:   mov    0x10(%rsp),%rbp
   2.33%  │  0x00007fa3bf18d5bd:   add    $0x18,%rsp
   2.02%  │  0x00007fa3bf18d5c1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fa3bf18d5c8:   ja     0x00007fa3bf18d646
   2.05%  │  0x00007fa3bf18d5ce:   ret    
          ↘  0x00007fa3bf18d5cf:   mov    $0x14,%r10
             0x00007fa3bf18d5d6:   movl   $0xffffffed,0x484(%r15)      ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 135)
             0x00007fa3bf18d5e1:   mov    %r10,0x490(%r15)
             0x00007fa3bf18d5e8:   call   0x00007fa3beaff17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@0 (line 132)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007fa3bf18d5ed:   nopl   0x0(%rax,%rax,1)             ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@34 (line 141)
....................................................................................................
  65.30%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 1090 

              0x00007fa3bf194d10:   mov    0x18(%rsp),%rsi
              0x00007fa3bf194d15:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fa3bf194d20:   cmpb   $0x0,0x94(%rsi)
              0x00007fa3bf194d27:   jne    0x00007fa3bf194dba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
              0x00007fa3bf194d2d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fa3bf194d36:   jmp    0x00007fa3bf194d4f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007fa3bf194d3b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
   2.05%  │↗  0x00007fa3bf194d40:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
   2.24%  ││  0x00007fa3bf194d47:   test   %eax,(%r11)                  ;   {poll}
   1.77%  ││  0x00007fa3bf194d4a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 236)
   1.84%  ↘│  0x00007fa3bf194d4f:   mov    0x8(%rsp),%r10
   1.94%   │  0x00007fa3bf194d54:   mov    %r10,%rsi
   2.19%   │  0x00007fa3bf194d57:   call   0x00007fa3beaf9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual conditional_chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   5.53%   │  0x00007fa3bf194d5c:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   1.74%   │  0x00007fa3bf194d64:   mov    0x20(%rsp),%r10
   4.10%   │  0x00007fa3bf194d69:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@26 (line 237)
   2.67%   │  0x00007fa3bf194d6c:   mov    0x18(%rsp),%rsi
   1.63%   │  0x00007fa3bf194d71:   cmpb   $0x0,0x94(%rsi)
   3.21%   ╰  0x00007fa3bf194d78:   je     0x00007fa3bf194d40           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
              0x00007fa3bf194d7a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@36 (line 239)
              0x00007fa3bf194d7f:   nop
              0x00007fa3bf194d80:   call   0x00007fa3d7cd32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fa3bf194d85:   nop
              0x00007fa3bf194d86:   mov    0x10(%rsp),%rdx
              0x00007fa3bf194d8b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@40 (line 239)
              0x00007fa3bf194d8f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  30.90%  <total for region 2>

....[Hottest Regions]...............................................................................
  65.30%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 1058 
  30.90%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 1090 
   0.35%                kernel  [unknown] 
   0.19%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.04%                kernel  [unknown] 
   1.73%  <...other 371 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  65.30%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 1058 
  30.90%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 1090 
   2.95%                kernel  [unknown] 
   0.04%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libc.so.6  __vfprintf_internal 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%   libjvmcicompiler.so  java.lang.AbstractStringBuilder::append 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  _IO_setb 
   0.01%   libjvmcicompiler.so  com.oracle.svm.core.JavaMemoryUtil::copyObjectArrayForwardWithStoreCheck 
   0.01%   libjvmcicompiler.so  org.graalvm.collections.EconomicMapImpl::getHashArray 
   0.01%             libjvm.so  defaultStream::hold 
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5 
   0.56%  <...other 212 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.20%        jvmci, level 4
   2.95%                kernel
   0.38%   libjvmcicompiler.so
   0.23%             libjvm.so
   0.17%             libc.so.6
   0.03%           interpreter
   0.02%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.00%                      
   0.00%        perf-11709.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:07:13
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.528 ns/op
# Warmup Iteration   2: 12.241 ns/op
# Warmup Iteration   3: 12.533 ns/op
# Warmup Iteration   4: 12.332 ns/op
# Warmup Iteration   5: 12.176 ns/op
Iteration   1: 12.345 ns/op
Iteration   2: 12.430 ns/op
Iteration   3: 12.365 ns/op
Iteration   4: 12.318 ns/op
Iteration   5: 12.374 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls":
  12.366 ±(99.9%) 0.159 ns/op [Average]
  (min, avg, max) = (12.318, 12.366, 12.430), stdev = 0.041
  CI (99.9%): [12.207, 12.526] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls:asm":
PrintAssembly processed: 214274 total address lines.
Perf output processed (skipped 81.500 seconds):
 Column 1: cycles (50912 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 1042 

                     # {method} {0x00007f1a1b484210} &apos;conditional_nested_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                     #           [sp+0x20]  (sp of caller)
                     0x00007f1aa318f200:   mov    0x8(%rsi),%r10d
                     0x00007f1aa318f204:   movabs $0x7f1a1f000000,%r12
                     0x00007f1aa318f20e:   add    %r12,%r10
                     0x00007f1aa318f211:   xor    %r12,%r12
                     0x00007f1aa318f214:   cmp    %r10,%rax
                     0x00007f1aa318f217:   jne    0x00007f1aa2af9080           ;   {runtime_call ic_miss_stub}
                     0x00007f1aa318f21d:   data16 xchg %ax,%ax
                   [Verified Entry Point]
   3.83%             0x00007f1aa318f220:   mov    %eax,-0x14000(%rsp)
   4.21%             0x00007f1aa318f227:   sub    $0x18,%rsp
   1.88%             0x00007f1aa318f22b:   nop
   2.03%             0x00007f1aa318f22c:   cmpl   $0x1,0x20(%r15)
   1.99%  ╭          0x00007f1aa318f234:   jne    0x00007f1aa318f2f2
   2.35%  │          0x00007f1aa318f23a:   mov    %rbp,0x10(%rsp)
   1.88%  │          0x00007f1aa318f23f:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@1 (line 166)
   1.98%  │          0x00007f1aa318f242:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@5 (line 166)
   2.01%  │          0x00007f1aa318f244:   cmp    $0x21,%eax
          │╭         0x00007f1aa318f247:   jl     0x00007f1aa318f2cf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 169)
   2.27%  ││         0x00007f1aa318f24d:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 217)
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 170)
   1.81%  ││         0x00007f1aa318f251:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 170)
   1.99%  ││         0x00007f1aa318f254:   cmp    $0x21,%eax
          ││╭        0x00007f1aa318f257:   jl     0x00007f1aa318f2cf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@22 (line 171)
   1.92%  │││        0x00007f1aa318f25d:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@27 (line 172)
   2.21%  │││        0x00007f1aa318f260:   cmp    $0x21,%eax
          │││╭       0x00007f1aa318f263:   jl     0x00007f1aa318f2cf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@34 (line 173)
   1.90%  ││││       0x00007f1aa318f269:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@39 (line 174)
   1.94%  ││││       0x00007f1aa318f26c:   cmp    $0x21,%eax
          ││││╭      0x00007f1aa318f26f:   jl     0x00007f1aa318f2cf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@46 (line 175)
   2.03%  │││││      0x00007f1aa318f275:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@51 (line 176)
   2.30%  │││││      0x00007f1aa318f278:   nopl   0x0(%rax,%rax,1)
   1.91%  │││││      0x00007f1aa318f280:   cmp    $0x21,%eax
          │││││╭     0x00007f1aa318f283:   jl     0x00007f1aa318f2cf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@58 (line 177)
   1.97%  ││││││     0x00007f1aa318f289:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          ││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@63 (line 178)
   1.77%  ││││││     0x00007f1aa318f28c:   cmp    $0x21,%eax
          ││││││╭    0x00007f1aa318f28f:   jl     0x00007f1aa318f2cf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@70 (line 179)
   2.36%  │││││││    0x00007f1aa318f295:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@75 (line 180)
   1.86%  │││││││    0x00007f1aa318f298:   nopl   0x0(%rax,%rax,1)
   2.08%  │││││││    0x00007f1aa318f2a0:   cmp    $0x21,%eax
          │││││││╭   0x00007f1aa318f2a3:   jl     0x00007f1aa318f2cf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@82 (line 181)
   2.16%  ││││││││   0x00007f1aa318f2a9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@87 (line 182)
   2.26%  ││││││││   0x00007f1aa318f2ac:   cmp    $0x21,%eax
          ││││││││╭  0x00007f1aa318f2af:   jl     0x00007f1aa318f2cf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@94 (line 183)
   1.86%  │││││││││  0x00007f1aa318f2b5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@99 (line 184)
   2.21%  │││││││││  0x00007f1aa318f2b8:   mov    0x10(%rsp),%rbp
   2.25%  │││││││││  0x00007f1aa318f2bd:   add    $0x18,%rsp
   2.19%  │││││││││  0x00007f1aa318f2c1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││││││││  0x00007f1aa318f2c8:   ja     0x00007f1aa318f306
   1.90%  │││││││││  0x00007f1aa318f2ce:   ret    
          │↘↘↘↘↘↘↘↘  0x00007f1aa318f2cf:   movl   $0xffffffed,0x484(%r15)      ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 169)
          │          0x00007f1aa318f2da:   movq   $0x14,0x490(%r15)
          │          0x00007f1aa318f2e5:   call   0x00007f1aa2aff17a           ; ImmutableOopMap {rsi=Oop }
          │                                                                    ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@0 (line 166)
          │                                                                    ;   {runtime_call DeoptimizationBlob}
          │          0x00007f1aa318f2ea:   nopl   0x0(%rax,%rax,1)
          ↘          0x00007f1aa318f2f2:   mov    %rbp,0x10(%rsp)
                     0x00007f1aa318f2f7:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
....................................................................................................
  67.31%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 1072 

              0x00007f1aa3196590:   mov    0x18(%rsp),%rsi
              0x00007f1aa3196595:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f1aa31965a0:   cmpb   $0x0,0x94(%rsi)
              0x00007f1aa31965a7:   jne    0x00007f1aa319663a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
              0x00007f1aa31965ad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f1aa31965b6:   jmp    0x00007f1aa31965cf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007f1aa31965bb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
   2.06%  │↗  0x00007f1aa31965c0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
   2.25%  ││  0x00007f1aa31965c7:   test   %eax,(%r11)                  ;   {poll}
   1.85%  ││  0x00007f1aa31965ca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 236)
   2.10%  ↘│  0x00007f1aa31965cf:   mov    0x8(%rsp),%r10
   2.00%   │  0x00007f1aa31965d4:   mov    %r10,%rsi
   2.20%   │  0x00007f1aa31965d7:   call   0x00007f1aa2af9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual conditional_nested_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   3.35%   │  0x00007f1aa31965dc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   1.85%   │  0x00007f1aa31965e4:   mov    0x20(%rsp),%r10
   4.20%   │  0x00007f1aa31965e9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@26 (line 237)
   2.58%   │  0x00007f1aa31965ec:   mov    0x18(%rsp),%rsi
   1.67%   │  0x00007f1aa31965f1:   cmpb   $0x0,0x94(%rsi)
   2.69%   ╰  0x00007f1aa31965f8:   je     0x00007f1aa31965c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
              0x00007f1aa31965fa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@36 (line 239)
              0x00007f1aa31965ff:   nop
              0x00007f1aa3196600:   call   0x00007f1abccd32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1aa3196605:   nop
              0x00007f1aa3196606:   mov    0x10(%rsp),%rdx
              0x00007f1aa319660b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@40 (line 239)
              0x00007f1aa319660f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  28.79%  <total for region 2>

....[Hottest Regions]...............................................................................
  67.31%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 1042 
  28.79%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 1072 
   0.39%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   1.74%  <...other 352 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  67.31%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 1042 
  28.79%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 1072 
   3.15%                kernel  [unknown] 
   0.22%                        <unknown> 
   0.04%             libjvm.so  fileStream::write 
   0.03%             libjvm.so  xmlStream::write_text 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%        hsdis-amd64.so  print_insn 
   0.01%             libc.so.6  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5 
   0.24%  <...other 86 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.11%        jvmci, level 4
   3.15%                kernel
   0.27%             libjvm.so
   0.22%                      
   0.19%             libc.so.6
   0.02%           interpreter
   0.02%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.00%        perf-11808.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:04:45
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.481 ns/op
# Warmup Iteration   2: 7.329 ns/op
# Warmup Iteration   3: 7.457 ns/op
# Warmup Iteration   4: 7.291 ns/op
# Warmup Iteration   5: 7.341 ns/op
Iteration   1: 7.387 ns/op
Iteration   2: 7.232 ns/op
Iteration   3: 7.374 ns/op
Iteration   4: 7.414 ns/op
Iteration   5: 7.516 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized":
  7.385 ±(99.9%) 0.392 ns/op [Average]
  (min, avg, max) = (7.232, 7.385, 7.516), stdev = 0.102
  CI (99.9%): [6.992, 7.777] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized:asm":
PrintAssembly processed: 216543 total address lines.
Perf output processed (skipped 80.942 seconds):
 Column 1: cycles (50937 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 1053 

              0x00007f217319d990:   mov    0x18(%rsp),%rsi
              0x00007f217319d995:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f217319d9a0:   cmpb   $0x0,0x94(%rsi)
              0x00007f217319d9a7:   jne    0x00007f217319da3a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
              0x00007f217319d9ad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f217319d9b6:   jmp    0x00007f217319d9cf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 236)
          │   0x00007f217319d9bb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
   3.71%  │↗  0x00007f217319d9c0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
   8.92%  ││  0x00007f217319d9c7:   test   %eax,(%r11)                  ;   {poll}
   0.37%  ││  0x00007f217319d9ca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 236)
   0.69%  ↘│  0x00007f217319d9cf:   mov    0x8(%rsp),%r10
   3.71%   │  0x00007f217319d9d4:   mov    %r10,%rsi
   8.48%   │  0x00007f217319d9d7:   call   0x00007f2172af9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual nested_synchronized {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
  10.05%   │  0x00007f217319d9dc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   0.43%   │  0x00007f217319d9e4:   mov    0x20(%rsp),%r10
   4.32%   │  0x00007f217319d9e9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@26 (line 237)
   8.71%   │  0x00007f217319d9ec:   mov    0x18(%rsp),%rsi
   0.35%   │  0x00007f217319d9f1:   cmpb   $0x0,0x94(%rsi)
   1.11%   ╰  0x00007f217319d9f8:   je     0x00007f217319d9c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
              0x00007f217319d9fa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@36 (line 239)
              0x00007f217319d9ff:   nop
              0x00007f217319da00:   call   0x00007f21890d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f217319da05:   nop
              0x00007f217319da06:   mov    0x10(%rsp),%rdx
              0x00007f217319da0b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@40 (line 239)
              0x00007f217319da0f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  50.85%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized, version 1, compile id 1027 

                # {method} {0x00007f20e4479d78} &apos;nested_synchronized&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f2173199700:   mov    0x8(%rsi),%r10d
                0x00007f2173199704:   movabs $0x7f20ef000000,%r12
                0x00007f217319970e:   add    %r12,%r10
                0x00007f2173199711:   xor    %r12,%r12
                0x00007f2173199714:   cmp    %r10,%rax
                0x00007f2173199717:   jne    0x00007f2172af9080           ;   {runtime_call ic_miss_stub}
                0x00007f217319971d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   1.00%        0x00007f2173199720:   mov    %eax,-0x14000(%rsp)
  12.64%        0x00007f2173199727:   sub    $0x18,%rsp
   0.35%        0x00007f217319972b:   nop
   0.63%        0x00007f217319972c:   cmpl   $0x1,0x20(%r15)
   3.75%  ╭     0x00007f2173199734:   jne    0x00007f217319975c
   8.58%  │ ↗   0x00007f217319973a:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@1 (line 72)
   0.36%  │ │   0x00007f217319973d:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@21 (line 77)
   0.65%  │ │   0x00007f2173199741:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@5 (line 72)
   3.65%  │ │   0x00007f2173199743:   shl    $0x3,%r10d
   8.87%  │ │   0x00007f2173199747:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@108 (line 91)
   0.52%  │ │   0x00007f217319974a:   add    $0x18,%rsp
   0.68%  │ │↗  0x00007f217319974e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
   0.00%  │╭││  0x00007f2173199755:   ja     0x00007f2173199769
   3.62%  ││││  0x00007f217319975b:   ret    
          ↘│││  0x00007f217319975c:   mov    %rbp,0x10(%rsp)
           │││  0x00007f2173199761:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f2173199766:   jmp    0x00007f217319973a
           │ │  0x00007f2173199768:   hlt    
           ↘ ╰  0x00007f2173199769:   lea    -0x22(%rip),%rcx        # 0x00007f217319974e
                0x00007f2173199770:   mov    %rcx,0x468(%r15)
                0x00007f2173199777:   jmp    0x00007f2172b00000           ;   {runtime_call SafepointBlob}
                0x00007f217319977c:   hlt    
                0x00007f217319977d:   data16 xchg %ax,%ax
              [Exception Handler]
....................................................................................................
  45.28%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.85%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 1053 
  45.28%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized, version 1, compile id 1027 
   0.58%                kernel  [unknown] 
   0.33%                kernel  [unknown] 
   0.25%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%             libjvm.so  fileStream::write 
   0.03%                kernel  [unknown] 
   1.52%  <...other 290 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.85%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 1053 
  45.28%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized, version 1, compile id 1027 
   3.27%                kernel  [unknown] 
   0.09%                        <unknown> 
   0.04%             libjvm.so  fileStream::write 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libjvm.so  xmlTextStream::flush 
   0.02%        hsdis-amd64.so  print_insn 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libjvm.so  ElfSymbolTable::lookup 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  syscall 
   0.01%             libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%             libc.so.6  __GI___pthread_enable_asynccancel 
   0.23%  <...other 82 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.14%        jvmci, level 4
   3.27%                kernel
   0.27%             libjvm.so
   0.17%             libc.so.6
   0.09%                      
   0.03%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%                [vdso]
   0.00%        perf-11912.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
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
# Warmup Iteration   1: 17.066 ns/op
# Warmup Iteration   2: 16.780 ns/op
# Warmup Iteration   3: 17.069 ns/op
# Warmup Iteration   4: 16.764 ns/op
# Warmup Iteration   5: 16.775 ns/op
Iteration   1: 16.788 ns/op
Iteration   2: 16.787 ns/op
Iteration   3: 16.699 ns/op
Iteration   4: 16.764 ns/op
Iteration   5: 16.803 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls":
  16.768 ±(99.9%) 0.159 ns/op [Average]
  (min, avg, max) = (16.699, 16.768, 16.803), stdev = 0.041
  CI (99.9%): [16.609, 16.927] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 208957 total address lines.
Perf output processed (skipped 80.232 seconds):
 Column 1: cycles (50930 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 1044 

                # {method} {0x00007f96eb479f00} &apos;recursive_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                #           [sp+0x50]  (sp of caller)
                0x00007f977318f6a0:   mov    0x8(%rsi),%r10d
                0x00007f977318f6a4:   movabs $0x7f96ef000000,%r12
                0x00007f977318f6ae:   add    %r12,%r10
                0x00007f977318f6b1:   xor    %r12,%r12
                0x00007f977318f6b4:   cmp    %r10,%rax
                0x00007f977318f6b7:   jne    0x00007f9772af9080           ;   {runtime_call ic_miss_stub}
                0x00007f977318f6bd:   data16 xchg %ax,%ax
              [Verified Entry Point]
   1.82%        0x00007f977318f6c0:   mov    %eax,-0x14000(%rsp)
   4.19%        0x00007f977318f6c7:   sub    $0x48,%rsp
   0.05%        0x00007f977318f6cb:   nop
   1.83%        0x00007f977318f6cc:   cmpl   $0x1,0x20(%r15)
   1.59%  ╭     0x00007f977318f6d4:   jne    0x00007f977318f72e
   2.56%  │ ↗   0x00007f977318f6da:   mov    %rbp,0x40(%rsp)
   0.03%  │ │   0x00007f977318f6df:   mov    0x10(%rsi),%edx              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@1 (line 107)
   1.87%  │ │   0x00007f977318f6e2:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@23 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 108)
   1.49%  │ │   0x00007f977318f6e6:   shl    %edx                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@5 (line 107)
   2.42%  │ │   0x00007f977318f6e8:   mov    $0x2,%ecx                    ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 108)
   0.02%  │ │   0x00007f977318f6ed:   mov    %r10d,0x4(%rsp)
   1.80%  │ │   0x00007f977318f6f2:   nop
   1.59%  │ │   0x00007f977318f6f3:   call   0x00007f977318ee40           ; ImmutableOopMap {}
          │ │                                                             ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 108)
          │ │                                                             ;   {optimized virtual_call}
   3.89%  │ │   0x00007f977318f6f8:   nopl   0x1e8(%rax,%rax,1)           ;   {other}
   2.42%  │ │   0x00007f977318f700:   mov    0x4(%rsp),%r10d
   1.95%  │ │   0x00007f977318f705:   mov    %r10d,%r11d
   1.65%  │ │   0x00007f977318f708:   shl    $0x2,%r11d
   2.42%  │ │   0x00007f977318f70c:   shl    %r10d
   0.00%  │ │   0x00007f977318f70f:   add    %r10d,%r11d
   1.98%  │ │   0x00007f977318f712:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 108)
   1.74%  │ │   0x00007f977318f715:   mov    0x40(%rsp),%rbp
   2.50%  │ │   0x00007f977318f71a:   add    $0x48,%rsp
          │ │   0x00007f977318f71e:   xchg   %ax,%ax
   1.81%  │ │↗  0x00007f977318f720:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f977318f727:   ja     0x00007f977318f73b
   1.60%  ││││  0x00007f977318f72d:   ret    
          ↘│││  0x00007f977318f72e:   mov    %rbp,0x40(%rsp)
           │││  0x00007f977318f733:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f977318f738:   jmp    0x00007f977318f6da
           │ │  0x00007f977318f73a:   hlt    
           ↘ ╰  0x00007f977318f73b:   lea    -0x22(%rip),%rcx        # 0x00007f977318f720
                0x00007f977318f742:   mov    %rcx,0x468(%r15)
                0x00007f977318f749:   jmp    0x00007f9772b00000           ;   {runtime_call SafepointBlob}
                0x00007f977318f74e:   hlt    
              [Exception Handler]
                0x00007f977318f74f:   call   0x00007f9772d0b580           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  43.21%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 1042 

                           # parm1:    rcx       = int
                           #           [sp+0x50]  (sp of caller)
                           0x00007f977318ee20:   mov    0x8(%rsi),%r10d
                           0x00007f977318ee24:   movabs $0x7f96ef000000,%r12
                           0x00007f977318ee2e:   add    %r12,%r10
                           0x00007f977318ee31:   xor    %r12,%r12
                           0x00007f977318ee34:   cmp    %r10,%rax
                           0x00007f977318ee37:   jne    0x00007f9772af9080           ;   {runtime_call ic_miss_stub}
                           0x00007f977318ee3d:   data16 xchg %ax,%ax
                         [Verified Entry Point]
   2.53%           ↗       0x00007f977318ee40:   mov    %eax,-0x14000(%rsp)
   3.52%           │       0x00007f977318ee47:   sub    $0x48,%rsp
   2.45%           │       0x00007f977318ee4b:   nop
   0.01%           │       0x00007f977318ee4c:   cmpl   $0x1,0x20(%r15)
   1.86%           │       0x00007f977318ee54:   jne    0x00007f977318ef38
   1.60%           │       0x00007f977318ee5a:   mov    %rbp,0x40(%rsp)
   2.50%           │       0x00007f977318ee5f:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                   │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@23 (line 227)
   0.01%           │       0x00007f977318ee63:   cmp    $0x3,%ecx
          ╭        │       0x00007f977318ee66:   jge    0x00007f977318ee8c
   1.83%  │        │       0x00007f977318ee6c:   cmp    $0x2,%ecx
          │╭       │       0x00007f977318ee6f:   jge    0x00007f977318ef14
          ││       │       0x00007f977318ee75:   cmp    $0x0,%ecx
          ││╭      │       0x00007f977318ee78:   je     0x00007f977318eef7
          │││      │       0x00007f977318ee7e:   cmp    $0x1,%ecx
          │││╭     │       0x00007f977318ee81:   je     0x00007f977318ef10
          ││││╭    │       0x00007f977318ee87:   jmp    0x00007f977318eeac
          ↘││││    │       0x00007f977318ee8c:   cmp    $0x5,%ecx
           ││││╭   │       0x00007f977318ee8f:   jg     0x00007f977318eeac
           │││││   │       0x00007f977318ee95:   cmp    $0x5,%ecx
           │││││╭  │       0x00007f977318ee98:   jge    0x00007f977318ef2f
           ││││││  │       0x00007f977318ee9e:   cmp    $0x3,%ecx
           ││││││╭ │       0x00007f977318eea1:   je     0x00007f977318ef1d
           │││││││╭│       0x00007f977318eea7:   jmp    0x00007f977318ef26           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │││││││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@14 (line 224)
           │││││││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││↘↘││││       0x00007f977318eeac:   mov    %r10d,0x4(%rsp)
           │││  ││││       0x00007f977318eeb1:   lea    -0x6(%rcx),%ecx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
           │││  ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@30 (line 227)
           │││  ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  ││││       0x00007f977318eeb4:   data16 xchg %ax,%ax
           │││  │││╰       0x00007f977318eeb7:   call   0x00007f977318ee40           ; ImmutableOopMap {}
           │││  │││                                                                  ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││                                                                  ;   {optimized virtual_call}
           │││  │││        0x00007f977318eebc:   nopl   0x22c(%rax,%rax,1)           ;   {other}
           │││  │││        0x00007f977318eec4:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 227)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││     ↗  0x00007f977318eec8:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 227)
           │││  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││    ↗│  0x00007f977318eecc:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││  │││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 227)
           │││  │││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││   ↗││  0x00007f977318eed0:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││  │││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 227)
           │││  │││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │││  │││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
   3.39%   │││  │││  ↗│││  0x00007f977318eed4:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││  │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 227)
           │││  │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
   0.33%   │││  │││  ││││  0x00007f977318eed8:   mov    0x4(%rsp),%r10d
   2.27%   │││  │││ ↗││││  0x00007f977318eedd:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 227)
   0.11%   │││  │││ │││││  0x00007f977318eee0:   mov    0x40(%rsp),%rbp
   3.52%   │││  │││ │││││  0x00007f977318eee5:   add    $0x48,%rsp
   0.00%   │││  │││ │││││  0x00007f977318eee9:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │││  │││ │││││  0x00007f977318eef0:   ja     0x00007f977318ef48
   2.34%   │││  │││ │││││  0x00007f977318eef6:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │││  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@14 (line 224)
           │││  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
           │↘│  │││ │││││  0x00007f977318eef7:   mov    %edx,%eax
           │ │  │││ │││││  0x00007f977318eef9:   mov    0x40(%rsp),%rbp
           │ │  │││ │││││  0x00007f977318eefe:   add    $0x48,%rsp
           │ │  │││ │││││  0x00007f977318ef02:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │ │  │││ │││││  0x00007f977318ef09:   ja     0x00007f977318ef5c
           │ │  │││ │││││  0x00007f977318ef0f:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@21 (line 225)
           │ ↘  │││ │││││  0x00007f977318ef10:   mov    %edx,%eax
           │    │││ ╰││││  0x00007f977318ef12:   jmp    0x00007f977318eedd
   1.60%   ↘    │││  ││││  0x00007f977318ef14:   mov    %edx,%eax
   2.49%        │││  ││││  0x00007f977318ef16:   mov    %r10d,0x4(%rsp)
   0.03%        │││  ╰│││  0x00007f977318ef1b:   jmp    0x00007f977318eed4
                │↘│   │││  0x00007f977318ef1d:   mov    %edx,%eax
                │ │   │││  0x00007f977318ef1f:   mov    %r10d,0x4(%rsp)
                │ │   ╰││  0x00007f977318ef24:   jmp    0x00007f977318eed0
                │ ↘    ││  0x00007f977318ef26:   mov    %edx,%eax
                │      ││  0x00007f977318ef28:   mov    %r10d,0x4(%rsp)
                │      ╰│  0x00007f977318ef2d:   jmp    0x00007f977318eecc
                ↘       │  0x00007f977318ef2f:   mov    %edx,%eax
                        │  0x00007f977318ef31:   mov    %r10d,0x4(%rsp)
                        ╰  0x00007f977318ef36:   jmp    0x00007f977318eec8
                           0x00007f977318ef38:   mov    %rbp,0x40(%rsp)
....................................................................................................
  32.38%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1074 

              0x00007f9773196a90:   mov    0x18(%rsp),%rsi
              0x00007f9773196a95:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f9773196aa0:   cmpb   $0x0,0x94(%rsi)
              0x00007f9773196aa7:   jne    0x00007f9773196b3a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
              0x00007f9773196aad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f9773196ab6:   jmp    0x00007f9773196acf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007f9773196abb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
   1.56%  │↗  0x00007f9773196ac0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
   2.39%  ││  0x00007f9773196ac7:   test   %eax,(%r11)                  ;   {poll}
   0.06%  ││  0x00007f9773196aca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 236)
   1.90%  ↘│  0x00007f9773196acf:   mov    0x8(%rsp),%r10
   1.51%   │  0x00007f9773196ad4:   mov    %r10,%rsi
   2.47%   │  0x00007f9773196ad7:   call   0x00007f9772af9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual recursive_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   2.57%   │  0x00007f9773196adc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   0.00%   │  0x00007f9773196ae4:   mov    0x20(%rsp),%r10
   3.73%   │  0x00007f9773196ae9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@26 (line 237)
   2.53%   │  0x00007f9773196aec:   mov    0x18(%rsp),%rsi
   0.00%   │  0x00007f9773196af1:   cmpb   $0x0,0x94(%rsi)
   1.94%   ╰  0x00007f9773196af8:   je     0x00007f9773196ac0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
              0x00007f9773196afa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@36 (line 239)
              0x00007f9773196aff:   nop
              0x00007f9773196b00:   call   0x00007f978aed32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f9773196b05:   nop
              0x00007f9773196b06:   mov    0x10(%rsp),%rdx
              0x00007f9773196b0b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@40 (line 239)
              0x00007f9773196b0f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  20.67%  <total for region 3>

....[Hottest Regions]...............................................................................
  43.21%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 1044 
  32.38%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 1042 
  20.67%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1074 
   0.34%                kernel  [unknown] 
   0.28%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.63%  <...other 357 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  43.21%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 1044 
  32.38%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 1042 
  20.67%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1074 
   2.98%                kernel  [unknown] 
   0.29%                        <unknown> 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%             libjvm.so  defaultStream::hold 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  pthread_mutex_unlock@@GLIBC_2.2.5 
   0.01%                [vdso]  [unknown] 
   0.01%             libc.so.6  __GI___pthread_disable_asynccancel 
   0.01%             libc.so.6  __vfprintf_internal 
   0.01%             libjvm.so  PeriodicTask::real_time_tick 
   0.01%             libc.so.6  __GI___futex_abstimed_wait_cancelable64 
   0.23%  <...other 89 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.26%        jvmci, level 4
   2.98%                kernel
   0.29%                      
   0.23%             libjvm.so
   0.15%             libc.so.6
   0.03%           interpreter
   0.03%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.00%           c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:05

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
LockElisionBenchmark.baseline                             avgt    5   7.348 ± 0.130  ns/op
LockElisionBenchmark.baseline:asm                         avgt          NaN            ---
LockElisionBenchmark.chain_method_calls                   avgt    5   8.052 ± 3.197  ns/op
LockElisionBenchmark.chain_method_calls:asm               avgt          NaN            ---
LockElisionBenchmark.conditional_chain_method_calls       avgt    5  14.485 ± 5.647  ns/op
LockElisionBenchmark.conditional_chain_method_calls:asm   avgt          NaN            ---
LockElisionBenchmark.conditional_nested_method_calls      avgt    5  12.366 ± 0.159  ns/op
LockElisionBenchmark.conditional_nested_method_calls:asm  avgt          NaN            ---
LockElisionBenchmark.nested_synchronized                  avgt    5   7.385 ± 0.392  ns/op
LockElisionBenchmark.nested_synchronized:asm              avgt          NaN            ---
LockElisionBenchmark.recursive_method_calls               avgt    5  16.768 ± 0.159  ns/op
LockElisionBenchmark.recursive_method_calls:asm           avgt          NaN            ---
