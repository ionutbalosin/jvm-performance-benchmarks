# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.no_if_branch
# Parameters: (size = 16384)

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 994.600 ns/op
# Warmup Iteration   2: 987.406 ns/op
# Warmup Iteration   3: 989.310 ns/op
# Warmup Iteration   4: 986.817 ns/op
# Warmup Iteration   5: 985.594 ns/op
Iteration   1: 985.556 ns/op
Iteration   2: 981.865 ns/op
Iteration   3: 981.929 ns/op
Iteration   4: 981.755 ns/op
Iteration   5: 984.994 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.no_if_branch":
  983.220 ±(99.9%) 7.269 ns/op [Average]
  (min, avg, max) = (981.755, 983.220, 985.556), stdev = 1.888
  CI (99.9%): [975.951, 990.488] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.no_if_branch:asm":
PrintAssembly processed: 226702 total address lines.
Perf output processed (skipped 60.654 seconds):
 Column 1: cycles (50758 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch, version 4, compile id 996 

                     #           [sp+0x20]  (sp of caller)
                     0x00007fa68ad81b00:   mov    0x8(%rsi),%r10d
                     0x00007fa68ad81b04:   movabs $0x7fa60f000000,%r12
                     0x00007fa68ad81b0e:   add    %r12,%r10
                     0x00007fa68ad81b11:   xor    %r12,%r12
                     0x00007fa68ad81b14:   cmp    %r10,%rax
                     0x00007fa68ad81b17:   jne    0x00007fa68a764080           ;   {runtime_call ic_miss_stub}
                     0x00007fa68ad81b1d:   data16 xchg %ax,%ax
                   [Verified Entry Point]
                     0x00007fa68ad81b20:   mov    %eax,-0x14000(%rsp)
   0.04%             0x00007fa68ad81b27:   sub    $0x18,%rsp
                     0x00007fa68ad81b2b:   nop
                     0x00007fa68ad81b2c:   cmpl   $0x1,0x20(%r15)
   0.04%  ╭          0x00007fa68ad81b34:   jne    0x00007fa68ad81c02
          │       ↗  0x00007fa68ad81b3a:   mov    %rbp,0x10(%rsp)
          │       │  0x00007fa68ad81b3f:   mov    0x18(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
          │       │                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
          │       │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@0 (line 76)
          │       │  0x00007fa68ad81b42:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007fa68ad81c26
   0.05%  │       │  0x00007fa68ad81b4a:   test   %r10,%r10
          │╭      │  0x00007fa68ad81b4d:   je     0x00007fa68ad81bfa           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@13 (line 78)
          ││      │  0x00007fa68ad81b53:   shl    $0x3,%rax                    ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@3 (line 78)
          ││      │  0x00007fa68ad81b57:   lea    0x10(%rax),%rax
          ││      │  0x00007fa68ad81b5b:   vpxor  %xmm0,%xmm0,%xmm0
   0.05%  ││      │  0x00007fa68ad81b5f:   nop
          ││      │  0x00007fa68ad81b60:   cmp    $0x8,%r10
          ││╭     │  0x00007fa68ad81b64:   jb     0x00007fa68ad81bf1
          │││     │  0x00007fa68ad81b6a:   lea    -0x8(%r10),%r11
          │││     │  0x00007fa68ad81b6e:   mov    $0x0,%r8
   0.07%  │││     │  0x00007fa68ad81b75:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.00%  │││↗    │  0x00007fa68ad81b80:   vmovdqu (%rax,%r8,4),%ymm1
   2.08%  ││││    │  0x00007fa68ad81b86:   vpaddd %ymm1,%ymm0,%ymm0
  94.17%  ││││    │  0x00007fa68ad81b8a:   lea    0x8(%r8),%r8
   0.00%  ││││    │  0x00007fa68ad81b8e:   cmp    %r11,%r8
          │││╰    │  0x00007fa68ad81b91:   jle    0x00007fa68ad81b80           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@13 (line 78)
          │││   ↗ │  0x00007fa68ad81b93:   vextracti128 $0x1,%ymm0,%xmm1
   0.01%  │││   │ │  0x00007fa68ad81b99:   vpaddd %xmm1,%xmm0,%xmm0
   0.21%  │││   │ │  0x00007fa68ad81b9d:   vpshufd $0xe,%xmm0,%xmm1
          │││   │ │  0x00007fa68ad81ba2:   vpaddd %xmm1,%xmm0,%xmm0
   0.02%  │││   │ │  0x00007fa68ad81ba6:   vmovd  %xmm0,%r11d
          │││   │ │  0x00007fa68ad81bab:   vpextrd $0x1,%xmm0,%r9d
   0.00%  │││   │ │  0x00007fa68ad81bb1:   add    %r9d,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@28 (line 79)
   0.05%  │││   │ │  0x00007fa68ad81bb4:   dec    %r10
          │││ ╭ │ │  0x00007fa68ad81bb7:   jmp    0x00007fa68ad81bc7
          │││ │ │ │  0x00007fa68ad81bbc:   nopl   0x0(%rax)                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@13 (line 78)
          │││ │↗│ │  0x00007fa68ad81bc0:   add    (%rax,%r8,4),%r11d           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@28 (line 79)
          │││ │││ │  0x00007fa68ad81bc4:   inc    %r8
          │││ ↘││ │  0x00007fa68ad81bc7:   cmp    %r10,%r8
          │││  ╰│ │  0x00007fa68ad81bca:   jle    0x00007fa68ad81bc0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@13 (line 78)
          │││   │↗│  0x00007fa68ad81bcc:   mov    %r11d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@37 (line 82)
   0.04%  │││   │││  0x00007fa68ad81bcf:   mov    0x10(%rsp),%rbp
   0.02%  │││   │││  0x00007fa68ad81bd4:   add    $0x18,%rsp
          │││   │││  0x00007fa68ad81bd8:   nopl   0x0(%rax,%rax,1)
          │││   │││  0x00007fa68ad81be0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││   │││  0x00007fa68ad81be7:   ja     0x00007fa68ad81c12
   0.05%  │││   │││  0x00007fa68ad81bed:   vzeroupper 
   0.03%  │││   │││  0x00007fa68ad81bf0:   ret    
          ││↘   │││  0x00007fa68ad81bf1:   mov    $0x0,%r8
          ││    ╰││  0x00007fa68ad81bf8:   jmp    0x00007fa68ad81b93
          │↘     ││  0x00007fa68ad81bfa:   mov    $0x0,%r11d
          │      ╰│  0x00007fa68ad81c00:   jmp    0x00007fa68ad81bcc           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch@13 (line 78)
          ↘       │  0x00007fa68ad81c02:   mov    %rbp,0x10(%rsp)
                  │  0x00007fa68ad81c07:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                  ╰  0x00007fa68ad81c0c:   jmp    0x00007fa68ad81b3a
                     0x00007fa68ad81c11:   hlt    
                     0x00007fa68ad81c12:   lea    -0x39(%rip),%rcx        # 0x00007fa68ad81be0
....................................................................................................
  96.92%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch, version 4, compile id 996 
   0.94%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_no_if_branch_jmhTest::no_if_branch_avgt_jmhStub, version 5, compile id 1021 
   0.72%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  fileStream::flush 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.85%  <...other 312 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::no_if_branch, version 4, compile id 996 
   1.73%               kernel  [unknown] 
   0.94%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_no_if_branch_jmhTest::no_if_branch_avgt_jmhStub, version 5, compile id 1021 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  fileStream::flush 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.21%  <...other 94 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.86%       jvmci, level 4
   1.73%               kernel
   0.14%            libjvm.so
   0.11%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.04%                     
   0.02%   libpthread-2.31.so
   0.02%          interpreter
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%          c1, level 3
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.predictable_if_branch
# Parameters: (size = 16384)

# Run progress: 33.33% complete, ETA 00:03:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3320.359 ns/op
# Warmup Iteration   2: 3299.173 ns/op
# Warmup Iteration   3: 3297.951 ns/op
# Warmup Iteration   4: 3297.487 ns/op
# Warmup Iteration   5: 3297.834 ns/op
Iteration   1: 3302.244 ns/op
Iteration   2: 3299.128 ns/op
Iteration   3: 3297.868 ns/op
Iteration   4: 3297.706 ns/op
Iteration   5: 3299.056 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.predictable_if_branch":
  3299.200 ±(99.9%) 7.021 ns/op [Average]
  (min, avg, max) = (3297.706, 3299.200, 3302.244), stdev = 1.823
  CI (99.9%): [3292.180, 3306.221] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.predictable_if_branch:asm":
PrintAssembly processed: 227829 total address lines.
Perf output processed (skipped 60.690 seconds):
 Column 1: cycles (50756 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 4, compile id 982 

               0x00007f3646d81086:   jb     0x00007f3646d81158
               0x00007f3646d8108c:   lea    -0x8(%r8),%r9
               0x00007f3646d81090:   vmovdqa -0x98(%rip),%ymm1        # 0x00007f3646d81000
                                                                         ;   {section_word}
   0.00%       0x00007f3646d81098:   vpcmpeqd %ymm2,%ymm2,%ymm2
               0x00007f3646d8109c:   mov    $0x0,%rcx
          ╭    0x00007f3646d810a3:   jmp    0x00007f3646d810d1
          │    0x00007f3646d810a8:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007f3646d810b3:   data16 data16 xchg %ax,%ax
          │    0x00007f3646d810b7:   nopw   0x0(%rax,%rax,1)
  15.52%  │ ↗  0x00007f3646d810c0:   vpaddd %ymm3,%ymm0,%ymm0
   3.31%  │ │  0x00007f3646d810c4:   lea    0x8(%rcx),%rcx
   3.12%  │ │  0x00007f3646d810c8:   cmp    %r9,%rcx
          │╭│  0x00007f3646d810cb:   jg     0x00007f3646d810eb
  10.22%  ↘││  0x00007f3646d810d1:   vmovdqu (%r11,%rcx,4),%ymm3
  14.97%   ││  0x00007f3646d810d7:   vpcmpgtd %ymm3,%ymm1,%ymm4
  27.28%   ││  0x00007f3646d810db:   vpxor  %ymm2,%ymm4,%ymm4
   5.79%   ││  0x00007f3646d810df:   vptest %ymm4,%ymm4
  17.16%   │╰  0x00007f3646d810e4:   je     0x00007f3646d810c0
           │   0x00007f3646d810e6:   jmp    0x00007f3646d8118d           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@13 (line 91)
   0.01%   ↘   0x00007f3646d810eb:   vextracti128 $0x1,%ymm0,%xmm1
   0.01%       0x00007f3646d810f1:   vpaddd %xmm1,%xmm0,%xmm0
   0.02%       0x00007f3646d810f5:   vpshufd $0xe,%xmm0,%xmm1
               0x00007f3646d810fa:   vpaddd %xmm1,%xmm0,%xmm0
   0.03%       0x00007f3646d810fe:   vmovd  %xmm0,%r9d
               0x00007f3646d81103:   vpextrd $0x1,%xmm0,%ebx
   0.00%       0x00007f3646d81109:   add    %ebx,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 93)
   0.01%       0x00007f3646d8110c:   dec    %r8
               0x00007f3646d8110f:   jmp    0x00007f3646d81136
               0x00007f3646d81114:   nopl   0x0(%rax,%rax,1)
               0x00007f3646d8111c:   data16 data16 xchg %ax,%ax
               0x00007f3646d81120:   mov    (%r11,%rcx,4),%ebx
               0x00007f3646d81124:   cmp    $0x1000,%ebx
               0x00007f3646d8112a:   jge    0x00007f3646d8116a           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@13 (line 91)
               0x00007f3646d81130:   add    %ebx,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 93)
....................................................................................................
  97.44%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.44%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 4, compile id 982 
   0.42%              kernel  [unknown] 
   0.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_predictable_if_branch_jmhTest::predictable_if_branch_avgt_jmhStub, version 5, compile id 1008 
   0.15%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 4, compile id 982 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 4, compile id 982 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%              kernel  [unknown] 
   0.96%  <...other 325 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.57%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 4, compile id 982 
   1.58%              kernel  [unknown] 
   0.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_predictable_if_branch_jmhTest::predictable_if_branch_avgt_jmhStub, version 5, compile id 1008 
   0.09%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%           libjvm.so  defaultStream::write 
   0.02%           libjvm.so  fileStream::write 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  clock_gettime@plt 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  libpthread-2.31.so  __libc_write 
   0.19%  <...other 64 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.94%      jvmci, level 4
   1.58%              kernel
   0.20%           libjvm.so
   0.10%        libc-2.31.so
   0.09%                    
   0.04%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.01%         interpreter
   0.00%    perf-2131236.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch
# Parameters: (size = 16384)

# Run progress: 66.67% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2422.197 ns/op
# Warmup Iteration   2: 2402.014 ns/op
# Warmup Iteration   3: 2402.575 ns/op
# Warmup Iteration   4: 2401.930 ns/op
# Warmup Iteration   5: 2402.425 ns/op
Iteration   1: 2402.589 ns/op
Iteration   2: 2401.944 ns/op
Iteration   3: 2402.466 ns/op
Iteration   4: 2402.232 ns/op
Iteration   5: 2402.466 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch":
  2402.339 ±(99.9%) 0.986 ns/op [Average]
  (min, avg, max) = (2401.944, 2402.339, 2402.589), stdev = 0.256
  CI (99.9%): [2401.353, 2403.326] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch:asm":
PrintAssembly processed: 227253 total address lines.
Perf output processed (skipped 60.672 seconds):
 Column 1: cycles (50945 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 4, compile id 959 

             #           [sp+0x20]  (sp of caller)
             0x00007fd01ad7e9a0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
             0x00007fd01ad7e9a4:   movabs $0x7fcf9b000000,%r12
             0x00007fd01ad7e9ae:   add    %r12,%r10
             0x00007fd01ad7e9b1:   xor    %r12,%r12
             0x00007fd01ad7e9b4:   cmp    %r10,%rax
             0x00007fd01ad7e9b7:   jne    0x00007fd01a764080           ;   {runtime_call ic_miss_stub}
             0x00007fd01ad7e9bd:   data16 xchg %ax,%ax
           [Verified Entry Point]
             0x00007fd01ad7e9c0:   mov    %eax,-0x14000(%rsp)
   0.01%     0x00007fd01ad7e9c7:   sub    $0x18,%rsp
             0x00007fd01ad7e9cb:   nop
             0x00007fd01ad7e9cc:   cmpl   $0x1,0x20(%r15)
   0.01%     0x00007fd01ad7e9d4:   jne    0x00007fd01ad7eace
             0x00007fd01ad7e9da:   mov    %rbp,0x10(%rsp)
             0x00007fd01ad7e9df:   mov    0x18(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                       ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@0 (line 103)
             0x00007fd01ad7e9e2:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007fd01ad7eaf2
   0.01%     0x00007fd01ad7e9ea:   test   %r10,%r10
             0x00007fd01ad7e9ed:   je     0x00007fd01ad7eac6           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@13 (line 105)
             0x00007fd01ad7e9f3:   shl    $0x3,%rax                    ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@3 (line 105)
             0x00007fd01ad7e9f7:   lea    0x10(%rax),%rax
             0x00007fd01ad7e9fb:   vpxor  %xmm0,%xmm0,%xmm0
   0.02%     0x00007fd01ad7e9ff:   nop
             0x00007fd01ad7ea00:   cmp    $0x8,%r10
             0x00007fd01ad7ea04:   jb     0x00007fd01ad7eaba
             0x00007fd01ad7ea0a:   lea    -0x8(%r10),%r11
             0x00007fd01ad7ea0e:   vmovdqa -0x96(%rip),%ymm1        # 0x00007fd01ad7e980
                                                                       ;   {section_word}
   0.02%     0x00007fd01ad7ea16:   mov    $0x0,%r8
             0x00007fd01ad7ea1d:   data16 xchg %ax,%ax
          ↗  0x00007fd01ad7ea20:   vmovdqu (%rax,%r8,4),%ymm2
  33.65%  │  0x00007fd01ad7ea26:   vpaddd %ymm2,%ymm0,%ymm3
  22.32%  │  0x00007fd01ad7ea2a:   vpcmpgtd %ymm2,%ymm1,%ymm2
   5.12%  │  0x00007fd01ad7ea2e:   vpblendvb %ymm2,%ymm3,%ymm0,%ymm0
  35.73%  │  0x00007fd01ad7ea34:   lea    0x8(%r8),%r8
          │  0x00007fd01ad7ea38:   cmp    %r11,%r8
          ╰  0x00007fd01ad7ea3b:   jle    0x00007fd01ad7ea20           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@13 (line 105)
             0x00007fd01ad7ea3d:   vextracti128 $0x1,%ymm0,%xmm1
   0.01%     0x00007fd01ad7ea43:   vpaddd %xmm1,%xmm0,%xmm0
   0.09%     0x00007fd01ad7ea47:   vpshufd $0xe,%xmm0,%xmm1
             0x00007fd01ad7ea4c:   vpaddd %xmm1,%xmm0,%xmm0
   0.02%     0x00007fd01ad7ea50:   vmovd  %xmm0,%r11d
             0x00007fd01ad7ea55:   vpextrd $0x1,%xmm0,%r9d
             0x00007fd01ad7ea5b:   add    %r9d,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@36 (line 107)
   0.02%     0x00007fd01ad7ea5e:   dec    %r10
             0x00007fd01ad7ea61:   jmp    0x00007fd01ad7ea98
             0x00007fd01ad7ea66:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007fd01ad7ea71:   data16 data16 xchg %ax,%ax
             0x00007fd01ad7ea75:   data16 data16 nopw 0x0(%rax,%rax,1) ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@13 (line 105)
             0x00007fd01ad7ea80:   mov    (%rax,%r8,4),%r9d
             0x00007fd01ad7ea84:   mov    %r11d,%ecx
             0x00007fd01ad7ea87:   add    %r9d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@36 (line 107)
....................................................................................................
  97.03%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 4, compile id 959 
   0.94%              kernel  [unknown] 
   0.45%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_unpredictable_if_branch_jmhTest::unpredictable_if_branch_avgt_jmhStub, version 5, compile id 989 
   0.15%              kernel  [unknown] 
   0.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 4, compile id 959 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.90%  <...other 324 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 4, compile id 959 
   2.00%              kernel  [unknown] 
   0.45%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.IfConditionalBranchBenchmark_unpredictable_if_branch_jmhTest::unpredictable_if_branch_avgt_jmhStub, version 5, compile id 989 
   0.10%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_setb 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  Symbol::print_value_on 
   0.15%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.58%      jvmci, level 4
   2.00%              kernel
   0.14%           libjvm.so
   0.11%        libc-2.31.so
   0.10%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%    perf-2131299.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:43

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

Benchmark                                                 (size)  Mode  Cnt     Score   Error  Units
IfConditionalBranchBenchmark.no_if_branch                  16384  avgt    5   983.220 ± 7.269  ns/op
IfConditionalBranchBenchmark.no_if_branch:asm              16384  avgt            NaN            ---
IfConditionalBranchBenchmark.predictable_if_branch         16384  avgt    5  3299.200 ± 7.021  ns/op
IfConditionalBranchBenchmark.predictable_if_branch:asm     16384  avgt            NaN            ---
IfConditionalBranchBenchmark.unpredictable_if_branch       16384  avgt    5  2402.339 ± 0.986  ns/op
IfConditionalBranchBenchmark.unpredictable_if_branch:asm   16384  avgt            NaN            ---
