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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline
# Parameters: (size = 16384)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 11.750 ns/op
# Warmup Iteration   2: 11.333 ns/op
# Warmup Iteration   3: 10.125 ns/op
# Warmup Iteration   4: 10.265 ns/op
# Warmup Iteration   5: 9.959 ns/op
Iteration   1: 9.982 ns/op
Iteration   2: 9.537 ns/op
Iteration   3: 9.400 ns/op
Iteration   4: 9.457 ns/op
Iteration   5: 9.436 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline":
  9.563 ±(99.9%) 0.924 ns/op [Average]
  (min, avg, max) = (9.400, 9.563, 9.982), stdev = 0.240
  CI (99.9%): [8.639, 10.487] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline:asm":
PrintAssembly processed: 217616 total address lines.
Perf output processed (skipped 88.831 seconds):
 Column 1: cycles (51138 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 1086 

                # {method} {0x00007fd6ab47aa00} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarEvolutionAndLoopOptimizationBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fd733193000:   mov    0x8(%rsi),%r10d
                0x00007fd733193004:   movabs $0x7fd6af000000,%r12
                0x00007fd73319300e:   add    %r12,%r10
                0x00007fd733193011:   xor    %r12,%r12
                0x00007fd733193014:   cmp    %r10,%rax
                0x00007fd733193017:   jne    0x00007fd732af9080           ;   {runtime_call ic_miss_stub}
                0x00007fd73319301d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.22%        0x00007fd733193020:   mov    %eax,-0x14000(%rsp)
  11.39%        0x00007fd733193027:   sub    $0x18,%rsp
   0.21%        0x00007fd73319302b:   nop
   0.03%        0x00007fd73319302c:   cmpl   $0x1,0x20(%r15)
   1.07%  ╭     0x00007fd733193034:   jne    0x00007fd73319306e
  10.13%  │ ↗   0x00007fd73319303a:   mov    0xc(%rsi),%eax               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@1 (line 71)
   0.22%  │ │   0x00007fd73319303d:   mov    %eax,%r10d
   0.03%  │ │   0x00007fd733193040:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@9 (line 71)
   1.02%  │ │   0x00007fd733193043:   imul   %eax,%r10d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@10 (line 71)
  10.87%  │ │   0x00007fd733193047:   mov    %r10d,%eax
   0.21%  │ │   0x00007fd73319304a:   shr    $0x1f,%eax
   0.08%  │ │   0x00007fd73319304d:   add    %r10d,%eax
   1.00%  │ │   0x00007fd733193050:   sar    %eax                         ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@12 (line 71)
  10.47%  │ │   0x00007fd733193052:   add    $0x18,%rsp
   0.15%  │ │   0x00007fd733193056:   data16 nopw 0x0(%rax,%rax,1)
   0.03%  │ │↗  0x00007fd733193060:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fd733193067:   ja     0x00007fd73319307b
   0.85%  ││││  0x00007fd73319306d:   ret    
          ↘│││  0x00007fd73319306e:   mov    %rbp,0x10(%rsp)
           │││  0x00007fd733193073:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007fd733193078:   jmp    0x00007fd73319303a
           │ │  0x00007fd73319307a:   hlt    
           ↘ ╰  0x00007fd73319307b:   lea    -0x22(%rip),%rcx        # 0x00007fd733193060
                0x00007fd733193082:   mov    %rcx,0x468(%r15)
                0x00007fd733193089:   jmp    0x00007fd732b00000           ;   {runtime_call SafepointBlob}
                0x00007fd73319308e:   hlt    
              [Exception Handler]
                0x00007fd73319308f:   call   0x00007fd732d0b080           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  48.00%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1116 

              0x00007fd733197010:   mov    0x18(%rsp),%rsi
              0x00007fd733197015:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fd733197020:   cmpb   $0x0,0x94(%rsi)
              0x00007fd733197027:   jne    0x00007fd7331970ba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
              0x00007fd73319702d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fd733197036:   jmp    0x00007fd73319704f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 190)
          │   0x00007fd73319703b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
   1.00%  │↗  0x00007fd733197040:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
  10.35%  ││  0x00007fd733197047:   test   %eax,(%r11)                  ;   {poll}
   0.25%  ││  0x00007fd73319704a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 190)
   0.03%  ↘│  0x00007fd73319704f:   mov    0x8(%rsp),%r10
   1.01%   │  0x00007fd733197054:   mov    %r10,%rsi
  10.10%   │  0x00007fd733197057:   call   0x00007fd732af9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  11.94%   │  0x00007fd73319705c:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
   0.26%   │  0x00007fd733197064:   mov    0x20(%rsp),%r10
   0.87%   │  0x00007fd733197069:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@26 (line 191)
  10.33%   │  0x00007fd73319706c:   mov    0x18(%rsp),%rsi
   0.14%   │  0x00007fd733197071:   cmpb   $0x0,0x94(%rsi)
   0.57%   ╰  0x00007fd733197078:   je     0x00007fd733197040           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
              0x00007fd73319707a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 193)
              0x00007fd73319707f:   nop
              0x00007fd733197080:   call   0x00007fd74c0d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fd733197085:   nop
              0x00007fd733197086:   mov    0x10(%rsp),%rdx
              0x00007fd73319708b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 193)
              0x00007fd73319708f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  46.85%  <total for region 2>

....[Hottest Regions]...............................................................................
  48.00%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 1086 
  46.85%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1116 
   0.72%                kernel  [unknown] 
   0.31%                kernel  [unknown] 
   0.22%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.19%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%             libjvm.so  fileStream::write 
   2.28%  <...other 339 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  48.00%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 1086 
  46.85%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1116 
   4.30%                kernel  [unknown] 
   0.08%                        <unknown> 
   0.05%             libjvm.so  fileStream::write 
   0.05%             libjvm.so  defaultStream::hold 
   0.05%             libjvm.so  xmlTextStream::flush 
   0.04%        hsdis-amd64.so  print_insn 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libc.so.6  _IO_setb 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  _IO_fflush 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libc.so.6  _IO_old_init 
   0.34%  <...other 105 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.85%        jvmci, level 4
   4.30%                kernel
   0.39%             libjvm.so
   0.24%             libc.so.6
   0.08%                      
   0.08%        hsdis-amd64.so
   0.04%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.01%        perf-15920.map
   0.00%           c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop
# Parameters: (size = 16384)

# Run progress: 50.00% complete, ETA 00:02:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2452.079 ns/op
# Warmup Iteration   2: 2397.392 ns/op
# Warmup Iteration   3: 2433.136 ns/op
# Warmup Iteration   4: 2385.954 ns/op
# Warmup Iteration   5: 2383.350 ns/op
Iteration   1: 2476.745 ns/op
Iteration   2: 2594.434 ns/op
Iteration   3: 2435.671 ns/op
Iteration   4: 2386.066 ns/op
Iteration   5: 2400.974 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop":
  2458.778 ±(99.9%) 321.521 ns/op [Average]
  (min, avg, max) = (2386.066, 2458.778, 2594.434), stdev = 83.498
  CI (99.9%): [2137.257, 2780.299] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:asm":
PrintAssembly processed: 219051 total address lines.
Perf output processed (skipped 84.318 seconds):
 Column 1: cycles (51340 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 1080 

                        #           [sp+0x20]  (sp of caller)
                        0x00007fe8bb199600:   mov    0x8(%rsi),%r10d
                        0x00007fe8bb199604:   movabs $0x7fe837000000,%r12
                        0x00007fe8bb19960e:   add    %r12,%r10
                        0x00007fe8bb199611:   xor    %r12,%r12
                        0x00007fe8bb199614:   cmp    %r10,%rax
                        0x00007fe8bb199617:   jne    0x00007fe8baaf9080           ;   {runtime_call ic_miss_stub}
                        0x00007fe8bb19961d:   data16 xchg %ax,%ax
                      [Verified Entry Point]
                        0x00007fe8bb199620:   mov    %eax,-0x14000(%rsp)
   0.04%                0x00007fe8bb199627:   sub    $0x18,%rsp
   0.00%                0x00007fe8bb19962b:   nop
                        0x00007fe8bb19962c:   cmpl   $0x1,0x20(%r15)
   0.05%  ╭             0x00007fe8bb199634:   jne    0x00007fe8bb199716
   0.00%  │         ↗   0x00007fe8bb19963a:   mov    0xc(%rsi),%eax               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@6 (line 62)
   0.01%  │         │   0x00007fe8bb19963d:   data16 xchg %ax,%ax
          │         │   0x00007fe8bb199640:   cmp    $0x1,%eax
          │╭        │   0x00007fe8bb199643:   jl     0x00007fe8bb19970e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││        │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 62)
   0.05%  ││        │   0x00007fe8bb199649:   cmp    $0x3,%eax
          ││        │   0x00007fe8bb19964c:   mov    $0x2,%r10d
   0.00%  ││        │   0x00007fe8bb199652:   cmovl  %eax,%r10d
   0.00%  ││        │   0x00007fe8bb199656:   mov    $0x0,%r8d
   0.05%  ││        │   0x00007fe8bb19965c:   mov    $0x1,%r11d
          ││╭       │   0x00007fe8bb199662:   jmp    0x00007fe8bb199686           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@4 (line 62)
          │││       │   0x00007fe8bb199667:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││       │   0x00007fe8bb199672:   data16 data16 xchg %ax,%ax
          │││       │   0x00007fe8bb199676:   data16 nopw 0x0(%rax,%rax,1)        ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 62)
   0.04%  │││↗      │   0x00007fe8bb199680:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 63)
          ││││      │   0x00007fe8bb199683:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 62)
          ││↘│      │   0x00007fe8bb199686:   cmp    %r11d,%r10d
          ││ ╰      │   0x00007fe8bb199689:   jg     0x00007fe8bb199680
   0.01%  ││        │   0x00007fe8bb19968b:   lea    -0x10(%rax),%r10d
   0.04%  ││        │   0x00007fe8bb19968f:   mov    %r8d,0x4(%rsp)
   0.01%  ││        │   0x00007fe8bb199694:   mov    %r11d,%r8d
          ││        │   0x00007fe8bb199697:   mov    0x4(%rsp),%r11d
   0.02%  ││        │   0x00007fe8bb19969c:   nopl   0x0(%rax)
   0.04%  ││  ╭     │   0x00007fe8bb1996a0:   jmp    0x00007fe8bb1996d2
          ││  │     │   0x00007fe8bb1996a5:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││  │     │   0x00007fe8bb1996b0:   data16 data16 xchg %ax,%ax
          ││  │     │   0x00007fe8bb1996b4:   nopl   0x0(%rax,%rax,1)
          ││  │     │   0x00007fe8bb1996bc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││  │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 62)
   0.87%  ││  │↗    │   0x00007fe8bb1996c0:   lea    0x10(%r8),%r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││  ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 62)
   1.25%  ││  ││    │   0x00007fe8bb1996c4:   shl    $0x4,%r8d
  43.98%  ││  ││    │   0x00007fe8bb1996c8:   add    %r8d,%r11d
   1.58%  ││  ││    │   0x00007fe8bb1996cb:   lea    0x78(%r11),%r11d
  44.51%  ││  ││    │   0x00007fe8bb1996cf:   mov    %r9d,%r8d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││  ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@4 (line 62)
   0.94%  ││  ↘│    │   0x00007fe8bb1996d2:   cmp    %r8d,%r10d
          ││   ╰    │   0x00007fe8bb1996d5:   jg     0x00007fe8bb1996c0
   0.03%  ││    ╭   │   0x00007fe8bb1996d7:   jmp    0x00007fe8bb1996f0
          ││    │   │   0x00007fe8bb1996dc:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││    │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 62)
   0.41%  ││    │↗  │   0x00007fe8bb1996e0:   mov    %r8d,%r10d
   0.01%  ││    ││  │   0x00007fe8bb1996e3:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││    ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 62)
   0.33%  ││    ││  │   0x00007fe8bb1996e6:   add    %r8d,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││    ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 63)
   0.01%  ││    ││  │   0x00007fe8bb1996e9:   mov    %r10d,%r8d                   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││    ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@4 (line 62)
   0.33%  ││    ││  │   0x00007fe8bb1996ec:   nopl   0x0(%rax)
   0.04%  ││    ↘│  │   0x00007fe8bb1996f0:   cmp    %r8d,%eax
          ││     ╰  │   0x00007fe8bb1996f3:   jg     0x00007fe8bb1996e0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││        │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 62)
   0.05%  ││       ↗│   0x00007fe8bb1996f5:   mov    %r11d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@23 (line 65)
          ││       ││   0x00007fe8bb1996f8:   add    $0x18,%rsp
   0.01%  ││       ││   0x00007fe8bb1996fc:   nopl   0x0(%rax)
   0.00%  ││       ││↗  0x00007fe8bb199700:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││      ╭│││  0x00007fe8bb199707:   ja     0x00007fe8bb199726
   0.11%  ││      ││││  0x00007fe8bb19970d:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││      ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 62)
          │↘      ││││  0x00007fe8bb19970e:   mov    $0x0,%r11d
          │       │╰││  0x00007fe8bb199714:   jmp    0x00007fe8bb1996f5           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │       │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@22 (line 65)
          ↘       │ ││  0x00007fe8bb199716:   mov    %rbp,0x10(%rsp)
                  │ ││  0x00007fe8bb19971b:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                  │ ╰│  0x00007fe8bb199720:   jmp    0x00007fe8bb19963a
                  │  │  0x00007fe8bb199725:   hlt    
                  ↘  ╰  0x00007fe8bb199726:   lea    -0x2d(%rip),%rcx        # 0x00007fe8bb199700
                        0x00007fe8bb19972d:   mov    %rcx,0x468(%r15)
....................................................................................................
  94.83%  <total for region 1>

....[Hottest Regions]...............................................................................
  94.83%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 1080 
   0.70%                kernel  [unknown] 
   0.35%                kernel  [unknown] 
   0.35%                kernel  [unknown] 
   0.23%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 7, compile id 1113 
   0.15%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%             libjvm.so  fileStream::write 
   2.09%  <...other 351 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.83%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 1080 
   4.15%                kernel  [unknown] 
   0.23%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 7, compile id 1113 
   0.05%             libjvm.so  fileStream::write 
   0.04%             libc.so.6  __vfprintf_internal 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libc.so.6  _IO_fwrite 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libjvm.so  xmlTextStream::flush 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  syscall 
   0.02%             libc.so.6  __GI___libc_write 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libc.so.6  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.41%  <...other 144 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.06%        jvmci, level 4
   4.15%                kernel
   0.36%             libjvm.so
   0.28%             libc.so.6
   0.05%   libjvmcicompiler.so
   0.04%           interpreter
   0.03%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.00%          runtime stub
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:04:48

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

Benchmark                                                  (size)  Mode  Cnt     Score     Error  Units
ScalarEvolutionAndLoopOptimizationBenchmark.baseline        16384  avgt    5     9.563 ±   0.924  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.baseline:asm    16384  avgt            NaN              ---
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop       16384  avgt    5  2458.778 ± 321.521  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:asm   16384  avgt            NaN              ---
