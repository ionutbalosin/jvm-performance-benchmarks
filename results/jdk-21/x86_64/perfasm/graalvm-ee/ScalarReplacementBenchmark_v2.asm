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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.089 ns/op
# Warmup Iteration   2: 6.698 ns/op
# Warmup Iteration   3: 6.630 ns/op
# Warmup Iteration   4: 6.565 ns/op
# Warmup Iteration   5: 6.572 ns/op
Iteration   1: 6.591 ns/op
Iteration   2: 6.541 ns/op
Iteration   3: 6.523 ns/op
Iteration   4: 6.540 ns/op
Iteration   5: 6.680 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj":
  6.575 ±(99.9%) 0.246 ns/op [Average]
  (min, avg, max) = (6.523, 6.575, 6.680), stdev = 0.064
  CI (99.9%): [6.329, 6.821] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj:asm":
PrintAssembly processed: 223509 total address lines.
Perf output processed (skipped 79.111 seconds):
 Column 1: cycles (51227 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 1063 

             # {method} {0x00007fb93b47b418} &apos;arg_escape_obj&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007fb9c2da0380:   mov    0x8(%rsi),%r10d
             0x00007fb9c2da0384:   movabs $0x7fb93f000000,%r12
             0x00007fb9c2da038e:   add    %r12,%r10
             0x00007fb9c2da0391:   xor    %r12,%r12
             0x00007fb9c2da0394:   cmp    %r10,%rax
             0x00007fb9c2da0397:   jne    0x00007fb9c26f9080           ;   {runtime_call ic_miss_stub}
             0x00007fb9c2da039d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   5.81%     0x00007fb9c2da03a0:   mov    %eax,-0x14000(%rsp)
   6.66%     0x00007fb9c2da03a7:   sub    $0x18,%rsp
   2.58%     0x00007fb9c2da03ab:   nop
   3.36%     0x00007fb9c2da03ac:   cmpl   $0x1,0x20(%r15)
   2.54%     0x00007fb9c2da03b4:   jne    0x00007fb9c2da040d
   3.95%     0x00007fb9c2da03ba:   mov    %rbp,0x10(%rsp)
   2.39%     0x00007fb9c2da03bf:   nop
   3.36%     0x00007fb9c2da03c0:   cmpl   $0x0,0x10(%rsi)
   2.57%  ╭  0x00007fb9c2da03c4:   jl     0x00007fb9c2da03ee           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 116)
   4.14%  │  0x00007fb9c2da03ca:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@45 (line 126)
   2.46%  │  0x00007fb9c2da03cf:   mov    0x10(%rsp),%rbp
   3.57%  │  0x00007fb9c2da03d4:   add    $0x18,%rsp
   2.36%  │  0x00007fb9c2da03d8:   nopl   0x0(%rax,%rax,1)
   4.01%  │  0x00007fb9c2da03e0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fb9c2da03e7:   ja     0x00007fb9c2da041a
   2.42%  │  0x00007fb9c2da03ed:   ret    
          ↘  0x00007fb9c2da03ee:   movl   $0xffffff8f,0x484(%r15)      ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 116)
             0x00007fb9c2da03f9:   mov    %r12,0x490(%r15)
             0x00007fb9c2da0400:   call   0x00007fb9c26ff17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@0 (line 116)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007fb9c2da0405:   nopl   0x0(%rax,%rax,1)
             0x00007fb9c2da040d:   mov    %rbp,0x10(%rsp)
....................................................................................................
  52.18%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 1089 

              0x00007fb9c2da7273:   mov    0x10(%rsp),%rdx
              0x00007fb9c2da7278:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@10 (line 192)
              0x00007fb9c2da727c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fb9c2da7285:   jmp    0x00007fb9c2da72af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@13 (line 194)
          │   0x00007fb9c2da728a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fb9c2da7295:   data16 data16 xchg %ax,%ax
          │   0x00007fb9c2da7299:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 196)
   2.61%  │↗  0x00007fb9c2da72a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 196)
   4.14%  ││  0x00007fb9c2da72a7:   test   %eax,(%r11)                  ;   {poll}
   2.61%  ││  0x00007fb9c2da72aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@13 (line 194)
   3.53%  ↘│  0x00007fb9c2da72af:   mov    0x8(%rsp),%r10
   2.52%   │  0x00007fb9c2da72b4:   mov    %r10,%rsi
   4.06%   │  0x00007fb9c2da72b7:   call   0x00007fb9c26f9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual arg_escape_obj {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   5.56%   │  0x00007fb9c2da72bc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   2.18%   │  0x00007fb9c2da72c4:   mov    0x20(%rsp),%r10
   5.83%   │  0x00007fb9c2da72c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@26 (line 195)
   4.23%   │  0x00007fb9c2da72cc:   mov    0x18(%rsp),%rsi
   2.28%   │  0x00007fb9c2da72d1:   cmpb   $0x0,0x94(%rsi)
   4.02%   ╰  0x00007fb9c2da72d8:   je     0x00007fb9c2da72a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 196)
              0x00007fb9c2da72da:   mov    %r10,0x20(%rsp)
              0x00007fb9c2da72df:   nop
              0x00007fb9c2da72e0:   call   0x00007fb9dccd32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fb9c2da72e5:   nop
              0x00007fb9c2da72e6:   mov    0x10(%rsp),%rdx
              0x00007fb9c2da72eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@40 (line 197)
              0x00007fb9c2da72ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@46 (line 198)
....................................................................................................
  43.55%  <total for region 2>

....[Hottest Regions]...............................................................................
  52.18%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 1063 
  43.55%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 1089 
   0.62%                kernel  [unknown] 
   0.30%                kernel  [unknown] 
   0.23%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%             libjvm.so  fileStream::flush 
   0.05%                kernel  [unknown] 
   0.05%             libc.so.6  __strchr_avx2 
   0.04%                kernel  [unknown] 
   1.85%  <...other 328 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.18%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 1063 
  43.55%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 1089 
   3.38%                kernel  [unknown] 
   0.06%             libjvm.so  fileStream::flush 
   0.05%             libc.so.6  __vfprintf_internal 
   0.05%             libc.so.6  __strchr_avx2 
   0.04%        hsdis-amd64.so  print_insn 
   0.03%             libc.so.6  _IO_fwrite 
   0.03%             libc.so.6  read 
   0.03%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.03%             libjvm.so  defaultStream::has_log_file 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libjvm.so  RelocIterator::initialize 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  xmlTextStream::flush 
   0.02%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%             libc.so.6  _IO_default_xsputn 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.43%  <...other 154 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.73%        jvmci, level 4
   3.38%                kernel
   0.36%             libjvm.so
   0.29%             libc.so.6
   0.13%   libjvmcicompiler.so
   0.06%        hsdis-amd64.so
   0.03%  ld-linux-x86-64.so.2
   0.02%           interpreter
   0.01%                      
   0.01%                [vdso]
   0.00%         perf-5785.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 25.00% complete, ETA 00:06:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.984 ns/op
# Warmup Iteration   2: 6.878 ns/op
# Warmup Iteration   3: 6.939 ns/op
# Warmup Iteration   4: 6.851 ns/op
# Warmup Iteration   5: 6.866 ns/op
Iteration   1: 6.821 ns/op
Iteration   2: 6.859 ns/op
Iteration   3: 6.882 ns/op
Iteration   4: 6.885 ns/op
Iteration   5: 6.918 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj":
  6.873 ±(99.9%) 0.139 ns/op [Average]
  (min, avg, max) = (6.821, 6.873, 6.918), stdev = 0.036
  CI (99.9%): [6.734, 7.012] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj:asm":
PrintAssembly processed: 229638 total address lines.
Perf output processed (skipped 79.681 seconds):
 Column 1: cycles (51358 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 1018 

             # {method} {0x00007f7c5f47aa18} &apos;branch_escape_obj&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark$HeavyWrapper;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f7ceada1b00:   mov    0x8(%rsi),%r10d
             0x00007f7ceada1b04:   movabs $0x7f7c63000000,%r12
             0x00007f7ceada1b0e:   add    %r12,%r10
             0x00007f7ceada1b11:   xor    %r12,%r12
             0x00007f7ceada1b14:   cmp    %r10,%rax
             0x00007f7ceada1b17:   jne    0x00007f7cea6f9080           ;   {runtime_call ic_miss_stub}
             0x00007f7ceada1b1d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   1.83%     0x00007f7ceada1b20:   mov    %eax,-0x14000(%rsp)
  10.06%     0x00007f7ceada1b27:   sub    $0x18,%rsp
   1.65%     0x00007f7ceada1b2b:   nop
   0.05%     0x00007f7ceada1b2c:   cmpl   $0x1,0x20(%r15)
   9.95%     0x00007f7ceada1b34:   jne    0x00007f7ceada1ba9
   0.40%     0x00007f7ceada1b3a:   mov    %rbp,0x10(%rsp)
   1.70%     0x00007f7ceada1b3f:   nop
   0.08%     0x00007f7ceada1b40:   cmpb   $0x0,0x14(%rsi)
   9.40%  ╭  0x00007f7ceada1b44:   jne    0x00007f7ceada1b72           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@20 (line 104)
   0.46%  │  0x00007f7ceada1b4a:   cmpl   $0x0,0x10(%rsi)
   1.73%  │  0x00007f7ceada1b4e:   jl     0x00007f7ceada1b9a           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 100)
   0.12%  │  0x00007f7ceada1b54:   mov    0x18(%rsi),%eax
   9.48%  │  0x00007f7ceada1b57:   shl    $0x3,%rax                    ;*getfield CACHED_WRAPPER {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@29 (line 107)
   0.42%  │  0x00007f7ceada1b5b:   mov    0x10(%rsp),%rbp
   1.71%  │  0x00007f7ceada1b60:   add    $0x18,%rsp
   0.11%  │  0x00007f7ceada1b64:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f7ceada1b6b:   ja     0x00007f7ceada1bb6
   9.61%  │  0x00007f7ceada1b71:   ret                                 ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@34 (line 110)
          ↘  0x00007f7ceada1b72:   mov    $0x14,%r11
             0x00007f7ceada1b79:   mov    $0xffffffed,%r10d
             0x00007f7ceada1b7f:   mov    %r10d,0x484(%r15)            ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 100)
             0x00007f7ceada1b86:   mov    %r11,0x490(%r15)
             0x00007f7ceada1b8d:   call   0x00007f7cea6ff17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@0 (line 100)
....................................................................................................
  58.75%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 1036 

              0x00007f7ceada4473:   mov    0x10(%rsp),%rdx
              0x00007f7ceada4478:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@10 (line 192)
              0x00007f7ceada447c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f7ceada4485:   jmp    0x00007f7ceada44af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@13 (line 194)
          │   0x00007f7ceada448a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f7ceada4495:   data16 data16 xchg %ax,%ax
          │   0x00007f7ceada4499:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 196)
   9.89%  │↗  0x00007f7ceada44a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 196)
   0.37%  ││  0x00007f7ceada44a7:   test   %eax,(%r11)                  ;   {poll}
   1.69%  ││  0x00007f7ceada44aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@13 (line 194)
   0.09%  ↘│  0x00007f7ceada44af:   mov    0x8(%rsp),%r10
   9.67%   │  0x00007f7ceada44b4:   mov    %r10,%rsi
   0.40%   │  0x00007f7ceada44b7:   call   0x00007f7cea6f9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual branch_escape_obj {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   1.10%   │  0x00007f7ceada44bc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   1.75%   │  0x00007f7ceada44c4:   mov    0x20(%rsp),%r10
   9.70%   │  0x00007f7ceada44c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@26 (line 195)
   0.47%   │  0x00007f7ceada44cc:   mov    0x18(%rsp),%rsi
   1.63%   │  0x00007f7ceada44d1:   cmpb   $0x0,0x94(%rsi)
   0.18%   ╰  0x00007f7ceada44d8:   je     0x00007f7ceada44a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 196)
              0x00007f7ceada44da:   mov    %r10,0x20(%rsp)
              0x00007f7ceada44df:   nop
              0x00007f7ceada44e0:   call   0x00007f7d02ed32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f7ceada44e5:   nop
              0x00007f7ceada44e6:   mov    0x10(%rsp),%rdx
              0x00007f7ceada44eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@40 (line 197)
              0x00007f7ceada44ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@46 (line 198)
....................................................................................................
  36.95%  <total for region 2>

....[Hottest Regions]...............................................................................
  58.75%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 1018 
  36.95%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 1036 
   0.66%                kernel  [unknown] 
   0.55%                kernel  [unknown] 
   0.32%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.55%  <...other 279 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  58.75%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 1018 
  36.95%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 1036 
   3.62%                kernel  [unknown] 
   0.06%                        <unknown> 
   0.05%             libc.so.6  __vfprintf_internal 
   0.04%             libjvm.so  defaultStream::hold 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  _IO_setb 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  syscall 
   0.01%             libjvm.so  fileStream::write 
   0.01%             libjvm.so  xmlStream::write_text 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%             libjvm.so  StatSamplerTask::task 
   0.30%  <...other 98 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.70%        jvmci, level 4
   3.62%                kernel
   0.29%             libjvm.so
   0.25%             libc.so.6
   0.06%                      
   0.04%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.00%                [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 50.00% complete, ETA 00:04:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.027 ns/op
# Warmup Iteration   2: 6.234 ns/op
# Warmup Iteration   3: 5.976 ns/op
# Warmup Iteration   4: 5.999 ns/op
# Warmup Iteration   5: 7.521 ns/op
Iteration   1: 8.231 ns/op
Iteration   2: 6.662 ns/op
Iteration   3: 6.002 ns/op
Iteration   4: 6.044 ns/op
Iteration   5: 6.042 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape":
  6.596 ±(99.9%) 3.675 ns/op [Average]
  (min, avg, max) = (6.002, 6.596, 8.231), stdev = 0.954
  CI (99.9%): [2.921, 10.271] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape:asm":
PrintAssembly processed: 228133 total address lines.
Perf output processed (skipped 79.200 seconds):
 Column 1: cycles (51341 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 1052 

                # {method} {0x00007f49c447af78} &apos;no_escape&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f4a52d9f600:   mov    0x8(%rsi),%r10d
                0x00007f4a52d9f604:   movabs $0x7f49cf000000,%r12
                0x00007f4a52d9f60e:   add    %r12,%r10
                0x00007f4a52d9f611:   xor    %r12,%r12
                0x00007f4a52d9f614:   cmp    %r10,%rax
                0x00007f4a52d9f617:   jne    0x00007f4a526f9080           ;   {runtime_call ic_miss_stub}
                0x00007f4a52d9f61d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   2.45%        0x00007f4a52d9f620:   mov    %eax,-0x14000(%rsp)
  10.91%        0x00007f4a52d9f627:   sub    $0x18,%rsp
   1.62%        0x00007f4a52d9f62b:   nop
   0.87%        0x00007f4a52d9f62c:   cmpl   $0x1,0x20(%r15)
   5.24%  ╭     0x00007f4a52d9f634:   jne    0x00007f4a52d9f65b
   5.78%  │ ↗   0x00007f4a52d9f63a:   mov    0xc(%rsi),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@5 (line 76)
   1.53%  │ │   0x00007f4a52d9f63d:   mov    %eax,%r10d
   0.85%  │ │   0x00007f4a52d9f640:   shl    %r10d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$LightWrapper::&lt;init&gt;@12 (line 153)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@8 (line 76)
   5.24%  │ │   0x00007f4a52d9f643:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@20 (line 77)
   5.57%  │ │   0x00007f4a52d9f646:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@21 (line 77)
   1.53%  │ │   0x00007f4a52d9f649:   add    $0x18,%rsp
   0.87%  │ │↗  0x00007f4a52d9f64d:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f4a52d9f654:   ja     0x00007f4a52d9f668
   5.30%  ││││  0x00007f4a52d9f65a:   ret    
          ↘│││  0x00007f4a52d9f65b:   mov    %rbp,0x10(%rsp)
           │││  0x00007f4a52d9f660:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f4a52d9f665:   jmp    0x00007f4a52d9f63a
           │ │  0x00007f4a52d9f667:   hlt    
           ↘ ╰  0x00007f4a52d9f668:   lea    -0x22(%rip),%rcx        # 0x00007f4a52d9f64d
                0x00007f4a52d9f66f:   mov    %rcx,0x468(%r15)
                0x00007f4a52d9f676:   jmp    0x00007f4a52700000           ;   {runtime_call SafepointBlob}
                0x00007f4a52d9f67b:   hlt    
                0x00007f4a52d9f67c:   nopl   0x0(%rax)
              [Exception Handler]
....................................................................................................
  47.75%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 5, compile id 1070 

              0x00007f4a52da5773:   mov    0x10(%rsp),%rdx
              0x00007f4a52da5778:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@10 (line 192)
              0x00007f4a52da577c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f4a52da5785:   jmp    0x00007f4a52da57af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@13 (line 194)
          │   0x00007f4a52da578a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f4a52da5795:   data16 data16 xchg %ax,%ax
          │   0x00007f4a52da5799:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 196)
   5.32%  │↗  0x00007f4a52da57a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 196)
   5.77%  ││  0x00007f4a52da57a7:   test   %eax,(%r11)                  ;   {poll}
   1.59%  ││  0x00007f4a52da57aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@13 (line 194)
   0.92%  ↘│  0x00007f4a52da57af:   mov    0x8(%rsp),%r10
   5.19%   │  0x00007f4a52da57b4:   mov    %r10,%rsi
   5.80%   │  0x00007f4a52da57b7:   call   0x00007f4a526f9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual no_escape {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   7.17%   │  0x00007f4a52da57bc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   1.60%   │  0x00007f4a52da57c4:   mov    0x20(%rsp),%r10
   5.86%   │  0x00007f4a52da57c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@26 (line 195)
   5.66%   │  0x00007f4a52da57cc:   mov    0x18(%rsp),%rsi
   1.54%   │  0x00007f4a52da57d1:   cmpb   $0x0,0x94(%rsi)
   1.33%   ╰  0x00007f4a52da57d8:   je     0x00007f4a52da57a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 196)
              0x00007f4a52da57da:   mov    %r10,0x20(%rsp)
              0x00007f4a52da57df:   nop
              0x00007f4a52da57e0:   call   0x00007f4a692d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f4a52da57e5:   nop
              0x00007f4a52da57e6:   mov    0x10(%rsp),%rdx
              0x00007f4a52da57eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@40 (line 197)
              0x00007f4a52da57ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@46 (line 198)
....................................................................................................
  47.74%  <total for region 2>

....[Hottest Regions]...............................................................................
  47.75%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 1052 
  47.74%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 5, compile id 1070 
   0.62%                kernel  [unknown] 
   0.54%                kernel  [unknown] 
   0.30%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%             libjvm.so  fileStream::write 
   0.05%                kernel  [unknown] 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   1.74%  <...other 325 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  47.75%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 1052 
  47.74%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 5, compile id 1070 
   3.74%                kernel  [unknown] 
   0.12%                        <unknown> 
   0.05%             libjvm.so  fileStream::write 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.04%             libjvm.so  xmlTextStream::flush 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libc.so.6  syscall 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  _IO_setb 
   0.02%             libc.so.6  __strchr_avx2 
   0.01%             libc.so.6  __GI___pthread_enable_asynccancel 
   0.01%             libc.so.6  _IO_fflush 
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.27%  <...other 99 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.49%        jvmci, level 4
   3.74%                kernel
   0.35%             libjvm.so
   0.21%             libc.so.6
   0.12%                      
   0.04%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.00%      Unknown, level 0
   0.00%           c1, level 3
   0.00%         perf-5926.map
   0.00%                [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 75.00% complete, ETA 00:02:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.006 ns/op
# Warmup Iteration   2: 7.276 ns/op
# Warmup Iteration   3: 7.214 ns/op
# Warmup Iteration   4: 7.157 ns/op
# Warmup Iteration   5: 7.216 ns/op
Iteration   1: 7.176 ns/op
Iteration   2: 7.215 ns/op
Iteration   3: 7.133 ns/op
Iteration   4: 7.115 ns/op
Iteration   5: 7.284 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj":
  7.185 ±(99.9%) 0.261 ns/op [Average]
  (min, avg, max) = (7.115, 7.185, 7.284), stdev = 0.068
  CI (99.9%): [6.924, 7.445] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj:asm":
PrintAssembly processed: 226761 total address lines.
Perf output processed (skipped 79.389 seconds):
 Column 1: cycles (51381 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 1083 

             # {method} {0x00007efbc847b118} &apos;no_escape_array_obj&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007efc56d9e500:   mov    0x8(%rsi),%r10d
             0x00007efc56d9e504:   movabs $0x7efbd3000000,%r12
             0x00007efc56d9e50e:   add    %r12,%r10
             0x00007efc56d9e511:   xor    %r12,%r12
             0x00007efc56d9e514:   cmp    %r10,%rax
             0x00007efc56d9e517:   jne    0x00007efc566f9080           ;   {runtime_call ic_miss_stub}
             0x00007efc56d9e51d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   5.52%     0x00007efc56d9e520:   mov    %eax,-0x14000(%rsp)
   5.80%     0x00007efc56d9e527:   sub    $0x18,%rsp
   2.78%     0x00007efc56d9e52b:   nop
   2.78%     0x00007efc56d9e52c:   cmpl   $0x1,0x20(%r15)
   2.80%     0x00007efc56d9e534:   jne    0x00007efc56d9e593
   2.90%     0x00007efc56d9e53a:   mov    %rbp,0x10(%rsp)
   2.74%     0x00007efc56d9e53f:   mov    0x10(%rsi),%eax              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@9 (line 88)
   2.74%     0x00007efc56d9e542:   test   %eax,%eax
          ╭  0x00007efc56d9e544:   jl     0x00007efc56d9e574           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 88)
   2.83%  │  0x00007efc56d9e54a:   mov    0xc(%rsi),%r10d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@5 (line 88)
   2.86%  │  0x00007efc56d9e54e:   mov    %r10d,%r11d
   2.74%  │  0x00007efc56d9e551:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@12 (line 136)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 88)
   2.69%  │  0x00007efc56d9e554:   add    %r10d,%r11d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@24 (line 89)
   3.03%  │  0x00007efc56d9e557:   add    %eax,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@30 (line 89)
   2.94%  │  0x00007efc56d9e55a:   mov    %r11d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@31 (line 89)
   2.70%  │  0x00007efc56d9e55d:   mov    0x10(%rsp),%rbp
   2.97%  │  0x00007efc56d9e562:   add    $0x18,%rsp
   2.86%  │  0x00007efc56d9e566:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007efc56d9e56d:   ja     0x00007efc56d9e5a0
   2.93%  │  0x00007efc56d9e573:   ret    
          ↘  0x00007efc56d9e574:   movl   $0xffffff8f,0x484(%r15)      ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 88)
             0x00007efc56d9e57f:   mov    %r12,0x490(%r15)
             0x00007efc56d9e586:   call   0x00007efc566ff17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@0 (line 88)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007efc56d9e58b:   nopl   0x0(%rax,%rax,1)
             0x00007efc56d9e593:   mov    %rbp,0x10(%rsp)
....................................................................................................
  56.60%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 1106 

              0x00007efc56da5373:   mov    0x10(%rsp),%rdx
              0x00007efc56da5378:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@10 (line 192)
              0x00007efc56da537c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007efc56da5385:   jmp    0x00007efc56da53af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@13 (line 194)
          │   0x00007efc56da538a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007efc56da5395:   data16 data16 xchg %ax,%ax
          │   0x00007efc56da5399:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 196)
   2.84%  │↗  0x00007efc56da53a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 196)
   2.92%  ││  0x00007efc56da53a7:   test   %eax,(%r11)                  ;   {poll}
   2.75%  ││  0x00007efc56da53aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@13 (line 194)
   2.81%  ↘│  0x00007efc56da53af:   mov    0x8(%rsp),%r10
   2.96%   │  0x00007efc56da53b4:   mov    %r10,%rsi
   2.95%   │  0x00007efc56da53b7:   call   0x00007efc566f9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual no_escape_array_obj {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   3.83%   │  0x00007efc56da53bc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   2.83%   │  0x00007efc56da53c4:   mov    0x20(%rsp),%r10
   5.48%   │  0x00007efc56da53c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@26 (line 195)
   3.26%   │  0x00007efc56da53cc:   mov    0x18(%rsp),%rsi
   2.78%   │  0x00007efc56da53d1:   cmpb   $0x0,0x94(%rsi)
   3.07%   ╰  0x00007efc56da53d8:   je     0x00007efc56da53a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 196)
              0x00007efc56da53da:   mov    %r10,0x20(%rsp)
              0x00007efc56da53df:   nop
              0x00007efc56da53e0:   call   0x00007efc6f0d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007efc56da53e5:   nop
              0x00007efc56da53e6:   mov    0x10(%rsp),%rdx
              0x00007efc56da53eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@40 (line 197)
              0x00007efc56da53ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@46 (line 198)
....................................................................................................
  38.47%  <total for region 2>

....[Hottest Regions]...............................................................................
  56.60%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 1083 
  38.47%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 1106 
   0.64%                kernel  [unknown] 
   0.38%                kernel  [unknown] 
   0.33%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   2.13%  <...other 411 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  56.60%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 1083 
  38.47%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 1106 
   4.06%                kernel  [unknown] 
   0.23%                        <unknown> 
   0.04%        hsdis-amd64.so  print_insn 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libjvm.so  fileStream::write 
   0.02%             libjvm.so  xmlStream::write_text 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  _IO_setb 
   0.01%             libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libjvm.so  resource_allocate_bytes 
   0.33%  <...other 116 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.06%        jvmci, level 4
   4.06%                kernel
   0.35%             libjvm.so
   0.23%                      
   0.20%             libc.so.6
   0.05%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.00%                [vdso]
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

Benchmark                                           (objectEscapes)  (size)  (value)  Mode  Cnt  Score   Error  Units
ScalarReplacementBenchmark.arg_escape_obj                     false     128        3  avgt    5  6.575 ± 0.246  ns/op
ScalarReplacementBenchmark.arg_escape_obj:asm                 false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.branch_escape_obj                  false     128        3  avgt    5  6.873 ± 0.139  ns/op
ScalarReplacementBenchmark.branch_escape_obj:asm              false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.no_escape                          false     128        3  avgt    5  6.596 ± 3.675  ns/op
ScalarReplacementBenchmark.no_escape:asm                      false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.no_escape_array_obj                false     128        3  avgt    5  7.185 ± 0.261  ns/op
ScalarReplacementBenchmark.no_escape_array_obj:asm            false     128        3  avgt         NaN            ---
