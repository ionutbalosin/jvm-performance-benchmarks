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
# Warmup Iteration   1: 2.190 ns/op
# Warmup Iteration   2: 2.166 ns/op
# Warmup Iteration   3: 2.393 ns/op
# Warmup Iteration   4: 2.356 ns/op
# Warmup Iteration   5: 2.349 ns/op
Iteration   1: 2.355 ns/op
Iteration   2: 2.355 ns/op
Iteration   3: 2.349 ns/op
Iteration   4: 2.356 ns/op
Iteration   5: 2.383 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline":
  2.360 ±(99.9%) 0.051 ns/op [Average]
  (min, avg, max) = (2.349, 2.360, 2.383), stdev = 0.013
  CI (99.9%): [2.308, 2.411] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline:asm":
PrintAssembly processed: 222836 total address lines.
Perf output processed (skipped 80.740 seconds):
 Column 1: cycles (50368 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1058 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@10 (line 234)
              0x00007f1c96da60d6:   mov    $0x0,%r11
              0x00007f1c96da60dd:   mov    0x10(%rsp),%r10
              0x00007f1c96da60e2:   mov    (%rsp),%rsi
          ╭   0x00007f1c96da60e6:   jmp    0x00007f1c96da610a           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 236)
          │   0x00007f1c96da60eb:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f1c96da60f6:   data16 data16 xchg %ax,%ax
          │   0x00007f1c96da60fa:   nopw   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
   8.64%  │↗  0x00007f1c96da6100:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [8]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
   8.62%  ││  0x00007f1c96da6107:   test   %eax,(%r8)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 236)
          ││                                                            ;   {poll}
   9.09%  ↘│  0x00007f1c96da610a:   mov    0x10(%r10),%r8d              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@1 (line 193)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 236)
   8.73%   │  0x00007f1c96da610e:   mov    0x14(%r10),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@9 (line 195)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 236)
   8.87%   │  0x00007f1c96da6112:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@5 (line 193)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 236)
   8.62%   │  0x00007f1c96da6115:   shl    $0x3,%r9d
   8.87%   │  0x00007f1c96da6119:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@61 (line 202)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 236)
   8.67%   │  0x00007f1c96da611c:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@26 (line 237)
   8.98%   │  0x00007f1c96da611f:   nop
   8.68%   │  0x00007f1c96da6120:   cmpb   $0x0,0x94(%rsi)
   8.87%   ╰  0x00007f1c96da6127:   je     0x00007f1c96da6100           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
              0x00007f1c96da6129:   mov    %r11,0x20(%rsp)
              0x00007f1c96da612e:   call   0x00007f1cb08d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1c96da6133:   nop
              0x00007f1c96da6134:   mov    0x18(%rsp),%rdx
              0x00007f1c96da6139:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 239)
              0x00007f1c96da613d:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@46 (line 240)
              0x00007f1c96da6141:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  96.63%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.63%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1058 
   0.42%                kernel  [unknown] 
   0.21%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.19%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   1.31%  <...other 275 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.63%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1058 
   2.91%                kernel  [unknown] 
   0.07%                        <unknown> 
   0.03%             libjvm.so  fileStream::write 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  xmlStream::write_text 
   0.01%             libc.so.6  __memmove_avx_unaligned_erms 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libjvm.so  ElfSymbolTable::lookup 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%        hsdis-amd64.so  print_insn 
   0.01%             libc.so.6  __strchr_avx2 
   0.01%             libc.so.6  __vfprintf_internal 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.01%             libjvm.so  defaultStream::hold 
   0.01%                [vdso]  [unknown] 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libc.so.6  malloc 
   0.17%  <...other 71 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.63%        jvmci, level 4
   2.91%                kernel
   0.20%             libjvm.so
   0.12%             libc.so.6
   0.07%                      
   0.02%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.01%           interpreter
   0.01%                [vdso]
   0.01%           c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:11:35
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.217 ns/op
# Warmup Iteration   2: 2.158 ns/op
# Warmup Iteration   3: 2.393 ns/op
# Warmup Iteration   4: 2.361 ns/op
# Warmup Iteration   5: 2.350 ns/op
Iteration   1: 2.362 ns/op
Iteration   2: 2.344 ns/op
Iteration   3: 2.360 ns/op
Iteration   4: 2.355 ns/op
Iteration   5: 2.391 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls":
  2.362 ±(99.9%) 0.068 ns/op [Average]
  (min, avg, max) = (2.344, 2.362, 2.391), stdev = 0.018
  CI (99.9%): [2.294, 2.430] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls:asm":
PrintAssembly processed: 225743 total address lines.
Perf output processed (skipped 79.111 seconds):
 Column 1: cycles (51192 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1064 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@10 (line 234)
              0x00007fb49eda1d56:   mov    $0x0,%r11
              0x00007fb49eda1d5d:   mov    0x10(%rsp),%r10
              0x00007fb49eda1d62:   mov    (%rsp),%rsi
          ╭   0x00007fb49eda1d66:   jmp    0x00007fb49eda1d8a           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007fb49eda1d6b:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fb49eda1d76:   data16 data16 xchg %ax,%ax
          │   0x00007fb49eda1d7a:   nopw   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
   8.91%  │↗  0x00007fb49eda1d80:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [8]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
   8.58%  ││  0x00007fb49eda1d87:   test   %eax,(%r8)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 236)
          ││                                                            ;   {poll}
   8.90%  ↘│  0x00007fb49eda1d8a:   mov    0x10(%r10),%r8d              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@1 (line 111)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 236)
   8.53%   │  0x00007fb49eda1d8e:   mov    0x14(%r10),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 210)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@9 (line 113)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 236)
   8.85%   │  0x00007fb49eda1d92:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@5 (line 111)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 236)
   8.73%   │  0x00007fb49eda1d95:   shl    $0x3,%r9d
   8.71%   │  0x00007fb49eda1d99:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@51 (line 120)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 236)
   8.83%   │  0x00007fb49eda1d9c:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@26 (line 237)
   8.71%   │  0x00007fb49eda1d9f:   nop
   8.50%   │  0x00007fb49eda1da0:   cmpb   $0x0,0x94(%rsi)
   8.77%   ╰  0x00007fb49eda1da7:   je     0x00007fb49eda1d80           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
              0x00007fb49eda1da9:   mov    %r11,0x20(%rsp)
              0x00007fb49eda1dae:   call   0x00007fb4b52d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fb49eda1db3:   nop
              0x00007fb49eda1db4:   mov    0x18(%rsp),%rdx
              0x00007fb49eda1db9:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@40 (line 239)
              0x00007fb49eda1dbd:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@46 (line 240)
              0x00007fb49eda1dc1:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  96.02%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.02%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1064 
   0.81%                kernel  [unknown] 
   0.52%                kernel  [unknown] 
   0.25%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%             libjvm.so  stringStream::~stringStream 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   1.36%  <...other 279 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.02%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1064 
   3.41%                kernel  [unknown] 
   0.08%                        <unknown> 
   0.05%             libjvm.so  stringStream::~stringStream 
   0.03%             libc.so.6  __vfprintf_internal 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libjvm.so  RelocIterator::initialize 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libjvm.so  xmlTextStream::flush 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%             libc.so.6  __GI___futex_abstimed_wait_cancelable64 
   0.01%        hsdis-amd64.so  print_insn 
   0.01%                [vdso]  [unknown] 
   0.01%             libjvm.so  AbstractDisassembler::print_location 
   0.01%             libc.so.6  __strchr_avx2 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libjvm.so  Mutex::lock_without_safepoint_check 
   0.21%  <...other 87 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.02%        jvmci, level 4
   3.41%                kernel
   0.28%             libjvm.so
   0.14%             libc.so.6
   0.08%                      
   0.03%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.01%           interpreter
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

# Run progress: 33.33% complete, ETA 00:09:10
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.018 ns/op
# Warmup Iteration   2: 6.066 ns/op
# Warmup Iteration   3: 5.778 ns/op
# Warmup Iteration   4: 5.683 ns/op
# Warmup Iteration   5: 5.644 ns/op
Iteration   1: 5.654 ns/op
Iteration   2: 5.645 ns/op
Iteration   3: 5.658 ns/op
Iteration   4: 5.637 ns/op
Iteration   5: 5.715 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls":
  5.662 ±(99.9%) 0.119 ns/op [Average]
  (min, avg, max) = (5.637, 5.662, 5.715), stdev = 0.031
  CI (99.9%): [5.542, 5.781] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls:asm":
PrintAssembly processed: 227683 total address lines.
Perf output processed (skipped 78.839 seconds):
 Column 1: cycles (51010 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 1071 

               0x00007f09b6da3d76:   mov    $0x0,%r11
               0x00007f09b6da3d7d:   mov    0x8(%rsp),%r10
               0x00007f09b6da3d82:   mov    (%rsp),%rsi
          ╭    0x00007f09b6da3d86:   jmp    0x00007f09b6da3e24           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 236)
          │    0x00007f09b6da3d8b:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007f09b6da3d96:   data16 data16 xchg %ax,%ax
          │    0x00007f09b6da3d9a:   nopw   0x0(%rax,%rax,1)             ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 130)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   2.27%  │ ↗  0x00007f09b6da3da0:   mov    0x14(%r10),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 131)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   5.02%  │ │  0x00007f09b6da3da4:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 131)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   2.23%  │ │  0x00007f09b6da3da7:   cmp    $0x21,%r8d
          │ │  0x00007f09b6da3dab:   jl     0x00007f09b6da3e7c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@22 (line 133)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   5.13%  │ │  0x00007f09b6da3db1:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@27 (line 134)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   2.22%  │ │  0x00007f09b6da3db4:   cmp    $0x21,%r8d
          │ │  0x00007f09b6da3db8:   jl     0x00007f09b6da3f07           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@34 (line 136)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   5.00%  │ │  0x00007f09b6da3dbe:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@39 (line 137)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   2.38%  │ │  0x00007f09b6da3dc1:   cmp    $0x21,%r8d
          │ │  0x00007f09b6da3dc5:   jl     0x00007f09b6da3eb6           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@46 (line 139)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   5.44%  │ │  0x00007f09b6da3dcb:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@51 (line 140)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   2.32%  │ │  0x00007f09b6da3dce:   cmp    $0x21,%r8d
          │ │  0x00007f09b6da3dd2:   jl     0x00007f09b6da3ec8           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@58 (line 142)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   5.22%  │ │  0x00007f09b6da3dd8:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@63 (line 143)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   2.17%  │ │  0x00007f09b6da3ddb:   nopl   0x0(%rax,%rax,1)
   5.63%  │ │  0x00007f09b6da3de0:   cmp    $0x21,%r8d
          │ │  0x00007f09b6da3de4:   jl     0x00007f09b6da3ead           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@70 (line 145)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   2.19%  │ │  0x00007f09b6da3dea:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@75 (line 146)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   5.06%  │ │  0x00007f09b6da3ded:   cmp    $0x21,%r8d
          │ │  0x00007f09b6da3df1:   jl     0x00007f09b6da3ed1           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@82 (line 148)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   2.45%  │ │  0x00007f09b6da3df7:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@87 (line 149)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   5.00%  │ │  0x00007f09b6da3dfa:   nopw   0x0(%rax,%rax,1)
   2.18%  │ │  0x00007f09b6da3e00:   cmp    $0x21,%r8d
          │ │  0x00007f09b6da3e04:   jl     0x00007f09b6da3ebf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@94 (line 151)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   5.11%  │ │  0x00007f09b6da3e0a:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@99 (line 152)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   2.35%  │ │  0x00007f09b6da3e0d:   cmpb   $0x0,0x94(%rsi)
   5.10%  │╭│  0x00007f09b6da3e14:   jne    0x00007f09b6da3e3d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
   2.29%  │││  0x00007f09b6da3e1a:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [16]=Oop [24]=Oop }
          │││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
   4.96%  │││  0x00007f09b6da3e21:   test   %eax,(%r8)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 236)
          │││                                                            ;   {poll}
   2.23%  ↘││  0x00007f09b6da3e24:   mov    0x10(%r10),%r8d              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@1 (line 127)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   5.06%   ││  0x00007f09b6da3e28:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@5 (line 127)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   2.13%   ││  0x00007f09b6da3e2b:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@26 (line 237)
   4.97%   ││  0x00007f09b6da3e2e:   cmp    $0x21,%r8d
           │╰  0x00007f09b6da3e32:   jge    0x00007f09b6da3da0
           │   0x00007f09b6da3e38:   jmp    0x00007f09b6da3eda           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 130)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
           ↘   0x00007f09b6da3e3d:   mov    %r11,0x20(%rsp)
               0x00007f09b6da3e42:   call   0x00007f09ce4d32b0           ;   {runtime_call os::javaTimeNanos()}
               0x00007f09b6da3e47:   nop
               0x00007f09b6da3e48:   mov    0x18(%rsp),%rdx
               0x00007f09b6da3e4d:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  96.12%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.12%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 1071 
   0.45%                kernel  [unknown] 
   0.44%                kernel  [unknown] 
   0.21%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.44%  <...other 309 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.12%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 1071 
   3.18%                kernel  [unknown] 
   0.17%                        <unknown> 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  fileStream::write 
   0.03%             libc.so.6  _IO_fwrite 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libc.so.6  __strchr_avx2 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libjvm.so  xmlStream::write_text 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%             libc.so.6  _IO_fflush 
   0.01%             libc.so.6  memcpy@GLIBC_2.2.5 
   0.22%  <...other 95 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.13%        jvmci, level 4
   3.18%                kernel
   0.25%             libjvm.so
   0.19%             libc.so.6
   0.17%                      
   0.03%        hsdis-amd64.so
   0.03%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
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

# Run progress: 50.00% complete, ETA 00:06:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.008 ns/op
# Warmup Iteration   2: 5.983 ns/op
# Warmup Iteration   3: 5.690 ns/op
# Warmup Iteration   4: 5.580 ns/op
# Warmup Iteration   5: 5.586 ns/op
Iteration   1: 5.551 ns/op
Iteration   2: 5.612 ns/op
Iteration   3: 5.575 ns/op
Iteration   4: 5.559 ns/op
Iteration   5: 5.608 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls":
  5.581 ±(99.9%) 0.107 ns/op [Average]
  (min, avg, max) = (5.551, 5.581, 5.612), stdev = 0.028
  CI (99.9%): [5.474, 5.688] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls:asm":
PrintAssembly processed: 223627 total address lines.
Perf output processed (skipped 79.161 seconds):
 Column 1: cycles (51017 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 1079 

               0x00007fb362da3276:   mov    $0x0,%r11
               0x00007fb362da327d:   mov    0x8(%rsp),%r10
               0x00007fb362da3282:   mov    (%rsp),%rsi
          ╭    0x00007fb362da3286:   jmp    0x00007fb362da3327           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 236)
          │    0x00007fb362da328b:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007fb362da3296:   data16 data16 xchg %ax,%ax
          │    0x00007fb362da329a:   nopw   0x0(%rax,%rax,1)             ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 163)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.84%  │ ↗  0x00007fb362da32a0:   mov    0x14(%r10),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 164)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.39%  │ │  0x00007fb362da32a4:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 164)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.92%  │ │  0x00007fb362da32a7:   cmp    $0x21,%r8d
          │ │  0x00007fb362da32ab:   jl     0x00007fb362da337c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@22 (line 165)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.48%  │ │  0x00007fb362da32b1:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@27 (line 166)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.84%  │ │  0x00007fb362da32b4:   cmp    $0x21,%r8d
          │ │  0x00007fb362da32b8:   jl     0x00007fb362da337c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@34 (line 167)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.50%  │ │  0x00007fb362da32be:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@39 (line 168)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.91%  │ │  0x00007fb362da32c1:   cmp    $0x21,%r8d
          │ │  0x00007fb362da32c5:   jl     0x00007fb362da337c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@46 (line 169)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.50%  │ │  0x00007fb362da32cb:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@51 (line 170)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.97%  │ │  0x00007fb362da32ce:   cmp    $0x21,%r8d
          │ │  0x00007fb362da32d2:   jl     0x00007fb362da337c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@58 (line 171)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.59%  │ │  0x00007fb362da32d8:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@63 (line 172)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.93%  │ │  0x00007fb362da32db:   nopl   0x0(%rax,%rax,1)
   3.58%  │ │  0x00007fb362da32e0:   cmp    $0x21,%r8d
          │ │  0x00007fb362da32e4:   jl     0x00007fb362da337c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@70 (line 173)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.79%  │ │  0x00007fb362da32ea:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@75 (line 174)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.48%  │ │  0x00007fb362da32ed:   cmp    $0x21,%r8d
          │ │  0x00007fb362da32f1:   jl     0x00007fb362da337c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@82 (line 175)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   4.03%  │ │  0x00007fb362da32f7:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@87 (line 176)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.46%  │ │  0x00007fb362da32fa:   nopw   0x0(%rax,%rax,1)
   3.82%  │ │  0x00007fb362da3300:   cmp    $0x21,%r8d
          │ │  0x00007fb362da3304:   jl     0x00007fb362da337c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@94 (line 177)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.57%  │ │  0x00007fb362da330a:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@99 (line 178)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.79%  │ │  0x00007fb362da330d:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@26 (line 237)
   3.52%  │ │  0x00007fb362da3310:   cmpb   $0x0,0x94(%rsi)
   3.82%  │╭│  0x00007fb362da3317:   jne    0x00007fb362da333d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
   3.25%  │││  0x00007fb362da331d:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [16]=Oop [24]=Oop }
          │││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
   3.95%  │││  0x00007fb362da3324:   test   %eax,(%r8)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 236)
          │││                                                            ;   {poll}
   3.62%  ↘││  0x00007fb362da3327:   mov    0x10(%r10),%r8d              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@1 (line 160)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   4.05%   ││  0x00007fb362da332b:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@5 (line 160)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   3.51%   ││  0x00007fb362da332e:   cmp    $0x21,%r8d
           │╰  0x00007fb362da3332:   jge    0x00007fb362da32a0
           │   0x00007fb362da3338:   jmp    0x00007fb362da337c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 163)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
           ↘   0x00007fb362da333d:   mov    %r11,0x20(%rsp)
               0x00007fb362da3342:   call   0x00007fb379ad32b0           ;   {runtime_call os::javaTimeNanos()}
               0x00007fb362da3347:   nop
               0x00007fb362da3348:   mov    0x18(%rsp),%rdx
....................................................................................................
  96.13%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.13%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 1079 
   0.40%                kernel  [unknown] 
   0.27%                kernel  [unknown] 
   0.21%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.66%  <...other 350 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.13%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 1079 
   3.08%                kernel  [unknown] 
   0.30%                        <unknown> 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libc.so.6  __strchr_avx2 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.02%             libjvm.so  defaultStream::hold 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.01%                [vdso]  [unknown] 
   0.01%             libc.so.6  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%             libjvm.so  xmlStream::write_text 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  __memmove_avx_unaligned_erms 
   0.01%             libc.so.6  __GI___futex_abstimed_wait_cancelable64 
   0.21%  <...other 74 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  96.13%        jvmci, level 4
   3.08%                kernel
   0.30%                      
   0.22%             libjvm.so
   0.18%             libc.so.6
   0.03%           interpreter
   0.03%        hsdis-amd64.so
   0.01%                [vdso]
   0.01%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%      Unknown, level 0
....................................................................................................
  99.99%  <totals>



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

# Run progress: 66.67% complete, ETA 00:04:31
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.159 ns/op
# Warmup Iteration   2: 2.149 ns/op
# Warmup Iteration   3: 2.383 ns/op
# Warmup Iteration   4: 2.348 ns/op
# Warmup Iteration   5: 2.497 ns/op
Iteration   1: 2.654 ns/op
Iteration   2: 2.772 ns/op
Iteration   3: 2.688 ns/op
Iteration   4: 2.348 ns/op
Iteration   5: 2.365 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized":
  2.565 ±(99.9%) 0.753 ns/op [Average]
  (min, avg, max) = (2.348, 2.565, 2.772), stdev = 0.196
  CI (99.9%): [1.812, 3.319] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized:asm":
PrintAssembly processed: 220610 total address lines.
Perf output processed (skipped 79.599 seconds):
 Column 1: cycles (50664 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 1085 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@10 (line 234)
              0x00007f6ad6d9fbd6:   mov    $0x0,%r11
              0x00007f6ad6d9fbdd:   mov    0x10(%rsp),%r10
              0x00007f6ad6d9fbe2:   mov    (%rsp),%rsi
          ╭   0x00007f6ad6d9fbe6:   jmp    0x00007f6ad6d9fc0a           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 236)
          │   0x00007f6ad6d9fbeb:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f6ad6d9fbf6:   data16 data16 xchg %ax,%ax
          │   0x00007f6ad6d9fbfa:   nopw   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
   8.97%  │↗  0x00007f6ad6d9fc00:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [8]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
   8.73%  ││  0x00007f6ad6d9fc07:   test   %eax,(%r8)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 236)
          ││                                                            ;   {poll}
   8.97%  ↘│  0x00007f6ad6d9fc0a:   mov    0x10(%r10),%r8d              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@1 (line 70)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@17 (line 236)
   8.58%   │  0x00007f6ad6d9fc0e:   mov    0x14(%r10),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@21 (line 75)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@17 (line 236)
   8.45%   │  0x00007f6ad6d9fc12:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@5 (line 70)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@17 (line 236)
   8.54%   │  0x00007f6ad6d9fc15:   shl    $0x3,%r9d
   8.74%   │  0x00007f6ad6d9fc19:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@108 (line 89)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@17 (line 236)
   9.02%   │  0x00007f6ad6d9fc1c:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@26 (line 237)
   8.95%   │  0x00007f6ad6d9fc1f:   nop
   8.64%   │  0x00007f6ad6d9fc20:   cmpb   $0x0,0x94(%rsi)
   8.93%   ╰  0x00007f6ad6d9fc27:   je     0x00007f6ad6d9fc00           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
              0x00007f6ad6d9fc29:   mov    %r11,0x20(%rsp)
              0x00007f6ad6d9fc2e:   call   0x00007f6aed0d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f6ad6d9fc33:   nop
              0x00007f6ad6d9fc34:   mov    0x18(%rsp),%rdx
              0x00007f6ad6d9fc39:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@40 (line 239)
              0x00007f6ad6d9fc3d:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@46 (line 240)
              0x00007f6ad6d9fc41:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  96.51%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.51%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 1085 
   0.34%                kernel  [unknown] 
   0.27%                kernel  [unknown] 
   0.19%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.27%  <...other 256 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.51%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 1085 
   3.01%                kernel  [unknown] 
   0.08%                        <unknown> 
   0.03%             libjvm.so  fileStream::write 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libc.so.6  syscall 
   0.01%             libc.so.6  __vfprintf_internal 
   0.01%             libjvm.so  xmlTextStream::flush 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%           interpreter  return entry points  
   0.01%             libjvm.so  nmethod::print_code_comment_on 
   0.00%         perf-9032.map  [unknown] 
   0.16%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.51%        jvmci, level 4
   3.01%                kernel
   0.22%             libjvm.so
   0.12%             libc.so.6
   0.08%                      
   0.02%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.00%         perf-9032.map
   0.00%           c1, level 1
   0.00%                [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:02:15
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.286 ns/op
# Warmup Iteration   2: 2.270 ns/op
# Warmup Iteration   3: 13.442 ns/op
# Warmup Iteration   4: 3.444 ns/op
# Warmup Iteration   5: 3.003 ns/op
Iteration   1: 2.993 ns/op
Iteration   2: 2.986 ns/op
Iteration   3: 3.008 ns/op
Iteration   4: 3.003 ns/op
Iteration   5: 3.015 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls":
  3.001 ±(99.9%) 0.044 ns/op [Average]
  (min, avg, max) = (2.986, 3.001, 3.015), stdev = 0.011
  CI (99.9%): [2.957, 3.044] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 220904 total address lines.
Perf output processed (skipped 78.918 seconds):
 Column 1: cycles (50887 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1060 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@10 (line 234)
              0x00007fdd76d9f856:   mov    $0x0,%r11
              0x00007fdd76d9f85d:   mov    0x10(%rsp),%r10
              0x00007fdd76d9f862:   mov    (%rsp),%rsi
          ╭   0x00007fdd76d9f866:   jmp    0x00007fdd76d9f88a           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007fdd76d9f86b:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fdd76d9f876:   data16 data16 xchg %ax,%ax
          │   0x00007fdd76d9f87a:   nopw   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
  12.81%  │↗  0x00007fdd76d9f880:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [8]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
   0.85%  ││  0x00007fdd76d9f887:   test   %eax,(%r8)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 236)
          ││                                                            ;   {poll}
  13.38%  ↘│  0x00007fdd76d9f88a:   mov    0x14(%r10),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@23 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 105)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
   0.83%   │  0x00007fdd76d9f88e:   mov    0x10(%r10),%r9d              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@1 (line 104)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
  12.87%   │  0x00007fdd76d9f892:   mov    %r8d,%ecx
   0.90%   │  0x00007fdd76d9f895:   shl    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 105)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
  12.72%   │  0x00007fdd76d9f897:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@5 (line 104)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
   0.83%   │  0x00007fdd76d9f89a:   shl    $0x2,%r8d
  12.66%   │  0x00007fdd76d9f89e:   add    %ecx,%r8d
   0.84%   │  0x00007fdd76d9f8a1:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 105)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
  12.81%   │  0x00007fdd76d9f8a4:   add    %ecx,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 105)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
   0.88%   │  0x00007fdd76d9f8a7:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@26 (line 237)
  13.14%   │  0x00007fdd76d9f8aa:   cmpb   $0x0,0x94(%rsi)
   0.83%   ╰  0x00007fdd76d9f8b1:   je     0x00007fdd76d9f880           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
              0x00007fdd76d9f8b3:   mov    %r11,0x20(%rsp)
              0x00007fdd76d9f8b8:   call   0x00007fdd8ded32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fdd76d9f8bd:   nop
              0x00007fdd76d9f8be:   mov    0x18(%rsp),%rdx
              0x00007fdd76d9f8c3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@40 (line 239)
              0x00007fdd76d9f8c7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@46 (line 240)
              0x00007fdd76d9f8cb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  96.35%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.35%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1060 
   0.35%                kernel  [unknown] 
   0.33%                kernel  [unknown] 
   0.19%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.48%  <...other 334 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.35%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1060 
   2.97%                kernel  [unknown] 
   0.18%                        <unknown> 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libjvm.so  defaultStream::hold 
   0.03%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libjvm.so  xmlStream::write_text 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%             libc.so.6  __libc_alloca_cutoff 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%             libc.so.6  _IO_default_xsputn 
   0.01%             libc.so.6  pthread_mutex_unlock@@GLIBC_2.2.5 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%             libc.so.6  __strncmp_avx2 
   0.24%  <...other 87 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.35%        jvmci, level 4
   2.97%                kernel
   0.23%             libjvm.so
   0.19%             libc.so.6
   0.18%                      
   0.03%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.00%           c1, level 3
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:13:31

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

Benchmark                                                 Mode  Cnt  Score   Error  Units
LockElisionBenchmark.baseline                             avgt    5  2.360 ± 0.051  ns/op
LockElisionBenchmark.baseline:asm                         avgt         NaN            ---
LockElisionBenchmark.chain_method_calls                   avgt    5  2.362 ± 0.068  ns/op
LockElisionBenchmark.chain_method_calls:asm               avgt         NaN            ---
LockElisionBenchmark.conditional_chain_method_calls       avgt    5  5.662 ± 0.119  ns/op
LockElisionBenchmark.conditional_chain_method_calls:asm   avgt         NaN            ---
LockElisionBenchmark.conditional_nested_method_calls      avgt    5  5.581 ± 0.107  ns/op
LockElisionBenchmark.conditional_nested_method_calls:asm  avgt         NaN            ---
LockElisionBenchmark.nested_synchronized                  avgt    5  2.565 ± 0.753  ns/op
LockElisionBenchmark.nested_synchronized:asm              avgt         NaN            ---
LockElisionBenchmark.recursive_method_calls               avgt    5  3.001 ± 0.044  ns/op
LockElisionBenchmark.recursive_method_calls:asm           avgt         NaN            ---
