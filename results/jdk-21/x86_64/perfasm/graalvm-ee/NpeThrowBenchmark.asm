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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 0.0)

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6513.446 ns/op
# Warmup Iteration   2: 6469.723 ns/op
# Warmup Iteration   3: 6477.058 ns/op
# Warmup Iteration   4: 6476.811 ns/op
# Warmup Iteration   5: 6469.763 ns/op
Iteration   1: 6473.744 ns/op
Iteration   2: 6469.934 ns/op
Iteration   3: 6471.551 ns/op
Iteration   4: 6469.697 ns/op
Iteration   5: 6469.853 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe":
  6470.956 ±(99.9%) 6.661 ns/op [Average]
  (min, avg, max) = (6469.697, 6470.956, 6473.744), stdev = 1.730
  CI (99.9%): [6464.295, 6477.617] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe:asm":
PrintAssembly processed: 225693 total address lines.
Perf output processed (skipped 60.651 seconds):
 Column 1: cycles (50677 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 984 

                # {method} {0x00007f46f747d9e8} &apos;explicit_throw_npe&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeThrowBenchmark&apos;
                #           [sp+0x40]  (sp of caller)
                0x00007f4776d7eaa0:   mov    0x8(%rsi),%r10d
                0x00007f4776d7eaa4:   movabs $0x7f46fb000000,%r12
                0x00007f4776d7eaae:   add    %r12,%r10
                0x00007f4776d7eab1:   xor    %r12,%r12
                0x00007f4776d7eab4:   cmp    %r10,%rax
                0x00007f4776d7eab7:   jne    0x00007f4776764080           ;   {runtime_call ic_miss_stub}
                0x00007f4776d7eabd:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.01%        0x00007f4776d7eac0:   mov    %eax,-0x14000(%rsp)
   0.02%        0x00007f4776d7eac7:   sub    $0x38,%rsp
   0.00%        0x00007f4776d7eacb:   nop
                0x00007f4776d7eacc:   cmpl   $0x1,0x20(%r15)
                0x00007f4776d7ead4:   jne    0x00007f4776d7edb7
   0.00%        0x00007f4776d7eada:   mov    %rbp,0x30(%rsp)
                0x00007f4776d7eadf:   mov    %rsi,0x10(%rsp)
   0.01%        0x00007f4776d7eae4:   mov    0x18(%rsi),%edx              ; ImmutableOopMap {rdx=NarrowOop rsi=Oop [16]=Oop }
                                                                          ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@0 (line 92)
   0.03%        0x00007f4776d7eae7:   mov    0xc(,%rdx,8),%r10d           ; implicit exception: dispatches to 0x00007f4776d7eddb
   0.03%        0x00007f4776d7eaef:   mov    %r10d,0x24(%rsp)
   0.01%        0x00007f4776d7eaf4:   cmp    $0x2,%r10d
                0x00007f4776d7eaf8:   mov    $0x1,%r11d
                0x00007f4776d7eafe:   cmovb  %r10d,%r11d
                0x00007f4776d7eb02:   mov    %r11d,0x20(%rsp)
   0.01%        0x00007f4776d7eb07:   shl    $0x3,%rdx                    ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@1 (line 92)
                0x00007f4776d7eb0b:   mov    %rdx,0x8(%rsp)
                0x00007f4776d7eb10:   mov    $0x0,%r10d
          ╭     0x00007f4776d7eb16:   jmp    0x00007f4776d7eb5b           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@10 (line 92)
          │     0x00007f4776d7eb1b:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@12 (line 92)
   0.01%  │↗    0x00007f4776d7eb20:   mov    0x10(%rdx,%r10,4),%r9d
   0.00%  ││    0x00007f4776d7eb25:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 92)
          ││    0x00007f4776d7eb29:   mov    %rsi,%rcx
          ││    0x00007f4776d7eb2c:   mov    %r9,%rdx                     ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
   0.01%  ││    0x00007f4776d7eb2f:   mov    %r10d,0x1c(%rsp)
   0.00%  ││    0x00007f4776d7eb34:   data16 xchg %ax,%ax
          ││    0x00007f4776d7eb37:   call   0x00007f4776d7df20           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          ││                                                              ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
          ││                                                              ;   {optimized virtual_call}
   0.01%  ││    0x00007f4776d7eb3c:   nopl   0x10002ac(%rax,%rax,1)       ;   {other}
          ││    0x00007f4776d7eb44:   mov    0x1c(%rsp),%r10d
          ││    0x00007f4776d7eb49:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 92)
   0.01%  ││    0x00007f4776d7eb4c:   mov    0x8(%rsp),%rdx
          ││    0x00007f4776d7eb51:   mov    0x20(%rsp),%r11d
          ││    0x00007f4776d7eb56:   mov    0x10(%rsp),%rsi              ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@10 (line 92)
   0.00%  ↘│    0x00007f4776d7eb5b:   cmp    %r10d,%r11d
           ╰    0x00007f4776d7eb5e:   ja     0x00007f4776d7eb20
   0.01%        0x00007f4776d7eb60:   mov    %r10d,%esi
                0x00007f4776d7eb63:   mov    0x24(%rsp),%r10d
   0.00%        0x00007f4776d7eb68:   lea    -0x8(%r10),%r11d
                0x00007f4776d7eb6c:   mov    %r11d,0x20(%rsp)
   0.01%        0x00007f4776d7eb71:   mov    0x8(%rsp),%rdx
                0x00007f4776d7eb76:   mov    %esi,%r10d
            ╭   0x00007f4776d7eb79:   jmp    0x00007f4776d7ed23
            │   0x00007f4776d7eb7e:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@12 (line 92)
            │↗  0x00007f4776d7eb80:   mov    0x10(%rdx,%r10,4),%r9d
   2.19%    ││  0x00007f4776d7eb85:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 92)
   0.72%    ││  0x00007f4776d7eb89:   mov    %rsi,%rcx
            ││  0x00007f4776d7eb8c:   mov    %r9,%rdx
            ││  0x00007f4776d7eb8f:   call   0x00007f4776d7df20           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                            ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
            ││                                                            ;   {optimized virtual_call}
   3.66%    ││  0x00007f4776d7eb94:   nopl   0x2000304(%rax,%rax,1)       ;   {other}
            ││  0x00007f4776d7eb9c:   mov    0x8(%rsp),%rdx
   0.66%    ││  0x00007f4776d7eba1:   mov    0x1c(%rsp),%r10d
   0.00%    ││  0x00007f4776d7eba6:   mov    0x14(%rdx,%r10,4),%esi
   4.09%    ││  0x00007f4776d7ebab:   mov    %esi,%r11d
            ││  0x00007f4776d7ebae:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 92)
   0.77%    ││  0x00007f4776d7ebb2:   mov    %r10d,%r8d
            ││  0x00007f4776d7ebb5:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 92)
            ││  0x00007f4776d7ebb8:   mov    0x10(%rsp),%rsi
            ││  0x00007f4776d7ebbd:   mov    %r11,%rdx                    ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
   0.77%    ││  0x00007f4776d7ebc0:   mov    %r8d,0x18(%rsp)
   0.00%    ││  0x00007f4776d7ebc5:   xchg   %ax,%ax
            ││  0x00007f4776d7ebc7:   call   0x00007f4776d7df20           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                            ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
            ││                                                            ;   {optimized virtual_call}
   2.52%    ││  0x00007f4776d7ebcc:   nopl   0x300033c(%rax,%rax,1)       ;   {other}
            ││  0x00007f4776d7ebd4:   mov    0x8(%rsp),%rdx
   0.38%    ││  0x00007f4776d7ebd9:   mov    0x1c(%rsp),%r10d
   0.40%    ││  0x00007f4776d7ebde:   mov    0x18(%rdx,%r10,4),%esi
   3.22%    ││  0x00007f4776d7ebe3:   mov    %esi,%r11d
            ││  0x00007f4776d7ebe6:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 92)
   0.68%    ││  0x00007f4776d7ebea:   lea    0x2(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 92)
   0.02%    ││  0x00007f4776d7ebee:   mov    0x10(%rsp),%rsi
            ││  0x00007f4776d7ebf3:   mov    %r11,%rdx                    ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
            ││  0x00007f4776d7ebf6:   mov    %r8d,0x18(%rsp)
   0.66%    ││  0x00007f4776d7ebfb:   call   0x00007f4776d7df20           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                            ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
            ││                                                            ;   {optimized virtual_call}
   2.63%    ││  0x00007f4776d7ec00:   nopl   0x4000370(%rax,%rax,1)       ;   {other}
            ││  0x00007f4776d7ec08:   mov    0x8(%rsp),%rdx
   0.01%    ││  0x00007f4776d7ec0d:   mov    0x1c(%rsp),%r10d
   0.77%    ││  0x00007f4776d7ec12:   mov    0x1c(%rdx,%r10,4),%esi
   2.94%    ││  0x00007f4776d7ec17:   mov    %esi,%r11d
            ││  0x00007f4776d7ec1a:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 92)
   0.70%    ││  0x00007f4776d7ec1e:   lea    0x3(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 92)
   0.03%    ││  0x00007f4776d7ec22:   mov    0x10(%rsp),%rsi
            ││  0x00007f4776d7ec27:   mov    %r11,%rdx                    ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
            ││  0x00007f4776d7ec2a:   mov    %r8d,0x18(%rsp)
   0.65%    ││  0x00007f4776d7ec2f:   call   0x00007f4776d7df20           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                            ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
            ││                                                            ;   {optimized virtual_call}
   3.40%    ││  0x00007f4776d7ec34:   nopl   0x50003a4(%rax,%rax,1)       ;   {other}
            ││  0x00007f4776d7ec3c:   mov    0x8(%rsp),%rdx
   0.75%    ││  0x00007f4776d7ec41:   mov    0x1c(%rsp),%r10d
   0.01%    ││  0x00007f4776d7ec46:   mov    0x20(%rdx,%r10,4),%esi
   3.68%    ││  0x00007f4776d7ec4b:   mov    %esi,%r11d
            ││  0x00007f4776d7ec4e:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 92)
   0.70%    ││  0x00007f4776d7ec52:   lea    0x4(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 92)
            ││  0x00007f4776d7ec56:   mov    0x10(%rsp),%rsi
            ││  0x00007f4776d7ec5b:   mov    %r11,%rdx                    ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
            ││  0x00007f4776d7ec5e:   mov    %r8d,0x18(%rsp)
   0.74%    ││  0x00007f4776d7ec63:   call   0x00007f4776d7df20           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                            ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
            ││                                                            ;   {optimized virtual_call}
   2.83%    ││  0x00007f4776d7ec68:   nopl   0x60003d8(%rax,%rax,1)       ;   {other}
            ││  0x00007f4776d7ec70:   mov    0x8(%rsp),%rdx
   0.76%    ││  0x00007f4776d7ec75:   mov    0x1c(%rsp),%r10d
   0.03%    ││  0x00007f4776d7ec7a:   mov    0x24(%rdx,%r10,4),%esi
   3.46%    ││  0x00007f4776d7ec7f:   mov    %esi,%r11d
            ││  0x00007f4776d7ec82:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 92)
   0.84%    ││  0x00007f4776d7ec86:   lea    0x5(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 92)
            ││  0x00007f4776d7ec8a:   mov    0x10(%rsp),%rsi
            ││  0x00007f4776d7ec8f:   mov    %r11,%rdx                    ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
            ││  0x00007f4776d7ec92:   mov    %r8d,0x18(%rsp)
   0.79%    ││  0x00007f4776d7ec97:   call   0x00007f4776d7df20           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                            ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
            ││                                                            ;   {optimized virtual_call}
   3.13%    ││  0x00007f4776d7ec9c:   nopl   0x700040c(%rax,%rax,1)       ;   {other}
            ││  0x00007f4776d7eca4:   mov    0x8(%rsp),%rdx
   0.69%    ││  0x00007f4776d7eca9:   mov    0x1c(%rsp),%r10d
            ││  0x00007f4776d7ecae:   mov    0x28(%rdx,%r10,4),%esi
   3.72%    ││  0x00007f4776d7ecb3:   mov    %esi,%r11d
            ││  0x00007f4776d7ecb6:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 92)
   0.83%    ││  0x00007f4776d7ecba:   lea    0x6(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 92)
            ││  0x00007f4776d7ecbe:   mov    0x10(%rsp),%rsi
            ││  0x00007f4776d7ecc3:   mov    %r11,%rdx                    ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
            ││  0x00007f4776d7ecc6:   mov    %r8d,0x18(%rsp)
   0.69%    ││  0x00007f4776d7eccb:   call   0x00007f4776d7df20           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                            ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
            ││                                                            ;   {optimized virtual_call}
   2.94%    ││  0x00007f4776d7ecd0:   nopl   0x8000440(%rax,%rax,1)       ;   {other}
            ││  0x00007f4776d7ecd8:   mov    0x8(%rsp),%rdx
            ││  0x00007f4776d7ecdd:   mov    0x1c(%rsp),%r10d
   0.73%    ││  0x00007f4776d7ece2:   mov    0x2c(%rdx,%r10,4),%esi
   2.88%    ││  0x00007f4776d7ece7:   mov    %esi,%r11d
            ││  0x00007f4776d7ecea:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 92)
   0.73%    ││  0x00007f4776d7ecee:   lea    0x7(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 92)
   0.03%    ││  0x00007f4776d7ecf2:   mov    0x10(%rsp),%rsi
            ││  0x00007f4776d7ecf7:   mov    %r11,%rdx                    ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
            ││  0x00007f4776d7ecfa:   mov    %r8d,0x18(%rsp)
   0.75%    ││  0x00007f4776d7ecff:   nop
   0.03%    ││  0x00007f4776d7ed00:   data16 xchg %ax,%ax
            ││  0x00007f4776d7ed03:   call   0x00007f4776d7df20           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                            ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
            ││                                                            ;   {optimized virtual_call}
   3.11%    ││  0x00007f4776d7ed08:   nopl   0x9000478(%rax,%rax,1)       ;   {other}
            ││  0x00007f4776d7ed10:   mov    0x1c(%rsp),%r10d
            ││  0x00007f4776d7ed15:   lea    0x8(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 92)
   0.77%    ││  0x00007f4776d7ed19:   mov    0x20(%rsp),%r11d
            ││  0x00007f4776d7ed1e:   mov    0x8(%rsp),%rdx               ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@10 (line 92)
            ↘│  0x00007f4776d7ed23:   mov    0x10(%rsp),%rsi
   0.01%     │  0x00007f4776d7ed28:   mov    %r10d,0x1c(%rsp)
   1.50%     │  0x00007f4776d7ed2d:   cmp    %r10d,%r11d
             ╰  0x00007f4776d7ed30:   jg     0x00007f4776d7eb80
   0.06%        0x00007f4776d7ed36:   mov    %r10d,%r11d
   0.00%        0x00007f4776d7ed39:   mov    0x24(%rsp),%r10d
   0.04%        0x00007f4776d7ed3e:   xchg   %ax,%ax
                0x00007f4776d7ed40:   jmp    0x00007f4776d7ed9b
                0x00007f4776d7ed45:   data16 data16 nopw 0x0(%rax,%rax,1)
                0x00007f4776d7ed50:   data16 data16 xchg %ax,%ax
                0x00007f4776d7ed54:   nopl   0x0(%rax,%rax,1)
                0x00007f4776d7ed5c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@12 (line 92)
   0.06%        0x00007f4776d7ed60:   mov    0x10(%rdx,%r11,4),%r8d
   0.14%        0x00007f4776d7ed65:   shl    $0x3,%r8                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 92)
   0.06%        0x00007f4776d7ed69:   mov    %rsi,%r9
....................................................................................................
  69.29%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 980 

                 # parm0:    rdx:rdx   = &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeThrowBenchmark$Wrapper&apos;
                 #           [sp+0x20]  (sp of caller)
                 0x00007f4776d7df00:   mov    0x8(%rsi),%r10d
                 0x00007f4776d7df04:   movabs $0x7f46fb000000,%r12
                 0x00007f4776d7df0e:   add    %r12,%r10
                 0x00007f4776d7df11:   xor    %r12,%r12
                 0x00007f4776d7df14:   cmp    %r10,%rax
                 0x00007f4776d7df17:   jne    0x00007f4776764080           ;   {runtime_call ic_miss_stub}
                 0x00007f4776d7df1d:   data16 xchg %ax,%ax
               [Verified Entry Point]
   2.18%         0x00007f4776d7df20:   mov    %eax,-0x14000(%rsp)
   3.67%         0x00007f4776d7df27:   sub    $0x18,%rsp
   0.06%         0x00007f4776d7df2b:   nop
   2.25%         0x00007f4776d7df2c:   cmpl   $0x1,0x20(%r15)
   0.03%  ╭      0x00007f4776d7df34:   jne    0x00007f4776d7df59
   3.76%  │  ↗   0x00007f4776d7df3a:   mov    %rbp,0x10(%rsp)              ; ImmutableOopMap {}
          │  │                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │  │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe@0 (line 103)
   0.07%  │╭ │   0x00007f4776d7df3f:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007f4776d7df7a
  14.36%  ││ │   0x00007f4776d7df42:   mov    0x10(%rsp),%rbp
   1.46%  ││ │   0x00007f4776d7df47:   add    $0x18,%rsp
          ││ │↗  0x00007f4776d7df4b:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││╭││  0x00007f4776d7df52:   ja     0x00007f4776d7df66
   0.04%  │││││  0x00007f4776d7df58:   ret    
          ↘││││  0x00007f4776d7df59:   mov    %rbp,0x10(%rsp)
           ││││  0x00007f4776d7df5e:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           ││╰│  0x00007f4776d7df63:   jmp    0x00007f4776d7df3a
           ││ │  0x00007f4776d7df65:   hlt    
           │↘ ╰  0x00007f4776d7df66:   lea    -0x22(%rip),%rcx        # 0x00007f4776d7df4b
           │     0x00007f4776d7df6d:   mov    %rcx,0x468(%r15)
           │     0x00007f4776d7df74:   jmp    0x00007f477676b000           ;   {runtime_call SafepointBlob}
           │     0x00007f4776d7df79:   hlt    
           ↘     0x00007f4776d7df7a:   movl   $0xffffffed,0x484(%r15)
                 0x00007f4776d7df85:   movq   $0x14,0x490(%r15)
....................................................................................................
  27.88%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.29%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 984 
  27.88%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 980 
   0.79%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 984 
   0.57%              kernel  [unknown] 
   0.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_explicit_throw_npe_jmhTest::explicit_throw_npe_avgt_jmhStub, version 5, compile id 1005 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.79%  <...other 269 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 984 
  27.88%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 980 
   1.57%              kernel  [unknown] 
   0.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_explicit_throw_npe_jmhTest::explicit_throw_npe_avgt_jmhStub, version 5, compile id 1005 
   0.06%                      <unknown> 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.00%           libjvm.so  HighResTimeSampler::take_sample 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.13%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.10%      jvmci, level 4
   1.57%              kernel
   0.10%           libjvm.so
   0.09%        libc-2.31.so
   0.06%                    
   0.02%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 0.5)

# Run progress: 16.67% complete, ETA 00:09:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2020856.139 ns/op
# Warmup Iteration   2: 2006106.166 ns/op
# Warmup Iteration   3: 2005900.943 ns/op
# Warmup Iteration   4: 2005835.723 ns/op
# Warmup Iteration   5: 2006465.127 ns/op
Iteration   1: 2006916.387 ns/op
Iteration   2: 2005861.887 ns/op
Iteration   3: 2006365.974 ns/op
Iteration   4: 2007096.704 ns/op
Iteration   5: 2006342.558 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe":
  2006516.702 ±(99.9%) 1904.003 ns/op [Average]
  (min, avg, max) = (2005861.887, 2006516.702, 2007096.704), stdev = 494.464
  CI (99.9%): [2004612.698, 2008420.705] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe:asm":
PrintAssembly processed: 228918 total address lines.
Perf output processed (skipped 60.772 seconds):
 Column 1: cycles (50875 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   8.88%           libjvm.so  frame::sender 
   7.85%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   6.11%           libjvm.so  CodeBlob::is_upcall_stub 
   5.84%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   4.29%           libjvm.so  CodeHeap::find_blob 
   4.22%           libjvm.so  CodeCache::find_blob 
   3.78%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.56%           libjvm.so  Continuation::is_return_barrier_entry 
   3.50%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.29%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   2.94%        libc-2.31.so  __memset_avx2_unaligned_erms 
   2.82%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   2.30%           libjvm.so  frame::sender_for_interpreter_frame 
   2.16%           libjvm.so  ObjArrayKlass::allocate 
   2.08%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 2383974ul>::oop_access_barrier 
   2.05%           libjvm.so  frame::sender_for_interpreter_frame 
   2.03%           libjvm.so  Method::bcp_from 
   1.96%           libjvm.so  ObjArrayAllocator::initialize 
   1.58%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   1.33%          ld-2.31.so  __tls_get_addr 
  27.42%  <...other 579 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  23.73%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
  10.21%           libjvm.so  frame::sender 
   7.85%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   6.11%           libjvm.so  CodeBlob::is_upcall_stub 
   4.69%           libjvm.so  frame::sender_for_interpreter_frame 
   4.29%           libjvm.so  CodeHeap::find_blob 
   4.22%           libjvm.so  CodeCache::find_blob 
   3.56%           libjvm.so  Continuation::is_return_barrier_entry 
   2.94%        libc-2.31.so  __memset_avx2_unaligned_erms 
   2.18%           libjvm.so  MemAllocator::allocate 
   2.16%           libjvm.so  ObjArrayKlass::allocate 
   2.08%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 2383974ul>::oop_access_barrier 
   2.05%              kernel  [unknown] 
   2.03%           libjvm.so  Method::bcp_from 
   1.96%           libjvm.so  ObjArrayAllocator::initialize 
   1.58%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   1.33%          ld-2.31.so  __tls_get_addr 
   1.18%           libjvm.so  TypeArrayKlass::allocate_common 
   1.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 978 
   1.01%           libjvm.so  BacktraceBuilder::expand 
  13.71%  <...other 168 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.92%           libjvm.so
   3.03%        libc-2.31.so
   2.05%              kernel
   1.66%      jvmci, level 4
   1.33%          ld-2.31.so
   0.49%                    
   0.38%    Unknown, level 0
   0.04%          libjava.so
   0.04%         interpreter
   0.03%      hsdis-amd64.so
   0.03%  libpthread-2.31.so
   0.01%              [vdso]
   0.00%    perf-2138570.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 1.0)

# Run progress: 33.33% complete, ETA 00:07:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4282880.614 ns/op
# Warmup Iteration   2: 4260292.989 ns/op
# Warmup Iteration   3: 4255799.371 ns/op
# Warmup Iteration   4: 4258304.113 ns/op
# Warmup Iteration   5: 4257979.158 ns/op
Iteration   1: 4254126.637 ns/op
Iteration   2: 4256916.619 ns/op
Iteration   3: 4255381.976 ns/op
Iteration   4: 4245085.879 ns/op
Iteration   5: 4257939.447 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe":
  4253890.111 ±(99.9%) 19761.813 ns/op [Average]
  (min, avg, max) = (4245085.879, 4253890.111, 4257939.447), stdev = 5132.080
  CI (99.9%): [4234128.299, 4273651.924] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe:asm":
PrintAssembly processed: 229044 total address lines.
Perf output processed (skipped 60.657 seconds):
 Column 1: cycles (50773 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   8.86%            libjvm.so  frame::sender 
   8.12%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   5.81%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   5.78%            libjvm.so  CodeBlob::is_upcall_stub 
   4.68%            libjvm.so  CodeHeap::find_blob 
   3.79%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.73%            libjvm.so  CodeCache::find_blob 
   3.51%            libjvm.so  Continuation::is_return_barrier_entry 
   3.36%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.18%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.06%         libc-2.31.so  __memset_avx2_unaligned_erms 
   3.05%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   2.27%            libjvm.so  frame::sender_for_interpreter_frame 
   2.26%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 2383974ul>::oop_access_barrier 
   2.22%            libjvm.so  Method::bcp_from 
   2.08%            libjvm.so  frame::sender_for_interpreter_frame 
   1.98%            libjvm.so  ObjArrayAllocator::initialize 
   1.97%            libjvm.so  ObjArrayKlass::allocate 
   1.72%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   1.55%           ld-2.31.so  __tls_get_addr 
  27.05%  <...other 550 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  23.38%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
  10.10%            libjvm.so  frame::sender 
   8.12%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   5.78%            libjvm.so  CodeBlob::is_upcall_stub 
   4.68%            libjvm.so  frame::sender_for_interpreter_frame 
   4.68%            libjvm.so  CodeHeap::find_blob 
   3.73%            libjvm.so  CodeCache::find_blob 
   3.51%            libjvm.so  Continuation::is_return_barrier_entry 
   3.06%         libc-2.31.so  __memset_avx2_unaligned_erms 
   2.26%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 2383974ul>::oop_access_barrier 
   2.22%            libjvm.so  Method::bcp_from 
   2.18%               kernel  [unknown] 
   2.06%            libjvm.so  MemAllocator::allocate 
   1.98%            libjvm.so  ObjArrayAllocator::initialize 
   1.97%            libjvm.so  ObjArrayKlass::allocate 
   1.72%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   1.55%           ld-2.31.so  __tls_get_addr 
   1.10%            libjvm.so  BacktraceBuilder::expand 
   1.07%            libjvm.so  Universe::should_fill_in_stack_trace 
   1.00%            libjvm.so  TypeArrayKlass::allocate_common 
  13.87%  <...other 177 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.67%            libjvm.so
   3.16%         libc-2.31.so
   2.18%               kernel
   1.55%           ld-2.31.so
   1.26%       jvmci, level 4
   0.61%                     
   0.44%     Unknown, level 0
   0.05%  libjvmcicompiler.so
   0.03%           libjava.so
   0.02%          interpreter
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.00%          c1, level 3
   0.00%     perf-2138635.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 0.0)

# Run progress: 50.00% complete, ETA 00:05:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6514.183 ns/op
# Warmup Iteration   2: 6477.437 ns/op
# Warmup Iteration   3: 6470.229 ns/op
# Warmup Iteration   4: 6470.829 ns/op
# Warmup Iteration   5: 6470.080 ns/op
Iteration   1: 6470.410 ns/op
Iteration   2: 6470.045 ns/op
Iteration   3: 6470.017 ns/op
Iteration   4: 6469.941 ns/op
Iteration   5: 6471.506 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe":
  6470.384 ±(99.9%) 2.514 ns/op [Average]
  (min, avg, max) = (6469.941, 6470.384, 6471.506), stdev = 0.653
  CI (99.9%): [6467.869, 6472.898] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe:asm":
PrintAssembly processed: 227911 total address lines.
Perf output processed (skipped 60.760 seconds):
 Column 1: cycles (50617 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 972 

                # {method} {0x00007f697047d8b0} &apos;implicit_throw_npe&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeThrowBenchmark&apos;
                #           [sp+0x40]  (sp of caller)
                0x00007f69f6d7eda0:   mov    0x8(%rsi),%r10d
                0x00007f69f6d7eda4:   movabs $0x7f697b000000,%r12
                0x00007f69f6d7edae:   add    %r12,%r10
                0x00007f69f6d7edb1:   xor    %r12,%r12
                0x00007f69f6d7edb4:   cmp    %r10,%rax
                0x00007f69f6d7edb7:   jne    0x00007f69f6764080           ;   {runtime_call ic_miss_stub}
                0x00007f69f6d7edbd:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.00%        0x00007f69f6d7edc0:   mov    %eax,-0x14000(%rsp)
   0.01%        0x00007f69f6d7edc7:   sub    $0x38,%rsp
   0.00%        0x00007f69f6d7edcb:   nop
                0x00007f69f6d7edcc:   cmpl   $0x1,0x20(%r15)
                0x00007f69f6d7edd4:   jne    0x00007f69f6d7f0b7
   0.00%        0x00007f69f6d7edda:   mov    %rbp,0x30(%rsp)
   0.00%        0x00007f69f6d7eddf:   mov    %rsi,0x10(%rsp)
   0.00%        0x00007f69f6d7ede4:   mov    0x18(%rsi),%edx              ; ImmutableOopMap {rdx=NarrowOop rsi=Oop [16]=Oop }
                                                                          ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@0 (line 80)
   0.00%        0x00007f69f6d7ede7:   mov    0xc(,%rdx,8),%r10d           ; implicit exception: dispatches to 0x00007f69f6d7f0db
   0.07%        0x00007f69f6d7edef:   mov    %r10d,0x24(%rsp)
   0.02%        0x00007f69f6d7edf4:   cmp    $0x2,%r10d
                0x00007f69f6d7edf8:   mov    $0x1,%r11d
                0x00007f69f6d7edfe:   cmovb  %r10d,%r11d
                0x00007f69f6d7ee02:   mov    %r11d,0x20(%rsp)
   0.01%        0x00007f69f6d7ee07:   shl    $0x3,%rdx                    ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@1 (line 80)
                0x00007f69f6d7ee0b:   mov    %rdx,0x8(%rsp)
                0x00007f69f6d7ee10:   mov    $0x0,%r10d
          ╭     0x00007f69f6d7ee16:   jmp    0x00007f69f6d7ee5b           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@10 (line 80)
          │     0x00007f69f6d7ee1b:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@12 (line 80)
   0.01%  │↗    0x00007f69f6d7ee20:   mov    0x10(%rdx,%r10,4),%r9d
   0.00%  ││    0x00007f69f6d7ee25:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 80)
          ││    0x00007f69f6d7ee29:   mov    %rsi,%rcx
          ││    0x00007f69f6d7ee2c:   mov    %r9,%rdx                     ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
   0.01%  ││    0x00007f69f6d7ee2f:   mov    %r10d,0x1c(%rsp)
          ││    0x00007f69f6d7ee34:   data16 xchg %ax,%ax
          ││    0x00007f69f6d7ee37:   call   0x00007f69f6d7e220           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          ││                                                              ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
          ││                                                              ;   {optimized virtual_call}
   0.01%  ││    0x00007f69f6d7ee3c:   nopl   0x10002ac(%rax,%rax,1)       ;   {other}
          ││    0x00007f69f6d7ee44:   mov    0x1c(%rsp),%r10d
          ││    0x00007f69f6d7ee49:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 80)
   0.00%  ││    0x00007f69f6d7ee4c:   mov    0x8(%rsp),%rdx
          ││    0x00007f69f6d7ee51:   mov    0x20(%rsp),%r11d
          ││    0x00007f69f6d7ee56:   mov    0x10(%rsp),%rsi              ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@10 (line 80)
   0.00%  ↘│    0x00007f69f6d7ee5b:   cmp    %r10d,%r11d
           ╰    0x00007f69f6d7ee5e:   ja     0x00007f69f6d7ee20
                0x00007f69f6d7ee60:   mov    %r10d,%esi
                0x00007f69f6d7ee63:   mov    0x24(%rsp),%r10d
                0x00007f69f6d7ee68:   lea    -0x8(%r10),%r11d
                0x00007f69f6d7ee6c:   mov    %r11d,0x20(%rsp)
   0.02%        0x00007f69f6d7ee71:   mov    0x8(%rsp),%rdx
                0x00007f69f6d7ee76:   mov    %esi,%r10d
            ╭   0x00007f69f6d7ee79:   jmp    0x00007f69f6d7f023
            │   0x00007f69f6d7ee7e:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@12 (line 80)
            │↗  0x00007f69f6d7ee80:   mov    0x10(%rdx,%r10,4),%r9d
   2.16%    ││  0x00007f69f6d7ee85:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 80)
   0.74%    ││  0x00007f69f6d7ee89:   mov    %rsi,%rcx
   0.00%    ││  0x00007f69f6d7ee8c:   mov    %r9,%rdx
            ││  0x00007f69f6d7ee8f:   call   0x00007f69f6d7e220           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                            ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
            ││                                                            ;   {optimized virtual_call}
   3.68%    ││  0x00007f69f6d7ee94:   nopl   0x2000304(%rax,%rax,1)       ;   {other}
            ││  0x00007f69f6d7ee9c:   mov    0x8(%rsp),%rdx
   0.73%    ││  0x00007f69f6d7eea1:   mov    0x1c(%rsp),%r10d
            ││  0x00007f69f6d7eea6:   mov    0x14(%rdx,%r10,4),%esi
   3.94%    ││  0x00007f69f6d7eeab:   mov    %esi,%r11d
            ││  0x00007f69f6d7eeae:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 80)
   0.73%    ││  0x00007f69f6d7eeb2:   mov    %r10d,%r8d
            ││  0x00007f69f6d7eeb5:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 80)
            ││  0x00007f69f6d7eeb8:   mov    0x10(%rsp),%rsi
            ││  0x00007f69f6d7eebd:   mov    %r11,%rdx                    ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
   0.75%    ││  0x00007f69f6d7eec0:   mov    %r8d,0x18(%rsp)
            ││  0x00007f69f6d7eec5:   xchg   %ax,%ax
            ││  0x00007f69f6d7eec7:   call   0x00007f69f6d7e220           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                            ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
            ││                                                            ;   {optimized virtual_call}
   2.59%    ││  0x00007f69f6d7eecc:   nopl   0x300033c(%rax,%rax,1)       ;   {other}
            ││  0x00007f69f6d7eed4:   mov    0x8(%rsp),%rdx
   0.35%    ││  0x00007f69f6d7eed9:   mov    0x1c(%rsp),%r10d
   0.39%    ││  0x00007f69f6d7eede:   mov    0x18(%rdx,%r10,4),%esi
   3.23%    ││  0x00007f69f6d7eee3:   mov    %esi,%r11d
            ││  0x00007f69f6d7eee6:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 80)
   0.69%    ││  0x00007f69f6d7eeea:   lea    0x2(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 80)
   0.02%    ││  0x00007f69f6d7eeee:   mov    0x10(%rsp),%rsi
            ││  0x00007f69f6d7eef3:   mov    %r11,%rdx                    ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
            ││  0x00007f69f6d7eef6:   mov    %r8d,0x18(%rsp)
   0.76%    ││  0x00007f69f6d7eefb:   call   0x00007f69f6d7e220           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                            ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
            ││                                                            ;   {optimized virtual_call}
   2.79%    ││  0x00007f69f6d7ef00:   nopl   0x4000370(%rax,%rax,1)       ;   {other}
            ││  0x00007f69f6d7ef08:   mov    0x8(%rsp),%rdx
   0.02%    ││  0x00007f69f6d7ef0d:   mov    0x1c(%rsp),%r10d
   0.71%    ││  0x00007f69f6d7ef12:   mov    0x1c(%rdx,%r10,4),%esi
   2.75%    ││  0x00007f69f6d7ef17:   mov    %esi,%r11d
            ││  0x00007f69f6d7ef1a:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 80)
   0.67%    ││  0x00007f69f6d7ef1e:   lea    0x3(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 80)
   0.04%    ││  0x00007f69f6d7ef22:   mov    0x10(%rsp),%rsi
            ││  0x00007f69f6d7ef27:   mov    %r11,%rdx                    ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
            ││  0x00007f69f6d7ef2a:   mov    %r8d,0x18(%rsp)
   0.71%    ││  0x00007f69f6d7ef2f:   call   0x00007f69f6d7e220           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                            ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
            ││                                                            ;   {optimized virtual_call}
   3.57%    ││  0x00007f69f6d7ef34:   nopl   0x50003a4(%rax,%rax,1)       ;   {other}
            ││  0x00007f69f6d7ef3c:   mov    0x8(%rsp),%rdx
   0.73%    ││  0x00007f69f6d7ef41:   mov    0x1c(%rsp),%r10d
   0.00%    ││  0x00007f69f6d7ef46:   mov    0x20(%rdx,%r10,4),%esi
   3.64%    ││  0x00007f69f6d7ef4b:   mov    %esi,%r11d
            ││  0x00007f69f6d7ef4e:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 80)
   0.76%    ││  0x00007f69f6d7ef52:   lea    0x4(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 80)
            ││  0x00007f69f6d7ef56:   mov    0x10(%rsp),%rsi
            ││  0x00007f69f6d7ef5b:   mov    %r11,%rdx                    ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
            ││  0x00007f69f6d7ef5e:   mov    %r8d,0x18(%rsp)
   0.73%    ││  0x00007f69f6d7ef63:   call   0x00007f69f6d7e220           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                            ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
            ││                                                            ;   {optimized virtual_call}
   2.87%    ││  0x00007f69f6d7ef68:   nopl   0x60003d8(%rax,%rax,1)       ;   {other}
            ││  0x00007f69f6d7ef70:   mov    0x8(%rsp),%rdx
   0.73%    ││  0x00007f69f6d7ef75:   mov    0x1c(%rsp),%r10d
   0.02%    ││  0x00007f69f6d7ef7a:   mov    0x24(%rdx,%r10,4),%esi
   3.63%    ││  0x00007f69f6d7ef7f:   mov    %esi,%r11d
            ││  0x00007f69f6d7ef82:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 80)
   0.78%    ││  0x00007f69f6d7ef86:   lea    0x5(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 80)
            ││  0x00007f69f6d7ef8a:   mov    0x10(%rsp),%rsi
            ││  0x00007f69f6d7ef8f:   mov    %r11,%rdx                    ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
            ││  0x00007f69f6d7ef92:   mov    %r8d,0x18(%rsp)
   0.75%    ││  0x00007f69f6d7ef97:   call   0x00007f69f6d7e220           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                            ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
            ││                                                            ;   {optimized virtual_call}
   3.00%    ││  0x00007f69f6d7ef9c:   nopl   0x700040c(%rax,%rax,1)       ;   {other}
            ││  0x00007f69f6d7efa4:   mov    0x8(%rsp),%rdx
   0.77%    ││  0x00007f69f6d7efa9:   mov    0x1c(%rsp),%r10d
            ││  0x00007f69f6d7efae:   mov    0x28(%rdx,%r10,4),%esi
   3.58%    ││  0x00007f69f6d7efb3:   mov    %esi,%r11d
            ││  0x00007f69f6d7efb6:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 80)
   0.76%    ││  0x00007f69f6d7efba:   lea    0x6(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 80)
            ││  0x00007f69f6d7efbe:   mov    0x10(%rsp),%rsi
            ││  0x00007f69f6d7efc3:   mov    %r11,%rdx                    ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
            ││  0x00007f69f6d7efc6:   mov    %r8d,0x18(%rsp)
   0.83%    ││  0x00007f69f6d7efcb:   call   0x00007f69f6d7e220           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                            ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
            ││                                                            ;   {optimized virtual_call}
   2.93%    ││  0x00007f69f6d7efd0:   nopl   0x8000440(%rax,%rax,1)       ;   {other}
            ││  0x00007f69f6d7efd8:   mov    0x8(%rsp),%rdx
   0.00%    ││  0x00007f69f6d7efdd:   mov    0x1c(%rsp),%r10d
   0.82%    ││  0x00007f69f6d7efe2:   mov    0x2c(%rdx,%r10,4),%esi
   2.93%    ││  0x00007f69f6d7efe7:   mov    %esi,%r11d
            ││  0x00007f69f6d7efea:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 80)
   0.76%    ││  0x00007f69f6d7efee:   lea    0x7(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 80)
   0.01%    ││  0x00007f69f6d7eff2:   mov    0x10(%rsp),%rsi
   0.00%    ││  0x00007f69f6d7eff7:   mov    %r11,%rdx                    ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
            ││  0x00007f69f6d7effa:   mov    %r8d,0x18(%rsp)
   0.76%    ││  0x00007f69f6d7efff:   nop
   0.01%    ││  0x00007f69f6d7f000:   data16 xchg %ax,%ax
            ││  0x00007f69f6d7f003:   call   0x00007f69f6d7e220           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                            ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
            ││                                                            ;   {optimized virtual_call}
   2.98%    ││  0x00007f69f6d7f008:   nopl   0x9000478(%rax,%rax,1)       ;   {other}
            ││  0x00007f69f6d7f010:   mov    0x1c(%rsp),%r10d
            ││  0x00007f69f6d7f015:   lea    0x8(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 80)
   0.78%    ││  0x00007f69f6d7f019:   mov    0x20(%rsp),%r11d
   0.00%    ││  0x00007f69f6d7f01e:   mov    0x8(%rsp),%rdx               ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@10 (line 80)
            ↘│  0x00007f69f6d7f023:   mov    0x10(%rsp),%rsi
   0.00%     │  0x00007f69f6d7f028:   mov    %r10d,0x1c(%rsp)
   1.40%     │  0x00007f69f6d7f02d:   cmp    %r10d,%r11d
             ╰  0x00007f69f6d7f030:   jg     0x00007f69f6d7ee80
   0.05%        0x00007f69f6d7f036:   mov    %r10d,%r11d
   0.00%        0x00007f69f6d7f039:   mov    0x24(%rsp),%r10d
   0.05%        0x00007f69f6d7f03e:   xchg   %ax,%ax
                0x00007f69f6d7f040:   jmp    0x00007f69f6d7f09b
                0x00007f69f6d7f045:   data16 data16 nopw 0x0(%rax,%rax,1)
                0x00007f69f6d7f050:   data16 data16 xchg %ax,%ax
                0x00007f69f6d7f054:   nopl   0x0(%rax,%rax,1)
                0x00007f69f6d7f05c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@12 (line 80)
   0.06%        0x00007f69f6d7f060:   mov    0x10(%rdx,%r11,4),%r8d
   0.12%        0x00007f69f6d7f065:   shl    $0x3,%r8                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 80)
   0.03%        0x00007f69f6d7f069:   mov    %rsi,%r9
....................................................................................................
  69.26%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 968 

                 # parm0:    rdx:rdx   = &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeThrowBenchmark$Wrapper&apos;
                 #           [sp+0x20]  (sp of caller)
                 0x00007f69f6d7e200:   mov    0x8(%rsi),%r10d
                 0x00007f69f6d7e204:   movabs $0x7f697b000000,%r12
                 0x00007f69f6d7e20e:   add    %r12,%r10
                 0x00007f69f6d7e211:   xor    %r12,%r12
                 0x00007f69f6d7e214:   cmp    %r10,%rax
                 0x00007f69f6d7e217:   jne    0x00007f69f6764080           ;   {runtime_call ic_miss_stub}
                 0x00007f69f6d7e21d:   data16 xchg %ax,%ax
               [Verified Entry Point]
   2.37%         0x00007f69f6d7e220:   mov    %eax,-0x14000(%rsp)
   3.76%         0x00007f69f6d7e227:   sub    $0x18,%rsp
   0.05%         0x00007f69f6d7e22b:   nop
   2.18%         0x00007f69f6d7e22c:   cmpl   $0x1,0x20(%r15)
   0.00%  ╭      0x00007f69f6d7e234:   jne    0x00007f69f6d7e259
   3.73%  │  ↗   0x00007f69f6d7e23a:   mov    %rbp,0x10(%rsp)              ; ImmutableOopMap {}
          │  │                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │  │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe@0 (line 111)
   0.07%  │╭ │   0x00007f69f6d7e23f:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007f69f6d7e27a
  14.29%  ││ │   0x00007f69f6d7e242:   mov    0x10(%rsp),%rbp
   1.44%  ││ │   0x00007f69f6d7e247:   add    $0x18,%rsp
          ││ │↗  0x00007f69f6d7e24b:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││╭││  0x00007f69f6d7e252:   ja     0x00007f69f6d7e266
   0.04%  │││││  0x00007f69f6d7e258:   ret    
          ↘││││  0x00007f69f6d7e259:   mov    %rbp,0x10(%rsp)
           ││││  0x00007f69f6d7e25e:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           ││╰│  0x00007f69f6d7e263:   jmp    0x00007f69f6d7e23a
           ││ │  0x00007f69f6d7e265:   hlt    
           │↘ ╰  0x00007f69f6d7e266:   lea    -0x22(%rip),%rcx        # 0x00007f69f6d7e24b
           │     0x00007f69f6d7e26d:   mov    %rcx,0x468(%r15)
           │     0x00007f69f6d7e274:   jmp    0x00007f69f676b000           ;   {runtime_call SafepointBlob}
           │     0x00007f69f6d7e279:   hlt    
           ↘     0x00007f69f6d7e27a:   movl   $0xfffffff5,0x484(%r15)
                 0x00007f69f6d7e285:   movq   $0x0,0x490(%r15)
....................................................................................................
  27.93%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 972 
  27.93%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 968 
   0.65%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 972 
   0.41%              kernel  [unknown] 
   0.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_implicit_throw_npe_jmhTest::implicit_throw_npe_avgt_jmhStub, version 5, compile id 995 
   0.11%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.05%  <...other 324 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  69.91%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 972 
  27.93%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 968 
   1.73%              kernel  [unknown] 
   0.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_implicit_throw_npe_jmhTest::implicit_throw_npe_avgt_jmhStub, version 5, compile id 995 
   0.06%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_str_init_static_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  resource_allocate_bytes 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%           libjvm.so  jio_print 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.13%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.97%      jvmci, level 4
   1.73%              kernel
   0.11%           libjvm.so
   0.07%        libc-2.31.so
   0.06%                    
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 0.5)

# Run progress: 66.67% complete, ETA 00:03:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7861471.803 ns/op
# Warmup Iteration   2: 7788817.157 ns/op
# Warmup Iteration   3: 7792269.976 ns/op
# Warmup Iteration   4: 7804480.402 ns/op
# Warmup Iteration   5: 7794719.737 ns/op
Iteration   1: 7794610.116 ns/op
Iteration   2: 7797907.748 ns/op
Iteration   3: 7800294.367 ns/op
Iteration   4: 7804709.824 ns/op
Iteration   5: 7789706.456 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe":
  7797445.702 ±(99.9%) 21870.194 ns/op [Average]
  (min, avg, max) = (7789706.456, 7797445.702, 7804709.824), stdev = 5679.620
  CI (99.9%): [7775575.509, 7819315.896] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe:asm":
PrintAssembly processed: 230180 total address lines.
Perf output processed (skipped 60.982 seconds):
 Column 1: cycles (50849 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   6.58%        libc-2.31.so  __vfprintf_internal 
   5.71%           libjvm.so  stringStream::write 
   5.12%        libc-2.31.so  __strchrnul_avx2 
   4.17%        libc-2.31.so  __vsnprintf_internal 
   3.23%        libc-2.31.so  _IO_default_xsputn 
   2.70%        libc-2.31.so  __vfprintf_internal 
   2.67%        libc-2.31.so  __vfprintf_internal 
   2.66%           libjvm.so  frame::sender 
   2.52%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.40%        libc-2.31.so  __strchr_avx2 
   1.98%           libjvm.so  CodeBlob::is_upcall_stub 
   1.95%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   1.83%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   1.80%        libc-2.31.so  _IO_old_init 
   1.79%           libjvm.so  CodeHeap::find_blob 
   1.68%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   1.58%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   1.56%           libjvm.so  vframeStream::vframeStream 
   1.45%           libjvm.so  Continuation::is_return_barrier_entry 
   1.40%        libc-2.31.so  __memmove_sse2_unaligned_erms 
  45.23%  <...other 656 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  14.38%        libc-2.31.so  __vfprintf_internal 
   7.83%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   6.34%        libc-2.31.so  __strchrnul_avx2 
   5.80%           libjvm.so  stringStream::write 
   4.66%        libc-2.31.so  _IO_default_xsputn 
   4.17%        libc-2.31.so  __vsnprintf_internal 
   3.72%        libc-2.31.so  __strchr_avx2 
   3.22%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   3.18%           libjvm.so  frame::sender 
   2.15%           libjvm.so  vframeStream::vframeStream 
   2.07%           libjvm.so  outputStream::print 
   1.98%           libjvm.so  CodeBlob::is_upcall_stub 
   1.83%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   1.82%              kernel  [unknown] 
   1.80%        libc-2.31.so  _IO_old_init 
   1.79%           libjvm.so  CodeHeap::find_blob 
   1.68%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   1.66%        libc-2.31.so  _IO_str_init_static_internal 
   1.45%           libjvm.so  Continuation::is_return_barrier_entry 
   1.40%        libc-2.31.so  __memmove_sse2_unaligned_erms 
  27.07%  <...other 218 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  51.11%           libjvm.so
  44.27%        libc-2.31.so
   1.82%              kernel
   0.67%      jvmci, level 4
   0.58%          ld-2.31.so
   0.52%                    
   0.30%  libpthread-2.31.so
   0.30%              [vdso]
   0.18%        runtime stub
   0.12%    Unknown, level 0
   0.06%    perf-2138763.map
   0.04%          libjava.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.00%       libdl-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 1.0)

# Run progress: 83.33% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15982882.447 ns/op
# Warmup Iteration   2: 15820153.199 ns/op
# Warmup Iteration   3: 15837389.639 ns/op
# Warmup Iteration   4: 15853647.643 ns/op
# Warmup Iteration   5: 15835842.864 ns/op
Iteration   1: 15833349.063 ns/op
Iteration   2: 15845518.090 ns/op
Iteration   3: 15835854.320 ns/op
Iteration   4: 15866207.052 ns/op
Iteration   5: 15811929.839 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe":
  15838571.673 ±(99.9%) 75956.670 ns/op [Average]
  (min, avg, max) = (15811929.839, 15838571.673, 15866207.052), stdev = 19725.706
  CI (99.9%): [15762615.003, 15914528.342] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe:asm":
PrintAssembly processed: 231451 total address lines.
Perf output processed (skipped 60.905 seconds):
 Column 1: cycles (50829 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   6.81%        libc-2.31.so  __vfprintf_internal 
   5.86%           libjvm.so  stringStream::write 
   4.88%        libc-2.31.so  __strchrnul_avx2 
   4.15%        libc-2.31.so  __vsnprintf_internal 
   3.25%        libc-2.31.so  _IO_default_xsputn 
   2.76%        libc-2.31.so  __vfprintf_internal 
   2.74%        libc-2.31.so  __vfprintf_internal 
   2.48%        libc-2.31.so  __strchr_avx2 
   2.44%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.39%           libjvm.so  frame::sender 
   1.92%        libc-2.31.so  _IO_old_init 
   1.87%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   1.80%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   1.76%           libjvm.so  CodeBlob::is_upcall_stub 
   1.69%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   1.66%           libjvm.so  CodeHeap::find_blob 
   1.58%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   1.49%           libjvm.so  Continuation::is_return_barrier_entry 
   1.42%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   1.25%        libc-2.31.so  _IO_str_init_static_internal 
  45.79%  <...other 659 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  15.07%        libc-2.31.so  __vfprintf_internal 
   7.57%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   6.02%           libjvm.so  stringStream::write 
   5.87%        libc-2.31.so  __strchrnul_avx2 
   4.74%        libc-2.31.so  _IO_default_xsputn 
   4.15%        libc-2.31.so  __vsnprintf_internal 
   3.83%        libc-2.31.so  __strchr_avx2 
   3.14%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.88%           libjvm.so  frame::sender 
   2.23%           libjvm.so  outputStream::print 
   2.19%           libjvm.so  vframeStream::vframeStream 
   1.92%        libc-2.31.so  _IO_old_init 
   1.80%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   1.76%           libjvm.so  CodeBlob::is_upcall_stub 
   1.72%        libc-2.31.so  _IO_str_init_static_internal 
   1.69%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   1.66%           libjvm.so  CodeHeap::find_blob 
   1.61%              kernel  [unknown] 
   1.49%           libjvm.so  Continuation::is_return_barrier_entry 
   1.42%        libc-2.31.so  __memmove_sse2_unaligned_erms 
  27.21%  <...other 234 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  50.84%           libjvm.so
  44.87%        libc-2.31.so
   1.61%              kernel
   0.52%          ld-2.31.so
   0.51%      jvmci, level 4
   0.44%                    
   0.39%  libpthread-2.31.so
   0.36%              [vdso]
   0.19%        runtime stub
   0.09%    Unknown, level 0
   0.07%    perf-2138825.map
   0.05%          libjava.so
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:11:25

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

Benchmark                                 (size)  (threshold)  Mode  Cnt         Score       Error  Units
NpeThrowBenchmark.explicit_throw_npe        1024          0.0  avgt    5      6470.956 ±     6.661  ns/op
NpeThrowBenchmark.explicit_throw_npe:asm    1024          0.0  avgt                NaN                ---
NpeThrowBenchmark.explicit_throw_npe        1024          0.5  avgt    5   2006516.702 ±  1904.003  ns/op
NpeThrowBenchmark.explicit_throw_npe:asm    1024          0.5  avgt                NaN                ---
NpeThrowBenchmark.explicit_throw_npe        1024          1.0  avgt    5   4253890.111 ± 19761.813  ns/op
NpeThrowBenchmark.explicit_throw_npe:asm    1024          1.0  avgt                NaN                ---
NpeThrowBenchmark.implicit_throw_npe        1024          0.0  avgt    5      6470.384 ±     2.514  ns/op
NpeThrowBenchmark.implicit_throw_npe:asm    1024          0.0  avgt                NaN                ---
NpeThrowBenchmark.implicit_throw_npe        1024          0.5  avgt    5   7797445.702 ± 21870.194  ns/op
NpeThrowBenchmark.implicit_throw_npe:asm    1024          0.5  avgt                NaN                ---
NpeThrowBenchmark.implicit_throw_npe        1024          1.0  avgt    5  15838571.673 ± 75956.670  ns/op
NpeThrowBenchmark.implicit_throw_npe:asm    1024          1.0  avgt                NaN                ---
