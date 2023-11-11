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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark.method_args_buster

# Run progress: 0.00% complete, ETA 00:01:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 579.179 ns/op
# Warmup Iteration   2: 571.598 ns/op
# Warmup Iteration   3: 569.913 ns/op
# Warmup Iteration   4: 570.315 ns/op
# Warmup Iteration   5: 572.210 ns/op
Iteration   1: 571.114 ns/op
Iteration   2: 569.902 ns/op
Iteration   3: 569.034 ns/op
Iteration   4: 570.142 ns/op
Iteration   5: 570.822 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark.method_args_buster":
  570.203 ±(99.9%) 3.148 ns/op [Average]
  (min, avg, max) = (569.034, 570.203, 571.114), stdev = 0.818
  CI (99.9%): [567.055, 573.351] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark.method_args_buster:asm":
PrintAssembly processed: 123972 total address lines.
Perf output processed (skipped 56.150 seconds):
 Column 1: cycles (51005 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.lang.Math::round, version 2, compile id 558 

              scopes pcs     [0x00007f8afc638418,0x00007f8afc6384e8] = 208
              dependencies   [0x00007f8afc6384e8,0x00007f8afc6384f0] = 8
             [Disassembly]
             --------------------------------------------------------------------------------
             [Constant Pool (empty)]
             --------------------------------------------------------------------------------
             [Verified Entry Point]
               # {method} {0x00007f8a8342b880} &apos;round&apos; &apos;(D)J&apos; in &apos;java/lang/Math&apos;
               # parm0:    xmm0:xmm0   = double
               #           [sp+0x30]  (sp of caller)
   0.11%       0x00007f8afc6382a0:   mov    %eax,-0x14000(%rsp)
  27.88%       0x00007f8afc6382a7:   push   %rbp
   0.18%       0x00007f8afc6382a8:   sub    $0x20,%rsp
   0.00%       0x00007f8afc6382ac:   cmpl   $0x1,0x20(%r15)
   4.07%       0x00007f8afc6382b4:   jne    0x00007f8afc63839b           ;*synchronization entry
                                                                         ; - java.lang.Math::round@-1 (line 826)
   0.17%       0x00007f8afc6382ba:   vmovq  %xmm0,%r10                   ;*invokestatic doubleToRawLongBits {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.Math::round@1 (line 826)
               0x00007f8afc6382bf:   movabs $0x7ff0000000000000,%r11
   0.00%       0x00007f8afc6382c9:   mov    %r10,%r8
   4.04%       0x00007f8afc6382cc:   and    %r11,%r8
   0.16%       0x00007f8afc6382cf:   sar    $0x34,%r8
               0x00007f8afc6382d3:   mov    $0x432,%r11d
               0x00007f8afc6382d9:   sub    %r8,%r11                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.Math::round@20 (line 829)
   4.23%       0x00007f8afc6382dc:   nopl   0x0(%rax)
   0.14%       0x00007f8afc6382e0:   test   $0xffffffffffffffc0,%r11
          ╭    0x00007f8afc6382e7:   jne    0x00007f8afc63832d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.Math::round@31 (line 831)
          │    0x00007f8afc6382e9:   movabs $0x10000000000000,%r8
          │    0x00007f8afc6382f3:   movabs $0xfffffffffffff,%r9
   4.17%  │    0x00007f8afc6382fd:   mov    %r10,%rcx
   0.09%  │    0x00007f8afc638300:   and    %r9,%rcx
          │    0x00007f8afc638303:   or     %r8,%rcx                     ;*lor {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.Math::round@42 (line 833)
          │    0x00007f8afc638306:   test   %r10,%r10
          │╭   0x00007f8afc638309:   jl     0x00007f8afc638342           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - java.lang.Math::round@48 (line 835)
   3.99%  ││   0x00007f8afc63830b:   mov    %r11d,%r10d
   0.08%  ││   0x00007f8afc63830e:   sarx   %r10,%rcx,%rax
          ││   0x00007f8afc638313:   add    $0x1,%rax
   0.00%  ││   0x00007f8afc638317:   sar    %rax                         ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - java.lang.Math::round@20 (line 829)
   3.99%  ││↗  0x00007f8afc63831a:   add    $0x20,%rsp
   0.17%  │││  0x00007f8afc63831e:   pop    %rbp
          │││  0x00007f8afc63831f:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f8afc638326:   ja     0x00007f8afc638385
   4.01%  │││  0x00007f8afc63832c:   ret    
          ↘││  0x00007f8afc63832d:   vcvttsd2si %xmm0,%rax
   0.01%   ││  0x00007f8afc638332:   cmp    -0x5c1439(%rip),%rax        # Stub::double_sign_flip
           ││                                                            ;   {external_word}
   0.07%   ││  0x00007f8afc638339:   je     0x00007f8afc638374           ;*d2l {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - java.lang.Math::round@68 (line 850)
           ││  0x00007f8afc63833f:   nop
           │╰  0x00007f8afc638340:   jmp    0x00007f8afc63831a
           ↘   0x00007f8afc638342:   xor    %r8d,%r8d
               0x00007f8afc638345:   cmp    %r8,%r10
               0x00007f8afc638348:   mov    $0xffffffff,%ebp
               0x00007f8afc63834d:   jl     0x00007f8afc638357
               0x00007f8afc63834f:   setne  %bpl
               0x00007f8afc638353:   movzbl %bpl,%ebp                    ;*lcmp {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  57.56%  <total for region 1>

....[Hottest Region 2]..............................................................................
c1, level 1, com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod, version 2, compile id 561 

               # parm61:   [sp+0x418]   = double
               # parm62:   [sp+0x420]   = double
               # parm63:   [sp+0x428]   = double
               0x00007f8afc638c20:   mov    0x8(%rsi),%r10d
               0x00007f8afc638c24:   movabs $0x7f8a83000000,%r11
               0x00007f8afc638c2e:   add    %r11,%r10
               0x00007f8afc638c31:   cmp    %rax,%r10
               0x00007f8afc638c34:   jne    0x00007f8afc0c4080           ;   {runtime_call ic_miss_stub}
               0x00007f8afc638c3a:   nopw   0x0(%rax,%rax,1)
             [Verified Entry Point]
   0.08%       0x00007f8afc638c40:   mov    %eax,-0x14000(%rsp)
   0.08%       0x00007f8afc638c47:   push   %rbp
   0.11%       0x00007f8afc638c48:   sub    $0x260,%rsp
               0x00007f8afc638c4f:   nop
   0.03%       0x00007f8afc638c50:   cmpl   $0x1,0x20(%r15)
   0.05%  ╭    0x00007f8afc638c58:   je     0x00007f8afc638c5f
          │    0x00007f8afc638c5a:   call   Stub::nmethod_entry_barrier  ;*dload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@0 (line 133)
          │                                                              ;   {runtime_call StubRoutines (final stubs)}
          ↘    0x00007f8afc638c5f:   vmovsd %xmm7,0x250(%rsp)
   0.08%       0x00007f8afc638c68:   vmovsd %xmm6,0x248(%rsp)
   0.04%       0x00007f8afc638c71:   vmovsd %xmm5,0x240(%rsp)
   0.03%       0x00007f8afc638c7a:   vmovsd %xmm4,0x238(%rsp)
   0.01%       0x00007f8afc638c83:   vmovsd %xmm3,0x230(%rsp)
   0.07%       0x00007f8afc638c8c:   vmovsd %xmm2,0x228(%rsp)
   0.03%       0x00007f8afc638c95:   vmovsd %xmm1,0x220(%rsp)
   0.04%       0x00007f8afc638c9e:   nop
               0x00007f8afc638c9f:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@1 (line 133)
                                                                         ;   {static_call}
   0.30%       0x00007f8afc638ca4:   nopl   0x494(%rax,%rax,1)           ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@1 (line 133)
                                                                         ;   {other}
               0x00007f8afc638cac:   vmovsd 0x220(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@5 (line 134)
               0x00007f8afc638cb5:   mov    %rax,0x28(%rsp)
   0.07%       0x00007f8afc638cba:   nopl   0x0(%rax,%rax,1)
               0x00007f8afc638cbf:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@5 (line 134)
                                                                         ;   {static_call}
   0.46%       0x00007f8afc638cc4:   nopl   0x10004b4(%rax,%rax,1)       ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@5 (line 134)
                                                                         ;   {other}
               0x00007f8afc638ccc:   mov    0x28(%rsp),%rsi
               0x00007f8afc638cd1:   add    %rax,%rsi
   0.08%       0x00007f8afc638cd4:   vmovsd 0x228(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@11 (line 135)
               0x00007f8afc638cdd:   mov    %rsi,0x30(%rsp)
   0.10%       0x00007f8afc638ce2:   nopl   0x0(%rax,%rax,1)
               0x00007f8afc638ce7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@11 (line 135)
                                                                         ;   {static_call}
   0.40%       0x00007f8afc638cec:   nopl   0x20004dc(%rax,%rax,1)       ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@11 (line 135)
                                                                         ;   {other}
               0x00007f8afc638cf4:   mov    0x30(%rsp),%rsi
               0x00007f8afc638cf9:   add    %rax,%rsi
   0.07%       0x00007f8afc638cfc:   vmovsd 0x230(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@17 (line 136)
               0x00007f8afc638d05:   mov    %rsi,0x38(%rsp)
   0.07%       0x00007f8afc638d0a:   nopl   0x0(%rax,%rax,1)
               0x00007f8afc638d0f:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@17 (line 136)
                                                                         ;   {static_call}
   0.40%       0x00007f8afc638d14:   nopl   0x3000504(%rax,%rax,1)       ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@17 (line 136)
                                                                         ;   {other}
               0x00007f8afc638d1c:   mov    0x38(%rsp),%rsi
               0x00007f8afc638d21:   add    %rax,%rsi
   0.08%       0x00007f8afc638d24:   vmovsd 0x238(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@23 (line 137)
               0x00007f8afc638d2d:   mov    %rsi,0x40(%rsp)
   0.05%       0x00007f8afc638d32:   nopl   0x0(%rax,%rax,1)
               0x00007f8afc638d37:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@23 (line 137)
                                                                         ;   {static_call}
   0.36%       0x00007f8afc638d3c:   nopl   0x400052c(%rax,%rax,1)       ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@23 (line 137)
                                                                         ;   {other}
               0x00007f8afc638d44:   mov    0x40(%rsp),%rsi
               0x00007f8afc638d49:   add    %rax,%rsi
   0.06%       0x00007f8afc638d4c:   vmovsd 0x240(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@29 (line 138)
               0x00007f8afc638d55:   mov    %rsi,0x48(%rsp)
   0.05%       0x00007f8afc638d5a:   nopl   0x0(%rax,%rax,1)
               0x00007f8afc638d5f:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@29 (line 138)
                                                                         ;   {static_call}
   0.40%       0x00007f8afc638d64:   nopl   0x5000554(%rax,%rax,1)       ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@29 (line 138)
                                                                         ;   {other}
               0x00007f8afc638d6c:   mov    0x48(%rsp),%rsi
               0x00007f8afc638d71:   add    %rax,%rsi
   0.07%       0x00007f8afc638d74:   vmovsd 0x248(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@35 (line 139)
               0x00007f8afc638d7d:   mov    %rsi,0x50(%rsp)
   0.09%       0x00007f8afc638d82:   nopl   0x0(%rax,%rax,1)
               0x00007f8afc638d87:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@35 (line 139)
                                                                         ;   {static_call}
   0.39%       0x00007f8afc638d8c:   nopl   0x600057c(%rax,%rax,1)       ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@35 (line 139)
                                                                         ;   {other}
               0x00007f8afc638d94:   mov    0x50(%rsp),%rsi
               0x00007f8afc638d99:   add    %rax,%rsi
   0.08%       0x00007f8afc638d9c:   vmovsd 0x250(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@41 (line 140)
               0x00007f8afc638da5:   mov    %rsi,0x58(%rsp)
   0.07%       0x00007f8afc638daa:   nopl   0x0(%rax,%rax,1)
               0x00007f8afc638daf:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@41 (line 140)
                                                                         ;   {static_call}
   0.35%       0x00007f8afc638db4:   nopl   0x70005a4(%rax,%rax,1)       ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@41 (line 140)
                                                                         ;   {other}
               0x00007f8afc638dbc:   mov    0x58(%rsp),%rsi
               0x00007f8afc638dc1:   add    %rax,%rsi
   0.08%       0x00007f8afc638dc4:   vmovsd 0x270(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@47 (line 141)
               0x00007f8afc638dcd:   mov    %rsi,0x60(%rsp)
   0.06%       0x00007f8afc638dd2:   nopl   0x0(%rax,%rax,1)
               0x00007f8afc638dd7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@47 (line 141)
                                                                         ;   {static_call}
   0.32%       0x00007f8afc638ddc:   nopl   0x80005cc(%rax,%rax,1)       ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@47 (line 141)
                                                                         ;   {other}
               0x00007f8afc638de4:   mov    0x60(%rsp),%rsi
               0x00007f8afc638de9:   add    %rax,%rsi
   0.09%       0x00007f8afc638dec:   vmovsd 0x278(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@53 (line 142)
               0x00007f8afc638df5:   mov    %rsi,0x68(%rsp)
   0.07%       0x00007f8afc638dfa:   nopl   0x0(%rax,%rax,1)
               0x00007f8afc638dff:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@53 (line 142)
                                                                         ;   {static_call}
   0.41%       0x00007f8afc638e04:   nopl   0x90005f4(%rax,%rax,1)       ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@53 (line 142)
                                                                         ;   {other}
               0x00007f8afc638e0c:   mov    0x68(%rsp),%rsi
               0x00007f8afc638e11:   add    %rax,%rsi
   0.06%       0x00007f8afc638e14:   vmovsd 0x280(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@59 (line 143)
               0x00007f8afc638e1d:   mov    %rsi,0x70(%rsp)
   0.08%       0x00007f8afc638e22:   nopl   0x0(%rax,%rax,1)
               0x00007f8afc638e27:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@59 (line 143)
                                                                         ;   {static_call}
   0.37%       0x00007f8afc638e2c:   nopl   0xa00061c(%rax,%rax,1)       ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@59 (line 143)
                                                                         ;   {other}
               0x00007f8afc638e34:   mov    0x70(%rsp),%rsi
               0x00007f8afc638e39:   add    %rax,%rsi
   0.09%       0x00007f8afc638e3c:   vmovsd 0x288(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@65 (line 144)
               0x00007f8afc638e45:   mov    %rsi,0x78(%rsp)
   0.06%       0x00007f8afc638e4a:   nopl   0x0(%rax,%rax,1)
               0x00007f8afc638e4f:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@65 (line 144)
                                                                         ;   {static_call}
   0.34%       0x00007f8afc638e54:   nopl   0xb000644(%rax,%rax,1)       ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@65 (line 144)
                                                                         ;   {other}
               0x00007f8afc638e5c:   mov    0x78(%rsp),%rsi
               0x00007f8afc638e61:   add    %rax,%rsi
   0.05%       0x00007f8afc638e64:   vmovsd 0x290(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@71 (line 145)
               0x00007f8afc638e6d:   mov    %rsi,0x80(%rsp)
   0.08%       0x00007f8afc638e75:   xchg   %ax,%ax
               0x00007f8afc638e77:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@71 (line 145)
                                                                         ;   {static_call}
   0.36%       0x00007f8afc638e7c:   nopl   0xc00066c(%rax,%rax,1)       ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@71 (line 145)
                                                                         ;   {other}
               0x00007f8afc638e84:   mov    0x80(%rsp),%rsi
               0x00007f8afc638e8c:   add    %rax,%rsi
   0.06%       0x00007f8afc638e8f:   vmovsd 0x298(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@77 (line 146)
               0x00007f8afc638e98:   mov    %rsi,0x88(%rsp)
   0.08%       0x00007f8afc638ea0:   nopl   0x0(%rax)
               0x00007f8afc638ea7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@77 (line 146)
                                                                         ;   {static_call}
   0.39%       0x00007f8afc638eac:   nopl   0xd00069c(%rax,%rax,1)       ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@77 (line 146)
                                                                         ;   {other}
               0x00007f8afc638eb4:   mov    0x88(%rsp),%rsi
               0x00007f8afc638ebc:   add    %rax,%rsi
   0.08%       0x00007f8afc638ebf:   vmovsd 0x2a0(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@83 (line 147)
               0x00007f8afc638ec8:   mov    %rsi,0x90(%rsp)
   0.07%       0x00007f8afc638ed0:   nopl   0x0(%rax)
               0x00007f8afc638ed7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@83 (line 147)
                                                                         ;   {static_call}
   0.48%       0x00007f8afc638edc:   nopl   0xe0006cc(%rax,%rax,1)       ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@83 (line 147)
                                                                         ;   {other}
               0x00007f8afc638ee4:   mov    0x90(%rsp),%rsi
               0x00007f8afc638eec:   add    %rax,%rsi
   0.06%       0x00007f8afc638eef:   vmovsd 0x2a8(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@89 (line 148)
               0x00007f8afc638ef8:   mov    %rsi,0x98(%rsp)
   0.08%       0x00007f8afc638f00:   nopl   0x0(%rax)
               0x00007f8afc638f07:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@89 (line 148)
                                                                         ;   {static_call}
   0.41%       0x00007f8afc638f0c:   nopl   0xf0006fc(%rax,%rax,1)       ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@89 (line 148)
                                                                         ;   {other}
               0x00007f8afc638f14:   mov    0x98(%rsp),%rsi
               0x00007f8afc638f1c:   add    %rax,%rsi
   0.06%       0x00007f8afc638f1f:   vmovsd 0x2b0(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@95 (line 149)
               0x00007f8afc638f28:   mov    %rsi,0xa0(%rsp)
   0.07%       0x00007f8afc638f30:   nopl   0x0(%rax)
               0x00007f8afc638f37:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@95 (line 149)
                                                                         ;   {static_call}
   0.41%       0x00007f8afc638f3c:   nopl   0x1000072c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@95 (line 149)
                                                                         ;   {other}
               0x00007f8afc638f44:   mov    0xa0(%rsp),%rsi
               0x00007f8afc638f4c:   add    %rax,%rsi
   0.08%       0x00007f8afc638f4f:   vmovsd 0x2b8(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@101 (line 150)
               0x00007f8afc638f58:   mov    %rsi,0xa8(%rsp)
   0.06%       0x00007f8afc638f60:   nopl   0x0(%rax)
               0x00007f8afc638f67:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@101 (line 150)
                                                                         ;   {static_call}
   0.39%       0x00007f8afc638f6c:   nopl   0x1100075c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@101 (line 150)
                                                                         ;   {other}
               0x00007f8afc638f74:   mov    0xa8(%rsp),%rsi
               0x00007f8afc638f7c:   add    %rax,%rsi
   0.04%       0x00007f8afc638f7f:   vmovsd 0x2c0(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@107 (line 151)
               0x00007f8afc638f88:   mov    %rsi,0xb0(%rsp)
   0.07%       0x00007f8afc638f90:   nopl   0x0(%rax)
               0x00007f8afc638f97:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@107 (line 151)
                                                                         ;   {static_call}
   0.40%       0x00007f8afc638f9c:   nopl   0x1200078c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@107 (line 151)
                                                                         ;   {other}
               0x00007f8afc638fa4:   mov    0xb0(%rsp),%rsi
               0x00007f8afc638fac:   add    %rax,%rsi
   0.07%       0x00007f8afc638faf:   vmovsd 0x2c8(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@113 (line 152)
               0x00007f8afc638fb8:   mov    %rsi,0xb8(%rsp)
   0.08%       0x00007f8afc638fc0:   nopl   0x0(%rax)
               0x00007f8afc638fc7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@113 (line 152)
                                                                         ;   {static_call}
   0.44%       0x00007f8afc638fcc:   nopl   0x130007bc(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@113 (line 152)
                                                                         ;   {other}
               0x00007f8afc638fd4:   mov    0xb8(%rsp),%rsi
               0x00007f8afc638fdc:   add    %rax,%rsi
   0.05%       0x00007f8afc638fdf:   vmovsd 0x2d0(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@119 (line 153)
               0x00007f8afc638fe8:   mov    %rsi,0xc0(%rsp)
   0.06%       0x00007f8afc638ff0:   nopl   0x0(%rax)
               0x00007f8afc638ff7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@119 (line 153)
                                                                         ;   {static_call}
   0.39%       0x00007f8afc638ffc:   nopl   0x140007ec(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@119 (line 153)
                                                                         ;   {other}
               0x00007f8afc639004:   mov    0xc0(%rsp),%rsi
               0x00007f8afc63900c:   add    %rax,%rsi
   0.05%       0x00007f8afc63900f:   vmovsd 0x2d8(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@125 (line 154)
               0x00007f8afc639018:   mov    %rsi,0xc8(%rsp)
   0.06%       0x00007f8afc639020:   nopl   0x0(%rax)
               0x00007f8afc639027:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@125 (line 154)
                                                                         ;   {static_call}
   0.42%       0x00007f8afc63902c:   nopl   0x1500081c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@125 (line 154)
                                                                         ;   {other}
               0x00007f8afc639034:   mov    0xc8(%rsp),%rsi
               0x00007f8afc63903c:   add    %rax,%rsi
   0.06%       0x00007f8afc63903f:   vmovsd 0x2e0(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@131 (line 155)
               0x00007f8afc639048:   mov    %rsi,0xd0(%rsp)
   0.05%       0x00007f8afc639050:   nopl   0x0(%rax)
               0x00007f8afc639057:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@131 (line 155)
                                                                         ;   {static_call}
   0.39%       0x00007f8afc63905c:   nopl   0x1600084c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@131 (line 155)
                                                                         ;   {other}
               0x00007f8afc639064:   mov    0xd0(%rsp),%rsi
               0x00007f8afc63906c:   add    %rax,%rsi
   0.03%       0x00007f8afc63906f:   vmovsd 0x2e8(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@137 (line 156)
               0x00007f8afc639078:   mov    %rsi,0xd8(%rsp)
   0.06%       0x00007f8afc639080:   nopl   0x0(%rax)
               0x00007f8afc639087:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@137 (line 156)
                                                                         ;   {static_call}
   0.32%       0x00007f8afc63908c:   nopl   0x1700087c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@137 (line 156)
                                                                         ;   {other}
               0x00007f8afc639094:   mov    0xd8(%rsp),%rsi
               0x00007f8afc63909c:   add    %rax,%rsi
   0.07%       0x00007f8afc63909f:   vmovsd 0x2f0(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@143 (line 157)
               0x00007f8afc6390a8:   mov    %rsi,0xe0(%rsp)
   0.07%       0x00007f8afc6390b0:   nopl   0x0(%rax)
               0x00007f8afc6390b7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@143 (line 157)
                                                                         ;   {static_call}
   0.42%       0x00007f8afc6390bc:   nopl   0x180008ac(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@143 (line 157)
                                                                         ;   {other}
               0x00007f8afc6390c4:   mov    0xe0(%rsp),%rsi
               0x00007f8afc6390cc:   add    %rax,%rsi
   0.07%       0x00007f8afc6390cf:   vmovsd 0x2f8(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@149 (line 158)
               0x00007f8afc6390d8:   mov    %rsi,0xe8(%rsp)
   0.07%       0x00007f8afc6390e0:   nopl   0x0(%rax)
               0x00007f8afc6390e7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@149 (line 158)
                                                                         ;   {static_call}
   0.41%       0x00007f8afc6390ec:   nopl   0x190008dc(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@149 (line 158)
                                                                         ;   {other}
               0x00007f8afc6390f4:   mov    0xe8(%rsp),%rsi
               0x00007f8afc6390fc:   add    %rax,%rsi
   0.08%       0x00007f8afc6390ff:   vmovsd 0x300(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@155 (line 159)
               0x00007f8afc639108:   mov    %rsi,0xf0(%rsp)
   0.06%       0x00007f8afc639110:   nopl   0x0(%rax)
               0x00007f8afc639117:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@155 (line 159)
                                                                         ;   {static_call}
   0.37%       0x00007f8afc63911c:   nopl   0x1a00090c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@155 (line 159)
                                                                         ;   {other}
               0x00007f8afc639124:   mov    0xf0(%rsp),%rsi
               0x00007f8afc63912c:   add    %rax,%rsi
   0.07%       0x00007f8afc63912f:   vmovsd 0x308(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@161 (line 160)
               0x00007f8afc639138:   mov    %rsi,0xf8(%rsp)
   0.08%       0x00007f8afc639140:   nopl   0x0(%rax)
               0x00007f8afc639147:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@161 (line 160)
                                                                         ;   {static_call}
   0.38%       0x00007f8afc63914c:   nopl   0x1b00093c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@161 (line 160)
                                                                         ;   {other}
               0x00007f8afc639154:   mov    0xf8(%rsp),%rsi
               0x00007f8afc63915c:   add    %rax,%rsi
   0.08%       0x00007f8afc63915f:   vmovsd 0x310(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@167 (line 161)
               0x00007f8afc639168:   mov    %rsi,0x100(%rsp)
   0.06%       0x00007f8afc639170:   nopl   0x0(%rax)
               0x00007f8afc639177:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@167 (line 161)
                                                                         ;   {static_call}
   0.39%       0x00007f8afc63917c:   nopl   0x1c00096c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@167 (line 161)
                                                                         ;   {other}
               0x00007f8afc639184:   mov    0x100(%rsp),%rsi
               0x00007f8afc63918c:   add    %rax,%rsi
   0.05%       0x00007f8afc63918f:   vmovsd 0x318(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@173 (line 162)
               0x00007f8afc639198:   mov    %rsi,0x108(%rsp)
   0.07%       0x00007f8afc6391a0:   nopl   0x0(%rax)
               0x00007f8afc6391a7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@173 (line 162)
                                                                         ;   {static_call}
   0.39%       0x00007f8afc6391ac:   nopl   0x1d00099c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@173 (line 162)
                                                                         ;   {other}
               0x00007f8afc6391b4:   mov    0x108(%rsp),%rsi
               0x00007f8afc6391bc:   add    %rax,%rsi
   0.08%       0x00007f8afc6391bf:   vmovsd 0x320(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@179 (line 163)
               0x00007f8afc6391c8:   mov    %rsi,0x110(%rsp)
   0.06%       0x00007f8afc6391d0:   nopl   0x0(%rax)
               0x00007f8afc6391d7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@179 (line 163)
                                                                         ;   {static_call}
   0.37%       0x00007f8afc6391dc:   nopl   0x1e0009cc(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@179 (line 163)
                                                                         ;   {other}
               0x00007f8afc6391e4:   mov    0x110(%rsp),%rsi
               0x00007f8afc6391ec:   add    %rax,%rsi
   0.08%       0x00007f8afc6391ef:   vmovsd 0x328(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@185 (line 164)
               0x00007f8afc6391f8:   mov    %rsi,0x118(%rsp)
   0.07%       0x00007f8afc639200:   nopl   0x0(%rax)
               0x00007f8afc639207:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@185 (line 164)
                                                                         ;   {static_call}
   0.38%       0x00007f8afc63920c:   nopl   0x1f0009fc(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@185 (line 164)
                                                                         ;   {other}
               0x00007f8afc639214:   mov    0x118(%rsp),%rsi
               0x00007f8afc63921c:   add    %rax,%rsi
   0.07%       0x00007f8afc63921f:   vmovsd 0x330(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@191 (line 165)
               0x00007f8afc639228:   mov    %rsi,0x120(%rsp)
   0.06%       0x00007f8afc639230:   nopl   0x0(%rax)
               0x00007f8afc639237:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@191 (line 165)
                                                                         ;   {static_call}
   0.42%       0x00007f8afc63923c:   nopl   0x20000a2c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@191 (line 165)
                                                                         ;   {other}
               0x00007f8afc639244:   mov    0x120(%rsp),%rsi
               0x00007f8afc63924c:   add    %rax,%rsi
   0.09%       0x00007f8afc63924f:   vmovsd 0x338(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@197 (line 166)
               0x00007f8afc639258:   mov    %rsi,0x128(%rsp)
   0.07%       0x00007f8afc639260:   nopl   0x0(%rax)
               0x00007f8afc639267:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@197 (line 166)
                                                                         ;   {static_call}
   0.37%       0x00007f8afc63926c:   nopl   0x21000a5c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@197 (line 166)
                                                                         ;   {other}
               0x00007f8afc639274:   mov    0x128(%rsp),%rsi
               0x00007f8afc63927c:   add    %rax,%rsi
   0.05%       0x00007f8afc63927f:   vmovsd 0x340(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@203 (line 167)
               0x00007f8afc639288:   mov    %rsi,0x130(%rsp)
   0.05%       0x00007f8afc639290:   nopl   0x0(%rax)
               0x00007f8afc639297:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@203 (line 167)
                                                                         ;   {static_call}
   0.33%       0x00007f8afc63929c:   nopl   0x22000a8c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@203 (line 167)
                                                                         ;   {other}
               0x00007f8afc6392a4:   mov    0x130(%rsp),%rsi
               0x00007f8afc6392ac:   add    %rax,%rsi
   0.06%       0x00007f8afc6392af:   vmovsd 0x348(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@209 (line 168)
               0x00007f8afc6392b8:   mov    %rsi,0x138(%rsp)
   0.06%       0x00007f8afc6392c0:   nopl   0x0(%rax)
               0x00007f8afc6392c7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@209 (line 168)
                                                                         ;   {static_call}
   0.34%       0x00007f8afc6392cc:   nopl   0x23000abc(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@209 (line 168)
                                                                         ;   {other}
               0x00007f8afc6392d4:   mov    0x138(%rsp),%rsi
               0x00007f8afc6392dc:   add    %rax,%rsi
   0.08%       0x00007f8afc6392df:   vmovsd 0x350(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@215 (line 169)
               0x00007f8afc6392e8:   mov    %rsi,0x140(%rsp)
   0.08%       0x00007f8afc6392f0:   nopl   0x0(%rax)
               0x00007f8afc6392f7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@215 (line 169)
                                                                         ;   {static_call}
   0.37%       0x00007f8afc6392fc:   nopl   0x24000aec(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@215 (line 169)
                                                                         ;   {other}
               0x00007f8afc639304:   mov    0x140(%rsp),%rsi
               0x00007f8afc63930c:   add    %rax,%rsi
   0.08%       0x00007f8afc63930f:   vmovsd 0x358(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@221 (line 170)
               0x00007f8afc639318:   mov    %rsi,0x148(%rsp)
   0.06%       0x00007f8afc639320:   nopl   0x0(%rax)
               0x00007f8afc639327:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@221 (line 170)
                                                                         ;   {static_call}
   0.42%       0x00007f8afc63932c:   nopl   0x25000b1c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@221 (line 170)
                                                                         ;   {other}
               0x00007f8afc639334:   mov    0x148(%rsp),%rsi
               0x00007f8afc63933c:   add    %rax,%rsi
   0.06%       0x00007f8afc63933f:   vmovsd 0x360(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@227 (line 171)
               0x00007f8afc639348:   mov    %rsi,0x150(%rsp)
   0.06%       0x00007f8afc639350:   nopl   0x0(%rax)
               0x00007f8afc639357:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@227 (line 171)
                                                                         ;   {static_call}
   0.37%       0x00007f8afc63935c:   nopl   0x26000b4c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@227 (line 171)
                                                                         ;   {other}
               0x00007f8afc639364:   mov    0x150(%rsp),%rsi
               0x00007f8afc63936c:   add    %rax,%rsi
   0.06%       0x00007f8afc63936f:   vmovsd 0x368(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@233 (line 172)
               0x00007f8afc639378:   mov    %rsi,0x158(%rsp)
   0.04%       0x00007f8afc639380:   nopl   0x0(%rax)
               0x00007f8afc639387:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@233 (line 172)
                                                                         ;   {static_call}
   0.39%       0x00007f8afc63938c:   nopl   0x27000b7c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@233 (line 172)
                                                                         ;   {other}
               0x00007f8afc639394:   mov    0x158(%rsp),%rsi
               0x00007f8afc63939c:   add    %rax,%rsi
   0.07%       0x00007f8afc63939f:   vmovsd 0x370(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@239 (line 173)
               0x00007f8afc6393a8:   mov    %rsi,0x160(%rsp)
   0.08%       0x00007f8afc6393b0:   nopl   0x0(%rax)
               0x00007f8afc6393b7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@239 (line 173)
                                                                         ;   {static_call}
   0.33%       0x00007f8afc6393bc:   nopl   0x28000bac(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@239 (line 173)
                                                                         ;   {other}
               0x00007f8afc6393c4:   mov    0x160(%rsp),%rsi
               0x00007f8afc6393cc:   add    %rax,%rsi
   0.05%       0x00007f8afc6393cf:   vmovsd 0x378(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@245 (line 174)
               0x00007f8afc6393d8:   mov    %rsi,0x168(%rsp)
   0.06%       0x00007f8afc6393e0:   nopl   0x0(%rax)
               0x00007f8afc6393e7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@245 (line 174)
                                                                         ;   {static_call}
   0.47%       0x00007f8afc6393ec:   nopl   0x29000bdc(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@245 (line 174)
                                                                         ;   {other}
               0x00007f8afc6393f4:   mov    0x168(%rsp),%rsi
               0x00007f8afc6393fc:   add    %rax,%rsi
   0.05%       0x00007f8afc6393ff:   vmovsd 0x380(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@251 (line 175)
               0x00007f8afc639408:   mov    %rsi,0x170(%rsp)
   0.06%       0x00007f8afc639410:   nopl   0x0(%rax)
               0x00007f8afc639417:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@251 (line 175)
                                                                         ;   {static_call}
   0.37%       0x00007f8afc63941c:   nopl   0x2a000c0c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@251 (line 175)
                                                                         ;   {other}
               0x00007f8afc639424:   mov    0x170(%rsp),%rsi
               0x00007f8afc63942c:   add    %rax,%rsi
   0.09%       0x00007f8afc63942f:   vmovsd 0x388(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@257 (line 176)
               0x00007f8afc639438:   mov    %rsi,0x178(%rsp)
   0.05%       0x00007f8afc639440:   nopl   0x0(%rax)
               0x00007f8afc639447:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@257 (line 176)
                                                                         ;   {static_call}
   0.43%       0x00007f8afc63944c:   nopl   0x2b000c3c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@257 (line 176)
                                                                         ;   {other}
               0x00007f8afc639454:   mov    0x178(%rsp),%rsi
               0x00007f8afc63945c:   add    %rax,%rsi
   0.07%       0x00007f8afc63945f:   vmovsd 0x390(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@263 (line 177)
               0x00007f8afc639468:   mov    %rsi,0x180(%rsp)
   0.07%       0x00007f8afc639470:   nopl   0x0(%rax)
               0x00007f8afc639477:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@263 (line 177)
                                                                         ;   {static_call}
   0.35%       0x00007f8afc63947c:   nopl   0x2c000c6c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@263 (line 177)
                                                                         ;   {other}
               0x00007f8afc639484:   mov    0x180(%rsp),%rsi
               0x00007f8afc63948c:   add    %rax,%rsi
   0.07%       0x00007f8afc63948f:   vmovsd 0x398(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@269 (line 178)
               0x00007f8afc639498:   mov    %rsi,0x188(%rsp)
   0.07%       0x00007f8afc6394a0:   nopl   0x0(%rax)
               0x00007f8afc6394a7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@269 (line 178)
                                                                         ;   {static_call}
   0.40%       0x00007f8afc6394ac:   nopl   0x2d000c9c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@269 (line 178)
                                                                         ;   {other}
               0x00007f8afc6394b4:   mov    0x188(%rsp),%rsi
               0x00007f8afc6394bc:   add    %rax,%rsi
   0.06%       0x00007f8afc6394bf:   vmovsd 0x3a0(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@275 (line 179)
               0x00007f8afc6394c8:   mov    %rsi,0x190(%rsp)
   0.07%       0x00007f8afc6394d0:   nopl   0x0(%rax)
               0x00007f8afc6394d7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@275 (line 179)
                                                                         ;   {static_call}
   0.39%       0x00007f8afc6394dc:   nopl   0x2e000ccc(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@275 (line 179)
                                                                         ;   {other}
               0x00007f8afc6394e4:   mov    0x190(%rsp),%rsi
               0x00007f8afc6394ec:   add    %rax,%rsi
   0.06%       0x00007f8afc6394ef:   vmovsd 0x3a8(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@281 (line 180)
               0x00007f8afc6394f8:   mov    %rsi,0x198(%rsp)
   0.06%       0x00007f8afc639500:   nopl   0x0(%rax)
               0x00007f8afc639507:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@281 (line 180)
                                                                         ;   {static_call}
   0.38%       0x00007f8afc63950c:   nopl   0x2f000cfc(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@281 (line 180)
                                                                         ;   {other}
               0x00007f8afc639514:   mov    0x198(%rsp),%rsi
               0x00007f8afc63951c:   add    %rax,%rsi
   0.06%       0x00007f8afc63951f:   vmovsd 0x3b0(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@287 (line 181)
               0x00007f8afc639528:   mov    %rsi,0x1a0(%rsp)
   0.06%       0x00007f8afc639530:   nopl   0x0(%rax)
               0x00007f8afc639537:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@287 (line 181)
                                                                         ;   {static_call}
   0.36%       0x00007f8afc63953c:   nopl   0x30000d2c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@287 (line 181)
                                                                         ;   {other}
               0x00007f8afc639544:   mov    0x1a0(%rsp),%rsi
               0x00007f8afc63954c:   add    %rax,%rsi
   0.07%       0x00007f8afc63954f:   vmovsd 0x3b8(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@293 (line 182)
               0x00007f8afc639558:   mov    %rsi,0x1a8(%rsp)
   0.07%       0x00007f8afc639560:   nopl   0x0(%rax)
               0x00007f8afc639567:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@293 (line 182)
                                                                         ;   {static_call}
   0.35%       0x00007f8afc63956c:   nopl   0x31000d5c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@293 (line 182)
                                                                         ;   {other}
               0x00007f8afc639574:   mov    0x1a8(%rsp),%rsi
               0x00007f8afc63957c:   add    %rax,%rsi
   0.08%       0x00007f8afc63957f:   vmovsd 0x3c0(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@299 (line 183)
               0x00007f8afc639588:   mov    %rsi,0x1b0(%rsp)
   0.06%       0x00007f8afc639590:   nopl   0x0(%rax)
               0x00007f8afc639597:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@299 (line 183)
                                                                         ;   {static_call}
   0.39%       0x00007f8afc63959c:   nopl   0x32000d8c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@299 (line 183)
                                                                         ;   {other}
               0x00007f8afc6395a4:   mov    0x1b0(%rsp),%rsi
               0x00007f8afc6395ac:   add    %rax,%rsi
   0.08%       0x00007f8afc6395af:   vmovsd 0x3c8(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@305 (line 184)
               0x00007f8afc6395b8:   mov    %rsi,0x1b8(%rsp)
   0.05%       0x00007f8afc6395c0:   nopl   0x0(%rax)
               0x00007f8afc6395c7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@305 (line 184)
                                                                         ;   {static_call}
   0.37%       0x00007f8afc6395cc:   nopl   0x33000dbc(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@305 (line 184)
                                                                         ;   {other}
               0x00007f8afc6395d4:   mov    0x1b8(%rsp),%rsi
               0x00007f8afc6395dc:   add    %rax,%rsi
   0.06%       0x00007f8afc6395df:   vmovsd 0x3d0(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@311 (line 185)
               0x00007f8afc6395e8:   mov    %rsi,0x1c0(%rsp)
   0.05%       0x00007f8afc6395f0:   nopl   0x0(%rax)
               0x00007f8afc6395f7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@311 (line 185)
                                                                         ;   {static_call}
   0.34%       0x00007f8afc6395fc:   nopl   0x34000dec(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@311 (line 185)
                                                                         ;   {other}
               0x00007f8afc639604:   mov    0x1c0(%rsp),%rsi
               0x00007f8afc63960c:   add    %rax,%rsi
   0.05%       0x00007f8afc63960f:   vmovsd 0x3d8(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@317 (line 186)
               0x00007f8afc639618:   mov    %rsi,0x1c8(%rsp)
   0.06%       0x00007f8afc639620:   nopl   0x0(%rax)
               0x00007f8afc639627:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@317 (line 186)
                                                                         ;   {static_call}
   0.38%       0x00007f8afc63962c:   nopl   0x35000e1c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@317 (line 186)
                                                                         ;   {other}
               0x00007f8afc639634:   mov    0x1c8(%rsp),%rsi
               0x00007f8afc63963c:   add    %rax,%rsi
   0.08%       0x00007f8afc63963f:   vmovsd 0x3e0(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@323 (line 187)
               0x00007f8afc639648:   mov    %rsi,0x1d0(%rsp)
   0.07%       0x00007f8afc639650:   nopl   0x0(%rax)
               0x00007f8afc639657:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@323 (line 187)
                                                                         ;   {static_call}
   0.38%       0x00007f8afc63965c:   nopl   0x36000e4c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@323 (line 187)
                                                                         ;   {other}
               0x00007f8afc639664:   mov    0x1d0(%rsp),%rsi
               0x00007f8afc63966c:   add    %rax,%rsi
   0.08%       0x00007f8afc63966f:   vmovsd 0x3e8(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@329 (line 188)
               0x00007f8afc639678:   mov    %rsi,0x1d8(%rsp)
   0.07%       0x00007f8afc639680:   nopl   0x0(%rax)
               0x00007f8afc639687:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@329 (line 188)
                                                                         ;   {static_call}
   0.45%       0x00007f8afc63968c:   nopl   0x37000e7c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@329 (line 188)
                                                                         ;   {other}
               0x00007f8afc639694:   mov    0x1d8(%rsp),%rsi
               0x00007f8afc63969c:   add    %rax,%rsi
   0.08%       0x00007f8afc63969f:   vmovsd 0x3f0(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@335 (line 189)
               0x00007f8afc6396a8:   mov    %rsi,0x1e0(%rsp)
   0.06%       0x00007f8afc6396b0:   nopl   0x0(%rax)
               0x00007f8afc6396b7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@335 (line 189)
                                                                         ;   {static_call}
   0.41%       0x00007f8afc6396bc:   nopl   0x38000eac(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@335 (line 189)
                                                                         ;   {other}
               0x00007f8afc6396c4:   mov    0x1e0(%rsp),%rsi
               0x00007f8afc6396cc:   add    %rax,%rsi
   0.07%       0x00007f8afc6396cf:   vmovsd 0x3f8(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@341 (line 190)
               0x00007f8afc6396d8:   mov    %rsi,0x1e8(%rsp)
   0.06%       0x00007f8afc6396e0:   nopl   0x0(%rax)
               0x00007f8afc6396e7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@341 (line 190)
                                                                         ;   {static_call}
   0.40%       0x00007f8afc6396ec:   nopl   0x39000edc(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@341 (line 190)
                                                                         ;   {other}
               0x00007f8afc6396f4:   mov    0x1e8(%rsp),%rsi
               0x00007f8afc6396fc:   add    %rax,%rsi
   0.07%       0x00007f8afc6396ff:   vmovsd 0x400(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@347 (line 191)
               0x00007f8afc639708:   mov    %rsi,0x1f0(%rsp)
   0.09%       0x00007f8afc639710:   nopl   0x0(%rax)
               0x00007f8afc639717:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@347 (line 191)
                                                                         ;   {static_call}
   0.36%       0x00007f8afc63971c:   nopl   0x3a000f0c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@347 (line 191)
                                                                         ;   {other}
               0x00007f8afc639724:   mov    0x1f0(%rsp),%rsi
               0x00007f8afc63972c:   add    %rax,%rsi
   0.07%       0x00007f8afc63972f:   vmovsd 0x408(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@353 (line 192)
               0x00007f8afc639738:   mov    %rsi,0x1f8(%rsp)
   0.07%       0x00007f8afc639740:   nopl   0x0(%rax)
               0x00007f8afc639747:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@353 (line 192)
                                                                         ;   {static_call}
   0.39%       0x00007f8afc63974c:   nopl   0x3b000f3c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@353 (line 192)
                                                                         ;   {other}
               0x00007f8afc639754:   mov    0x1f8(%rsp),%rsi
               0x00007f8afc63975c:   add    %rax,%rsi
   0.06%       0x00007f8afc63975f:   vmovsd 0x410(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@359 (line 193)
               0x00007f8afc639768:   mov    %rsi,0x200(%rsp)
   0.04%       0x00007f8afc639770:   nopl   0x0(%rax)
               0x00007f8afc639777:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@359 (line 193)
                                                                         ;   {static_call}
   0.37%       0x00007f8afc63977c:   nopl   0x3c000f6c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@359 (line 193)
                                                                         ;   {other}
               0x00007f8afc639784:   mov    0x200(%rsp),%rsi
               0x00007f8afc63978c:   add    %rax,%rsi
   0.07%       0x00007f8afc63978f:   vmovsd 0x418(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@365 (line 194)
               0x00007f8afc639798:   mov    %rsi,0x208(%rsp)
   0.05%       0x00007f8afc6397a0:   nopl   0x0(%rax)
               0x00007f8afc6397a7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@365 (line 194)
                                                                         ;   {static_call}
   0.34%       0x00007f8afc6397ac:   nopl   0x3d000f9c(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@365 (line 194)
                                                                         ;   {other}
               0x00007f8afc6397b4:   mov    0x208(%rsp),%rsi
               0x00007f8afc6397bc:   add    %rax,%rsi
   0.05%       0x00007f8afc6397bf:   vmovsd 0x420(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@371 (line 195)
               0x00007f8afc6397c8:   mov    %rsi,0x210(%rsp)
   0.06%       0x00007f8afc6397d0:   nopl   0x0(%rax)
               0x00007f8afc6397d7:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@371 (line 195)
                                                                         ;   {static_call}
   0.39%       0x00007f8afc6397dc:   nopl   0x3e000fcc(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@371 (line 195)
                                                                         ;   {other}
               0x00007f8afc6397e4:   mov    0x210(%rsp),%rsi
               0x00007f8afc6397ec:   add    %rax,%rsi
   0.07%       0x00007f8afc6397ef:   vmovsd 0x428(%rsp),%xmm0            ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@377 (line 196)
               0x00007f8afc6397f8:   mov    %rsi,0x218(%rsp)
   0.07%       0x00007f8afc639800:   nopl   0x0(%rax)
               0x00007f8afc639807:   call   0x00007f8afc6382a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@377 (line 196)
                                                                         ;   {static_call}
   0.39%       0x00007f8afc63980c:   nopl   0x3f000ffc(%rax,%rax,1)      ;*invokestatic round {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod@377 (line 196)
                                                                         ;   {other}
               0x00007f8afc639814:   mov    0x218(%rsp),%rsi
               0x00007f8afc63981c:   add    %rax,%rsi
   0.04%       0x00007f8afc63981f:   mov    %rsi,%rax
               0x00007f8afc639822:   add    $0x260,%rsp
               0x00007f8afc639829:   pop    %rbp
            ↗  0x00007f8afc63982a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           ╭│  0x00007f8afc639831:   ja     0x00007f8afc639838
   0.07%   ││  0x00007f8afc639837:   ret    
           ↘╰  0x00007f8afc639838:   movabs $0x7f8afc63982a,%r10         ;   {internal_word}
               0x00007f8afc639842:   mov    %r10,0x468(%r15)
               0x00007f8afc639849:   jmp    0x00007f8afc0cb000           ;   {runtime_call SafepointBlob}
               0x00007f8afc63984e:   mov    0x500(%r15),%rax
               0x00007f8afc639855:   movq   $0x0,0x500(%r15)
               0x00007f8afc639860:   movq   $0x0,0x508(%r15)
               0x00007f8afc63986b:   add    $0x260,%rsp
               0x00007f8afc639872:   pop    %rbp
               0x00007f8afc639873:   jmp    0x00007f8afc187600           ;   {runtime_call unwind_exception Runtime1 stub}
             [Stub Code]
....................................................................................................
  33.80%  <total for region 2>

....[Hottest Regions]...............................................................................
  57.56%         c2, level 4  java.lang.Math::round, version 2, compile id 558 
  33.80%         c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod, version 2, compile id 561 
   5.13%         c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::method_args_buster, version 2, compile id 564 
   0.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub, version 5, compile id 592 
   0.83%              kernel  [unknown] 
   0.78%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.52%  <...other 155 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  57.56%         c2, level 4  java.lang.Math::round, version 2, compile id 558 
  33.80%         c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod, version 2, compile id 561 
   5.13%         c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::method_args_buster, version 2, compile id 564 
   2.34%              kernel  [unknown] 
   0.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub, version 5, compile id 592 
   0.02%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  PeriodicTask::real_time_tick 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%  libpthread-2.31.so  __pthread_mutex_cond_lock 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  os::elapsed_counter 
   0.09%  <...other 44 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  58.54%         c2, level 4
  38.93%         c1, level 1
   2.34%              kernel
   0.08%           libjvm.so
   0.05%        libc-2.31.so
   0.02%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:01:49

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

Benchmark                                         Mode  Cnt    Score   Error  Units
MethodArgsBusterBenchmark.method_args_buster      avgt    5  570.203 ± 3.148  ns/op
MethodArgsBusterBenchmark.method_args_buster:asm  avgt           NaN            ---
