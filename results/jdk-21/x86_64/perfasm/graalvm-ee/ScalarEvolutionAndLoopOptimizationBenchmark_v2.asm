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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline
# Parameters: (size = 16384)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.634 ns/op
# Warmup Iteration   2: 9.564 ns/op
# Warmup Iteration   3: 9.515 ns/op
# Warmup Iteration   4: 9.366 ns/op
# Warmup Iteration   5: 9.424 ns/op
Iteration   1: 9.342 ns/op
Iteration   2: 9.361 ns/op
Iteration   3: 9.273 ns/op
Iteration   4: 9.447 ns/op
Iteration   5: 9.440 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline":
  9.372 ±(99.9%) 0.279 ns/op [Average]
  (min, avg, max) = (9.273, 9.372, 9.447), stdev = 0.072
  CI (99.9%): [9.093, 9.651] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline:asm":
PrintAssembly processed: 228574 total address lines.
Perf output processed (skipped 85.289 seconds):
 Column 1: cycles (51469 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 1085 

                # {method} {0x00007f790747aa00} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarEvolutionAndLoopOptimizationBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f798ed9da80:   mov    0x8(%rsi),%r10d
                0x00007f798ed9da84:   movabs $0x7f790b000000,%r12
                0x00007f798ed9da8e:   add    %r12,%r10
                0x00007f798ed9da91:   xor    %r12,%r12
                0x00007f798ed9da94:   cmp    %r10,%rax
                0x00007f798ed9da97:   jne    0x00007f798e6f9080           ;   {runtime_call ic_miss_stub}
                0x00007f798ed9da9d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.34%        0x00007f798ed9daa0:   mov    %eax,-0x14000(%rsp)
  11.37%        0x00007f798ed9daa7:   sub    $0x18,%rsp
   0.26%        0x00007f798ed9daab:   nop
   0.07%        0x00007f798ed9daac:   cmpl   $0x1,0x20(%r15)
   0.69%  ╭     0x00007f798ed9dab4:   jne    0x00007f798ed9daee
  10.77%  │ ↗   0x00007f798ed9daba:   mov    0xc(%rsi),%eax               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@1 (line 71)
   0.26%  │ │   0x00007f798ed9dabd:   mov    %eax,%r10d
   0.05%  │ │   0x00007f798ed9dac0:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@9 (line 71)
   0.71%  │ │   0x00007f798ed9dac3:   imul   %eax,%r10d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@10 (line 71)
  11.22%  │ │   0x00007f798ed9dac7:   mov    %r10d,%eax
   0.19%  │ │   0x00007f798ed9daca:   shr    $0x1f,%eax
   0.11%  │ │   0x00007f798ed9dacd:   add    %r10d,%eax
   0.65%  │ │   0x00007f798ed9dad0:   sar    %eax                         ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@12 (line 71)
  11.09%  │ │   0x00007f798ed9dad2:   add    $0x18,%rsp
   0.20%  │ │   0x00007f798ed9dad6:   data16 nopw 0x0(%rax,%rax,1)
   0.05%  │ │↗  0x00007f798ed9dae0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f798ed9dae7:   ja     0x00007f798ed9dafb
   0.56%  ││││  0x00007f798ed9daed:   ret    
          ↘│││  0x00007f798ed9daee:   mov    %rbp,0x10(%rsp)
           │││  0x00007f798ed9daf3:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f798ed9daf8:   jmp    0x00007f798ed9daba
           │ │  0x00007f798ed9dafa:   hlt    
           ↘ ╰  0x00007f798ed9dafb:   lea    -0x22(%rip),%rcx        # 0x00007f798ed9dae0
                0x00007f798ed9db02:   mov    %rcx,0x468(%r15)
                0x00007f798ed9db09:   jmp    0x00007f798e700000           ;   {runtime_call SafepointBlob}
                0x00007f798ed9db0e:   hlt    
              [Exception Handler]
                0x00007f798ed9db0f:   call   0x00007f798e90b080           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  48.59%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1114 

              0x00007f798eda4673:   mov    0x10(%rsp),%rdx
              0x00007f798eda4678:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@10 (line 188)
              0x00007f798eda467c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f798eda4685:   jmp    0x00007f798eda46af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 190)
          │   0x00007f798eda468a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f798eda4695:   data16 data16 xchg %ax,%ax
          │   0x00007f798eda4699:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
   0.71%  │↗  0x00007f798eda46a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
  10.48%  ││  0x00007f798eda46a7:   test   %eax,(%r11)                  ;   {poll}
   0.26%  ││  0x00007f798eda46aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 190)
   0.05%  ↘│  0x00007f798eda46af:   mov    0x8(%rsp),%r10
   0.65%   │  0x00007f798eda46b4:   mov    %r10,%rsi
  10.57%   │  0x00007f798eda46b7:   call   0x00007f798e6f9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  11.60%   │  0x00007f798eda46bc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
   0.25%   │  0x00007f798eda46c4:   mov    0x20(%rsp),%r10
   0.62%   │  0x00007f798eda46c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@26 (line 191)
  10.63%   │  0x00007f798eda46cc:   mov    0x18(%rsp),%rsi
   0.25%   │  0x00007f798eda46d1:   cmpb   $0x0,0x94(%rsi)
   0.50%   ╰  0x00007f798eda46d8:   je     0x00007f798eda46a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
              0x00007f798eda46da:   mov    %r10,0x20(%rsp)
              0x00007f798eda46df:   nop
              0x00007f798eda46e0:   call   0x00007f79a8cd32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f798eda46e5:   nop
              0x00007f798eda46e6:   mov    0x10(%rsp),%rdx
              0x00007f798eda46eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 193)
              0x00007f798eda46ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@46 (line 194)
....................................................................................................
  46.57%  <total for region 2>

....[Hottest Regions]...............................................................................
  48.59%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 1085 
  46.57%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1114 
   0.80%                kernel  [unknown] 
   0.33%                kernel  [unknown] 
   0.21%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%             libjvm.so  defaultStream::hold 
   0.05%             libjvm.so  fileStream::write 
   2.22%  <...other 403 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  48.59%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 1085 
  46.57%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1114 
   3.71%                kernel  [unknown] 
   0.21%                        <unknown> 
   0.05%             libjvm.so  defaultStream::hold 
   0.05%             libjvm.so  fileStream::write 
   0.05%             libc.so.6  __vfprintf_internal 
   0.05%             libc.so.6  __strchr_avx2 
   0.04%             libc.so.6  _IO_fwrite 
   0.04%             libjvm.so  xmlTextStream::flush 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libc.so.6  __GI___libc_write 
   0.02%             libjvm.so  RelocIterator::initialize 
   0.02%             libc.so.6  __vsnprintf_internal 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libc.so.6  _IO_setb 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5 
   0.41%  <...other 136 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.16%        jvmci, level 4
   3.71%                kernel
   0.49%             libjvm.so
   0.32%             libc.so.6
   0.21%                      
   0.04%        hsdis-amd64.so
   0.03%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.00%      Unknown, level 0
   0.00%           c1, level 3
   0.00%        perf-15432.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop
# Parameters: (size = 16384)

# Run progress: 50.00% complete, ETA 00:02:24
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3198.122 ns/op
# Warmup Iteration   2: 3143.096 ns/op
# Warmup Iteration   3: 3121.604 ns/op
# Warmup Iteration   4: 3110.270 ns/op
# Warmup Iteration   5: 3100.200 ns/op
Iteration   1: 3116.012 ns/op
Iteration   2: 3893.927 ns/op
Iteration   3: 5690.653 ns/op
Iteration   4: 5745.087 ns/op
Iteration   5: 4450.559 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop":
  4579.247 ±(99.9%) 4399.555 ns/op [Average]
  (min, avg, max) = (3116.012, 4579.247, 5745.087), stdev = 1142.550
  CI (99.9%): [179.693, 8978.802] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:asm":
PrintAssembly processed: 218765 total address lines.
Perf output processed (skipped 84.913 seconds):
 Column 1: cycles (51377 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 1052 

                     # {method} {0x00007f631847d870} &apos;scev_loop&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarEvolutionAndLoopOptimizationBenchmark&apos;
                     #           [sp+0x40]  (sp of caller)
                     0x00007f63a6d9db40:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                     0x00007f63a6d9db44:   movabs $0x7f6323000000,%r12
                     0x00007f63a6d9db4e:   add    %r12,%r10
                     0x00007f63a6d9db51:   xor    %r12,%r12
                     0x00007f63a6d9db54:   cmp    %r10,%rax
                     0x00007f63a6d9db57:   jne    0x00007f63a66f9080           ;   {runtime_call ic_miss_stub}
                     0x00007f63a6d9db5d:   data16 xchg %ax,%ax
                   [Verified Entry Point]
   0.01%             0x00007f63a6d9db60:   mov    %eax,-0x14000(%rsp)
   0.01%             0x00007f63a6d9db67:   sub    $0x38,%rsp
   0.01%             0x00007f63a6d9db6b:   nop
                     0x00007f63a6d9db6c:   cmpl   $0x1,0x20(%r15)
   0.01%  ╭          0x00007f63a6d9db74:   jne    0x00007f63a6d9dc8f
   0.01%  │          0x00007f63a6d9db7a:   mov    0xc(%rsi),%eax               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@6 (line 62)
   0.01%  │          0x00007f63a6d9db7d:   test   %eax,%eax
          │          0x00007f63a6d9db7f:   mov    $0x0,%r10d
   0.02%  │          0x00007f63a6d9db85:   cmovl  %r10d,%eax
   0.00%  │          0x00007f63a6d9db89:   mov    %eax,%eax
   0.01%  │          0x00007f63a6d9db8b:   test   %rax,%rax
          │╭         0x00007f63a6d9db8e:   je     0x00007f63a6d9dc87
   0.01%  ││         0x00007f63a6d9db94:   vpxor  %xmm0,%xmm0,%xmm0
   0.01%  ││         0x00007f63a6d9db98:   nopl   0x0(%rax,%rax,1)
   0.00%  ││         0x00007f63a6d9dba0:   cmp    $0x8,%rax
          ││╭        0x00007f63a6d9dba4:   jb     0x00007f63a6d9dc71
   0.01%  │││        0x00007f63a6d9dbaa:   lea    -0x8(%rax),%r10
   0.01%  │││        0x00007f63a6d9dbae:   vmovdqa -0xb6(%rip),%ymm1        # 0x00007f63a6d9db00
          │││                                                                  ;   {section_word}
   0.01%  │││        0x00007f63a6d9dbb6:   vmovdqa -0x9e(%rip),%ymm2        # 0x00007f63a6d9db20
          │││                                                                  ;   {section_word}
   0.00%  │││        0x00007f63a6d9dbbe:   mov    $0x0,%r11
   0.00%  │││        0x00007f63a6d9dbc5:   vmovdqu %ymm2,(%rsp)
   0.01%  │││        0x00007f63a6d9dbca:   vmovdqu %ymm0,%ymm2
   0.02%  │││        0x00007f63a6d9dbce:   vmovdqu (%rsp),%ymm0
   0.01%  │││╭       0x00007f63a6d9dbd3:   jmp    0x00007f63a6d9dbe4
          ││││       0x00007f63a6d9dbd8:   nopl   0x0(%rax,%rax,1)
  14.75%  ││││↗      0x00007f63a6d9dbe0:   vmovdqu %ymm3,%ymm0
  18.02%  │││↘│      0x00007f63a6d9dbe4:   vpaddd %ymm1,%ymm0,%ymm3
  27.32%  │││ │      0x00007f63a6d9dbe8:   vpaddd %ymm0,%ymm2,%ymm2
  20.20%  │││ │      0x00007f63a6d9dbec:   lea    0x8(%r11),%r11
  12.76%  │││ │      0x00007f63a6d9dbf0:   cmp    %r10,%r11
   0.00%  │││ ╰      0x00007f63a6d9dbf3:   jle    0x00007f63a6d9dbe0
   0.17%  │││        0x00007f63a6d9dbf5:   vmovd  %xmm3,%r10d                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@4 (line 62)
   0.33%  │││    ↗   0x00007f63a6d9dbfa:   vextracti128 $0x1,%ymm2,%xmm0
   0.03%  │││    │   0x00007f63a6d9dc00:   vpaddd %xmm0,%xmm2,%xmm0
   0.07%  │││    │   0x00007f63a6d9dc04:   vpshufd $0xe,%xmm0,%xmm1
   0.00%  │││    │   0x00007f63a6d9dc09:   vpaddd %xmm1,%xmm0,%xmm0
   0.07%  │││    │   0x00007f63a6d9dc0d:   vmovd  %xmm0,%r8d
   0.01%  │││    │   0x00007f63a6d9dc12:   vpextrd $0x1,%xmm0,%r9d
   0.00%  │││    │   0x00007f63a6d9dc18:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 63)
   0.02%  │││    │   0x00007f63a6d9dc1b:   dec    %rax
   0.00%  │││    │   0x00007f63a6d9dc1e:   xchg   %ax,%ax
          │││  ╭ │   0x00007f63a6d9dc20:   jmp    0x00007f63a6d9dc4f
          │││  │ │   0x00007f63a6d9dc25:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││  │ │   0x00007f63a6d9dc30:   data16 data16 xchg %ax,%ax
          │││  │ │   0x00007f63a6d9dc34:   nopl   0x0(%rax,%rax,1)
          │││  │ │   0x00007f63a6d9dc3c:   data16 data16 xchg %ax,%ax          ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││  │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@4 (line 62)
          │││  │↗│   0x00007f63a6d9dc40:   mov    %r10d,%r9d
          │││  │││   0x00007f63a6d9dc43:   inc    %r9d
          │││  │││   0x00007f63a6d9dc46:   add    %r10d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││  │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 63)
          │││  │││   0x00007f63a6d9dc49:   inc    %r11
          │││  │││   0x00007f63a6d9dc4c:   mov    %r9d,%r10d
   0.00%  │││  ↘││   0x00007f63a6d9dc4f:   cmp    %rax,%r11
          │││   ╰│   0x00007f63a6d9dc52:   jle    0x00007f63a6d9dc40           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@4 (line 62)
   0.03%  │││    │↗  0x00007f63a6d9dc54:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@23 (line 65)
          │││    ││  0x00007f63a6d9dc57:   add    $0x38,%rsp
          │││    ││  0x00007f63a6d9dc5b:   nopl   0x0(%rax,%rax,1)
          │││    ││  0x00007f63a6d9dc60:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││    ││  0x00007f63a6d9dc67:   ja     0x00007f63a6d9dc9f
   0.05%  │││    ││  0x00007f63a6d9dc6d:   vzeroupper 
   0.02%  │││    ││  0x00007f63a6d9dc70:   ret    
          ││↘    ││  0x00007f63a6d9dc71:   mov    $0x0,%r10d
          ││     ││  0x00007f63a6d9dc77:   mov    $0x0,%r11
          ││     ││  0x00007f63a6d9dc7e:   vmovdqu %ymm0,%ymm2
          ││     ╰│  0x00007f63a6d9dc82:   jmp    0x00007f63a6d9dbfa
          │↘      │  0x00007f63a6d9dc87:   mov    $0x0,%r8d
          │       ╰  0x00007f63a6d9dc8d:   jmp    0x00007f63a6d9dc54           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@4 (line 62)
          ↘          0x00007f63a6d9dc8f:   mov    %rbp,0x30(%rsp)
                     0x00007f63a6d9dc94:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                     0x00007f63a6d9dc99:   jmp    0x00007f63a6d9db7a
....................................................................................................
  94.08%  <total for region 1>

....[Hottest Regions]...............................................................................
  94.08%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 1052 
   0.79%                kernel  [unknown] 
   0.32%                kernel  [unknown] 
   0.23%                kernel  [unknown] 
   0.21%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 5, compile id 1073 
   0.17%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%        hsdis-amd64.so  print_insn 
   0.06%                kernel  [unknown] 
   2.83%  <...other 398 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.08%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 1052 
   4.52%                kernel  [unknown] 
   0.21%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 5, compile id 1073 
   0.11%                        <unknown> 
   0.07%             libc.so.6  __vfprintf_internal 
   0.06%        hsdis-amd64.so  print_insn 
   0.06%             libjvm.so  defaultStream::hold 
   0.06%             libjvm.so  fileStream::write 
   0.05%             libjvm.so  xmlTextStream::flush 
   0.05%             libc.so.6  __strchr_avx2 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libc.so.6  _IO_fwrite 
   0.03%             libc.so.6  _IO_setb 
   0.03%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libjvm.so  RelocIterator::initialize 
   0.02%             libc.so.6  syscall 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  __vsnprintf_internal 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libc.so.6  __GI___libc_write 
   0.49%  <...other 142 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.29%        jvmci, level 4
   4.52%                kernel
   0.52%             libjvm.so
   0.40%             libc.so.6
   0.11%                      
   0.10%        hsdis-amd64.so
   0.03%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.00%           c1, level 3
   0.00%        perf-15559.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:04:46

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

Benchmark                                                  (size)  Mode  Cnt     Score      Error  Units
ScalarEvolutionAndLoopOptimizationBenchmark.baseline        16384  avgt    5     9.372 ±    0.279  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.baseline:asm    16384  avgt            NaN               ---
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop       16384  avgt    5  4579.247 ± 4399.555  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:asm   16384  avgt            NaN               ---
