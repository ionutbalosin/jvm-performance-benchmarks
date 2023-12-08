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
# Warmup Iteration   1: 3.079 ns/op
# Warmup Iteration   2: 3.053 ns/op
# Warmup Iteration   3: 3.041 ns/op
# Warmup Iteration   4: 3.025 ns/op
# Warmup Iteration   5: 3.041 ns/op
Iteration   1: 3.019 ns/op
Iteration   2: 3.011 ns/op
Iteration   3: 3.007 ns/op
Iteration   4: 3.026 ns/op
Iteration   5: 3.021 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline":
  3.017 ±(99.9%) 0.028 ns/op [Average]
  (min, avg, max) = (3.007, 3.017, 3.026), stdev = 0.007
  CI (99.9%): [2.988, 3.045] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline:asm":
PrintAssembly processed: 213857 total address lines.
Perf output processed (skipped 79.627 seconds):
 Column 1: cycles (50971 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1050 

              0x00007fc747195994:   jne    0x00007fc747195a32           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
              0x00007fc74719599a:   mov    $0x1,%r11
              0x00007fc7471959a1:   mov    0x18(%rsp),%r10
          ╭   0x00007fc7471959a6:   jmp    0x00007fc7471959ca           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 236)
          │   0x00007fc7471959ab:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fc7471959b6:   data16 data16 xchg %ax,%ax
          │   0x00007fc7471959ba:   nopw   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
  13.52%  │↗  0x00007fc7471959c0:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [16]=Oop [32]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
   0.28%  ││  0x00007fc7471959c7:   test   %eax,(%r8)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 236)
          ││                                                            ;   {poll}
  13.77%  ↘│  0x00007fc7471959ca:   mov    0x10(%r10),%r8d              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@1 (line 193)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 236)
   0.21%   │  0x00007fc7471959ce:   mov    0x14(%r10),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@9 (line 195)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 236)
  13.43%   │  0x00007fc7471959d2:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@5 (line 193)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 236)
   0.23%   │  0x00007fc7471959d5:   mov    %r9d,%ecx
  13.53%   │  0x00007fc7471959d8:   shl    %ecx
   0.20%   │  0x00007fc7471959da:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@19 (line 196)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 236)
  13.38%   │  0x00007fc7471959dd:   shl    $0x2,%r9d
   0.24%   │  0x00007fc7471959e1:   add    %ecx,%r9d
  13.39%   │  0x00007fc7471959e4:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@61 (line 202)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 236)
   0.25%   │  0x00007fc7471959e7:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@26 (line 237)
  13.41%   │  0x00007fc7471959ea:   cmpb   $0x0,0x94(%rsi)
   0.19%   ╰  0x00007fc7471959f1:   je     0x00007fc7471959c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
              0x00007fc7471959f3:   mov    %r11,0x28(%rsp)
              0x00007fc7471959f8:   call   0x00007fc75e4d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fc7471959fd:   nop
              0x00007fc7471959fe:   mov    0x20(%rsp),%rdx
              0x00007fc747195a03:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 239)
              0x00007fc747195a07:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@46 (line 240)
              0x00007fc747195a0f:   vcvtsi2sdq 0x28(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  96.01%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.01%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1050 
   0.45%                kernel  [unknown] 
   0.33%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.63%  <...other 382 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.01%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1050 
   3.17%                kernel  [unknown] 
   0.38%                        <unknown> 
   0.04%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libjvm.so  fileStream::write 
   0.03%             libc.so.6  __vfprintf_internal 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libjvm.so  xmlStream::write_text 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libc.so.6  __GI___pthread_enable_asynccancel 
   0.01%        hsdis-amd64.so  print_insn 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libjvm.so  JVMCIEnv::create_string 
   0.01%                [vdso]  [unknown] 
   0.01%             libc.so.6  syscall 
   0.01%             libc.so.6  __GI___futex_abstimed_wait_cancelable64 
   0.01%             libc.so.6  __strchr_avx2 
   0.18%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.01%        jvmci, level 4
   3.17%                kernel
   0.38%                      
   0.25%             libjvm.so
   0.14%             libc.so.6
   0.02%        hsdis-amd64.so
   0.01%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.00%           c1, level 3
   0.00%         perf-8127.map
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

# Run progress: 16.67% complete, ETA 00:11:25
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.218 ns/op
# Warmup Iteration   2: 2.157 ns/op
# Warmup Iteration   3: 2.424 ns/op
# Warmup Iteration   4: 2.375 ns/op
# Warmup Iteration   5: 2.364 ns/op
Iteration   1: 2.363 ns/op
Iteration   2: 2.339 ns/op
Iteration   3: 2.359 ns/op
Iteration   4: 2.373 ns/op
Iteration   5: 2.389 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls":
  2.364 ±(99.9%) 0.070 ns/op [Average]
  (min, avg, max) = (2.339, 2.364, 2.389), stdev = 0.018
  CI (99.9%): [2.294, 2.435] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls:asm":
PrintAssembly processed: 217353 total address lines.
Perf output processed (skipped 78.156 seconds):
 Column 1: cycles (51055 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1084 

              0x00007fbf6f19cdff:   nop
              0x00007fbf6f19ce00:   cmpb   $0x0,0x94(%rsi)
              0x00007fbf6f19ce07:   jne    0x00007fbf6f19ce8e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
              0x00007fbf6f19ce0d:   mov    $0x1,%r11
              0x00007fbf6f19ce14:   mov    0x18(%rsp),%r10
          ╭   0x00007fbf6f19ce19:   jmp    0x00007fbf6f19ce2a           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007fbf6f19ce1e:   xchg   %ax,%ax                      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
   8.50%  │↗  0x00007fbf6f19ce20:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [16]=Oop [32]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
   8.83%  ││  0x00007fbf6f19ce27:   test   %eax,(%r8)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 236)
          ││                                                            ;   {poll}
   9.01%  ↘│  0x00007fbf6f19ce2a:   mov    0x10(%r10),%r8d              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@1 (line 111)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 236)
   8.74%   │  0x00007fbf6f19ce2e:   mov    0x14(%r10),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 210)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@9 (line 113)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 236)
   8.92%   │  0x00007fbf6f19ce32:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@5 (line 111)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 236)
   8.57%   │  0x00007fbf6f19ce35:   shl    $0x3,%r9d
   8.74%   │  0x00007fbf6f19ce39:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@51 (line 120)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 236)
   8.62%   │  0x00007fbf6f19ce3c:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@26 (line 237)
   8.64%   │  0x00007fbf6f19ce3f:   nop
   8.73%   │  0x00007fbf6f19ce40:   cmpb   $0x0,0x94(%rsi)
   8.89%   ╰  0x00007fbf6f19ce47:   je     0x00007fbf6f19ce20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
              0x00007fbf6f19ce49:   mov    %r11,0x28(%rsp)
              0x00007fbf6f19ce4e:   call   0x00007fbf860d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fbf6f19ce53:   nop
              0x00007fbf6f19ce54:   mov    0x20(%rsp),%rdx
              0x00007fbf6f19ce59:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@40 (line 239)
              0x00007fbf6f19ce5d:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@46 (line 240)
              0x00007fbf6f19ce65:   vcvtsi2sdq 0x28(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  96.18%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.18%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1084 
   0.51%                kernel  [unknown] 
   0.32%                kernel  [unknown] 
   0.22%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.03%             libjvm.so  defaultStream::hold 
   1.63%  <...other 334 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.18%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1084 
   3.13%                kernel  [unknown] 
   0.11%                        <unknown> 
   0.04%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  defaultStream::hold 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libjvm.so  fileStream::write 
   0.03%             libjvm.so  xmlStream::write_text 
   0.03%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libjvm.so  RelocIterator::initialize 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libc.so.6  _IO_fwrite 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%             libc.so.6  __memmove_avx_unaligned_erms 
   0.01%        hsdis-amd64.so  __sigsetjmp@plt 
   0.01%             libc.so.6  syscall 
   0.01%             libc.so.6  _IO_fflush 
   0.24%  <...other 88 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.18%        jvmci, level 4
   3.13%                kernel
   0.27%             libjvm.so
   0.21%             libc.so.6
   0.11%                      
   0.05%        hsdis-amd64.so
   0.03%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.01%           c1, level 3
   0.01%                [vdso]
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

# Run progress: 33.33% complete, ETA 00:09:02
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.594 ns/op
# Warmup Iteration   2: 6.088 ns/op
# Warmup Iteration   3: 5.943 ns/op
# Warmup Iteration   4: 5.616 ns/op
# Warmup Iteration   5: 5.598 ns/op
Iteration   1: 5.588 ns/op
Iteration   2: 5.636 ns/op
Iteration   3: 5.609 ns/op
Iteration   4: 5.564 ns/op
Iteration   5: 5.680 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls":
  5.615 ±(99.9%) 0.173 ns/op [Average]
  (min, avg, max) = (5.564, 5.615, 5.680), stdev = 0.045
  CI (99.9%): [5.443, 5.788] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls:asm":
PrintAssembly processed: 214535 total address lines.
Perf output processed (skipped 78.123 seconds):
 Column 1: cycles (51116 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 1052 

               0x00007faed7197414:   mov    $0x1,%r11
               0x00007faed719741b:   mov    0x18(%rsp),%r10
          ╭    0x00007faed7197420:   jmp    0x00007faed71974c7           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 236)
          │    0x00007faed7197425:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007faed7197430:   data16 data16 xchg %ax,%ax
          │    0x00007faed7197434:   nopl   0x0(%rax,%rax,1)
          │    0x00007faed719743c:   data16 data16 xchg %ax,%ax          ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 130)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   4.02%  │ ↗  0x00007faed7197440:   mov    0x14(%r10),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 131)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   3.39%  │ │  0x00007faed7197444:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 131)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   3.96%  │ │  0x00007faed7197447:   cmp    $0x21,%r8d
          │ │  0x00007faed719744b:   jl     0x00007faed71975e5           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@22 (line 133)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   3.48%  │ │  0x00007faed7197451:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@27 (line 134)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   3.87%  │ │  0x00007faed7197454:   cmp    $0x21,%r8d
          │ │  0x00007faed7197458:   jl     0x00007faed71975a0           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@34 (line 136)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   3.54%  │ │  0x00007faed719745e:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@39 (line 137)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   3.88%  │ │  0x00007faed7197461:   cmp    $0x21,%r8d
          │ │  0x00007faed7197465:   jl     0x00007faed7197597           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@46 (line 139)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   3.47%  │ │  0x00007faed719746b:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@51 (line 140)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   3.84%  │ │  0x00007faed719746e:   cmp    $0x21,%r8d
          │ │  0x00007faed7197472:   jl     0x00007faed7197585           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@58 (line 142)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   3.53%  │ │  0x00007faed7197478:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@63 (line 143)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   3.88%  │ │  0x00007faed719747b:   nopl   0x0(%rax,%rax,1)
   3.45%  │ │  0x00007faed7197480:   cmp    $0x21,%r8d
          │ │  0x00007faed7197484:   jl     0x00007faed7197556           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@70 (line 145)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   3.96%  │ │  0x00007faed719748a:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@75 (line 146)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   3.38%  │ │  0x00007faed719748d:   cmp    $0x21,%r8d
          │ │  0x00007faed7197491:   jl     0x00007faed719758e           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@82 (line 148)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   4.02%  │ │  0x00007faed7197497:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@87 (line 149)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   3.58%  │ │  0x00007faed719749a:   nopw   0x0(%rax,%rax,1)
   3.94%  │ │  0x00007faed71974a0:   cmp    $0x21,%r8d
          │ │  0x00007faed71974a4:   jl     0x00007faed719757c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@94 (line 151)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   3.51%  │ │  0x00007faed71974aa:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@99 (line 152)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   3.95%  │ │  0x00007faed71974ad:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@26 (line 237)
   3.52%  │ │  0x00007faed71974b0:   cmpb   $0x0,0x94(%rsi)
   3.96%  │╭│  0x00007faed71974b7:   jne    0x00007faed71974dd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
   3.42%  │││  0x00007faed71974bd:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [16]=Oop [32]=Oop }
          │││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
   3.89%  │││  0x00007faed71974c4:   test   %eax,(%r8)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 236)
          │││                                                            ;   {poll}
   3.61%  ↘││  0x00007faed71974c7:   mov    0x10(%r10),%r8d              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@1 (line 127)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   3.85%   ││  0x00007faed71974cb:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@5 (line 127)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   3.34%   ││  0x00007faed71974ce:   cmp    $0x21,%r8d
           │╰  0x00007faed71974d2:   jge    0x00007faed7197440
           │   0x00007faed71974d8:   jmp    0x00007faed71975b5           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 130)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
           ↘   0x00007faed71974dd:   mov    %r11,0x28(%rsp)
               0x00007faed71974e2:   call   0x00007faeee6d32b0           ;   {runtime_call os::javaTimeNanos()}
               0x00007faed71974e7:   nop
               0x00007faed71974e8:   mov    0x20(%rsp),%rdx
....................................................................................................
  96.23%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.23%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 1052 
   0.57%                kernel  [unknown] 
   0.23%                kernel  [unknown] 
   0.22%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%             libjvm.so  fileStream::write 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   1.70%  <...other 364 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.23%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 1052 
   2.89%                kernel  [unknown] 
   0.27%                        <unknown> 
   0.04%             libjvm.so  fileStream::write 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libjvm.so  xmlStream::write_text 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libc.so.6  __GI___libc_write 
   0.03%             libc.so.6  __vfprintf_internal 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%             libc.so.6  _IO_str_init_static_internal 
   0.01%             libjvm.so  outputStream::print 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%             libc.so.6  _IO_fwrite 
   0.23%  <...other 86 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.23%        jvmci, level 4
   2.89%                kernel
   0.30%             libjvm.so
   0.27%                      
   0.21%             libc.so.6
   0.04%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.02%           interpreter
   0.01%           c1, level 3
   0.00%                [vdso]
   0.00%          libjimage.so
   0.00%           c1, level 2
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

# Run progress: 50.00% complete, ETA 00:06:44
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.614 ns/op
# Warmup Iteration   2: 5.984 ns/op
# Warmup Iteration   3: 5.904 ns/op
# Warmup Iteration   4: 5.565 ns/op
# Warmup Iteration   5: 5.553 ns/op
Iteration   1: 5.573 ns/op
Iteration   2: 5.567 ns/op
Iteration   3: 5.564 ns/op
Iteration   4: 5.566 ns/op
Iteration   5: 5.603 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls":
  5.575 ±(99.9%) 0.062 ns/op [Average]
  (min, avg, max) = (5.564, 5.575, 5.603), stdev = 0.016
  CI (99.9%): [5.512, 5.637] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls:asm":
PrintAssembly processed: 214259 total address lines.
Perf output processed (skipped 78.643 seconds):
 Column 1: cycles (50660 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 1067 

               0x00007fb1ef1a0514:   mov    $0x1,%r11
               0x00007fb1ef1a051b:   mov    0x18(%rsp),%r10
          ╭    0x00007fb1ef1a0520:   jmp    0x00007fb1ef1a05c7           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 236)
          │    0x00007fb1ef1a0525:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007fb1ef1a0530:   data16 data16 xchg %ax,%ax
          │    0x00007fb1ef1a0534:   nopl   0x0(%rax,%rax,1)
          │    0x00007fb1ef1a053c:   data16 data16 xchg %ax,%ax          ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 163)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.85%  │ ↗  0x00007fb1ef1a0540:   mov    0x14(%r10),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 164)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.45%  │ │  0x00007fb1ef1a0544:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 164)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.98%  │ │  0x00007fb1ef1a0547:   cmp    $0x21,%r8d
          │ │  0x00007fb1ef1a054b:   jl     0x00007fb1ef1a064d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@22 (line 165)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.23%  │ │  0x00007fb1ef1a0551:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@27 (line 166)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   4.05%  │ │  0x00007fb1ef1a0554:   cmp    $0x21,%r8d
          │ │  0x00007fb1ef1a0558:   jl     0x00007fb1ef1a064d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@34 (line 167)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.57%  │ │  0x00007fb1ef1a055e:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@39 (line 168)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.98%  │ │  0x00007fb1ef1a0561:   cmp    $0x21,%r8d
          │ │  0x00007fb1ef1a0565:   jl     0x00007fb1ef1a064d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@46 (line 169)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.50%  │ │  0x00007fb1ef1a056b:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@51 (line 170)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   4.17%  │ │  0x00007fb1ef1a056e:   cmp    $0x21,%r8d
          │ │  0x00007fb1ef1a0572:   jl     0x00007fb1ef1a064d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@58 (line 171)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.50%  │ │  0x00007fb1ef1a0578:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@63 (line 172)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.91%  │ │  0x00007fb1ef1a057b:   nopl   0x0(%rax,%rax,1)
   3.48%  │ │  0x00007fb1ef1a0580:   cmp    $0x21,%r8d
          │ │  0x00007fb1ef1a0584:   jl     0x00007fb1ef1a064d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@70 (line 173)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.98%  │ │  0x00007fb1ef1a058a:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@75 (line 174)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.49%  │ │  0x00007fb1ef1a058d:   cmp    $0x21,%r8d
          │ │  0x00007fb1ef1a0591:   jl     0x00007fb1ef1a064d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@82 (line 175)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   4.03%  │ │  0x00007fb1ef1a0597:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@87 (line 176)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.47%  │ │  0x00007fb1ef1a059a:   nopw   0x0(%rax,%rax,1)
   4.01%  │ │  0x00007fb1ef1a05a0:   cmp    $0x21,%r8d
          │ │  0x00007fb1ef1a05a4:   jl     0x00007fb1ef1a064d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@94 (line 177)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.47%  │ │  0x00007fb1ef1a05aa:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@99 (line 178)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.80%  │ │  0x00007fb1ef1a05ad:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@26 (line 237)
   3.37%  │ │  0x00007fb1ef1a05b0:   cmpb   $0x0,0x94(%rsi)
   3.87%  │╭│  0x00007fb1ef1a05b7:   jne    0x00007fb1ef1a05dd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
   3.41%  │││  0x00007fb1ef1a05bd:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [16]=Oop [32]=Oop }
          │││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
   4.11%  │││  0x00007fb1ef1a05c4:   test   %eax,(%r8)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 236)
          │││                                                            ;   {poll}
   3.57%  ↘││  0x00007fb1ef1a05c7:   mov    0x10(%r10),%r8d              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@1 (line 160)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.97%   ││  0x00007fb1ef1a05cb:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@5 (line 160)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.40%   ││  0x00007fb1ef1a05ce:   cmp    $0x21,%r8d
           │╰  0x00007fb1ef1a05d2:   jge    0x00007fb1ef1a0540
           │   0x00007fb1ef1a05d8:   jmp    0x00007fb1ef1a064d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 163)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
           ↘   0x00007fb1ef1a05dd:   mov    %r11,0x28(%rsp)
               0x00007fb1ef1a05e2:   call   0x00007fb2062d32b0           ;   {runtime_call os::javaTimeNanos()}
               0x00007fb1ef1a05e7:   nop
               0x00007fb1ef1a05e8:   mov    0x20(%rsp),%rdx
....................................................................................................
  96.64%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.64%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 1067 
   0.30%                kernel  [unknown] 
   0.26%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   1.24%  <...other 254 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.64%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 1067 
   2.89%                kernel  [unknown] 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __GI___futex_abstimed_wait_cancelable64 
   0.01%             libc.so.6  __vfprintf_internal 
   0.01%             libc.so.6  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  __GI___pthread_mutex_unlock_usercnt 
   0.01%             libjvm.so  StatSamplerTask::task 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%                [vdso]  [unknown] 
   0.01%             libjvm.so  WatcherThread::sleep 
   0.01%             libc.so.6  __strchr_avx2 
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.01%             libjvm.so  xmlStream::write_text 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%                        <unknown> 
   0.24%  <...other 98 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  96.64%        jvmci, level 4
   2.89%                kernel
   0.20%             libjvm.so
   0.13%             libc.so.6
   0.06%   libjvmcicompiler.so
   0.03%           interpreter
   0.02%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.01%                      
   0.00%           c1, level 1
   0.00%           c1, level 3
   0.00%           c1, level 2
   0.00%      Unknown, level 0
....................................................................................................
  99.99%  <totals>



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

# Run progress: 66.67% complete, ETA 00:04:29
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.183 ns/op
# Warmup Iteration   2: 2.166 ns/op
# Warmup Iteration   3: 2.401 ns/op
# Warmup Iteration   4: 2.359 ns/op
# Warmup Iteration   5: 2.357 ns/op
Iteration   1: 2.342 ns/op
Iteration   2: 2.343 ns/op
Iteration   3: 2.352 ns/op
Iteration   4: 2.350 ns/op
Iteration   5: 2.387 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized":
  2.355 ±(99.9%) 0.071 ns/op [Average]
  (min, avg, max) = (2.342, 2.355, 2.387), stdev = 0.019
  CI (99.9%): [2.284, 2.426] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized:asm":
PrintAssembly processed: 212056 total address lines.
Perf output processed (skipped 78.213 seconds):
 Column 1: cycles (50750 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 1057 

              0x00007f344319a77f:   nop
              0x00007f344319a780:   cmpb   $0x0,0x94(%rsi)
              0x00007f344319a787:   jne    0x00007f344319a80e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
              0x00007f344319a78d:   mov    $0x1,%r11
              0x00007f344319a794:   mov    0x18(%rsp),%r10
          ╭   0x00007f344319a799:   jmp    0x00007f344319a7aa           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 236)
          │   0x00007f344319a79e:   xchg   %ax,%ax                      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
   8.71%  │↗  0x00007f344319a7a0:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [16]=Oop [32]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
   8.66%  ││  0x00007f344319a7a7:   test   %eax,(%r8)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 236)
          ││                                                            ;   {poll}
   9.08%  ↘│  0x00007f344319a7aa:   mov    0x10(%r10),%r8d              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@1 (line 70)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@17 (line 236)
   8.87%   │  0x00007f344319a7ae:   mov    0x14(%r10),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@21 (line 75)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@17 (line 236)
   8.64%   │  0x00007f344319a7b2:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@5 (line 70)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@17 (line 236)
   8.54%   │  0x00007f344319a7b5:   shl    $0x3,%r9d
   8.88%   │  0x00007f344319a7b9:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@108 (line 89)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@17 (line 236)
   8.91%   │  0x00007f344319a7bc:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@26 (line 237)
   8.94%   │  0x00007f344319a7bf:   nop
   8.69%   │  0x00007f344319a7c0:   cmpb   $0x0,0x94(%rsi)
   8.74%   ╰  0x00007f344319a7c7:   je     0x00007f344319a7a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
              0x00007f344319a7c9:   mov    %r11,0x28(%rsp)
              0x00007f344319a7ce:   call   0x00007f345acd32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f344319a7d3:   nop
              0x00007f344319a7d4:   mov    0x20(%rsp),%rdx
              0x00007f344319a7d9:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@40 (line 239)
              0x00007f344319a7dd:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@46 (line 240)
              0x00007f344319a7e5:   vcvtsi2sdq 0x28(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  96.66%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.66%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 1057 
   0.34%                kernel  [unknown] 
   0.27%                kernel  [unknown] 
   0.19%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   1.21%  <...other 272 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.66%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 1057 
   2.83%                kernel  [unknown] 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  fileStream::write 
   0.01%             libjvm.so  ElfSymbolTable::lookup 
   0.01%        hsdis-amd64.so  print_insn 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libjvm.so  free@plt 
   0.01%             libc.so.6  syscall 
   0.01%             libc.so.6  __strchr_avx2 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%             libjvm.so  defaultStream::hold 
   0.01%             libc.so.6  _IO_fflush 
   0.01%             libjvm.so  WatcherThread::sleep 
   0.01%   libjvmcicompiler.so  java.lang.AbstractStringBuilder::append 
   0.01%   libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%             libjvm.so  constantPoolHandle::~constantPoolHandle 
   0.29%  <...other 116 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.66%        jvmci, level 4
   2.83%                kernel
   0.21%             libjvm.so
   0.16%             libc.so.6
   0.08%   libjvmcicompiler.so
   0.02%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%                [vdso]
   0.00%                      
   0.00%      Unknown, level 0
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

# Run progress: 83.33% complete, ETA 00:02:14
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.556 ns/op
# Warmup Iteration   2: 9.712 ns/op
# Warmup Iteration   3: 10.414 ns/op
# Warmup Iteration   4: 10.179 ns/op
# Warmup Iteration   5: 10.084 ns/op
Iteration   1: 10.042 ns/op
Iteration   2: 10.121 ns/op
Iteration   3: 9.960 ns/op
Iteration   4: 10.034 ns/op
Iteration   5: 10.172 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls":
  10.066 ±(99.9%) 0.318 ns/op [Average]
  (min, avg, max) = (9.960, 10.066, 10.172), stdev = 0.082
  CI (99.9%): [9.748, 10.384] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 220596 total address lines.
Perf output processed (skipped 79.326 seconds):
 Column 1: cycles (51283 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1063 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
              0x00007f519f19a8d5:   movq   $0x1,0x28(%rsp)
              0x00007f519f19a8de:   xchg   %ax,%ax
          ╭   0x00007f519f19a8e0:   jmp    0x00007f519f19a90f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007f519f19a8e5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f519f19a8f0:   data16 data16 xchg %ax,%ax
          │   0x00007f519f19a8f4:   nopl   0x0(%rax,%rax,1)
          │   0x00007f519f19a8fc:   data16 data16 xchg %ax,%ax          ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
   0.12%  │↗  0x00007f519f19a900:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
   3.13%  ││  0x00007f519f19a907:   test   %eax,(%r11)                  ;   {poll}
   1.32%  ││  0x00007f519f19a90a:   mov    %r10,0x28(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 236)
   3.66%  ↘│  0x00007f519f19a90f:   mov    0x10(%rsp),%r10
   0.15%   │  0x00007f519f19a914:   mov    0x10(%r10),%edx              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@1 (line 104)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
   3.43%   │  0x00007f519f19a918:   mov    0x14(%r10),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@23 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 105)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
   1.26%   │  0x00007f519f19a91c:   shl    %edx                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@5 (line 104)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
   3.48%   │  0x00007f519f19a91e:   mov    %r10,%rsi
   0.12%   │  0x00007f519f19a921:   mov    $0x2,%ecx                    ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 105)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
   3.08%   │  0x00007f519f19a926:   mov    %r8d,0x34(%rsp)
   1.27%   │  0x00007f519f19a92b:   call   0x00007f519eaf9380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=Oop }
           │                                                            ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 105)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   1.59%   │  0x00007f519f19a930:   nopl   0x50002a0(%rax,%rax,1)       ;   {other}
   3.53%   │  0x00007f519f19a938:   mov    0x34(%rsp),%r8d
   3.23%   │  0x00007f519f19a93d:   mov    %r8d,%r10d
   1.27%   │  0x00007f519f19a940:   shl    $0x2,%r10d
   3.68%   │  0x00007f519f19a944:   shl    %r8d
   0.00%   │  0x00007f519f19a947:   add    %r8d,%r10d
   3.29%   │  0x00007f519f19a94a:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 105)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
   1.30%   │  0x00007f519f19a94d:   mov    0x28(%rsp),%r10
   3.55%   │  0x00007f519f19a952:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@26 (line 237)
   0.01%   │  0x00007f519f19a955:   mov    0x20(%rsp),%rsi
   3.25%   │  0x00007f519f19a95a:   nopw   0x0(%rax,%rax,1)
   1.33%   │  0x00007f519f19a960:   cmpb   $0x0,0x94(%rsi)
   3.77%   ╰  0x00007f519f19a967:   je     0x00007f519f19a900           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
              0x00007f519f19a969:   mov    %r10,0x50(%rsp)
              0x00007f519f19a96e:   call   0x00007f51b56d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f519f19a973:   nop
              0x00007f519f19a974:   mov    0x18(%rsp),%rdx
              0x00007f519f19a979:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@40 (line 239)
              0x00007f519f19a97d:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@46 (line 240)
              0x00007f519f19a985:   vcvtsi2sdq 0x50(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  50.80%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 1035 

                           # parm1:    rcx       = int
                           #           [sp+0x50]  (sp of caller)
                           0x00007f519f196220:   mov    0x8(%rsi),%r10d
                           0x00007f519f196224:   movabs $0x7f511b000000,%r12
                           0x00007f519f19622e:   add    %r12,%r10
                           0x00007f519f196231:   xor    %r12,%r12
                           0x00007f519f196234:   cmp    %r10,%rax
                           0x00007f519f196237:   jne    0x00007f519eaf9080           ;   {runtime_call ic_miss_stub}
                           0x00007f519f19623d:   data16 xchg %ax,%ax
                         [Verified Entry Point]
   3.72%           ↗       0x00007f519f196240:   mov    %eax,-0x14000(%rsp)
   4.43%           │       0x00007f519f196247:   sub    $0x48,%rsp
   3.57%           │       0x00007f519f19624b:   nop
   0.12%           │       0x00007f519f19624c:   cmpl   $0x1,0x20(%r15)
   3.16%           │       0x00007f519f196254:   jne    0x00007f519f196338
   1.27%           │       0x00007f519f19625a:   mov    %rbp,0x40(%rsp)
   3.68%           │       0x00007f519f19625f:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                   │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@23 (line 220)
   0.13%           │       0x00007f519f196263:   cmp    $0x3,%ecx
          ╭        │       0x00007f519f196266:   jge    0x00007f519f19628c
   3.13%  │        │       0x00007f519f19626c:   cmp    $0x2,%ecx
          │╭       │       0x00007f519f19626f:   jge    0x00007f519f196314
          ││       │       0x00007f519f196275:   cmp    $0x0,%ecx
          ││╭      │       0x00007f519f196278:   je     0x00007f519f1962f7
          │││      │       0x00007f519f19627e:   cmp    $0x1,%ecx
          │││╭     │       0x00007f519f196281:   je     0x00007f519f196310
          ││││╭    │       0x00007f519f196287:   jmp    0x00007f519f1962ac
          ↘││││    │       0x00007f519f19628c:   cmp    $0x5,%ecx
           ││││╭   │       0x00007f519f19628f:   jg     0x00007f519f1962ac
           │││││   │       0x00007f519f196295:   cmp    $0x5,%ecx
           │││││╭  │       0x00007f519f196298:   jge    0x00007f519f19632f
           ││││││  │       0x00007f519f19629e:   cmp    $0x3,%ecx
           ││││││╭ │       0x00007f519f1962a1:   je     0x00007f519f19631d
           │││││││╭│       0x00007f519f1962a7:   jmp    0x00007f519f196326           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │││││││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@14 (line 217)
           │││││││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││↘↘││││       0x00007f519f1962ac:   mov    %r10d,0x4(%rsp)
           │││  ││││       0x00007f519f1962b1:   lea    -0x6(%rcx),%ecx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
           │││  ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@30 (line 220)
           │││  ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  ││││       0x00007f519f1962b4:   data16 xchg %ax,%ax
           │││  │││╰       0x00007f519f1962b7:   call   0x00007f519f196240           ; ImmutableOopMap {}
           │││  │││                                                                  ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││                                                                  ;   {optimized virtual_call}
           │││  │││        0x00007f519f1962bc:   nopl   0x22c(%rax,%rax,1)           ;   {other}
           │││  │││        0x00007f519f1962c4:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 220)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││     ↗  0x00007f519f1962c8:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 220)
           │││  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││    ↗│  0x00007f519f1962cc:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││  │││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 220)
           │││  │││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││   ↗││  0x00007f519f1962d0:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││  │││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 220)
           │││  │││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │││  │││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
   4.44%   │││  │││  ↗│││  0x00007f519f1962d4:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││  │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 220)
           │││  │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
   0.68%   │││  │││  ││││  0x00007f519f1962d8:   mov    0x4(%rsp),%r10d
   3.40%   │││  │││ ↗││││  0x00007f519f1962dd:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 220)
   1.08%   │││  │││ │││││  0x00007f519f1962e0:   mov    0x40(%rsp),%rbp
   3.74%   │││  │││ │││││  0x00007f519f1962e5:   add    $0x48,%rsp
   0.00%   │││  │││ │││││  0x00007f519f1962e9:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │││  │││ │││││  0x00007f519f1962f0:   ja     0x00007f519f196348
   3.27%   │││  │││ │││││  0x00007f519f1962f6:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │││  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@14 (line 217)
           │││  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │↘│  │││ │││││  0x00007f519f1962f7:   mov    %edx,%eax
           │ │  │││ │││││  0x00007f519f1962f9:   mov    0x40(%rsp),%rbp
           │ │  │││ │││││  0x00007f519f1962fe:   add    $0x48,%rsp
           │ │  │││ │││││  0x00007f519f196302:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │ │  │││ │││││  0x00007f519f196309:   ja     0x00007f519f19635c
           │ │  │││ │││││  0x00007f519f19630f:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@21 (line 218)
           │ ↘  │││ │││││  0x00007f519f196310:   mov    %edx,%eax
           │    │││ ╰││││  0x00007f519f196312:   jmp    0x00007f519f1962dd
   1.26%   ↘    │││  ││││  0x00007f519f196314:   mov    %edx,%eax
   3.60%        │││  ││││  0x00007f519f196316:   mov    %r10d,0x4(%rsp)
   0.13%        │││  ╰│││  0x00007f519f19631b:   jmp    0x00007f519f1962d4
                │↘│   │││  0x00007f519f19631d:   mov    %edx,%eax
                │ │   │││  0x00007f519f19631f:   mov    %r10d,0x4(%rsp)
                │ │   ╰││  0x00007f519f196324:   jmp    0x00007f519f1962d0
                │ ↘    ││  0x00007f519f196326:   mov    %edx,%eax
                │      ││  0x00007f519f196328:   mov    %r10d,0x4(%rsp)
                │      ╰│  0x00007f519f19632d:   jmp    0x00007f519f1962cc
                ↘       │  0x00007f519f19632f:   mov    %edx,%eax
                        │  0x00007f519f196331:   mov    %r10d,0x4(%rsp)
                        ╰  0x00007f519f196336:   jmp    0x00007f519f1962c8
                           0x00007f519f196338:   mov    %rbp,0x40(%rsp)
....................................................................................................
  44.80%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.80%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1063 
  44.80%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 1035 
   0.58%                kernel  [unknown] 
   0.55%                kernel  [unknown] 
   0.25%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%             libjvm.so  defaultStream::hold 
   0.04%                kernel  [unknown] 
   0.04%             libc.so.6  __vfprintf_internal 
   1.69%  <...other 320 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.80%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1063 
  44.80%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 1035 
   3.62%                kernel  [unknown] 
   0.05%        hsdis-amd64.so  print_insn 
   0.05%             libjvm.so  defaultStream::hold 
   0.04%             libc.so.6  __vfprintf_internal 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libc.so.6  _IO_fwrite 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libjvm.so  xmlTextStream::flush 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libc.so.6  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%             libc.so.6  syscall 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%                [vdso]  [unknown] 
   0.41%  <...other 150 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.60%        jvmci, level 4
   3.62%                kernel
   0.27%             libjvm.so
   0.25%             libc.so.6
   0.14%   libjvmcicompiler.so
   0.07%        hsdis-amd64.so
   0.02%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.00%                      
   0.00%           c1, level 2
   0.00%         perf-8537.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:13:28

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
LockElisionBenchmark.baseline                             avgt    5   3.017 ± 0.028  ns/op
LockElisionBenchmark.baseline:asm                         avgt          NaN            ---
LockElisionBenchmark.chain_method_calls                   avgt    5   2.364 ± 0.070  ns/op
LockElisionBenchmark.chain_method_calls:asm               avgt          NaN            ---
LockElisionBenchmark.conditional_chain_method_calls       avgt    5   5.615 ± 0.173  ns/op
LockElisionBenchmark.conditional_chain_method_calls:asm   avgt          NaN            ---
LockElisionBenchmark.conditional_nested_method_calls      avgt    5   5.575 ± 0.062  ns/op
LockElisionBenchmark.conditional_nested_method_calls:asm  avgt          NaN            ---
LockElisionBenchmark.nested_synchronized                  avgt    5   2.355 ± 0.071  ns/op
LockElisionBenchmark.nested_synchronized:asm              avgt          NaN            ---
LockElisionBenchmark.recursive_method_calls               avgt    5  10.066 ± 0.318  ns/op
LockElisionBenchmark.recursive_method_calls:asm           avgt          NaN            ---
