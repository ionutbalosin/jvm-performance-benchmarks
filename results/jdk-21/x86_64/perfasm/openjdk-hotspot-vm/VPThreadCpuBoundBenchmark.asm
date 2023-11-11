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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks
# Parameters: (backoffType = NONE, cpuLoadFactor = 16, cpuTokens = _1_M, threadType = VIRTUAL)

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.604 s/op
# Warmup Iteration   2: 4.415 s/op
# Warmup Iteration   3: 4.477 s/op
# Warmup Iteration   4: 4.368 s/op
# Warmup Iteration   5: 4.375 s/op
Iteration   1: 4.405 s/op
Iteration   2: 4.423 s/op
Iteration   3: 4.372 s/op
Iteration   4: 4.392 s/op
Iteration   5: 4.451 s/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks":
  4.409 ±(99.9%) 0.115 s/op [Average]
  (min, avg, max) = (4.372, 4.409, 4.451), stdev = 0.030
  CI (99.9%): [4.294, 4.524] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm":
PrintAssembly processed: 151213 total address lines.
Perf output processed (skipped 72.913 seconds):
 Column 1: cycles (390700 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, org.openjdk.jmh.infra.Blackhole::consumeCPU, version 6, compile id 586 

               0x00007ff65c63b3d1:   mov    $0xfa0,%edx
               0x00007ff65c63b3d6:   movabs $0x5deece66d,%r11
               0x00007ff65c63b3e0:   movabs $0xffffffffffff,%rax         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@39 (line 568)
               0x00007ff65c63b3ea:   mov    $0x7ffffffd,%r14d
               0x00007ff65c63b3f0:   xor    %edi,%edi
               0x00007ff65c63b3f2:   jmp    0x00007ff65c63b4ec
               0x00007ff65c63b3f7:   nopw   0x0(%rax,%rax,1)
          ↗    0x00007ff65c63b400:   mov    %r9d,%ecx                    ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@14 (line 569)
   3.58%  │ ↗  0x00007ff65c63b403:   mov    %r10,%r9
   0.00%  │ │  0x00007ff65c63b406:   imul   %r11,%r9
   7.62%  │ │  0x00007ff65c63b40a:   movslq %ecx,%r13
          │ │  0x00007ff65c63b40d:   add    %rsi,%r13
          │ │  0x00007ff65c63b410:   add    %r13,%r9
   5.34%  │ │  0x00007ff65c63b413:   add    $0xb,%r9
   1.77%  │ │  0x00007ff65c63b417:   and    %rax,%r9
   5.87%  │ │  0x00007ff65c63b41a:   add    %r10,%r9
   2.36%  │ │  0x00007ff65c63b41d:   mov    %r9,%r10
   0.05%  │ │  0x00007ff65c63b420:   imul   %r11,%r10
   9.67%  │ │  0x00007ff65c63b424:   add    %r13,%r10
   5.15%  │ │  0x00007ff65c63b427:   add    $0xa,%r10
   1.96%  │ │  0x00007ff65c63b42b:   and    %rax,%r10
   4.72%  │ │  0x00007ff65c63b42e:   add    %r9,%r10
   2.93%  │ │  0x00007ff65c63b431:   mov    %r10,%r9
   0.10%  │ │  0x00007ff65c63b434:   imul   %r11,%r9
   9.34%  │ │  0x00007ff65c63b438:   add    %r13,%r9
   4.54%  │ │  0x00007ff65c63b43b:   add    $0x9,%r9
   2.71%  │ │  0x00007ff65c63b43f:   and    %rax,%r9
   4.84%  │ │  0x00007ff65c63b442:   add    %r10,%r9
   3.39%  │ │  0x00007ff65c63b445:   mov    %r9,%r10
   0.00%  │ │  0x00007ff65c63b448:   imul   %r11,%r10
   9.37%  │ │  0x00007ff65c63b44c:   add    %r13,%r10
   4.40%  │ │  0x00007ff65c63b44f:   add    $0x8,%r10
   2.83%  │ │  0x00007ff65c63b453:   and    %rax,%r10
   3.45%  │ │  0x00007ff65c63b456:   add    %r9,%r10                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   3.54%  │ │  0x00007ff65c63b459:   lea    -0x4(%rcx),%r9d
   0.00%  │ │  0x00007ff65c63b45d:   data16 xchg %ax,%ax
          │ │  0x00007ff65c63b460:   cmp    %ebp,%r9d
          ╰ │  0x00007ff65c63b463:   jg     0x00007ff65c63b400           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
            │  0x00007ff65c63b465:   mov    0x458(%r15),%rbp
   0.00%    │  0x00007ff65c63b46c:   add    $0xfffffffffffffffc,%r13     ; ImmutableOopMap {}
            │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) org.openjdk.jmh.infra.Blackhole::consumeCPU@39 (line 568)
            │  0x00007ff65c63b470:   test   %eax,0x0(%rbp)               ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@39 (line 568)
            │                                                            ;   {poll}
            │  0x00007ff65c63b473:   cmp    %ebx,%r9d
           ╭│  0x00007ff65c63b476:   jle    0x00007ff65c63b49c
           ││  0x00007ff65c63b478:   mov    %r9d,%ecx
   0.00%   ││  0x00007ff65c63b47b:   mov    %ecx,%r9d
           ││  0x00007ff65c63b47e:   sub    %ebx,%r9d
           ││  0x00007ff65c63b481:   cmp    %ebx,%ecx
           ││  0x00007ff65c63b483:   cmovl  %edi,%r9d
   0.00%   ││  0x00007ff65c63b487:   cmp    $0xfa0,%r9d
           ││  0x00007ff65c63b48e:   cmova  %edx,%r9d
           ││  0x00007ff65c63b492:   mov    %ecx,%ebp
   0.00%   ││  0x00007ff65c63b494:   sub    %r9d,%ebp
           │╰  0x00007ff65c63b497:   jmp    0x00007ff65c63b403
           ↘   0x00007ff65c63b49c:   add    $0xfffffffd,%ecx
               0x00007ff65c63b49f:   nop
               0x00007ff65c63b4a0:   cmp    %r8d,%r9d
               0x00007ff65c63b4a3:   jle    0x00007ff65c63b567           ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@14 (line 569)
               0x00007ff65c63b4a9:   mov    %r10,%rcx
               0x00007ff65c63b4ac:   imul   %r11,%rcx
   0.00%       0x00007ff65c63b4b0:   movslq %r9d,%rbx
               0x00007ff65c63b4b3:   add    %rsi,%rbx
               0x00007ff65c63b4b6:   add    %rbx,%rcx
               0x00007ff65c63b4b9:   add    $0xb,%rcx
               0x00007ff65c63b4bd:   and    %rax,%rcx
               0x00007ff65c63b4c0:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
               0x00007ff65c63b4c3:   mov    %r9d,%ebx
               0x00007ff65c63b4c6:   dec    %ebx
               0x00007ff65c63b4c8:   cmp    %r8d,%ebx
               0x00007ff65c63b4cb:   jle    0x00007ff65c63b4d2           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  99.57%  <total for region 1>

....[Hottest Regions]...............................................................................
  99.57%         c2, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 6, compile id 586 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%        libc-2.31.so  syscall 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.27%  <...other 585 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  99.57%         c2, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 6, compile id 586 
   0.32%              kernel  [unknown] 
   0.01%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  defaultStream::write 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%        libc-2.31.so  syscall 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%           libjvm.so  defaultStream::hold 
   0.00%           libjvm.so  stringStream::write 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.05%  <...other 127 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.57%         c2, level 4
   0.32%              kernel
   0.04%           libjvm.so
   0.04%        libc-2.31.so
   0.01%                    
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%         interpreter
   0.00%          ld-2.31.so
   0.00%         c1, level 3
   0.00%    perf-3158939.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks
# Parameters: (backoffType = NONE, cpuLoadFactor = 16, cpuTokens = _1_M, threadType = PLATFORM)

# Run progress: 16.67% complete, ETA 00:12:09
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.554 s/op
# Warmup Iteration   2: 4.511 s/op
# Warmup Iteration   3: 4.396 s/op
# Warmup Iteration   4: 4.370 s/op
# Warmup Iteration   5: 4.369 s/op
Iteration   1: 4.397 s/op
Iteration   2: 4.394 s/op
Iteration   3: 4.419 s/op
Iteration   4: 4.374 s/op
Iteration   5: 4.427 s/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks":
  4.402 ±(99.9%) 0.082 s/op [Average]
  (min, avg, max) = (4.374, 4.402, 4.427), stdev = 0.021
  CI (99.9%): [4.320, 4.484] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm":
PrintAssembly processed: 148085 total address lines.
Perf output processed (skipped 72.624 seconds):
 Column 1: cycles (390723 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 549 

               0x00007f97a86387d6:   movabs $0x5deece66d,%r11
               0x00007f97a86387e0:   movabs $0xffffffffffff,%rax         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@39 (line 568)
               0x00007f97a86387ea:   xor    %r14d,%r14d
               0x00007f97a86387ed:   xor    %edi,%edi
               0x00007f97a86387ef:   jmp    0x00007f97a86388ec
               0x00007f97a86387f4:   nopl   0x0(%rax,%rax,1)
               0x00007f97a86387fc:   data16 data16 xchg %ax,%ax
          ↗    0x00007f97a8638800:   mov    %r9d,%ecx                    ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@14 (line 569)
   3.57%  │ ↗  0x00007f97a8638803:   mov    %r10,%r9
   0.00%  │ │  0x00007f97a8638806:   imul   %r11,%r9
   7.60%  │ │  0x00007f97a863880a:   movslq %ecx,%r13
   0.00%  │ │  0x00007f97a863880d:   add    %rsi,%r13
          │ │  0x00007f97a8638810:   add    %r13,%r9
   5.40%  │ │  0x00007f97a8638813:   add    $0xb,%r9
   1.74%  │ │  0x00007f97a8638817:   and    %rax,%r9
   5.90%  │ │  0x00007f97a863881a:   add    %r10,%r9
   2.40%  │ │  0x00007f97a863881d:   mov    %r9,%r10
   0.05%  │ │  0x00007f97a8638820:   imul   %r11,%r10
   9.65%  │ │  0x00007f97a8638824:   add    %r13,%r10
   5.16%  │ │  0x00007f97a8638827:   add    $0xa,%r10
   1.95%  │ │  0x00007f97a863882b:   and    %rax,%r10
   4.71%  │ │  0x00007f97a863882e:   add    %r9,%r10
   2.85%  │ │  0x00007f97a8638831:   mov    %r10,%r9
   0.10%  │ │  0x00007f97a8638834:   imul   %r11,%r9
   9.25%  │ │  0x00007f97a8638838:   add    %r13,%r9
   4.56%  │ │  0x00007f97a863883b:   add    $0x9,%r9
   2.68%  │ │  0x00007f97a863883f:   and    %rax,%r9
   4.84%  │ │  0x00007f97a8638842:   add    %r10,%r9
   3.36%  │ │  0x00007f97a8638845:   mov    %r9,%r10
   0.00%  │ │  0x00007f97a8638848:   imul   %r11,%r10
   9.42%  │ │  0x00007f97a863884c:   add    %r13,%r10
   4.37%  │ │  0x00007f97a863884f:   add    $0x8,%r10
   2.86%  │ │  0x00007f97a8638853:   and    %rax,%r10
   3.47%  │ │  0x00007f97a8638856:   add    %r9,%r10                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   3.52%  │ │  0x00007f97a8638859:   lea    -0x4(%rcx),%r9d
   0.00%  │ │  0x00007f97a863885d:   data16 xchg %ax,%ax
          │ │  0x00007f97a8638860:   cmp    %ebp,%r9d
          ╰ │  0x00007f97a8638863:   jg     0x00007f97a8638800           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
            │  0x00007f97a8638865:   mov    0x458(%r15),%rbp
   0.00%    │  0x00007f97a863886c:   add    $0xfffffffffffffffc,%r13     ; ImmutableOopMap {}
            │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) org.openjdk.jmh.infra.Blackhole::consumeCPU@39 (line 568)
            │  0x00007f97a8638870:   test   %eax,0x0(%rbp)               ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@39 (line 568)
            │                                                            ;   {poll}
            │  0x00007f97a8638873:   cmp    %ebx,%r9d
           ╭│  0x00007f97a8638876:   jle    0x00007f97a863889c
           ││  0x00007f97a8638878:   mov    %r9d,%ecx
   0.00%   ││  0x00007f97a863887b:   mov    %ecx,%r9d
           ││  0x00007f97a863887e:   sub    %ebx,%r9d
           ││  0x00007f97a8638881:   cmp    %ebx,%ecx
           ││  0x00007f97a8638883:   cmovl  %edi,%r9d
   0.00%   ││  0x00007f97a8638887:   cmp    $0xfa0,%r9d
           ││  0x00007f97a863888e:   cmova  %edx,%r9d
           ││  0x00007f97a8638892:   mov    %ecx,%ebp
   0.00%   ││  0x00007f97a8638894:   sub    %r9d,%ebp
           │╰  0x00007f97a8638897:   jmp    0x00007f97a8638803
           ↘   0x00007f97a863889c:   add    $0xfffffffd,%ecx
               0x00007f97a863889f:   nop
               0x00007f97a86388a0:   cmp    %r8d,%r9d
               0x00007f97a86388a3:   jle    0x00007f97a8638970           ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@14 (line 569)
               0x00007f97a86388a9:   mov    %r10,%rcx
               0x00007f97a86388ac:   imul   %r11,%rcx
               0x00007f97a86388b0:   movslq %r9d,%rbx
               0x00007f97a86388b3:   add    %rsi,%rbx
....................................................................................................
  99.44%  <total for region 1>

....[Hottest Regions]...............................................................................
  99.44%         c2, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 549 
   0.08%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.30%  <...other 618 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  99.44%         c2, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 549 
   0.44%              kernel  [unknown] 
   0.01%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  defaultStream::hold 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.05%  <...other 131 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.44%         c2, level 4
   0.44%              kernel
   0.05%           libjvm.so
   0.04%        libc-2.31.so
   0.01%                    
   0.01%      hsdis-amd64.so
   0.00%  libpthread-2.31.so
   0.00%          ld-2.31.so
   0.00%         interpreter
   0.00%         c1, level 3
   0.00%    perf-3159016.map
   0.00%    Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks
# Parameters: (backoffType = YIELD, cpuLoadFactor = 16, cpuTokens = _1_M, threadType = VIRTUAL)

# Run progress: 33.33% complete, ETA 00:09:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.890 s/op
# Warmup Iteration   2: 4.441 s/op
# Warmup Iteration   3: 4.425 s/op
# Warmup Iteration   4: 4.372 s/op
# Warmup Iteration   5: 4.365 s/op
Iteration   1: 4.413 s/op
Iteration   2: 4.425 s/op
Iteration   3: 4.366 s/op
Iteration   4: 4.465 s/op
Iteration   5: 4.484 s/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks":
  4.430 ±(99.9%) 0.178 s/op [Average]
  (min, avg, max) = (4.366, 4.430, 4.484), stdev = 0.046
  CI (99.9%): [4.252, 4.609] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm":
PrintAssembly processed: 180155 total address lines.
Perf output processed (skipped 73.582 seconds):
 Column 1: cycles (391914 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 578 

               0x00007ff4606390d1:   mov    $0xfa0,%edx
               0x00007ff4606390d6:   movabs $0x5deece66d,%r11
               0x00007ff4606390e0:   movabs $0xffffffffffff,%rax         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@39 (line 568)
               0x00007ff4606390ea:   mov    $0x7ffffffd,%r14d
               0x00007ff4606390f0:   xor    %edi,%edi
               0x00007ff4606390f2:   jmp    0x00007ff4606391ec
               0x00007ff4606390f7:   nopw   0x0(%rax,%rax,1)
          ↗    0x00007ff460639100:   mov    %r9d,%ecx                    ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@14 (line 569)
   3.54%  │ ↗  0x00007ff460639103:   mov    %r10,%r9
   0.00%  │ │  0x00007ff460639106:   imul   %r11,%r9
   7.58%  │ │  0x00007ff46063910a:   movslq %ecx,%r13
          │ │  0x00007ff46063910d:   add    %rsi,%r13
          │ │  0x00007ff460639110:   add    %r13,%r9
   5.34%  │ │  0x00007ff460639113:   add    $0xb,%r9
   1.75%  │ │  0x00007ff460639117:   and    %rax,%r9
   5.85%  │ │  0x00007ff46063911a:   add    %r10,%r9
   2.36%  │ │  0x00007ff46063911d:   mov    %r9,%r10
   0.05%  │ │  0x00007ff460639120:   imul   %r11,%r10
   9.66%  │ │  0x00007ff460639124:   add    %r13,%r10
   5.11%  │ │  0x00007ff460639127:   add    $0xa,%r10
   1.99%  │ │  0x00007ff46063912b:   and    %rax,%r10
   4.73%  │ │  0x00007ff46063912e:   add    %r9,%r10
   2.91%  │ │  0x00007ff460639131:   mov    %r10,%r9
   0.11%  │ │  0x00007ff460639134:   imul   %r11,%r9
   9.26%  │ │  0x00007ff460639138:   add    %r13,%r9
   4.59%  │ │  0x00007ff46063913b:   add    $0x9,%r9
   2.66%  │ │  0x00007ff46063913f:   and    %rax,%r9
   4.83%  │ │  0x00007ff460639142:   add    %r10,%r9
   3.37%  │ │  0x00007ff460639145:   mov    %r9,%r10
   0.00%  │ │  0x00007ff460639148:   imul   %r11,%r10
   9.38%  │ │  0x00007ff46063914c:   add    %r13,%r10
   4.40%  │ │  0x00007ff46063914f:   add    $0x8,%r10
   2.82%  │ │  0x00007ff460639153:   and    %rax,%r10
   3.44%  │ │  0x00007ff460639156:   add    %r9,%r10                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   3.55%  │ │  0x00007ff460639159:   lea    -0x4(%rcx),%r9d
   0.00%  │ │  0x00007ff46063915d:   data16 xchg %ax,%ax
          │ │  0x00007ff460639160:   cmp    %ebp,%r9d
          ╰ │  0x00007ff460639163:   jg     0x00007ff460639100           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
            │  0x00007ff460639165:   mov    0x458(%r15),%rbp
   0.00%    │  0x00007ff46063916c:   add    $0xfffffffffffffffc,%r13     ; ImmutableOopMap {}
            │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) org.openjdk.jmh.infra.Blackhole::consumeCPU@39 (line 568)
            │  0x00007ff460639170:   test   %eax,0x0(%rbp)               ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@39 (line 568)
            │                                                            ;   {poll}
            │  0x00007ff460639173:   cmp    %ebx,%r9d
           ╭│  0x00007ff460639176:   jle    0x00007ff46063919c
           ││  0x00007ff460639178:   mov    %r9d,%ecx
   0.00%   ││  0x00007ff46063917b:   mov    %ecx,%r9d
           ││  0x00007ff46063917e:   sub    %ebx,%r9d
           ││  0x00007ff460639181:   cmp    %ebx,%ecx
           ││  0x00007ff460639183:   cmovl  %edi,%r9d
   0.00%   ││  0x00007ff460639187:   cmp    $0xfa0,%r9d
           ││  0x00007ff46063918e:   cmova  %edx,%r9d
           ││  0x00007ff460639192:   mov    %ecx,%ebp
   0.00%   ││  0x00007ff460639194:   sub    %r9d,%ebp
           │╰  0x00007ff460639197:   jmp    0x00007ff460639103
           ↘   0x00007ff46063919c:   add    $0xfffffffd,%ecx
               0x00007ff46063919f:   nop
               0x00007ff4606391a0:   cmp    %r8d,%r9d
               0x00007ff4606391a3:   jle    0x00007ff460639267           ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@14 (line 569)
               0x00007ff4606391a9:   mov    %r10,%rcx
   0.00%       0x00007ff4606391ac:   imul   %r11,%rcx
               0x00007ff4606391b0:   movslq %r9d,%rbx
               0x00007ff4606391b3:   add    %rsi,%rbx
               0x00007ff4606391b6:   add    %rbx,%rcx
               0x00007ff4606391b9:   add    $0xb,%rcx
               0x00007ff4606391bd:   and    %rax,%rcx
               0x00007ff4606391c0:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
               0x00007ff4606391c3:   mov    %r9d,%ebx
               0x00007ff4606391c6:   dec    %ebx
               0x00007ff4606391c8:   cmp    %r8d,%ebx
....................................................................................................
  99.29%  <total for region 1>

....[Hottest Regions]...............................................................................
  99.29%         c2, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 578 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%              kernel  [unknown] 
   0.46%  <...other 865 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  99.29%         c2, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 578 
   0.48%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  defaultStream::write 
   0.01%         c2, level 4  java.lang.VirtualThread::yieldContinuation, version 2, compile id 668 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark::cpuBoundWork, version 3, compile id 802 
   0.13%  <...other 256 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.31%         c2, level 4
   0.48%              kernel
   0.10%           libjvm.so
   0.06%        libc-2.31.so
   0.02%                    
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%         interpreter
   0.00%         c1, level 3
   0.00%        runtime stub
   0.00%    perf-3159261.map
   0.00%    Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks
# Parameters: (backoffType = YIELD, cpuLoadFactor = 16, cpuTokens = _1_M, threadType = PLATFORM)

# Run progress: 50.00% complete, ETA 00:07:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.543 s/op
# Warmup Iteration   2: 4.547 s/op
# Warmup Iteration   3: 4.387 s/op
# Warmup Iteration   4: 4.369 s/op
# Warmup Iteration   5: 4.367 s/op
Iteration   1: 4.417 s/op
Iteration   2: 4.391 s/op
Iteration   3: 4.447 s/op
Iteration   4: 4.368 s/op
Iteration   5: 4.429 s/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks":
  4.410 ±(99.9%) 0.119 s/op [Average]
  (min, avg, max) = (4.368, 4.410, 4.447), stdev = 0.031
  CI (99.9%): [4.291, 4.530] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm":
PrintAssembly processed: 149249 total address lines.
Perf output processed (skipped 72.856 seconds):
 Column 1: cycles (391121 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, org.openjdk.jmh.infra.Blackhole::consumeCPU, version 6, compile id 577 

               0x00007fa414639cd6:   movabs $0x5deece66d,%r11
               0x00007fa414639ce0:   movabs $0xffffffffffff,%rax         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@39 (line 568)
               0x00007fa414639cea:   xor    %r14d,%r14d
               0x00007fa414639ced:   xor    %edi,%edi
               0x00007fa414639cef:   jmp    0x00007fa414639dec
               0x00007fa414639cf4:   nopl   0x0(%rax,%rax,1)
               0x00007fa414639cfc:   data16 data16 xchg %ax,%ax
          ↗    0x00007fa414639d00:   mov    %r9d,%ecx                    ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@14 (line 569)
   3.51%  │ ↗  0x00007fa414639d03:   mov    %r10,%r9
   0.00%  │ │  0x00007fa414639d06:   imul   %r11,%r9
   7.62%  │ │  0x00007fa414639d0a:   movslq %ecx,%r13
          │ │  0x00007fa414639d0d:   add    %rsi,%r13
          │ │  0x00007fa414639d10:   add    %r13,%r9
   5.40%  │ │  0x00007fa414639d13:   add    $0xb,%r9
   1.75%  │ │  0x00007fa414639d17:   and    %rax,%r9
   5.86%  │ │  0x00007fa414639d1a:   add    %r10,%r9
   2.42%  │ │  0x00007fa414639d1d:   mov    %r9,%r10
   0.04%  │ │  0x00007fa414639d20:   imul   %r11,%r10
   9.76%  │ │  0x00007fa414639d24:   add    %r13,%r10
   5.19%  │ │  0x00007fa414639d27:   add    $0xa,%r10
   1.97%  │ │  0x00007fa414639d2b:   and    %rax,%r10
   4.71%  │ │  0x00007fa414639d2e:   add    %r9,%r10
   2.90%  │ │  0x00007fa414639d31:   mov    %r10,%r9
   0.11%  │ │  0x00007fa414639d34:   imul   %r11,%r9
   9.21%  │ │  0x00007fa414639d38:   add    %r13,%r9
   4.59%  │ │  0x00007fa414639d3b:   add    $0x9,%r9
   2.67%  │ │  0x00007fa414639d3f:   and    %rax,%r9
   4.83%  │ │  0x00007fa414639d42:   add    %r10,%r9
   3.36%  │ │  0x00007fa414639d45:   mov    %r9,%r10
   0.00%  │ │  0x00007fa414639d48:   imul   %r11,%r10
   9.31%  │ │  0x00007fa414639d4c:   add    %r13,%r10
   4.33%  │ │  0x00007fa414639d4f:   add    $0x8,%r10
   2.78%  │ │  0x00007fa414639d53:   and    %rax,%r10
   3.49%  │ │  0x00007fa414639d56:   add    %r9,%r10                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   3.56%  │ │  0x00007fa414639d59:   lea    -0x4(%rcx),%r9d
   0.00%  │ │  0x00007fa414639d5d:   data16 xchg %ax,%ax
          │ │  0x00007fa414639d60:   cmp    %ebp,%r9d
          ╰ │  0x00007fa414639d63:   jg     0x00007fa414639d00           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
            │  0x00007fa414639d65:   mov    0x458(%r15),%rbp
   0.00%    │  0x00007fa414639d6c:   add    $0xfffffffffffffffc,%r13     ; ImmutableOopMap {}
            │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) org.openjdk.jmh.infra.Blackhole::consumeCPU@39 (line 568)
            │  0x00007fa414639d70:   test   %eax,0x0(%rbp)               ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@39 (line 568)
            │                                                            ;   {poll}
            │  0x00007fa414639d73:   cmp    %ebx,%r9d
           ╭│  0x00007fa414639d76:   jle    0x00007fa414639d9c
           ││  0x00007fa414639d78:   mov    %r9d,%ecx
   0.00%   ││  0x00007fa414639d7b:   mov    %ecx,%r9d
           ││  0x00007fa414639d7e:   sub    %ebx,%r9d
           ││  0x00007fa414639d81:   cmp    %ebx,%ecx
           ││  0x00007fa414639d83:   cmovl  %edi,%r9d
   0.00%   ││  0x00007fa414639d87:   cmp    $0xfa0,%r9d
           ││  0x00007fa414639d8e:   cmova  %edx,%r9d
           ││  0x00007fa414639d92:   mov    %ecx,%ebp
   0.00%   ││  0x00007fa414639d94:   sub    %r9d,%ebp
           │╰  0x00007fa414639d97:   jmp    0x00007fa414639d03
           ↘   0x00007fa414639d9c:   add    $0xfffffffd,%ecx
               0x00007fa414639d9f:   nop
               0x00007fa414639da0:   cmp    %r8d,%r9d
               0x00007fa414639da3:   jle    0x00007fa414639e70           ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@14 (line 569)
               0x00007fa414639da9:   mov    %r10,%rcx
               0x00007fa414639dac:   imul   %r11,%rcx
               0x00007fa414639db0:   movslq %r9d,%rbx
               0x00007fa414639db3:   add    %rsi,%rbx
....................................................................................................
  99.43%  <total for region 1>

....[Hottest Regions]...............................................................................
  99.43%         c2, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 6, compile id 577 
   0.07%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.32%  <...other 646 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  99.43%         c2, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 6, compile id 577 
   0.46%              kernel  [unknown] 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%                      <unknown> 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.00%           libjvm.so  defaultStream::write 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%    Unknown, level 0  java.lang.Thread::yield0, version 1, compile id 581 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  _IO_fflush 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.05%  <...other 122 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.43%         c2, level 4
   0.46%              kernel
   0.05%           libjvm.so
   0.03%        libc-2.31.so
   0.01%                    
   0.01%      hsdis-amd64.so
   0.00%  libpthread-2.31.so
   0.00%         interpreter
   0.00%          ld-2.31.so
   0.00%    Unknown, level 0
   0.00%         c1, level 3
   0.00%      libz.so.1.2.11
   0.00%    perf-3159337.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks
# Parameters: (backoffType = PARK, cpuLoadFactor = 16, cpuTokens = _1_M, threadType = VIRTUAL)

# Run progress: 66.67% complete, ETA 00:04:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.091 s/op
# Warmup Iteration   2: 4.565 s/op
# Warmup Iteration   3: 4.650 s/op
# Warmup Iteration   4: 4.505 s/op
# Warmup Iteration   5: 4.460 s/op
Iteration   1: 4.435 s/op
Iteration   2: 4.422 s/op
Iteration   3: 4.459 s/op
Iteration   4: 4.424 s/op
Iteration   5: 4.464 s/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks":
  4.441 ±(99.9%) 0.075 s/op [Average]
  (min, avg, max) = (4.422, 4.441, 4.464), stdev = 0.020
  CI (99.9%): [4.365, 4.516] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm":
PrintAssembly processed: 242079 total address lines.
Perf output processed (skipped 72.849 seconds):
 Column 1: cycles (393890 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 605 

               0x00007f5c9463bcd1:   mov    $0xfa0,%edx
               0x00007f5c9463bcd6:   movabs $0x5deece66d,%r11
               0x00007f5c9463bce0:   movabs $0xffffffffffff,%rax         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@39 (line 568)
               0x00007f5c9463bcea:   mov    $0x7ffffffd,%r14d
               0x00007f5c9463bcf0:   xor    %edi,%edi
               0x00007f5c9463bcf2:   jmp    0x00007f5c9463bdec
               0x00007f5c9463bcf7:   nopw   0x0(%rax,%rax,1)
          ↗    0x00007f5c9463bd00:   mov    %r9d,%ecx                    ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@14 (line 569)
   3.47%  │ ↗  0x00007f5c9463bd03:   mov    %r10,%r9
   0.00%  │ │  0x00007f5c9463bd06:   imul   %r11,%r9
   7.50%  │ │  0x00007f5c9463bd0a:   movslq %ecx,%r13
   0.00%  │ │  0x00007f5c9463bd0d:   add    %rsi,%r13
          │ │  0x00007f5c9463bd10:   add    %r13,%r9
   5.40%  │ │  0x00007f5c9463bd13:   add    $0xb,%r9
   1.76%  │ │  0x00007f5c9463bd17:   and    %rax,%r9
   5.86%  │ │  0x00007f5c9463bd1a:   add    %r10,%r9
   2.34%  │ │  0x00007f5c9463bd1d:   mov    %r9,%r10
   0.05%  │ │  0x00007f5c9463bd20:   imul   %r11,%r10
   9.59%  │ │  0x00007f5c9463bd24:   add    %r13,%r10
   5.11%  │ │  0x00007f5c9463bd27:   add    $0xa,%r10
   1.93%  │ │  0x00007f5c9463bd2b:   and    %rax,%r10
   4.70%  │ │  0x00007f5c9463bd2e:   add    %r9,%r10
   2.86%  │ │  0x00007f5c9463bd31:   mov    %r10,%r9
   0.11%  │ │  0x00007f5c9463bd34:   imul   %r11,%r9
   9.22%  │ │  0x00007f5c9463bd38:   add    %r13,%r9
   4.59%  │ │  0x00007f5c9463bd3b:   add    $0x9,%r9
   2.65%  │ │  0x00007f5c9463bd3f:   and    %rax,%r9
   4.77%  │ │  0x00007f5c9463bd42:   add    %r10,%r9
   3.36%  │ │  0x00007f5c9463bd45:   mov    %r9,%r10
   0.00%  │ │  0x00007f5c9463bd48:   imul   %r11,%r10
   9.37%  │ │  0x00007f5c9463bd4c:   add    %r13,%r10
   4.38%  │ │  0x00007f5c9463bd4f:   add    $0x8,%r10
   2.82%  │ │  0x00007f5c9463bd53:   and    %rax,%r10
   3.45%  │ │  0x00007f5c9463bd56:   add    %r9,%r10                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   3.49%  │ │  0x00007f5c9463bd59:   lea    -0x4(%rcx),%r9d
   0.00%  │ │  0x00007f5c9463bd5d:   data16 xchg %ax,%ax
          │ │  0x00007f5c9463bd60:   cmp    %ebp,%r9d
          ╰ │  0x00007f5c9463bd63:   jg     0x00007f5c9463bd00           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
            │  0x00007f5c9463bd65:   mov    0x458(%r15),%rbp
   0.00%    │  0x00007f5c9463bd6c:   add    $0xfffffffffffffffc,%r13     ; ImmutableOopMap {}
            │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) org.openjdk.jmh.infra.Blackhole::consumeCPU@39 (line 568)
            │  0x00007f5c9463bd70:   test   %eax,0x0(%rbp)               ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@39 (line 568)
            │                                                            ;   {poll}
            │  0x00007f5c9463bd73:   cmp    %ebx,%r9d
           ╭│  0x00007f5c9463bd76:   jle    0x00007f5c9463bd9c
           ││  0x00007f5c9463bd78:   mov    %r9d,%ecx
   0.00%   ││  0x00007f5c9463bd7b:   mov    %ecx,%r9d
           ││  0x00007f5c9463bd7e:   sub    %ebx,%r9d
           ││  0x00007f5c9463bd81:   cmp    %ebx,%ecx
           ││  0x00007f5c9463bd83:   cmovl  %edi,%r9d
   0.00%   ││  0x00007f5c9463bd87:   cmp    $0xfa0,%r9d
           ││  0x00007f5c9463bd8e:   cmova  %edx,%r9d
           ││  0x00007f5c9463bd92:   mov    %ecx,%ebp
   0.00%   ││  0x00007f5c9463bd94:   sub    %r9d,%ebp
           │╰  0x00007f5c9463bd97:   jmp    0x00007f5c9463bd03
           ↘   0x00007f5c9463bd9c:   add    $0xfffffffd,%ecx
               0x00007f5c9463bd9f:   nop
               0x00007f5c9463bda0:   cmp    %r8d,%r9d
               0x00007f5c9463bda3:   jle    0x00007f5c9463be67           ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@14 (line 569)
               0x00007f5c9463bda9:   mov    %r10,%rcx
               0x00007f5c9463bdac:   imul   %r11,%rcx
               0x00007f5c9463bdb0:   movslq %r9d,%rbx
               0x00007f5c9463bdb3:   add    %rsi,%rbx
....................................................................................................
  98.79%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.79%         c2, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 605 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 997 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%         c2, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 2, compile id 810 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.77%  <...other 1096 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.79%         c2, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 605 
   0.83%              kernel  [unknown] 
   0.05%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 997 
   0.02%                      <unknown> 
   0.01%         c2, level 4  java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue::offer, version 3, compile id 870 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%         c2, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 2, compile id 810 
   0.01%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 10, compile id 984 
   0.01%           libjvm.so  defaultStream::write 
   0.01%         c2, level 4  java.lang.VirtualThread::scheduleUnpark, version 2, compile id 864 
   0.01%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark::cpuBoundWork, version 3, compile id 966 
   0.01%  libpthread-2.31.so  __libc_write 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.19%  <...other 279 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.92%         c2, level 4
   0.83%              kernel
   0.12%           libjvm.so
   0.06%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%                    
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%         interpreter
   0.00%              [vdso]
   0.00%    Unknown, level 0
   0.00%         c1, level 3
   0.00%        runtime stub
   0.00%    perf-3159581.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks
# Parameters: (backoffType = PARK, cpuLoadFactor = 16, cpuTokens = _1_M, threadType = PLATFORM)

# Run progress: 83.33% complete, ETA 00:02:25
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.643 s/op
# Warmup Iteration   2: 4.506 s/op
# Warmup Iteration   3: 4.457 s/op
# Warmup Iteration   4: 4.447 s/op
# Warmup Iteration   5: 4.462 s/op
Iteration   1: 4.453 s/op
Iteration   2: 4.462 s/op
Iteration   3: 4.467 s/op
Iteration   4: 4.485 s/op
Iteration   5: 4.508 s/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks":
  4.475 ±(99.9%) 0.085 s/op [Average]
  (min, avg, max) = (4.453, 4.475, 4.508), stdev = 0.022
  CI (99.9%): [4.390, 4.560] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm":
PrintAssembly processed: 151745 total address lines.
Perf output processed (skipped 74.069 seconds):
 Column 1: cycles (397248 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, org.openjdk.jmh.infra.Blackhole::consumeCPU, version 4, compile id 597 

               0x00007fd13c63b151:   mov    $0xfa0,%edx
               0x00007fd13c63b156:   movabs $0x5deece66d,%r11
               0x00007fd13c63b160:   movabs $0xffffffffffff,%rax         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@39 (line 568)
               0x00007fd13c63b16a:   mov    $0x7ffffffd,%r14d
               0x00007fd13c63b170:   xor    %edi,%edi
               0x00007fd13c63b172:   jmp    0x00007fd13c63b26c
               0x00007fd13c63b177:   nopw   0x0(%rax,%rax,1)
          ↗    0x00007fd13c63b180:   mov    %r9d,%ecx                    ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@14 (line 569)
   3.53%  │ ↗  0x00007fd13c63b183:   mov    %r10,%r9
   0.00%  │ │  0x00007fd13c63b186:   imul   %r11,%r9
   7.60%  │ │  0x00007fd13c63b18a:   movslq %ecx,%r13
          │ │  0x00007fd13c63b18d:   add    %rsi,%r13
          │ │  0x00007fd13c63b190:   add    %r13,%r9
   5.29%  │ │  0x00007fd13c63b193:   add    $0xb,%r9
   1.74%  │ │  0x00007fd13c63b197:   and    %rax,%r9
   5.90%  │ │  0x00007fd13c63b19a:   add    %r10,%r9
   2.37%  │ │  0x00007fd13c63b19d:   mov    %r9,%r10
   0.05%  │ │  0x00007fd13c63b1a0:   imul   %r11,%r10
   9.63%  │ │  0x00007fd13c63b1a4:   add    %r13,%r10
   5.20%  │ │  0x00007fd13c63b1a7:   add    $0xa,%r10
   1.97%  │ │  0x00007fd13c63b1ab:   and    %rax,%r10
   4.69%  │ │  0x00007fd13c63b1ae:   add    %r9,%r10
   2.86%  │ │  0x00007fd13c63b1b1:   mov    %r10,%r9
   0.11%  │ │  0x00007fd13c63b1b4:   imul   %r11,%r9
   9.31%  │ │  0x00007fd13c63b1b8:   add    %r13,%r9
   4.52%  │ │  0x00007fd13c63b1bb:   add    $0x9,%r9
   2.68%  │ │  0x00007fd13c63b1bf:   and    %rax,%r9
   4.77%  │ │  0x00007fd13c63b1c2:   add    %r10,%r9
   3.42%  │ │  0x00007fd13c63b1c5:   mov    %r9,%r10
   0.00%  │ │  0x00007fd13c63b1c8:   imul   %r11,%r10
   9.47%  │ │  0x00007fd13c63b1cc:   add    %r13,%r10
   4.34%  │ │  0x00007fd13c63b1cf:   add    $0x8,%r10
   2.82%  │ │  0x00007fd13c63b1d3:   and    %rax,%r10
   3.42%  │ │  0x00007fd13c63b1d6:   add    %r9,%r10                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   3.56%  │ │  0x00007fd13c63b1d9:   lea    -0x4(%rcx),%r9d
   0.00%  │ │  0x00007fd13c63b1dd:   data16 xchg %ax,%ax
          │ │  0x00007fd13c63b1e0:   cmp    %ebp,%r9d
          ╰ │  0x00007fd13c63b1e3:   jg     0x00007fd13c63b180           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
            │  0x00007fd13c63b1e5:   mov    0x458(%r15),%rbp
   0.00%    │  0x00007fd13c63b1ec:   add    $0xfffffffffffffffc,%r13     ; ImmutableOopMap {}
            │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) org.openjdk.jmh.infra.Blackhole::consumeCPU@39 (line 568)
            │  0x00007fd13c63b1f0:   test   %eax,0x0(%rbp)               ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@39 (line 568)
            │                                                            ;   {poll}
   0.00%    │  0x00007fd13c63b1f3:   cmp    %ebx,%r9d
           ╭│  0x00007fd13c63b1f6:   jle    0x00007fd13c63b21c
           ││  0x00007fd13c63b1f8:   mov    %r9d,%ecx
   0.01%   ││  0x00007fd13c63b1fb:   mov    %ecx,%r9d
           ││  0x00007fd13c63b1fe:   sub    %ebx,%r9d
           ││  0x00007fd13c63b201:   cmp    %ebx,%ecx
           ││  0x00007fd13c63b203:   cmovl  %edi,%r9d
   0.00%   ││  0x00007fd13c63b207:   cmp    $0xfa0,%r9d
           ││  0x00007fd13c63b20e:   cmova  %edx,%r9d
           ││  0x00007fd13c63b212:   mov    %ecx,%ebp
   0.00%   ││  0x00007fd13c63b214:   sub    %r9d,%ebp
           │╰  0x00007fd13c63b217:   jmp    0x00007fd13c63b183
           ↘   0x00007fd13c63b21c:   add    $0xfffffffd,%ecx
               0x00007fd13c63b21f:   nop
               0x00007fd13c63b220:   cmp    %r8d,%r9d
               0x00007fd13c63b223:   jle    0x00007fd13c63b2e7           ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@14 (line 569)
               0x00007fd13c63b229:   mov    %r10,%rcx
               0x00007fd13c63b22c:   imul   %r11,%rcx
               0x00007fd13c63b230:   movslq %r9d,%rbx
               0x00007fd13c63b233:   add    %rsi,%rbx
....................................................................................................
  99.28%  <total for region 1>

....[Hottest Regions]...............................................................................
  99.28%         c2, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 4, compile id 597 
   0.11%              kernel  [unknown] 
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
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.40%  <...other 693 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  99.28%         c2, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 4, compile id 597 
   0.60%              kernel  [unknown] 
   0.01%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.00%           libjvm.so  Unsafe_Park 
   0.00%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.00%           libjvm.so  defaultStream::write 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark::cpuBoundWork, version 3, compile id 694 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.00%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%           libjvm.so  Parker::park 
   0.00%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.06%  <...other 134 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.29%         c2, level 4
   0.60%              kernel
   0.05%           libjvm.so
   0.03%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%                    
   0.00%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%         interpreter
   0.00%         c1, level 3
   0.00%              [vdso]
   0.00%    Unknown, level 0
   0.00%    perf-3159654.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:34

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

Benchmark                                      (backoffType)  (cpuLoadFactor)  (cpuTokens)  (threadType)  Mode  Cnt  Score   Error  Units
VPThreadCpuBoundBenchmark.cpu_bound_tasks               NONE               16         _1_M       VIRTUAL  avgt    5  4.409 ± 0.115   s/op
VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm           NONE               16         _1_M       VIRTUAL  avgt         NaN            ---
VPThreadCpuBoundBenchmark.cpu_bound_tasks               NONE               16         _1_M      PLATFORM  avgt    5  4.402 ± 0.082   s/op
VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm           NONE               16         _1_M      PLATFORM  avgt         NaN            ---
VPThreadCpuBoundBenchmark.cpu_bound_tasks              YIELD               16         _1_M       VIRTUAL  avgt    5  4.430 ± 0.178   s/op
VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm          YIELD               16         _1_M       VIRTUAL  avgt         NaN            ---
VPThreadCpuBoundBenchmark.cpu_bound_tasks              YIELD               16         _1_M      PLATFORM  avgt    5  4.410 ± 0.119   s/op
VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm          YIELD               16         _1_M      PLATFORM  avgt         NaN            ---
VPThreadCpuBoundBenchmark.cpu_bound_tasks               PARK               16         _1_M       VIRTUAL  avgt    5  4.441 ± 0.075   s/op
VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm           PARK               16         _1_M       VIRTUAL  avgt         NaN            ---
VPThreadCpuBoundBenchmark.cpu_bound_tasks               PARK               16         _1_M      PLATFORM  avgt    5  4.475 ± 0.085   s/op
VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm           PARK               16         _1_M      PLATFORM  avgt         NaN            ---
