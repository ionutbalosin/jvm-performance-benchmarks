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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.807 ns/op
# Warmup Iteration   2: 6.686 ns/op
# Warmup Iteration   3: 6.616 ns/op
# Warmup Iteration   4: 6.599 ns/op
# Warmup Iteration   5: 6.559 ns/op
Iteration   1: 6.615 ns/op
Iteration   2: 6.994 ns/op
Iteration   3: 6.664 ns/op
Iteration   4: 6.661 ns/op
Iteration   5: 6.682 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj":
  6.723 ±(99.9%) 0.590 ns/op [Average]
  (min, avg, max) = (6.615, 6.723, 6.994), stdev = 0.153
  CI (99.9%): [6.133, 7.313] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj:asm":
PrintAssembly processed: 217399 total address lines.
Perf output processed (skipped 81.255 seconds):
 Column 1: cycles (50941 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 1044 

             # {method} {0x00007fb72447b418} &apos;arg_escape_obj&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007fb7b3191e00:   mov    0x8(%rsi),%r10d
             0x00007fb7b3191e04:   movabs $0x7fb72f000000,%r12
             0x00007fb7b3191e0e:   add    %r12,%r10
             0x00007fb7b3191e11:   xor    %r12,%r12
             0x00007fb7b3191e14:   cmp    %r10,%rax
             0x00007fb7b3191e17:   jne    0x00007fb7b2af9080           ;   {runtime_call ic_miss_stub}
             0x00007fb7b3191e1d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   6.10%     0x00007fb7b3191e20:   mov    %eax,-0x14000(%rsp)
   6.68%     0x00007fb7b3191e27:   sub    $0x18,%rsp
   2.02%     0x00007fb7b3191e2b:   nop
   3.76%     0x00007fb7b3191e2c:   cmpl   $0x1,0x20(%r15)
   2.00%     0x00007fb7b3191e34:   jne    0x00007fb7b3191e91
   4.65%     0x00007fb7b3191e3a:   mov    %rbp,0x10(%rsp)
   1.99%     0x00007fb7b3191e3f:   nop
   3.87%     0x00007fb7b3191e40:   cmpl   $0x0,0x10(%rsi)
   1.95%  ╭  0x00007fb7b3191e44:   jl     0x00007fb7b3191e6e           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 116)
   4.73%  │  0x00007fb7b3191e4a:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@45 (line 126)
   2.03%  │  0x00007fb7b3191e4f:   mov    0x10(%rsp),%rbp
   4.07%  │  0x00007fb7b3191e54:   add    $0x18,%rsp
   1.94%  │  0x00007fb7b3191e58:   nopl   0x0(%rax,%rax,1)
   4.54%  │  0x00007fb7b3191e60:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fb7b3191e67:   ja     0x00007fb7b3191e9e
   1.96%  │  0x00007fb7b3191e6d:   ret    
          ↘  0x00007fb7b3191e6e:   movl   $0xffffff8f,0x484(%r15)      ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 116)
             0x00007fb7b3191e79:   movq   $0x0,0x490(%r15)
             0x00007fb7b3191e84:   call   0x00007fb7b2aff17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@0 (line 116)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007fb7b3191e89:   nopl   0x0(%rax,%rax,1)
             0x00007fb7b3191e91:   mov    %rbp,0x10(%rsp)
....................................................................................................
  52.30%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 5, compile id 1067 

              0x00007fb7b3195c10:   mov    0x18(%rsp),%rsi
              0x00007fb7b3195c15:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fb7b3195c20:   cmpb   $0x0,0x94(%rsi)
              0x00007fb7b3195c27:   jne    0x00007fb7b3195cba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 196)
              0x00007fb7b3195c2d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fb7b3195c36:   jmp    0x00007fb7b3195c4f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@13 (line 194)
          │   0x00007fb7b3195c3b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 196)
   2.01%  │↗  0x00007fb7b3195c40:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 196)
   4.66%  ││  0x00007fb7b3195c47:   test   %eax,(%r11)                  ;   {poll}
   2.07%  ││  0x00007fb7b3195c4a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@13 (line 194)
   3.73%  ↘│  0x00007fb7b3195c4f:   mov    0x8(%rsp),%r10
   1.86%   │  0x00007fb7b3195c54:   mov    %r10,%rsi
   4.53%   │  0x00007fb7b3195c57:   call   0x00007fb7b2af9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual arg_escape_obj {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   6.58%   │  0x00007fb7b3195c5c:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   1.51%   │  0x00007fb7b3195c64:   mov    0x20(%rsp),%r10
   5.79%   │  0x00007fb7b3195c69:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@26 (line 195)
   4.92%   │  0x00007fb7b3195c6c:   mov    0x18(%rsp),%rsi
   1.54%   │  0x00007fb7b3195c71:   cmpb   $0x0,0x94(%rsi)
   4.26%   ╰  0x00007fb7b3195c78:   je     0x00007fb7b3195c40           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 196)
              0x00007fb7b3195c7a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@36 (line 197)
              0x00007fb7b3195c7f:   nop
              0x00007fb7b3195c80:   call   0x00007fb7cacd32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fb7b3195c85:   nop
              0x00007fb7b3195c86:   mov    0x10(%rsp),%rdx
              0x00007fb7b3195c8b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@40 (line 197)
              0x00007fb7b3195c8f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  43.45%  <total for region 2>

....[Hottest Regions]...............................................................................
  52.30%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 1044 
  43.45%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 5, compile id 1067 
   0.61%                kernel  [unknown] 
   0.28%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.81%  <...other 322 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.30%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 1044 
  43.45%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 5, compile id 1067 
   3.63%                kernel  [unknown] 
   0.09%                        <unknown> 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libjvm.so  defaultStream::write 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%             libc.so.6  __strchr_avx2 
   0.01%             libjvm.so  xmlStream::write 
   0.01%             libjvm.so  __tls_get_addr@plt 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libjvm.so  outputStream::print 
   0.26%  <...other 89 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.75%        jvmci, level 4
   3.63%                kernel
   0.27%             libjvm.so
   0.18%             libc.so.6
   0.09%                      
   0.04%        hsdis-amd64.so
   0.01%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%         perf-5359.map
   0.01%                [vdso]
   0.00%           c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 25.00% complete, ETA 00:06:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.130 ns/op
# Warmup Iteration   2: 7.158 ns/op
# Warmup Iteration   3: 7.769 ns/op
# Warmup Iteration   4: 6.898 ns/op
# Warmup Iteration   5: 6.932 ns/op
Iteration   1: 6.926 ns/op
Iteration   2: 6.906 ns/op
Iteration   3: 6.939 ns/op
Iteration   4: 6.971 ns/op
Iteration   5: 6.951 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj":
  6.939 ±(99.9%) 0.096 ns/op [Average]
  (min, avg, max) = (6.906, 6.939, 6.971), stdev = 0.025
  CI (99.9%): [6.843, 7.035] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj:asm":
PrintAssembly processed: 219862 total address lines.
Perf output processed (skipped 78.246 seconds):
 Column 1: cycles (51664 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 1053 

             # {method} {0x00007fd3bf47b238} &apos;branch_escape_obj&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark$HeavyWrapper;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007fd447197300:   mov    0x8(%rsi),%r10d
             0x00007fd447197304:   movabs $0x7fd3c3000000,%r12
             0x00007fd44719730e:   add    %r12,%r10
             0x00007fd447197311:   xor    %r12,%r12
             0x00007fd447197314:   cmp    %r10,%rax
             0x00007fd447197317:   jne    0x00007fd446af9080           ;   {runtime_call ic_miss_stub}
             0x00007fd44719731d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   1.95%     0x00007fd447197320:   mov    %eax,-0x14000(%rsp)
   9.85%     0x00007fd447197327:   sub    $0x18,%rsp
   1.78%     0x00007fd44719732b:   nop
   0.12%     0x00007fd44719732c:   cmpl   $0x1,0x20(%r15)
   9.71%     0x00007fd447197334:   jne    0x00007fd4471973a9
   0.45%     0x00007fd44719733a:   mov    %rbp,0x10(%rsp)
   1.82%     0x00007fd44719733f:   nop
   0.10%     0x00007fd447197340:   cmpb   $0x0,0x14(%rsi)
   9.49%  ╭  0x00007fd447197344:   jne    0x00007fd447197372           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@20 (line 104)
   0.43%  │  0x00007fd44719734a:   cmpl   $0x0,0x10(%rsi)
   1.78%  │  0x00007fd44719734e:   jl     0x00007fd44719739a           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 100)
   0.14%  │  0x00007fd447197354:   mov    0x18(%rsi),%eax
   9.41%  │  0x00007fd447197357:   shl    $0x3,%rax                    ;*getfield CACHED_WRAPPER {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@29 (line 107)
   0.48%  │  0x00007fd44719735b:   mov    0x10(%rsp),%rbp
   1.74%  │  0x00007fd447197360:   add    $0x18,%rsp
   0.14%  │  0x00007fd447197364:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fd44719736b:   ja     0x00007fd4471973b6
   9.30%  │  0x00007fd447197371:   ret                                 ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@34 (line 110)
          ↘  0x00007fd447197372:   mov    $0x14,%r11
             0x00007fd447197379:   mov    $0xffffffed,%r10d
             0x00007fd44719737f:   mov    %r10d,0x484(%r15)            ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 100)
             0x00007fd447197386:   mov    %r11,0x490(%r15)
             0x00007fd44719738d:   call   0x00007fd446aff17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@0 (line 100)
....................................................................................................
  58.70%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 1075 

              0x00007fd44719cd90:   mov    0x18(%rsp),%rsi
              0x00007fd44719cd95:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fd44719cda0:   cmpb   $0x0,0x94(%rsi)
              0x00007fd44719cda7:   jne    0x00007fd44719ce3a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 196)
              0x00007fd44719cdad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fd44719cdb6:   jmp    0x00007fd44719cdcf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@13 (line 194)
          │   0x00007fd44719cdbb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 196)
   9.54%  │↗  0x00007fd44719cdc0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 196)
   0.39%  ││  0x00007fd44719cdc7:   test   %eax,(%r11)                  ;   {poll}
   1.75%  ││  0x00007fd44719cdca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@13 (line 194)
   0.09%  ↘│  0x00007fd44719cdcf:   mov    0x8(%rsp),%r10
   9.46%   │  0x00007fd44719cdd4:   mov    %r10,%rsi
   0.43%   │  0x00007fd44719cdd7:   call   0x00007fd446af9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual branch_escape_obj {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   1.04%   │  0x00007fd44719cddc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   1.88%   │  0x00007fd44719cde4:   mov    0x20(%rsp),%r10
   9.48%   │  0x00007fd44719cde9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@26 (line 195)
   0.45%   │  0x00007fd44719cdec:   mov    0x18(%rsp),%rsi
   1.75%   │  0x00007fd44719cdf1:   cmpb   $0x0,0x94(%rsi)
   0.27%   ╰  0x00007fd44719cdf8:   je     0x00007fd44719cdc0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 196)
              0x00007fd44719cdfa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@36 (line 197)
              0x00007fd44719cdff:   nop
              0x00007fd44719ce00:   call   0x00007fd4606d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fd44719ce05:   nop
              0x00007fd44719ce06:   mov    0x10(%rsp),%rdx
              0x00007fd44719ce0b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@40 (line 197)
              0x00007fd44719ce0f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  36.52%  <total for region 2>

....[Hottest Regions]...............................................................................
  58.70%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 1053 
  36.52%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 1075 
   1.19%                kernel  [unknown] 
   0.55%                kernel  [unknown] 
   0.31%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.64%  <...other 331 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  58.70%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 1053 
  36.52%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 1075 
   4.08%                kernel  [unknown] 
   0.11%                        <unknown> 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  xmlStream::write_text 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libjvm.so  defaultStream::has_log_file 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  RelocIterator::initialize 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  _IO_setb 
   0.02%             libc.so.6  syscall 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.27%  <...other 106 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.22%        jvmci, level 4
   4.08%                kernel
   0.32%             libjvm.so
   0.20%             libc.so.6
   0.11%                      
   0.03%        hsdis-amd64.so
   0.03%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%            libjava.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 50.00% complete, ETA 00:04:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.175 ns/op
# Warmup Iteration   2: 6.051 ns/op
# Warmup Iteration   3: 6.116 ns/op
# Warmup Iteration   4: 5.985 ns/op
# Warmup Iteration   5: 6.003 ns/op
Iteration   1: 5.998 ns/op
Iteration   2: 5.990 ns/op
Iteration   3: 5.979 ns/op
Iteration   4: 5.998 ns/op
Iteration   5: 6.092 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape":
  6.011 ±(99.9%) 0.176 ns/op [Average]
  (min, avg, max) = (5.979, 6.011, 6.092), stdev = 0.046
  CI (99.9%): [5.835, 6.187] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape:asm":
PrintAssembly processed: 219426 total address lines.
Perf output processed (skipped 78.930 seconds):
 Column 1: cycles (51352 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 1065 

                # {method} {0x00007f22a447af78} &apos;no_escape&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f2333199f00:   mov    0x8(%rsi),%r10d
                0x00007f2333199f04:   movabs $0x7f22af000000,%r12
                0x00007f2333199f0e:   add    %r12,%r10
                0x00007f2333199f11:   xor    %r12,%r12
                0x00007f2333199f14:   cmp    %r10,%rax
                0x00007f2333199f17:   jne    0x00007f2332af9080           ;   {runtime_call ic_miss_stub}
                0x00007f2333199f1d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   1.46%        0x00007f2333199f20:   mov    %eax,-0x14000(%rsp)
  12.14%        0x00007f2333199f27:   sub    $0x18,%rsp
   1.34%        0x00007f2333199f2b:   nop
   0.11%        0x00007f2333199f2c:   cmpl   $0x1,0x20(%r15)
   6.27%  ╭     0x00007f2333199f34:   jne    0x00007f2333199f5b
   5.82%  │ ↗   0x00007f2333199f3a:   mov    0xc(%rsi),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@5 (line 76)
   1.41%  │ │   0x00007f2333199f3d:   mov    %eax,%r10d
   0.10%  │ │   0x00007f2333199f40:   shl    %r10d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$LightWrapper::&lt;init&gt;@12 (line 153)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@8 (line 76)
   6.19%  │ │   0x00007f2333199f43:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@20 (line 77)
   5.61%  │ │   0x00007f2333199f46:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@21 (line 77)
   1.29%  │ │   0x00007f2333199f49:   add    $0x18,%rsp
   0.07%  │ │↗  0x00007f2333199f4d:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f2333199f54:   ja     0x00007f2333199f68
   6.50%  ││││  0x00007f2333199f5a:   ret    
          ↘│││  0x00007f2333199f5b:   mov    %rbp,0x10(%rsp)
           │││  0x00007f2333199f60:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f2333199f65:   jmp    0x00007f2333199f3a
           │ │  0x00007f2333199f67:   hlt    
           ↘ ╰  0x00007f2333199f68:   lea    -0x22(%rip),%rcx        # 0x00007f2333199f4d
                0x00007f2333199f6f:   mov    %rcx,0x468(%r15)
                0x00007f2333199f76:   jmp    0x00007f2332b00000           ;   {runtime_call SafepointBlob}
                0x00007f2333199f7b:   hlt    
                0x00007f2333199f7c:   nopl   0x0(%rax)
              [Exception Handler]
....................................................................................................
  48.30%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 6, compile id 1090 

              0x00007f23331a0110:   mov    0x18(%rsp),%rsi
              0x00007f23331a0115:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f23331a0120:   cmpb   $0x0,0x94(%rsi)
              0x00007f23331a0127:   jne    0x00007f23331a01ba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 196)
              0x00007f23331a012d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f23331a0136:   jmp    0x00007f23331a014f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@13 (line 194)
          │   0x00007f23331a013b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 196)
   6.23%  │↗  0x00007f23331a0140:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 196)
   5.90%  ││  0x00007f23331a0147:   test   %eax,(%r11)                  ;   {poll}
   1.39%  ││  0x00007f23331a014a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@13 (line 194)
   0.10%  ↘│  0x00007f23331a014f:   mov    0x8(%rsp),%r10
   6.47%   │  0x00007f23331a0154:   mov    %r10,%rsi
   5.91%   │  0x00007f23331a0157:   call   0x00007f2332af9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual no_escape {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   6.16%   │  0x00007f23331a015c:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   1.35%   │  0x00007f23331a0164:   mov    0x20(%rsp),%r10
   6.41%   │  0x00007f23331a0169:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@26 (line 195)
   5.95%   │  0x00007f23331a016c:   mov    0x18(%rsp),%rsi
   1.31%   │  0x00007f23331a0171:   cmpb   $0x0,0x94(%rsi)
   0.17%   ╰  0x00007f23331a0178:   je     0x00007f23331a0140           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 196)
              0x00007f23331a017a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@36 (line 197)
              0x00007f23331a017f:   nop
              0x00007f23331a0180:   call   0x00007f23494d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f23331a0185:   nop
              0x00007f23331a0186:   mov    0x10(%rsp),%rdx
              0x00007f23331a018b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@40 (line 197)
              0x00007f23331a018f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  47.33%  <total for region 2>

....[Hottest Regions]...............................................................................
  48.30%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 1065 
  47.33%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 6, compile id 1090 
   0.63%                kernel  [unknown] 
   0.52%                kernel  [unknown] 
   0.32%                kernel  [unknown] 
   0.19%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.63%  <...other 329 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  48.30%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 1065 
  47.33%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 6, compile id 1090 
   3.72%                kernel  [unknown] 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  syscall 
   0.01%             libjvm.so  fileStream::write 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  _IO_old_init 
   0.01%             libc.so.6  __GI___pthread_enable_asynccancel 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%             libc.so.6  _IO_fflush 
   0.39%  <...other 135 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.64%        jvmci, level 4
   3.72%                kernel
   0.24%             libjvm.so
   0.21%             libc.so.6
   0.11%   libjvmcicompiler.so
   0.03%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.01%                [vdso]
   0.00%           c1, level 3
   0.00%         perf-5533.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 75.00% complete, ETA 00:02:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.323 ns/op
# Warmup Iteration   2: 7.209 ns/op
# Warmup Iteration   3: 7.278 ns/op
# Warmup Iteration   4: 7.236 ns/op
# Warmup Iteration   5: 7.159 ns/op
Iteration   1: 7.134 ns/op
Iteration   2: 7.186 ns/op
Iteration   3: 7.214 ns/op
Iteration   4: 7.215 ns/op
Iteration   5: 7.179 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj":
  7.186 ±(99.9%) 0.127 ns/op [Average]
  (min, avg, max) = (7.134, 7.186, 7.215), stdev = 0.033
  CI (99.9%): [7.058, 7.313] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj:asm":
PrintAssembly processed: 218400 total address lines.
Perf output processed (skipped 78.903 seconds):
 Column 1: cycles (51144 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 1043 

             # {method} {0x00007fcc9b483e20} &apos;no_escape_array_obj&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007fcd23197d00:   mov    0x8(%rsi),%r10d
             0x00007fcd23197d04:   movabs $0x7fcc9f000000,%r12
             0x00007fcd23197d0e:   add    %r12,%r10
             0x00007fcd23197d11:   xor    %r12,%r12
             0x00007fcd23197d14:   cmp    %r10,%rax
             0x00007fcd23197d17:   jne    0x00007fcd22af9080           ;   {runtime_call ic_miss_stub}
             0x00007fcd23197d1d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   5.53%     0x00007fcd23197d20:   mov    %eax,-0x14000(%rsp)
   5.80%     0x00007fcd23197d27:   sub    $0x18,%rsp
   2.78%     0x00007fcd23197d2b:   nop
   2.81%     0x00007fcd23197d2c:   cmpl   $0x1,0x20(%r15)
   2.93%     0x00007fcd23197d34:   jne    0x00007fcd23197d97
   3.01%     0x00007fcd23197d3a:   mov    %rbp,0x10(%rsp)
   2.74%     0x00007fcd23197d3f:   mov    0x10(%rsi),%eax              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@9 (line 88)
   2.75%     0x00007fcd23197d42:   test   %eax,%eax
          ╭  0x00007fcd23197d44:   jl     0x00007fcd23197d74           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 88)
   3.16%  │  0x00007fcd23197d4a:   mov    0xc(%rsi),%r10d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@5 (line 88)
   2.90%  │  0x00007fcd23197d4e:   mov    %r10d,%r11d
   2.81%  │  0x00007fcd23197d51:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@12 (line 136)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 88)
   2.90%  │  0x00007fcd23197d54:   add    %r10d,%r11d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@24 (line 89)
   3.02%  │  0x00007fcd23197d57:   add    %eax,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@30 (line 89)
   2.93%  │  0x00007fcd23197d5a:   mov    %r11d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@31 (line 89)
   2.66%  │  0x00007fcd23197d5d:   mov    0x10(%rsp),%rbp
   2.83%  │  0x00007fcd23197d62:   add    $0x18,%rsp
   2.96%  │  0x00007fcd23197d66:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fcd23197d6d:   ja     0x00007fcd23197da4
   2.85%  │  0x00007fcd23197d73:   ret    
          ↘  0x00007fcd23197d74:   movl   $0xffffff8f,0x484(%r15)      ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 88)
             0x00007fcd23197d7f:   movq   $0x0,0x490(%r15)
             0x00007fcd23197d8a:   call   0x00007fcd22aff17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@0 (line 88)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007fcd23197d8f:   nopl   0x0(%rax,%rax,1)
             0x00007fcd23197d97:   mov    %rbp,0x10(%rsp)
....................................................................................................
  57.36%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 1067 

              0x00007fcd2319e490:   mov    0x18(%rsp),%rsi
              0x00007fcd2319e495:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fcd2319e4a0:   cmpb   $0x0,0x94(%rsi)
              0x00007fcd2319e4a7:   jne    0x00007fcd2319e53a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 196)
              0x00007fcd2319e4ad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fcd2319e4b6:   jmp    0x00007fcd2319e4cf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@13 (line 194)
          │   0x00007fcd2319e4bb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 196)
   2.82%  │↗  0x00007fcd2319e4c0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 196)
   2.99%  ││  0x00007fcd2319e4c7:   test   %eax,(%r11)                  ;   {poll}
   2.79%  ││  0x00007fcd2319e4ca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@13 (line 194)
   2.85%  ↘│  0x00007fcd2319e4cf:   mov    0x8(%rsp),%r10
   2.82%   │  0x00007fcd2319e4d4:   mov    %r10,%rsi
   3.01%   │  0x00007fcd2319e4d7:   call   0x00007fcd22af9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual no_escape_array_obj {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   3.78%   │  0x00007fcd2319e4dc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   2.76%   │  0x00007fcd2319e4e4:   mov    0x20(%rsp),%r10
   5.57%   │  0x00007fcd2319e4e9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@26 (line 195)
   2.91%   │  0x00007fcd2319e4ec:   mov    0x18(%rsp),%rsi
   2.86%   │  0x00007fcd2319e4f1:   cmpb   $0x0,0x94(%rsi)
   3.34%   ╰  0x00007fcd2319e4f8:   je     0x00007fcd2319e4c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 196)
              0x00007fcd2319e4fa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@36 (line 197)
              0x00007fcd2319e4ff:   nop
              0x00007fcd2319e500:   call   0x00007fcd3b4d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fcd2319e505:   nop
              0x00007fcd2319e506:   mov    0x10(%rsp),%rdx
              0x00007fcd2319e50b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@40 (line 197)
              0x00007fcd2319e50f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  38.51%  <total for region 2>

....[Hottest Regions]...............................................................................
  57.36%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 1043 
  38.51%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 1067 
   0.62%                kernel  [unknown] 
   0.29%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%             libjvm.so  fileStream::write 
   1.73%  <...other 313 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  57.36%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 1043 
  38.51%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 1067 
   3.42%                kernel  [unknown] 
   0.14%                        <unknown> 
   0.05%             libjvm.so  fileStream::write 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libc.so.6  __strchr_avx2 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  xmlStream::write 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libjvm.so  defaultStream::hold 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libjvm.so  outputStream::print 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%        hsdis-amd64.so  print_displacement 
   0.01%             libjvm.so  Mutex::lock 
   0.01%             libjvm.so  os::current_thread_id 
   0.26%  <...other 91 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.87%        jvmci, level 4
   3.42%                kernel
   0.30%             libjvm.so
   0.18%             libc.so.6
   0.14%                      
   0.04%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.00%      Unknown, level 0
   0.00%         perf-5606.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:09:02

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
ScalarReplacementBenchmark.arg_escape_obj                     false     128        3  avgt    5  6.723 ± 0.590  ns/op
ScalarReplacementBenchmark.arg_escape_obj:asm                 false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.branch_escape_obj                  false     128        3  avgt    5  6.939 ± 0.096  ns/op
ScalarReplacementBenchmark.branch_escape_obj:asm              false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.no_escape                          false     128        3  avgt    5  6.011 ± 0.176  ns/op
ScalarReplacementBenchmark.no_escape:asm                      false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.no_escape_array_obj                false     128        3  avgt    5  7.186 ± 0.127  ns/op
ScalarReplacementBenchmark.no_escape_array_obj:asm            false     128        3  avgt         NaN            ---
