# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.initial_loop
# Parameters: (iterations = 1048576, offset = 128)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.312 ns/op
# Warmup Iteration   2: 12.153 ns/op
# Warmup Iteration   3: 13.182 ns/op
# Warmup Iteration   4: 12.509 ns/op
# Warmup Iteration   5: 12.479 ns/op
Iteration   1: 12.478 ns/op
Iteration   2: 12.493 ns/op
Iteration   3: 12.501 ns/op
Iteration   4: 12.495 ns/op
Iteration   5: 12.491 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.initial_loop":
  12.492 ±(99.9%) 0.033 ns/op [Average]
  (min, avg, max) = (12.478, 12.492, 12.501), stdev = 0.009
  CI (99.9%): [12.458, 12.525] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.initial_loop:asm":
PrintAssembly processed: 132746 total address lines.
Perf output processed (skipped 56.460 seconds):
 Column 1: cycles (50918 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 6, compile id 604 

              0x00007fede063b3a4:   mov    0x28(%rsp),%r10
              0x00007fede063b3a9:   movzbl 0x94(%r10),%r10d             ; implicit exception: dispatches to 0x00007fede063b470
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@25 (line 196)
              0x00007fede063b3b1:   mov    $0x1,%ebp
              0x00007fede063b3b6:   test   %r10d,%r10d
          ╭   0x00007fede063b3b9:   jne    0x00007fede063b3f4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@28 (line 196)
          │   0x00007fede063b3bb:   nopl   0x0(%rax,%rax,1)             ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@31 (line 197)
   3.03%  │↗  0x00007fede063b3c0:   mov    0x30(%rsp),%rsi
          ││  0x00007fede063b3c5:   xchg   %ax,%ax
          ││  0x00007fede063b3c7:   call   0x00007fede00c4380           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*invokevirtual initial_loop {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@15 (line 194)
          ││                                                            ;   {optimized virtual_call}
   5.95%  ││  0x00007fede063b3cc:   nopl   0x100023c(%rax,%rax,1)       ;*invokevirtual initial_loop {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@15 (line 194)
          ││                                                            ;   {other}
          ││  0x00007fede063b3d4:   mov    0x28(%rsp),%r10
  22.65%  ││  0x00007fede063b3d9:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@28 (line 196)
  12.35%  ││  0x00007fede063b3e1:   mov    0x458(%r15),%r11
          ││  0x00007fede063b3e8:   add    $0x1,%rbp                    ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@28 (line 196)
          ││  0x00007fede063b3ec:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007fede063b3ef:   test   %r10d,%r10d
          │╰  0x00007fede063b3f2:   je     0x00007fede063b3c0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@31 (line 197)
          ↘   0x00007fede063b3f4:   movabs $0x7fedf5945b90,%r10
              0x00007fede063b3fe:   call   *%r10
....................................................................................................
  43.97%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop, version 2, compile id 567 

               # {method} {0x00007fed5f47a770} &apos;initial_loop&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LoopReductionBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007fede06381a0:   mov    0x8(%rsi),%r10d
               0x00007fede06381a4:   movabs $0x7fed63000000,%r11
               0x00007fede06381ae:   add    %r11,%r10
               0x00007fede06381b1:   cmp    %r10,%rax
               0x00007fede06381b4:   jne    0x00007fede00c4080           ;   {runtime_call ic_miss_stub}
               0x00007fede06381ba:   xchg   %ax,%ax
               0x00007fede06381bc:   nopl   0x0(%rax)
             [Verified Entry Point]
   3.03%       0x00007fede06381c0:   mov    %eax,-0x14000(%rsp)
  13.68%       0x00007fede06381c7:   push   %rbp
               0x00007fede06381c8:   sub    $0x10,%rsp
   0.02%       0x00007fede06381cc:   cmpl   $0x1,0x20(%r15)
   2.91%  ╭    0x00007fede06381d4:   jne    0x00007fede0638226           ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop@-1 (line 64)
   0.27%  │    0x00007fede06381da:   mov    0xc(%rsi),%edx               ;*getfield iterations {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop@2 (line 64)
   0.04%  │    0x00007fede06381dd:   mov    0x10(%rsi),%ecx              ;*getfield offset {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop@6 (line 64)
          │    0x00007fede06381e0:   data16 xchg %ax,%ax
   2.75%  │    0x00007fede06381e3:   call   0x00007fede0637ea0           ; ImmutableOopMap {}
          │                                                              ;*invokevirtual auto_reduction {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop@9 (line 64)
          │                                                              ;   {optimized virtual_call}
   0.32%  │    0x00007fede06381e8:   nopl   0x1d8(%rax,%rax,1)           ;   {other}
   0.01%  │    0x00007fede06381f0:   add    $0x10,%rsp
   3.07%  │    0x00007fede06381f4:   pop    %rbp
  12.37%  │ ↗  0x00007fede06381f5:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭│  0x00007fede06381fc:   ja     0x00007fede0638210
   3.02%  │││  0x00007fede0638202:   ret                                 ;*invokevirtual auto_reduction {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop@9 (line 64)
          │││  0x00007fede0638203:   mov    %rax,%rsi
          │││  0x00007fede0638206:   add    $0x10,%rsp
          │││  0x00007fede063820a:   pop    %rbp
          │││  0x00007fede063820b:   jmp    0x00007fede019d380           ;   {runtime_call _rethrow_Java}
          │↘╰  0x00007fede0638210:   movabs $0x7fede06381f5,%r10         ;   {internal_word}
          │    0x00007fede063821a:   mov    %r10,0x468(%r15)
          │    0x00007fede0638221:   jmp    0x00007fede00cb000           ;   {runtime_call SafepointBlob}
          ↘    0x00007fede0638226:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
               0x00007fede063822b:   jmp    0x00007fede06381da
....................................................................................................
  41.49%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction, version 3, compile id 565 

                  # parm1:    rcx       = int
                  #           [sp+0x20]  (sp of caller)
                  0x00007fede0637e80:   mov    0x8(%rsi),%r10d
                  0x00007fede0637e84:   movabs $0x7fed63000000,%r11
                  0x00007fede0637e8e:   add    %r11,%r10
                  0x00007fede0637e91:   cmp    %r10,%rax
                  0x00007fede0637e94:   jne    0x00007fede00c4080           ;   {runtime_call ic_miss_stub}
                  0x00007fede0637e9a:   xchg   %ax,%ax
                  0x00007fede0637e9c:   nopl   0x0(%rax)
                [Verified Entry Point]
   0.32%          0x00007fede0637ea0:   sub    $0x18,%rsp
   2.75%          0x00007fede0637ea7:   mov    %rbp,0x10(%rsp)
   0.25%          0x00007fede0637eac:   cmpl   $0x1,0x20(%r15)
   0.03%          0x00007fede0637eb4:   jne    0x00007fede0637f00           ;*synchronization entry
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@-1 (line 75)
                  0x00007fede0637eba:   test   %edx,%edx
          ╭       0x00007fede0637ebc:   jle    0x00007fede0637ee6
   2.70%  │       0x00007fede0637ebe:   mov    $0x1,%r10d
   0.29%  │       0x00007fede0637ec4:   cmp    %edx,%r10d
          │╭      0x00007fede0637ec7:   jge    0x00007fede0637ee0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@4 (line 75)
   0.02%  ││      0x00007fede0637ec9:   add    %ecx,%edx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@7 (line 76)
          ││ ↗    0x00007fede0637ecb:   mov    %edx,%eax                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@4 (line 75)
   2.68%  ││ │↗   0x00007fede0637ecd:   add    $0x10,%rsp
   0.29%  ││ ││   0x00007fede0637ed1:   pop    %rbp
   0.03%  ││ ││↗  0x00007fede0637ed2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││╭│││  0x00007fede0637ed9:   ja     0x00007fede0637eea
   2.77%  ││││││  0x00007fede0637edf:   ret    
          │↘││││  0x00007fede0637ee0:   mov    %ecx,%edx
          │ ││││  0x00007fede0637ee2:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@7 (line 76)
          │ │╰││  0x00007fede0637ee4:   jmp    0x00007fede0637ecb
          ↘ │ ││  0x00007fede0637ee6:   mov    %ecx,%eax
            │ ╰│  0x00007fede0637ee8:   jmp    0x00007fede0637ecd
            ↘  ╰  0x00007fede0637eea:   movabs $0x7fede0637ed2,%r10         ;   {internal_word}
                  0x00007fede0637ef4:   mov    %r10,0x468(%r15)
                  0x00007fede0637efb:   jmp    0x00007fede00cb000           ;   {runtime_call SafepointBlob}
                  0x00007fede0637f00:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
....................................................................................................
  12.12%  <total for region 3>

....[Hottest Regions]...............................................................................
  43.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 6, compile id 604 
  41.49%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop, version 2, compile id 567 
  12.12%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction, version 3, compile id 565 
   0.86%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.89%  <...other 278 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  43.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 6, compile id 604 
  41.49%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop, version 2, compile id 567 
  12.12%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction, version 3, compile id 565 
   2.10%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  outputStream::print 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.14%  <...other 58 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.59%         c2, level 4
   2.10%              kernel
   0.15%           libjvm.so
   0.06%        libc-2.31.so
   0.04%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%              [vdso]
   0.00%      libz.so.1.2.11
   0.00%    perf-1940000.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.manual_loop_reduction
# Parameters: (iterations = 1048576, offset = 128)

# Run progress: 50.00% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.799 ns/op
# Warmup Iteration   2: 12.115 ns/op
# Warmup Iteration   3: 13.153 ns/op
# Warmup Iteration   4: 12.006 ns/op
# Warmup Iteration   5: 12.117 ns/op
Iteration   1: 12.086 ns/op
Iteration   2: 12.102 ns/op
Iteration   3: 12.037 ns/op
Iteration   4: 12.071 ns/op
Iteration   5: 12.063 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.manual_loop_reduction":
  12.072 ±(99.9%) 0.094 ns/op [Average]
  (min, avg, max) = (12.037, 12.072, 12.102), stdev = 0.024
  CI (99.9%): [11.978, 12.166] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.manual_loop_reduction:asm":
PrintAssembly processed: 125603 total address lines.
Perf output processed (skipped 56.080 seconds):
 Column 1: cycles (50618 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction, version 2, compile id 551 

              # {method} {0x00007fed3847a848} &apos;manual_loop_reduction&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LoopReductionBenchmark&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007fedc0638aa0:   mov    0x8(%rsi),%r10d
              0x00007fedc0638aa4:   movabs $0x7fed43000000,%r11
              0x00007fedc0638aae:   add    %r11,%r10
              0x00007fedc0638ab1:   cmp    %r10,%rax
              0x00007fedc0638ab4:   jne    0x00007fedc00c4080           ;   {runtime_call ic_miss_stub}
              0x00007fedc0638aba:   xchg   %ax,%ax
              0x00007fedc0638abc:   nopl   0x0(%rax)
            [Verified Entry Point]
   3.07%      0x00007fedc0638ac0:   mov    %eax,-0x14000(%rsp)
  11.09%      0x00007fedc0638ac7:   push   %rbp
              0x00007fedc0638ac8:   sub    $0x10,%rsp
   0.62%      0x00007fedc0638acc:   cmpl   $0x1,0x20(%r15)
   2.51%      0x00007fedc0638ad4:   jne    0x00007fedc0638b26           ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@-1 (line 70)
   0.36%      0x00007fedc0638ada:   mov    0xc(%rsi),%edx               ;*getfield iterations {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@2 (line 70)
   0.64%      0x00007fedc0638add:   mov    0x10(%rsi),%ecx              ;*getfield offset {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@6 (line 70)
              0x00007fedc0638ae0:   data16 xchg %ax,%ax
   2.22%      0x00007fedc0638ae3:   call   0x00007fedb8be67c0           ; ImmutableOopMap {}
                                                                        ;*invokevirtual manual_reduction {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@9 (line 70)
                                                                        ;   {optimized virtual_call}
  32.14%      0x00007fedc0638ae8:   nopl   0x1d8(%rax,%rax,1)           ;   {other}
              0x00007fedc0638af0:   add    $0x10,%rsp
              0x00007fedc0638af4:   pop    %rbp
   3.09%   ↗  0x00007fedc0638af5:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ╭│  0x00007fedc0638afc:   ja     0x00007fedc0638b10
          ││  0x00007fedc0638b02:   ret                                 ;*invokevirtual manual_reduction {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@9 (line 70)
          ││  0x00007fedc0638b03:   mov    %rax,%rsi
          ││  0x00007fedc0638b06:   add    $0x10,%rsp
          ││  0x00007fedc0638b0a:   pop    %rbp
          ││  0x00007fedc0638b0b:   jmp    0x00007fedc019d380           ;   {runtime_call _rethrow_Java}
          ↘╰  0x00007fedc0638b10:   movabs $0x7fedc0638af5,%r10         ;   {internal_word}
              0x00007fedc0638b1a:   mov    %r10,0x468(%r15)
              0x00007fedc0638b21:   jmp    0x00007fedc00cb000           ;   {runtime_call SafepointBlob}
....................................................................................................
  55.74%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub, version 6, compile id 589 

              0x00007fedc063c0a4:   mov    0x28(%rsp),%r10
              0x00007fedc063c0a9:   movzbl 0x94(%r10),%r10d             ; implicit exception: dispatches to 0x00007fedc063c170
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@25 (line 196)
              0x00007fedc063c0b1:   mov    $0x1,%ebp
              0x00007fedc063c0b6:   test   %r10d,%r10d
          ╭   0x00007fedc063c0b9:   jne    0x00007fedc063c0f4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 196)
          │   0x00007fedc063c0bb:   nopl   0x0(%rax,%rax,1)             ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@31 (line 197)
   3.18%  │↗  0x00007fedc063c0c0:   mov    0x30(%rsp),%rsi
          ││  0x00007fedc063c0c5:   xchg   %ax,%ax
          ││  0x00007fedc063c0c7:   call   0x00007fedc00c4380           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*invokevirtual manual_loop_reduction {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@15 (line 194)
          ││                                                            ;   {optimized virtual_call}
          ││  0x00007fedc063c0cc:   nopl   0x100023c(%rax,%rax,1)       ;*invokevirtual manual_loop_reduction {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@15 (line 194)
          ││                                                            ;   {other}
   3.10%  ││  0x00007fedc063c0d4:   mov    0x28(%rsp),%r10
   3.54%  ││  0x00007fedc063c0d9:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 196)
  12.95%  ││  0x00007fedc063c0e1:   mov    0x458(%r15),%r11
          ││  0x00007fedc063c0e8:   add    $0x1,%rbp                    ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 196)
          ││  0x00007fedc063c0ec:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007fedc063c0ef:   test   %r10d,%r10d
          │╰  0x00007fedc063c0f2:   je     0x00007fedc063c0c0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@31 (line 197)
          ↘   0x00007fedc063c0f4:   movabs $0x7fedd541fb90,%r10
              0x00007fedc063c0fe:   call   *%r10
....................................................................................................
  22.77%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction, version 2, compile id 552 

             # parm1:    rcx       = int
             #           [sp+0x30]  (sp of caller)
             0x00007fedc0638e00:   mov    0x8(%rsi),%r10d
             0x00007fedc0638e04:   movabs $0x7fed43000000,%r11
             0x00007fedc0638e0e:   add    %r11,%r10
             0x00007fedc0638e11:   cmp    %r10,%rax
             0x00007fedc0638e14:   jne    0x00007fedc00c4080           ;   {runtime_call ic_miss_stub}
             0x00007fedc0638e1a:   xchg   %ax,%ax
             0x00007fedc0638e1c:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.96%     0x00007fedc0638e20:   mov    %eax,-0x14000(%rsp)
   6.27%     0x00007fedc0638e27:   push   %rbp
   3.42%     0x00007fedc0638e28:   sub    $0x20,%rsp
             0x00007fedc0638e2c:   cmpl   $0x1,0x20(%r15)
   0.69%     0x00007fedc0638e34:   jne    0x00007fedc0638e82           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@-1 (line 83)
   2.55%     0x00007fedc0638e3a:   test   %edx,%edx
          ╭  0x00007fedc0638e3c:   jle    0x00007fedc0638e54           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@1 (line 83)
          │  0x00007fedc0638e3e:   lea    (%rdx,%rcx,1),%eax
          │  0x00007fedc0638e41:   add    $0x20,%rsp
   0.69%  │  0x00007fedc0638e45:   pop    %rbp
   5.12%  │  0x00007fedc0638e46:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fedc0638e4d:   ja     0x00007fedc0638e6c
          │  0x00007fedc0638e53:   ret    
          ↘  0x00007fedc0638e54:   mov    $0xffffff45,%esi
             0x00007fedc0638e59:   mov    %ecx,%ebp
             0x00007fedc0638e5b:   mov    %edx,(%rsp)
             0x00007fedc0638e5e:   nop
             0x00007fedc0638e5f:   call   0x00007fedc00c9f00           ; ImmutableOopMap {}
                                                                       ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@1 (line 83)
                                                                       ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  19.70%  <total for region 3>

....[Hottest Regions]...............................................................................
  55.74%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction, version 2, compile id 551 
  22.77%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub, version 6, compile id 589 
  19.70%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction, version 2, compile id 552 
   0.23%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.86%  <...other 275 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  55.74%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction, version 2, compile id 551 
  22.77%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub, version 6, compile id 589 
  19.70%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction, version 2, compile id 552 
   1.48%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  defaultStream::write 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  _IO_old_init 
   0.01%           libjvm.so  Dictionary::find 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.00%           libjvm.so  os::javaTimeNanos 
   0.00%        libc-2.31.so  syscall 
   0.00%      hsdis-amd64.so  print_insn_i386 
   0.14%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.21%         c2, level 4
   1.48%              kernel
   0.14%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%         interpreter
   0.01%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:38

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

Benchmark                                         (iterations)  (offset)  Mode  Cnt   Score   Error  Units
LoopReductionBenchmark.initial_loop                    1048576       128  avgt    5  12.492 ± 0.033  ns/op
LoopReductionBenchmark.initial_loop:asm                1048576       128  avgt          NaN            ---
LoopReductionBenchmark.manual_loop_reduction           1048576       128  avgt    5  12.072 ± 0.094  ns/op
LoopReductionBenchmark.manual_loop_reduction:asm       1048576       128  avgt          NaN            ---
