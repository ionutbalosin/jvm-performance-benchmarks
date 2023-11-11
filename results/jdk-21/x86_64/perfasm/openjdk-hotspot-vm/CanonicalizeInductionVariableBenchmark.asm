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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.baseline

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 16.570 ns/op
# Warmup Iteration   2: 15.363 ns/op
# Warmup Iteration   3: 16.404 ns/op
# Warmup Iteration   4: 15.588 ns/op
# Warmup Iteration   5: 15.580 ns/op
Iteration   1: 15.623 ns/op
Iteration   2: 15.619 ns/op
Iteration   3: 15.694 ns/op
Iteration   4: 15.525 ns/op
Iteration   5: 15.469 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.baseline":
  15.586 ±(99.9%) 0.342 ns/op [Average]
  (min, avg, max) = (15.469, 15.586, 15.694), stdev = 0.089
  CI (99.9%): [15.244, 15.928] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.baseline:asm":
PrintAssembly processed: 126568 total address lines.
Perf output processed (skipped 56.263 seconds):
 Column 1: cycles (50334 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 597 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@20 (line 190)
              0x00007f53f863b835:   mov    0x38(%rsp),%r10
              0x00007f53f863b83a:   nopw   0x0(%rax,%rax,1)
              0x00007f53f863b840:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f53f863b918
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@30 (line 192)
              0x00007f53f863b848:   mov    $0x1,%ebp
              0x00007f53f863b84d:   test   %r11d,%r11d
          ╭   0x00007f53f863b850:   jne    0x00007f53f863b885           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 193)
   0.41%  │↗  0x00007f53f863b852:   mov    0x40(%rsp),%rsi
          ││  0x00007f53f863b857:   call   0x00007f53f80c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
   3.45%  ││  0x00007f53f863b85c:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {other}
   0.26%  ││  0x00007f53f863b864:   mov    0x38(%rsp),%r10
  17.04%  ││  0x00007f53f863b869:   movzbl 0x94(%r10),%r11d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
  12.26%  ││  0x00007f53f863b871:   mov    0x458(%r15),%r10
          ││  0x00007f53f863b878:   add    $0x1,%rbp                    ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
          ││  0x00007f53f863b87c:   test   %eax,(%r10)                  ;   {poll}
          ││  0x00007f53f863b87f:   nop
   2.53%  ││  0x00007f53f863b880:   test   %r11d,%r11d
          │╰  0x00007f53f863b883:   je     0x00007f53f863b852           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 193)
          ↘   0x00007f53f863b885:   movabs $0x7f540f09eb90,%r10
              0x00007f53f863b88f:   call   *%r10
              0x00007f53f863b892:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@37 (line 193)
                                                                        ;   {other}
              0x00007f53f863b89a:   mov    0x30(%rsp),%r10
              0x00007f53f863b89f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 193)
....................................................................................................
  35.96%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline, version 4, compile id 560 

                     # parm0:    rdx:rdx   = long
                     #           [sp+0x30]  (sp of caller)
                     0x00007f53f8637b00:   mov    0x8(%rsi),%r10d
                     0x00007f53f8637b04:   movabs $0x7f537f000000,%r11
                     0x00007f53f8637b0e:   add    %r11,%r10
                     0x00007f53f8637b11:   cmp    %r10,%rax
                     0x00007f53f8637b14:   jne    0x00007f53f80c4080           ;   {runtime_call ic_miss_stub}
                     0x00007f53f8637b1a:   xchg   %ax,%ax
                     0x00007f53f8637b1c:   nopl   0x0(%rax)
                   [Verified Entry Point]
   1.75%             0x00007f53f8637b20:   mov    %eax,-0x14000(%rsp)
   6.24%             0x00007f53f8637b27:   push   %rbp
   2.33%             0x00007f53f8637b28:   sub    $0x20,%rsp
                     0x00007f53f8637b2c:   cmpl   $0x1,0x20(%r15)
   0.93%             0x00007f53f8637b34:   jne    0x00007f53f8637c2a           ;*synchronization entry
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@-1 (line 90)
   1.50%             0x00007f53f8637b3a:   xor    %r10d,%r10d
                     0x00007f53f8637b3d:   data16 xchg %ax,%ax
                     0x00007f53f8637b40:   test   %rdx,%rdx
          ╭          0x00007f53f8637b43:   je     0x00007f53f8637bd5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@5 (line 90)
   0.92%  │          0x00007f53f8637b49:   test   %rdx,%rdx
          │╭         0x00007f53f8637b4c:   jle    0x00007f53f8637bea
   1.66%  ││         0x00007f53f8637b52:   mov    $0x1,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@12 (line 90)
          ││         0x00007f53f8637b57:   mov    $0x2,%r11d
          ││         0x00007f53f8637b5d:   mov    $0x7ffffffd,%r8d
   0.96%  ││         0x00007f53f8637b63:   xor    %r9d,%r9d
   1.76%  ││╭        0x00007f53f8637b66:   jmp    0x00007f53f8637b94
          │││        0x00007f53f8637b68:   nopl   0x0(%rax,%rax,1)
          │││  ↗     0x00007f53f8637b70:   mov    %ecx,%edi
   0.99%  │││  │     0x00007f53f8637b72:   dec    %edi
   1.46%  │││  │     0x00007f53f8637b74:   movslq %ecx,%rax
          │││  │     0x00007f53f8637b77:   add    %r9,%rax
          │││  │↗    0x00007f53f8637b7a:   movslq %edi,%rcx
   0.92%  │││  ││    0x00007f53f8637b7d:   add    %r9,%rcx
   1.48%  │││  ││    0x00007f53f8637b80:   add    $0x1,%rcx
          │││  ││↗   0x00007f53f8637b84:   cmp    %rdx,%rcx
          │││╭ │││   0x00007f53f8637b87:   jge    0x00007f53f8637bd7
          ││││ │││   0x00007f53f8637b8d:   lea    0x1(%rcx),%rax
          ││││ │││   0x00007f53f8637b91:   mov    %rcx,%r9                     ;*lload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││││ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@8 (line 90)
          ││↘│ │││   0x00007f53f8637b94:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {}
          ││ │ │││                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││ │ │││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@12 (line 90)
          ││ │ │││   0x00007f53f8637b9b:   test   %eax,(%rcx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@12 (line 90)
          ││ │ │││                                                             ;   {poll}
   1.14%  ││ │ │││   0x00007f53f8637b9d:   mov    %rdx,%rcx
   1.44%  ││ │ │││   0x00007f53f8637ba0:   sub    %r9,%rcx
          ││ │ │││   0x00007f53f8637ba3:   cmp    %r9,%rdx
          ││ │ │││   0x00007f53f8637ba6:   cmovl  %r10,%rcx
   0.97%  ││ │ │││   0x00007f53f8637baa:   cmp    $0x7ffffffd,%rcx
   1.43%  ││ │ │││   0x00007f53f8637bb1:   cmova  %r8,%rcx
          ││ │ │││   0x00007f53f8637bb5:   mov    %ecx,%ecx
   0.90%  ││ │ │││   0x00007f53f8637bb7:   cmp    $0x1,%ecx
          ││ │╭│││   0x00007f53f8637bba:   jle    0x00007f53f8637bd0
   1.50%  ││ │││││   0x00007f53f8637bbc:   nopl   0x0(%rax)
          ││ │││││   0x00007f53f8637bc0:   cmp    %ecx,%r11d
          ││ ││╰││   0x00007f53f8637bc3:   jl     0x00007f53f8637b70
          ││ ││ ││   0x00007f53f8637bc5:   lea    0x2(%r9),%rax
          ││ ││ ││   0x00007f53f8637bc9:   mov    $0x1,%edi
          ││ ││ ╰│   0x00007f53f8637bce:   jmp    0x00007f53f8637b7a
          ││ │↘  │   0x00007f53f8637bd0:   mov    %rax,%rcx
          ││ │   ╰   0x00007f53f8637bd3:   jmp    0x00007f53f8637b84
          ↘│ │       0x00007f53f8637bd5:   xor    %eax,%eax                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@5 (line 90)
   0.00%   │ ↘       0x00007f53f8637bd7:   add    $0x20,%rsp
   1.01%   │         0x00007f53f8637bdb:   pop    %rbp
   2.86%   │         0x00007f53f8637bdc:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │         0x00007f53f8637be3:   ja     0x00007f53f8637c14
   0.00%   │         0x00007f53f8637be9:   ret    
           ↘         0x00007f53f8637bea:   cmp    %rdx,%r10
                     0x00007f53f8637bed:   mov    $0xffffffff,%ebp
                  ╭  0x00007f53f8637bf2:   jl     0x00007f53f8637bfc
                  │  0x00007f53f8637bf4:   setne  %bpl
                  │  0x00007f53f8637bf8:   movzbl %bpl,%ebp                    ;*lcmp {reexecute=0 rethrow=0 return_oop=0}
                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@4 (line 90)
                  ↘  0x00007f53f8637bfc:   mov    $0xffffff6e,%esi
                     0x00007f53f8637c01:   mov    %rdx,(%rsp)
                     0x00007f53f8637c05:   xchg   %ax,%ax
                     0x00007f53f8637c07:   call   0x00007f53f80c9f00           ; ImmutableOopMap {}
....................................................................................................
  34.13%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline, version 2, compile id 564 

              # {method} {0x00007f5374478ed0} &apos;baseline&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/CanonicalizeInductionVariableBenchmark&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007f53f8637f20:   mov    0x8(%rsi),%r10d
              0x00007f53f8637f24:   movabs $0x7f537f000000,%r11
              0x00007f53f8637f2e:   add    %r11,%r10
              0x00007f53f8637f31:   cmp    %r10,%rax
              0x00007f53f8637f34:   jne    0x00007f53f80c4080           ;   {runtime_call ic_miss_stub}
              0x00007f53f8637f3a:   xchg   %ax,%ax
              0x00007f53f8637f3c:   nopl   0x0(%rax)
            [Verified Entry Point]
   2.53%      0x00007f53f8637f40:   mov    %eax,-0x14000(%rsp)
   5.41%      0x00007f53f8637f47:   push   %rbp
   0.49%      0x00007f53f8637f48:   sub    $0x10,%rsp
   0.78%      0x00007f53f8637f4c:   cmpl   $0x1,0x20(%r15)
   1.16%      0x00007f53f8637f54:   jne    0x00007f53f8637fa2           ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@-1 (line 71)
   0.48%      0x00007f53f8637f5a:   mov    $0x400000,%edx
   0.74%      0x00007f53f8637f5f:   call   0x00007f53f8637b20           ; ImmutableOopMap {}
                                                                        ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@4 (line 71)
                                                                        ;   {optimized virtual_call}
  11.32%      0x00007f53f8637f64:   nopl   0x1d4(%rax,%rax,1)           ;   {other}
   0.01%      0x00007f53f8637f6c:   add    $0x10,%rsp
   0.19%      0x00007f53f8637f70:   pop    %rbp
   5.58%   ↗  0x00007f53f8637f71:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ╭│  0x00007f53f8637f78:   ja     0x00007f53f8637f8c
          ││  0x00007f53f8637f7e:   ret                                 ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@4 (line 71)
          ││  0x00007f53f8637f7f:   mov    %rax,%rsi
          ││  0x00007f53f8637f82:   add    $0x10,%rsp
          ││  0x00007f53f8637f86:   pop    %rbp
          ││  0x00007f53f8637f87:   jmp    0x00007f53f819d380           ;   {runtime_call _rethrow_Java}
          ↘╰  0x00007f53f8637f8c:   movabs $0x7f53f8637f71,%r10         ;   {internal_word}
              0x00007f53f8637f96:   mov    %r10,0x468(%r15)
              0x00007f53f8637f9d:   jmp    0x00007f53f80cb000           ;   {runtime_call SafepointBlob}
....................................................................................................
  28.70%  <total for region 3>

....[Hottest Regions]...............................................................................
  35.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 597 
  34.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline, version 4, compile id 560 
  28.70%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline, version 2, compile id 564 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  syscall 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.64%  <...other 225 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  35.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 597 
  34.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline, version 4, compile id 560 
  28.70%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline, version 2, compile id 564 
   0.94%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_str_init_static_internal 
   0.01%    perf-1932162.map  [unknown] 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.00%      hsdis-amd64.so  putop 
   0.00%           libjvm.so  decode_env::print_hook_comments 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.11%  <...other 52 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.79%         c2, level 4
   0.94%              kernel
   0.10%           libjvm.so
   0.08%        libc-2.31.so
   0.05%                    
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.01%    perf-1932162.map
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.canonicalize

# Run progress: 33.33% complete, ETA 00:03:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3264571.794 ns/op
# Warmup Iteration   2: 3244709.638 ns/op
# Warmup Iteration   3: 3244481.061 ns/op
# Warmup Iteration   4: 3244534.347 ns/op
# Warmup Iteration   5: 3244550.032 ns/op
Iteration   1: 3244472.393 ns/op
Iteration   2: 3244470.637 ns/op
Iteration   3: 3244404.087 ns/op
Iteration   4: 3244359.439 ns/op
Iteration   5: 3244495.638 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.canonicalize":
  3244440.439 ±(99.9%) 218.356 ns/op [Average]
  (min, avg, max) = (3244359.439, 3244440.439, 3244495.638), stdev = 56.706
  CI (99.9%): [3244222.083, 3244658.795] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.canonicalize:asm":
PrintAssembly processed: 123268 total address lines.
Perf output processed (skipped 56.161 seconds):
 Column 1: cycles (50367 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize, version 2, compile id 576 

              0x00007faf64639b27:   mov    %rbp,0x10(%rsp)
              0x00007faf64639b2c:   cmpl   $0x0,0x20(%r15)
              0x00007faf64639b34:   jne    0x00007faf64639b98           ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@-1 (line 65)
              0x00007faf64639b3a:   mov    $0x1,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@27 (line 82)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
              0x00007faf64639b3f:   mov    $0x2001,%r10d
              0x00007faf64639b45:   movabs $0x101004000000,%r11
          ╭   0x00007faf64639b4f:   jmp    0x00007faf64639b59
  10.67%  │↗  0x00007faf64639b51:   add    $0x1,%r10
   8.83%  ││  0x00007faf64639b55:   add    $0x1,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@24 (line 82)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
   6.27%  ↘│  0x00007faf64639b59:   mov    %r10,%r8
  23.81%   │  0x00007faf64639b5c:   imul   %r10,%r8
  10.49%   │  0x00007faf64639b60:   mov    0x458(%r15),%r9              ; ImmutableOopMap {}
           │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@27 (line 82)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
   9.12%   │  0x00007faf64639b67:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@27 (line 82)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
           │                                                            ;   {poll}
  29.53%   │  0x00007faf64639b6a:   cmp    %r11,%r8
           ╰  0x00007faf64639b6d:   jl     0x00007faf64639b51           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@14 (line 82)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
              0x00007faf64639b6f:   add    $0x10,%rsp
              0x00007faf64639b73:   pop    %rbp
              0x00007faf64639b74:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007faf64639b7b:   ja     0x00007faf64639b82
....................................................................................................
  98.72%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.72%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize, version 2, compile id 576 
   0.24%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.57%  <...other 209 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.72%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize, version 2, compile id 576 
   1.06%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%           libjvm.so  decode_env::print_hook_comments 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::hold 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%           libjvm.so  VMError::is_error_reported 
   0.00%         interpreter  method entry point (kind = zerolocals)  
   0.00%              [vdso]  __vdso_clock_gettime 
   0.00%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  _IO_fflush 
   0.00%           libjvm.so  LIR_List::metadata2reg 
   0.00%           libjvm.so  Relocation::copy_into 
   0.09%  <...other 45 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.72%         c2, level 4
   1.06%              kernel
   0.09%           libjvm.so
   0.05%        libc-2.31.so
   0.03%                    
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%  libpthread-2.31.so
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.manual_canonicalize

# Run progress: 66.67% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.403 ns/op
# Warmup Iteration   2: 6.575 ns/op
# Warmup Iteration   3: 7.379 ns/op
# Warmup Iteration   4: 6.575 ns/op
# Warmup Iteration   5: 6.550 ns/op
Iteration   1: 6.553 ns/op
Iteration   2: 6.579 ns/op
Iteration   3: 6.583 ns/op
Iteration   4: 6.576 ns/op
Iteration   5: 6.583 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.manual_canonicalize":
  6.575 ±(99.9%) 0.048 ns/op [Average]
  (min, avg, max) = (6.553, 6.575, 6.583), stdev = 0.012
  CI (99.9%): [6.527, 6.623] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.manual_canonicalize:asm":
PrintAssembly processed: 120932 total address lines.
Perf output processed (skipped 56.010 seconds):
 Column 1: cycles (50534 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub, version 6, compile id 574 

             0x00007fa59c63a850:   jne    0x00007fa59c63a885           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@36 (line 193)
          ↗  0x00007fa59c63a852:   mov    0x40(%rsp),%rsi
          │  0x00007fa59c63a857:   call   0x00007fa59c0c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          │                                                            ;*invokevirtual manual_canonicalize {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@17 (line 190)
          │                                                            ;   {optimized virtual_call}
          │  0x00007fa59c63a85c:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual manual_canonicalize {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@17 (line 190)
          │                                                            ;   {other}
   5.86%  │  0x00007fa59c63a864:   mov    0x38(%rsp),%r10
  17.44%  │  0x00007fa59c63a869:   movzbl 0x94(%r10),%r11d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@33 (line 192)
  23.31%  │  0x00007fa59c63a871:   mov    0x458(%r15),%r10
          │  0x00007fa59c63a878:   add    $0x1,%rbp                    ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          │                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@33 (line 192)
          │  0x00007fa59c63a87c:   test   %eax,(%r10)                  ;   {poll}
          │  0x00007fa59c63a87f:   nop
   5.69%  │  0x00007fa59c63a880:   test   %r11d,%r11d
          ╰  0x00007fa59c63a883:   je     0x00007fa59c63a852           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@36 (line 193)
             0x00007fa59c63a885:   movabs $0x7fa5b1b5fb90,%r10
             0x00007fa59c63a88f:   call   *%r10
             0x00007fa59c63a892:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@37 (line 193)
                                                                       ;   {other}
             0x00007fa59c63a89a:   mov    0x30(%rsp),%r10
             0x00007fa59c63a89f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@40 (line 193)
....................................................................................................
  52.28%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::manual_canonicalize, version 2, compile id 542 

                # {method} {0x00007fa51b478fa0} &apos;manual_canonicalize&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/CanonicalizeInductionVariableBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fa59c637900:   mov    0x8(%rsi),%r10d
                0x00007fa59c637904:   movabs $0x7fa51f000000,%r11
                0x00007fa59c63790e:   add    %r11,%r10
                0x00007fa59c637911:   cmp    %r10,%rax
                0x00007fa59c637914:   jne    0x00007fa59c0c4080           ;   {runtime_call ic_miss_stub}
                0x00007fa59c63791a:   xchg   %ax,%ax
                0x00007fa59c63791c:   nopl   0x0(%rax)
              [Verified Entry Point]
   6.01%        0x00007fa59c637920:   sub    $0x18,%rsp
                0x00007fa59c637927:   mov    %rbp,0x10(%rsp)
  11.61%        0x00007fa59c63792c:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007fa59c637934:   jne    0x00007fa59c637968           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::manual_canonicalize@-1 (line 77)
          │  ↗  0x00007fa59c63793a:   mov    $0x400000,%eax
          │  │  0x00007fa59c63793f:   add    $0x10,%rsp
   5.67%  │  │  0x00007fa59c637943:   pop    %rbp
  22.82%  │ ↗│  0x00007fa59c637944:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fa59c63794b:   ja     0x00007fa59c637952
          ││││  0x00007fa59c637951:   ret    
          │↘╰│  0x00007fa59c637952:   movabs $0x7fa59c637944,%r10         ;   {internal_word}
          │  │  0x00007fa59c63795c:   mov    %r10,0x468(%r15)
          │  │  0x00007fa59c637963:   jmp    0x00007fa59c0cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007fa59c637968:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007fa59c63796d:   jmp    0x00007fa59c63793a
                0x00007fa59c637972:   hlt    
                0x00007fa59c637973:   hlt    
                0x00007fa59c637974:   hlt    
....................................................................................................
  46.11%  <total for region 2>

....[Hottest Regions]...............................................................................
  52.28%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub, version 6, compile id 574 
  46.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::manual_canonicalize, version 2, compile id 542 
   0.57%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.54%  <...other 200 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.28%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub, version 6, compile id 574 
  46.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::manual_canonicalize, version 2, compile id 542 
   1.37%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  decode_env::print_hook_comments 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  clock_gettime@plt 
   0.00%         interpreter  invokevirtual  182 invokevirtual  
   0.00%           libjvm.so  nmethod::copy_scopes_data 
   0.00%           libjvm.so  LIR_Op1::emit_code 
   0.00%           libjvm.so  xmlStream::elem 
   0.10%  <...other 49 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.39%         c2, level 4
   1.37%              kernel
   0.14%           libjvm.so
   0.05%        libc-2.31.so
   0.02%                    
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.00%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:27

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

Benchmark                                                       Mode  Cnt        Score     Error  Units
CanonicalizeInductionVariableBenchmark.baseline                 avgt    5       15.586 ±   0.342  ns/op
CanonicalizeInductionVariableBenchmark.baseline:asm             avgt               NaN              ---
CanonicalizeInductionVariableBenchmark.canonicalize             avgt    5  3244440.439 ± 218.356  ns/op
CanonicalizeInductionVariableBenchmark.canonicalize:asm         avgt               NaN              ---
CanonicalizeInductionVariableBenchmark.manual_canonicalize      avgt    5        6.575 ±   0.048  ns/op
CanonicalizeInductionVariableBenchmark.manual_canonicalize:asm  avgt               NaN              ---
