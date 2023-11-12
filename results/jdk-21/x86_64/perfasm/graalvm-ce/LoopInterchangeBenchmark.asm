# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark.initial_loop
# Parameters: (size = 2048)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 42892.179 us/op
# Warmup Iteration   2: 42306.085 us/op
# Warmup Iteration   3: 42299.648 us/op
# Warmup Iteration   4: 42301.820 us/op
# Warmup Iteration   5: 42290.570 us/op
Iteration   1: 42298.214 us/op
Iteration   2: 42296.893 us/op
Iteration   3: 42299.265 us/op
Iteration   4: 42300.059 us/op
Iteration   5: 42305.276 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark.initial_loop":
  42299.941 ±(99.9%) 12.359 us/op [Average]
  (min, avg, max) = (42296.893, 42299.941, 42305.276), stdev = 3.210
  CI (99.9%): [42287.582, 42312.300] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark.initial_loop:asm":
PrintAssembly processed: 218328 total address lines.
Perf output processed (skipped 60.480 seconds):
 Column 1: cycles (50675 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop, version 6, compile id 940 

               0x00007fbbbb240c94:   data16 data16 xchg %ax,%ax
               0x00007fbbbb240c98:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@14 (line 71)
            ↗  0x00007fbbbb240ca0:   mov    $0x0,%r8d
          ╭ │  0x00007fbbbb240ca6:   jmp    0x00007fbbbb240ce6           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@20 (line 72)
          │ │  0x00007fbbbb240cab:   data16 data16 nopw 0x0(%rax,%rax,1)
          │ │  0x00007fbbbb240cb6:   data16 data16 xchg %ax,%ax
          │ │  0x00007fbbbb240cba:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@23 (line 72)
   0.38%  │↗│  0x00007fbbbb240cc0:   mov    0x10(%rax,%r8,4),%r9d        ; ImmutableOopMap {rax=Oop r9=NarrowOop }
          │││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@20 (line 72)
   1.49%  │││  0x00007fbbbb240cc5:   cmp    0xc(,%r9,8),%r11d            ; implicit exception: dispatches to 0x00007fbbbb240d7e
   0.99%  │││  0x00007fbbbb240ccd:   jae    0x00007fbbbb240d37           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@35 (line 73)
  75.51%  │││  0x00007fbbbb240cd3:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@29 (line 73)
   0.21%  │││  0x00007fbbbb240cd7:   mov    %r11d,%ecx
   0.33%  │││  0x00007fbbbb240cda:   imul   %r8d,%ecx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@34 (line 73)
   1.08%  │││  0x00007fbbbb240cde:   mov    %ecx,0x10(%r9,%r11,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@35 (line 73)
  17.94%  │││  0x00007fbbbb240ce3:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@36 (line 72)
   0.18%  ↘││  0x00007fbbbb240ce6:   cmp    %r8d,%r10d
           ╰│  0x00007fbbbb240ce9:   jg     0x00007fbbbb240cc0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@23 (line 72)
            │  0x00007fbbbb240ceb:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rax=Oop }
            │                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@42 (line 71)
   0.08%    │  0x00007fbbbb240cf2:   test   %eax,(%r8)                   ;   {poll}
   0.15%    │  0x00007fbbbb240cf5:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@42 (line 71)
            │  0x00007fbbbb240cf8:   cmp    %r11d,%r10d
            ╰  0x00007fbbbb240cfb:   jg     0x00007fbbbb240ca0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@14 (line 71)
               0x00007fbbbb240cfd:   mov    0x10(%rsp),%rbp
               0x00007fbbbb240d02:   add    $0x18,%rsp
               0x00007fbbbb240d06:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               0x00007fbbbb240d0d:   ja     0x00007fbbbb240d6a
               0x00007fbbbb240d13:   ret    
               0x00007fbbbb240d14:   movl   $0xffffffe5,0x484(%r15)      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.33%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.33%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop, version 6, compile id 940 
   0.22%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.87%  <...other 304 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.33%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop, version 6, compile id 940 
   1.28%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  clock_gettime@plt 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.15%  <...other 71 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.33%      jvmci, level 4
   1.28%              kernel
   0.16%           libjvm.so
   0.09%        libc-2.31.so
   0.06%                    
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 1
   0.00%         c1, level 3
   0.00%              [vdso]
   0.00%    perf-2112769.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark.manual_loop_interchange
# Parameters: (size = 2048)

# Run progress: 50.00% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2010.913 us/op
# Warmup Iteration   2: 1982.717 us/op
# Warmup Iteration   3: 1982.014 us/op
# Warmup Iteration   4: 1983.112 us/op
# Warmup Iteration   5: 1982.474 us/op
Iteration   1: 1982.140 us/op
Iteration   2: 1982.399 us/op
Iteration   3: 1982.276 us/op
Iteration   4: 1982.130 us/op
Iteration   5: 1982.207 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark.manual_loop_interchange":
  1982.230 ±(99.9%) 0.428 us/op [Average]
  (min, avg, max) = (1982.130, 1982.230, 1982.399), stdev = 0.111
  CI (99.9%): [1981.802, 1982.658] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark.manual_loop_interchange:asm":
PrintAssembly processed: 214112 total address lines.
Perf output processed (skipped 60.118 seconds):
 Column 1: cycles (50523 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange, version 3, compile id 969 

                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@1 (line 82)
                      0x00007f348723cfa1:   mov    $0x0,%ecx
          ╭           0x00007f348723cfa6:   jmp    0x00007f348723d0fd           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@12 (line 84)
          │           0x00007f348723cfab:   data16 data16 nopw 0x0(%rax,%rax,1)
          │           0x00007f348723cfb6:   data16 data16 xchg %ax,%ax
          │           0x00007f348723cfba:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@14 (line 84)
          │        ↗  0x00007f348723cfc0:   mov    0x10(%rax,%rcx,4),%ebx       ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │        │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@12 (line 84)
   0.10%  │        │  0x00007f348723cfc4:   test   %eax,0x0(,%rbx,8)            ; implicit exception: deoptimizes
          │        │                                                            ; ImmutableOopMap {rax=Oop rbx=NarrowOop }
   1.43%  │        │  0x00007f348723cfcb:   cmp    $0x1,%r10d
          │╭       │  0x00007f348723cfcf:   jl     0x00007f348723cff1
          ││       │  0x00007f348723cfd5:   mov    0xc(,%rbx,8),%edi
   0.10%  ││       │  0x00007f348723cfdc:   mov    %edi,%edx
          ││       │  0x00007f348723cfde:   xchg   %ax,%ax
   0.01%  ││       │  0x00007f348723cfe0:   cmp    %r11,%rdx
          ││       │  0x00007f348723cfe3:   jbe    0x00007f348723d143
   0.02%  ││       │  0x00007f348723cfe9:   test   %edi,%edi
          ││       │  0x00007f348723cfeb:   je     0x00007f348723d143           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   0.00%  │↘       │  0x00007f348723cff1:   shl    $0x3,%rbx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@28 (line 86)
          │        │  0x00007f348723cff5:   mov    $0x0,%edi
   0.01%  │ ╭      │  0x00007f348723cffa:   jmp    0x00007f348723d0eb           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@20 (line 85)
          │ │      │  0x00007f348723cfff:   nop                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@23 (line 85)
   0.76%  │ │↗     │  0x00007f348723d000:   mov    %ecx,%edx
   2.13%  │ ││     │  0x00007f348723d002:   imul   %edi,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   1.00%  │ ││     │  0x00007f348723d005:   mov    %edx,0x10(%rbx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   2.12%  │ ││     │  0x00007f348723d009:   movslq %edi,%rdx
   0.67%  │ ││     │  0x00007f348723d00c:   mov    %edi,%esi
   1.94%  │ ││     │  0x00007f348723d00e:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   1.01%  │ ││     │  0x00007f348723d010:   imul   %ecx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   1.33%  │ ││     │  0x00007f348723d013:   mov    %esi,0x14(%rbx,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
          │ ││     │                                                            ;   {no_reloc}
   2.24%  │ ││     │  0x00007f348723d017:   lea    0x2(%rdi),%esi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   1.63%  │ ││     │  0x00007f348723d01a:   imul   %ecx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   0.95%  │ ││     │  0x00007f348723d01d:   mov    %esi,0x18(%rbx,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   2.61%  │ ││     │  0x00007f348723d021:   lea    0x3(%rdi),%esi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   1.18%  │ ││     │  0x00007f348723d024:   imul   %ecx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   1.54%  │ ││     │  0x00007f348723d027:   mov    %esi,0x1c(%rbx,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   2.47%  │ ││     │  0x00007f348723d02b:   lea    0x4(%rdi),%esi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   1.49%  │ ││     │  0x00007f348723d02e:   imul   %ecx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   1.05%  │ ││     │  0x00007f348723d031:   mov    %esi,0x20(%rbx,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   2.60%  │ ││     │  0x00007f348723d035:   lea    0x5(%rdi),%esi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   1.36%  │ ││     │  0x00007f348723d038:   imul   %ecx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   1.33%  │ ││     │  0x00007f348723d03b:   mov    %esi,0x24(%rbx,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   2.96%  │ ││     │  0x00007f348723d03f:   lea    0x6(%rdi),%esi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   1.83%  │ ││     │  0x00007f348723d042:   imul   %ecx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   1.16%  │ ││     │  0x00007f348723d045:   mov    %esi,0x28(%rbx,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   3.37%  │ ││     │  0x00007f348723d049:   lea    0x7(%rdi),%esi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   1.17%  │ ││     │  0x00007f348723d04c:   imul   %ecx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   1.02%  │ ││     │  0x00007f348723d04f:   mov    %esi,0x2c(%rbx,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   3.30%  │ ││     │  0x00007f348723d053:   lea    0x8(%rdi),%esi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   1.20%  │ ││     │  0x00007f348723d056:   imul   %ecx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   0.90%  │ ││     │  0x00007f348723d059:   mov    %esi,0x30(%rbx,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   3.24%  │ ││     │  0x00007f348723d05d:   lea    0x9(%rdi),%esi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   1.19%  │ ││     │  0x00007f348723d060:   imul   %ecx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   1.07%  │ ││     │  0x00007f348723d063:   mov    %esi,0x34(%rbx,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   3.33%  │ ││     │  0x00007f348723d067:   lea    0xa(%rdi),%esi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   1.30%  │ ││     │  0x00007f348723d06a:   imul   %ecx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   1.11%  │ ││     │  0x00007f348723d06d:   mov    %esi,0x38(%rbx,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   3.64%  │ ││     │  0x00007f348723d071:   lea    0xb(%rdi),%esi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   1.52%  │ ││     │  0x00007f348723d074:   imul   %ecx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   1.19%  │ ││     │  0x00007f348723d077:   mov    %esi,0x3c(%rbx,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   4.04%  │ ││     │  0x00007f348723d07b:   lea    0xc(%rdi),%esi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   1.00%  │ ││     │  0x00007f348723d07e:   imul   %ecx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   0.80%  │ ││     │  0x00007f348723d081:   mov    %esi,0x40(%rbx,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   3.53%  │ ││     │  0x00007f348723d085:   lea    0xd(%rdi),%esi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   1.68%  │ ││     │  0x00007f348723d088:   imul   %ecx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   1.05%  │ ││     │  0x00007f348723d08b:   mov    %esi,0x44(%rbx,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   3.51%  │ ││     │  0x00007f348723d08f:   lea    0xe(%rdi),%esi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   1.16%  │ ││     │  0x00007f348723d092:   imul   %ecx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   1.05%  │ ││     │  0x00007f348723d095:   mov    %esi,0x48(%rbx,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   3.66%  │ ││     │  0x00007f348723d099:   lea    0xf(%rdi),%esi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   1.14%  │ ││     │  0x00007f348723d09c:   imul   %ecx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   0.95%  │ ││     │  0x00007f348723d09f:   mov    %esi,0x4c(%rbx,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   3.22%  │ ││     │  0x00007f348723d0a3:   lea    0x10(%rdi),%edi              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   1.03%  │ ││     │  0x00007f348723d0a6:   data16 nopw 0x0(%rax,%rax,1)
   0.84%  │ ││   ↗ │  0x00007f348723d0b0:   cmp    %edi,%r8d
          │ │╰   │ │  0x00007f348723d0b3:   jg     0x00007f348723d000
   0.05%  │ │ ╭  │ │  0x00007f348723d0b9:   jmp    0x00007f348723d0d0
          │ │ │  │ │  0x00007f348723d0be:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@23 (line 85)
   0.47%  │ │ │ ↗│ │  0x00007f348723d0c0:   mov    %ecx,%edx
   0.05%  │ │ │ ││ │  0x00007f348723d0c2:   imul   %edi,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   0.08%  │ │ │ ││ │  0x00007f348723d0c5:   mov    %edx,0x10(%rbx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   0.60%  │ │ │ ││ │  0x00007f348723d0c9:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   0.05%  │ │ │ ││ │  0x00007f348723d0cb:   nopl   0x0(%rax,%rax,1)
   0.17%  │ │ ↘ ││ │  0x00007f348723d0d0:   cmp    %edi,%r10d
          │ │  ╭││ │  0x00007f348723d0d3:   jle    0x00007f348723d0f2
   0.13%  │ │  │╰│ │  0x00007f348723d0d9:   jmp    0x00007f348723d0c0
          │ │  │ │ │  0x00007f348723d0db:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@23 (line 85)
   0.04%  │ │  │ │↗│  0x00007f348723d0e0:   mov    %ecx,%edx
          │ │  │ │││  0x00007f348723d0e2:   imul   %edi,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
          │ │  │ │││  0x00007f348723d0e5:   mov    %edx,0x10(%rbx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   0.00%  │ │  │ │││  0x00007f348723d0e9:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   0.07%  │ ↘  │ │││  0x00007f348723d0eb:   cmp    %edi,%r9d
          │    │ ╰││  0x00007f348723d0ee:   jle    0x00007f348723d0b0
          │    │  ╰│  0x00007f348723d0f0:   jmp    0x00007f348723d0e0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@23 (line 85)
   0.01%  │    ↘   │  0x00007f348723d0f2:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {rax=Oop }
          │        │                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          │        │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@42 (line 84)
   0.07%  │        │  0x00007f348723d0f9:   test   %eax,(%rbx)                  ;   {poll}
   0.11%  │        │  0x00007f348723d0fb:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@42 (line 84)
   0.00%  ↘        │  0x00007f348723d0fd:   data16 xchg %ax,%ax
                   │  0x00007f348723d100:   cmp    %ecx,%r10d
                   ╰  0x00007f348723d103:   jg     0x00007f348723cfc0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@14 (line 84)
                      0x00007f348723d109:   mov    0x10(%rsp),%rbp
   0.01%              0x00007f348723d10e:   add    $0x18,%rsp
                      0x00007f348723d112:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                      0x00007f348723d119:   ja     0x00007f348723d176
                      0x00007f348723d11f:   ret    
                      0x00007f348723d120:   movl   $0xffffffe5,0x484(%r15)      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@28 (line 86)
                      0x00007f348723d12b:   movq   $0x318,0x490(%r15)
                      0x00007f348723d136:   call   0x00007f3486c3517a           ; ImmutableOopMap {rsi=Oop }
                                                                                ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@0 (line 82)
                                                                                ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  98.12%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange, version 3, compile id 969 
   0.20%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   1.09%  <...other 350 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange, version 3, compile id 969 
   1.43%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%         interpreter  invokevirtual  182 invokevirtual  
   0.01%           libjvm.so  fileStream::write 
   0.01%    perf-2112840.map  [unknown] 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%         interpreter  ladd  97 ladd  
   0.01%        libc-2.31.so  _IO_fflush 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.20%  <...other 78 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.13%      jvmci, level 4
   1.43%              kernel
   0.15%           libjvm.so
   0.12%        libc-2.31.so
   0.06%                    
   0.05%         interpreter
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%    perf-2112840.map
   0.01%          ld-2.31.so
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:47

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

Benchmark                                             (size)  Mode  Cnt      Score    Error  Units
LoopInterchangeBenchmark.initial_loop                   2048  avgt    5  42299.941 ± 12.359  us/op
LoopInterchangeBenchmark.initial_loop:asm               2048  avgt             NaN             ---
LoopInterchangeBenchmark.manual_loop_interchange        2048  avgt    5   1982.230 ±  0.428  us/op
LoopInterchangeBenchmark.manual_loop_interchange:asm    2048  avgt             NaN             ---
